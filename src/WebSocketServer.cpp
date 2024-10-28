#include "WebSocketServer.h"
#include <iostream>
#include <mutex>

WebSocketServer::WebSocketServer(OrderManager &orderManager) : orderManager(orderManager) {}

void WebSocketServer::startServer()
{
   
    std::cout << "WebSocket server started..." << std::endl;
    
}

void WebSocketServer::subscribe(const std::string &symbol)
{
    std::lock_guard<std::mutex> lock(mutex);
    subscribers.insert(symbol);
    std::cout << "Client subscribed to: " << symbol << std::endl;
}

void WebSocketServer::unsubscribe(const std::string &symbol)
{
    std::lock_guard<std::mutex> lock(mutex);
    subscribers.erase(symbol);
    std::cout << "Client unsubscribed from: " << symbol << std::endl;
}

void WebSocketServer::notifyClients(const nlohmann::json &orderbook_data)
{
    std::lock_guard<std::mutex> lock(mutex);
    for (const std::string &symbol : subscribers)
    {
        if (orderbook_data.contains(symbol))
        {
           
            std::cout << "Notifying clients about updates for: " << symbol << std::endl;
            std::cout << orderbook_data.at(symbol).dump(4) << std::endl;
        }
    }
}
