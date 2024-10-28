
#ifndef ORDER_MANAGER_H
#define ORDER_MANAGER_H

#include "DeribitAPI.h"
#include <nlohmann/json.hpp>
#include <string>

class OrderManager
{
public:
    OrderManager(DeribitAPI &api);

    void authenticate();

    nlohmann::json placeBuyOrder(const std::string &instrument_name, int amount, double price);
    nlohmann::json placeSellOrder(const std::string &instrument_name, int contracts, double price);

    void editOrder(const std::string &order_id, int amount, double price);
    void cancelOrder(const std::string &order_id);


    nlohmann::json getOrderbook(const std::string &instrument_name);
    nlohmann::json getCurrentPositions();

private:
    DeribitAPI &api;

    void handleOrderResponse(const nlohmann::json &response, const std::string &action);
};

#endif
