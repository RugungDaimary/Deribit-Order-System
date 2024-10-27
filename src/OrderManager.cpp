
#include "OrderManager.h"
#include <iostream>

OrderManager::OrderManager(DeribitAPI &api) : api(api) {}

void OrderManager::authenticate()
{
    nlohmann::json response = api.authenticate();
    if (response.contains("error"))
    {
        std::cerr << "Authentication Error: " << response["error"].dump(4) << std::endl;
    }
    else
    {
        std::cout << "Authentication Successful: " << response.dump(4) << std::endl;
    }
}

nlohmann::json OrderManager::placeBuyOrder(const std::string &instrument_name, int amount, double price)
{
    nlohmann::json response = api.placeBuyOrder(instrument_name, amount, price);
    handleOrderResponse(response, "Buy");
    return response; // Ensure returning the response JSON
}

nlohmann::json OrderManager::placeSellOrder(const std::string &instrument_name, int contracts, double price)
{
    nlohmann::json response = api.placeSellOrder(instrument_name, contracts, price);
    handleOrderResponse(response, "Sell");
    return response; // Ensure returning the response JSON
}

void OrderManager::editOrder(const std::string &order_id, int amount, double price)
{
    nlohmann::json response = api.editOrder(order_id, amount, price);
    handleOrderResponse(response, "Edit");
}

void OrderManager::cancelOrder(const std::string &order_id)
{
    nlohmann::json response = api.cancelOrder(order_id);
    handleOrderResponse(response, "Cancel");
}

void OrderManager::handleOrderResponse(const nlohmann::json &response, const std::string &action)
{
    if (response.contains("error"))
    {
        std::cerr << action << " Order Error: " << response["error"].dump(4) << std::endl;
    }
    else
    {
        std::cout << action << " Order Successful: " << response.dump(4) << std::endl;
    }
}

nlohmann::json OrderManager::getOrderbook(const std::string &instrument_name)
{
    nlohmann::json response = api.getOrderbook(instrument_name);
    if (response.contains("error"))
    {
        std::cerr << "Get Orderbook Error: " << response["error"].dump(4) << std::endl;
    }
    else
    {
        std::cout << "Orderbook: " << response.dump(4) << std::endl;
    }
    return response; // Ensure returning the response JSON
}

nlohmann::json OrderManager::getCurrentPositions()
{
    nlohmann::json response = api.getCurrentPositions();
    if (response.contains("error"))
    {
        std::cerr << "Get Current Positions Error: " << response["error"].dump(4) << std::endl;
    }
    else
    {
        std::cout << "Current Positions: " << response.dump(4) << std::endl;
    }
    return response; // Ensure returning the response JSON
}
