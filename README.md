# Maintenance History NFT Smart Contract

A Move smart contract for Aptos blockchain that enables tracking of maintenance history as NFTs.

## Overview

This smart contract allows users to:
- Create maintenance records for assets
- Update existing maintenance records with new information
- Track maintenance history with timestamps and counts

## Contract Structure

The contract contains two main functions:
1. `create_maintenance_record`: Creates a new maintenance record for an asset
2. `update_maintenance_record`: Updates an existing maintenance record

Each maintenance record stores:
- Asset ID (string)
- Owner's address
- Timestamp of the last maintenance
- Description of the maintenance performed
- Total count of maintenance activities

## Installation

### Prerequisites
- Aptos CLI installed
- Move compiler
- Git

### Setup

1. Clone the repository:
```bash
git clone https://github.com/yourusername/maintenance-nft.git
cd maintenance-nft
```

2. Initialize your Aptos account (if not already done):
```bash
aptos init --network devnet
```

3. Fund your account with test tokens:
```bash
aptos account fund-with-faucet --account <your-address>
```

## Deployment

1. Update the `Move.toml` file with your account address:
```toml
[addresses]
MyModule = "<your-address>"
```

2. Compile the contract:
```bash
aptos move compile
```

3. Publish the contract:
```bash
aptos move publish --profile default
```

## Usage

Once deployed, you can interact with the contract through the Aptos CLI or SDK:

### Create a maintenance record:
```bash
aptos move run --function-id <your-address>::MaintenanceNFT::create_maintenance_record \
  --args string:"asset123" string:"Initial oil change and filter replacement" \
  --profile default
```

### Update a maintenance record:
```bash
aptos move run --function-id <your-address>::MaintenanceNFT::update_maintenance_record \
  --args string:"Brake pad replacement and system check" \
  --profile default
```




## Transaction Hash 

 0x4e2bf254c5dbcfc7866d2d0b4ea2a866a37de26c9ff922d78c8943a0ee5f84bd



  "Result": {
    "transaction_hash": "0x4e2bf254c5dbcfc7866d2d0b4ea2a866a37de26c9ff922d78c8943a0ee5f84bd",
    "gas_used": 2134,
    "gas_unit_price": 100,
    "sender": "b2d2d69d16d93976359c97a53eeec2e381acc35362dedf3b356fabf0b9ce1d30",
    "sequence_number": 0,
    "success": true,
    "timestamp_us": 1747468646660904,
    "version": 6465631,
    "vm_status": "Executed successfully"
  }

[MIT](LICENSE)
