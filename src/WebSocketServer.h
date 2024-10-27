#ifndef WEBSOCKET_SERVER_H
#define WEBSOCKET_SERVER_H

#include <string>
#include <set>
#include <mutex>
#include <nlohmann/json.hpp>
#include "OrderManager.h"

class WebSocketServer
{
public:
    WebSocketServer(OrderManager &orderManager);
    void startServer();
    void subscribe(const std::string &symbol);
    void unsubscribe(const std::string &symbol);
    void notifyClients(const nlohmann::json &orderbook_data);

private:
    OrderManager &orderManager;
    std::set<std::string> subscribers;
    std::mutex mutex;
};

#endif
