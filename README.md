# UnifoldSDK

iOS SDK for integrating Unifold deposit flows into your app.

## Requirements

- iOS 16.0+
- Xcode 15.0+
- Swift 5.9+

## Installation

### Swift Package Manager

Add UnifoldSDK to your project using Xcode:

1. **File → Add Package Dependencies...**
2. Enter the repository URL:
   ```
   https://github.com/unifold-io/unifold-ios
   ```
3. Select your desired version
4. Click **Add Package**

Or add it to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/unifold-io/unifold-ios", from: "0.1.1")
]
```

## Quick Start

### 1. Configure the SDK

```swift
import UnifoldSDK

// In your AppDelegate or App init
APIConfiguration.shared.configure(publishableKey: "pk_your_publishable_key")
```

### 2. Present the Deposit Flow

Using SwiftUI modifier:

```swift
import SwiftUI
import UnifoldSDK

struct ContentView: View {
    @State private var showDeposit = false
    
    var body: some View {
        Button("Deposit") {
            showDeposit = true
        }
        .depositSheet(
            isPresented: $showDeposit,
            externalUserId: "user_123",
            destinationChainType: .ethereum,
            destinationChainId: "137",
            destinationTokenAddress: "0x2791bca1f2de4661ed88a30c99a7a9449aa84174",
            destinationTokenSymbol: "USDC",
            recipientAddress: "0xYourWalletAddress"
        )
    }
}
```

Or using UIKit:

```swift
import UIKit
import UnifoldSDK

class ViewController: UIViewController {
    func showDeposit() {
        let config = DepositConfiguration(
            externalUserId: "user_123",
            publishableKey: "pk_your_publishable_key",
            recipientAddress: "0xYourWalletAddress",
            destinationChainType: .ethereum,
            destinationChainId: "137",
            destinationTokenAddress: "0x2791bca1f2de4661ed88a30c99a7a9449aa84174"
        )
        
        let hostingController = DepositSheetHostingController(configuration: config)
        present(hostingController, animated: true)
    }
}
```

## Features

- **Transfer Crypto** - Accept deposits from any supported chain
- **Buy with Card** - Fiat on-ramp via card payments
- **Deposit Tracker** - View deposit history and status

## Documentation

For full documentation, visit [docs.unifold.io](https://docs.unifold.io)

## Support

- Email: support@unifold.io
- Discord: [Join our community](https://discord.gg/unifold)

## License

Copyright © 2024 Unifold. All rights reserved.
