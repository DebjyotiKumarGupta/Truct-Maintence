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

## License

[MIT](LICENSE)
