#include <iostream>
#include <fstream>
#include <thread>
#include "DeribitAPI.h"
#include "OrderManager.h"
#include "WebSocketServer.h"
#include <nlohmann/json.hpp>
nlohmann::json loadConfig(const std::string &filename)
{
    std::ifstream file(filename);
    if (!file.is_open())
    {
        throw std::runtime_error("Could not open config file: " + filename);
    }
    nlohmann::json config;
    file >> config;
    return config;
}
int main()
{

    nlohmann::json config = loadConfig("../config.json");

    std::string client_id = config["client_id"];
    std::string client_secret = config["client_secret"];
    DeribitAPI api(client_id, client_secret);
    OrderManager orderManager(api);
    WebSocketServer webSocketServer(orderManager);

    // Authenticate before placing orders
    orderManager.authenticate();


    // Place a buy order
    // nlohmann::json buyResponse = orderManager.placeBuyOrder("BTC-PERPETUAL", 1000, 50000);
    // std::string buyOrderId = buyResponse["result"]["order"]["order_id"];


    // Place a sell order.
    // nlohmann::json sellResponse = orderManager.placeSellOrder("BTC-PERPETUAL", 10000, 100000);
    // std::string sellOrderId = sellResponse["result"]["order"]["order_id"];


 
    // Edit an order
    // orderManager.editOrder(buyOrderId, 100000, 70000);
    // orderManager.editOrder("29226282800", 100000, 70000);

    // Cancel the buy order
    // orderManager.cancelOrder(buyOrderId);
    // orderManager.cancelOrder("29226282800");

    // Cancel the sell order
    // orderManager.cancelOrder(sellOrderId);



    // Fetch order book
    // orderManager.getOrderbook("BTC-PERPETUAL");

    // Fetch current positions
    // orderManager.getCurrentPositions();





    // Start the WebSocket server
    webSocketServer.startServer();



    // Subscribe to an instrument
    webSocketServer.subscribe("BTC-PERPETUAL");



    // Simulate orderbook data updates (replace with actual data)
    nlohmann::json orderbook_data = {
        {"symbol", "BTC-PERPETUAL"},
        {"bids", {{50000, 1}, {49950, 2}}},
        {"asks", {{50100, 1}, {50200, 3}}}};


    webSocketServer.notifyClients(orderbook_data);



    return 0;
}
