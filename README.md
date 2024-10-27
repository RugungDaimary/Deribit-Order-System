# Deribit Order System

A C++ Order Execution and Management System designed for trading on the Deribit Test environment. This application supports placing, editing, and canceling orders, as well as managing real-time updates through a WebSocket server for low-latency trading needs.

## Features

- **Authentication**: Securely access Deribit APIs using OAuth2.
- **Order Placement**: Supports placing buy and sell orders.
- **Order Management**: Capabilities to edit and cancel orders.
- **WebSocket Server**: Allows clients to subscribe to specific instruments and receive real-time order book updates.

## Project Structure

```
DeribitOrderSystem/
│
├── src/
│   ├── main.cpp              # Entry point of the application
│   ├── OrderManager.cpp      # Manages order actions (buy, sell, edit, cancel)
│   ├── OrderManager.h        # Header file for OrderManager
│   ├── WebSocketServer.cpp    # WebSocket server implementation for real-time updates
│   ├── WebSocketServer.h      # Header file for WebSocketServer
│   ├── DeribitAPI.cpp        # Implementation of Deribit API interactions
│   ├── DeribitAPI.h          # Header file for DeribitAPI
│   └── CurlUtils.h           # Utility functions for making HTTP requests
│
├── include/
│   └── nlohmann/
│       └── json.hpp          # Single-header JSON library for C++
│
├── CMakeLists.txt            # Build configuration for CMake
└── README.md                 # Project documentation
```

## Prerequisites

- C++17 or later
- CMake
- [nlohmann/json](https://github.com/nlohmann/json) (included as a single header in the `include` folder)
- [libcurl](https://curl.se/libcurl/) for HTTP requests
- OpenSSL (for secure connections)

## Installation Steps

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/DeribitOrderSystem.git
   cd DeribitOrderSystem
   ```

2. **Install dependencies**:
   Ensure you have `libcurl` and `OpenSSL` installed on your system. For macOS, you can use Homebrew:
   ```bash
   brew install curl openssl
   ```

3. **Build the project**:
   ```bash
   mkdir build
   cd build
   cmake ..
   make
   ```

4. **Modify `main.cpp`**:
   Update the `client_id` and `client_secret` variables with your actual credentials in `main.cpp`.

5. **Run the application**:
   ```bash
   ./DeribitOrderSystem
   ```

## Order Actions

The application will authenticate, place a buy and a sell order, edit an existing order, and start the WebSocket server to handle subscriptions for order book updates.

## API Methods Used

- **Authentication**: `public/auth`
- **Place Buy Order**: `private/buy`
- **Place Sell Order**: `private/sell`
- **Edit Order**: `private/edit`
- **Cancel Order**: `private/cancel`
