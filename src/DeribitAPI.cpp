#include "DeribitAPI.h"
#include "CurlUtils.h"
#include <nlohmann/json.hpp>
#include <iostream>

DeribitAPI::DeribitAPI(const std::string &client_id, const std::string &client_secret)
    : client_id(client_id), client_secret(client_secret) {}

nlohmann::json DeribitAPI::authenticate()
{
    nlohmann::json request = {
        {"method", "public/auth"},
        {"params", {{"grant_type", "client_credentials"}, {"client_id", client_id}, {"client_secret", client_secret}}},
        {"jsonrpc", "2.0"},
        {"id", 4}};

    nlohmann::json response = sendRequest("https://test.deribit.com/api/v2/public/auth", request);

    // Store the access_token if authentication is successful
    if (response.contains("result") && response["result"].contains("access_token"))
    {
        access_token = response["result"]["access_token"].get<std::string>();
    }

    return response;
}

nlohmann::json DeribitAPI::placeBuyOrder(const std::string &instrument_name, int amount, double price)
{
    nlohmann::json request = {
        {"method", "private/buy"},
        {"params", {{"instrument_name", instrument_name}, {"amount", amount}, {"price", price}}},
        {"jsonrpc", "2.0"},
        {"id", 5}};

    return sendRequest("https://test.deribit.com/api/v2/private/buy", request);
}


nlohmann::json DeribitAPI::placeSellOrder(const std::string &instrument_name, int amount, double price)
{
    // Ensure amount is a multiple of the contract size (e.g., 10)
    if (amount % 10 != 0)
    {
        std::cerr << "Sell Order Error: Amount must be a multiple of 10 for " << instrument_name << std::endl;
        return {{"error", "Amount must be a multiple of contract size"}};
    }

    nlohmann::json request = {
        {"method", "private/sell"},
        {"params", {{"instrument_name", instrument_name}, {"amount", amount}, {"price", price}}},
        {"jsonrpc", "2.0"},
        {"id", 6}};

    return sendRequest("https://test.deribit.com/api/v2/private/sell", request);
}

nlohmann::json DeribitAPI::editOrder(const std::string &order_id, int amount, double price)
{
    // Optionally, verify the order state before editing
    nlohmann::json order_status = getOrderStatus(order_id);
    if (order_status.contains("error"))
    {
        std::cerr << "Edit Order Error: " << order_status["message"] << std::endl;
        return order_status;
    }

    nlohmann::json request = {
        {"method", "private/edit"},
        {"params", {{"order_id", order_id}, {"amount", amount}, {"price", price}}},
        {"jsonrpc", "2.0"},
        {"id", 7}};

    return sendRequest("https://test.deribit.com/api/v2/private/edit", request);
}
nlohmann::json DeribitAPI::getOrderStatus(const std::string &order_id)
{
    nlohmann::json request = {
        {"method", "private/get_order_state"},
        {"params", {{"order_id", order_id}}},
        {"jsonrpc", "2.0"},
        {"id", 9}};

    return sendRequest("https://test.deribit.com/api/v2/private/get_order_state", request);
}

nlohmann::json DeribitAPI::cancelOrder(const std::string &order_id)
{
    nlohmann::json request = {
        {"order_id", order_id}};

    return sendRequest("https://test.deribit.com/api/v2/private/cancel", request);
}

nlohmann::json DeribitAPI::sendRequest(const std::string &url, const nlohmann::json &request_body)
{
    // Ensure the access token is correctly set and used in the header
    std::string auth_header = "Authorization: Bearer " + access_token;
    std::string response = CurlUtils::postRequest(url, request_body.dump(), auth_header);
    return nlohmann::json::parse(response);
}

nlohmann::json DeribitAPI::getOrderbook(const std::string &instrument_name)
{
    nlohmann::json request = {
        {"method", "public/get_order_book"},
        {"params", {{"instrument_name", instrument_name}, {"depth", 10}}},
        {"jsonrpc", "2.0"},
        {"id", 7}};

    return sendRequest("https://test.deribit.com/api/v2/public/get_order_book", request);
}

nlohmann::json DeribitAPI::getCurrentPositions()
{
    nlohmann::json request = {
        {"method", "private/get_positions"},
        {"params", {}},
        {"jsonrpc", "2.0"},
        {"id", 8}};

    return sendRequest("https://test.deribit.com/api/v2/private/get_positions", request);
}