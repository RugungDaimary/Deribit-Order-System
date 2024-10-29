# Deribit Order System

A C++ Order Execution and Management System designed for trading on the Deribit Test environment. This application supports placing, editing, and canceling orders, as well as managing real-time updates through a WebSocket server for low-latency trading needs.

**Demonstration Video**: [Watch here](https://youtu.be/RrfHgMvhabA)
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
├── config.json               # Configuration file for API keys and secrets
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
   git clone https://github.com/RugungDaimary/DeribitOrderSystem.git
   cd DeribitOrderSystem
   ```

2. **Install dependencies**:
   Ensure you have `libcurl` and `OpenSSL` installed on your system. For macOS, you can use Homebrew:
   ```bash
   brew install curl openssl
   ```

3. **Create `config.json`**:
   Create a `config.json` file in the root directory of the project and include your API keys and secrets in the following format:
   ```json
   {
       "client_id": "your_client_id",
       "client_secret": "your_client_secret"
   }
   ```

4. **Build the project**:
   ```bash
   mkdir build
   cd build
   cmake ..
   make
   ```

5. **Run the application**:
   ```bash
   ./DeribitOrderSystem
   ```

## Order Actions

The application will authenticate, place a buy and a sell order, edit an existing order, and start the WebSocket server to handle subscriptions for order book updates.

## API Methods Used

1. **Authentication**: 
   - **Method**: `orderManager.authenticate()`
   - **Purpose**: Authenticates the user using the provided `client_id` and `client_secret`.

2. **Get Order Book**: 
   - **Method**: `orderManager.getOrderbook("BTC-PERPETUAL")`
   - **API Endpoint**: Typically `public/get_order_book`
   - **Purpose**: Retrieves the current order book for the specified instrument (`BTC-PERPETUAL`).

3. **Get Current Positions**:
   - **Method**: `orderManager.getCurrentPositions()`
   - **API Endpoint**: Typically `private/get_positions`
   - **Purpose**: Fetches the current positions held by the user.

4. **Place Buy Order**:
   - **Method**: `orderManager.placeBuyOrder("BTC-PERPETUAL", 1000, 50000)`
   - **API Endpoint**: `private/buy`
   - **Parameters**: 
     - Symbol: `"BTC-PERPETUAL"`
     - Amount: `1000`
     - Price: `50000`
   - **Purpose**: Places a buy order for the specified amount and price.

5. **Place Sell Order**:
   - **Method**: `orderManager.placeSellOrder("BTC-PERPETUAL", 10000, 66000)`
   - **API Endpoint**: `private/sell`
   - **Parameters**:
     - Symbol: `"BTC-PERPETUAL"`
     - Amount: `10000`
     - Price: `66000`
   - **Purpose**: Places a sell order for the specified amount and price.

6. **Edit Order**:
   - **Method**: `orderManager.editOrder(buyOrderId, 100000, 51000)`
   - **API Endpoint**: `private/edit`
   - **Parameters**:
     - Order ID: `buyOrderId`
     - New Amount: `100000`
     - New Price: `51000`
   - **Purpose**: Edits an existing order with the given new amount and price.

7. **Cancel Order**:
   - **Method**: `orderManager.cancelOrder(buyOrderId)`
   - **API Endpoint**: `private/cancel`
   - **Parameters**:
     - Order ID: `buyOrderId` or `sellOrderId`
   - **Purpose**: Cancels the specified order.

8. **WebSocket Server**:
   - **Method**: 
     - `webSocketServer.startServer()`
     - `webSocketServer.subscribe("BTC-PERPETUAL")`
   - **Purpose**: Initializes the WebSocket server and subscribes to an instrument for real-time updates.
   - **Method**: 
     - `webSocketServer.notifyClients(const nlohmann::json &orderbook_data)`
   - **Purpose**: Notifies all subscribed clients about updates to the order book for specific instruments.

## API Methods Used

- **Authentication**: `public/auth`
- **Place Buy Order**: `private/buy`
- **Place Sell Order**: `private/sell`
- **Edit Order**: `private/edit`
- **Cancel Order**: `private/cancel`
