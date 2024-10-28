#ifndef DERIBIT_API_H
#define DERIBIT_API_H

#include <string>
#include <nlohmann/json.hpp>

class DeribitAPI
{
public:
    DeribitAPI(const std::string &client_id, const std::string &client_secret);

    nlohmann::json authenticate();
    nlohmann::json placeBuyOrder(const std::string &instrument_name, int amount, double price);
    nlohmann::json placeSellOrder(const std::string &instrument_name, int contracts, double price);

    nlohmann::json editOrder(const std::string &order_id, int amount, double price);
    nlohmann::json cancelOrder(const std::string &order_id);
    nlohmann::json getOrderStatus(const std::string &order_id);
    nlohmann::json getOrderbook(const std::string &instrument_name);
    nlohmann::json getCurrentPositions();

private:

    std::string client_id;
    std::string client_secret;
    std::string access_token; // Store the token here

    nlohmann::json sendRequest(const std::string &url, const nlohmann::json &request_body);
};

#endif
