module HelloMessage::MaintenanceNFT {
    use std::string::{String};
    use aptos_framework::signer;
    use aptos_framework::timestamp;

    /// Error codes
    const E_NOT_AUTHORIZED: u64 = 1;
    const E_RECORD_NOT_FOUND: u64 = 2;

    /// Struct representing a maintenance record for an asset
    struct MaintenanceRecord has key, store {
        asset_id: String,
        owner: address,
        last_maintenance_timestamp: u64,
        maintenance_description: String,
        maintenance_count: u64,
    }

    /// Function to create a new maintenance record for an asset
    public fun create_maintenance_record(
        owner: &signer,
        asset_id: String,
        maintenance_description: String
    ) {
        let record = MaintenanceRecord {
            asset_id,
            owner: signer::address_of(owner),
            last_maintenance_timestamp: timestamp::now_seconds(),
            maintenance_description,
            maintenance_count: 1,
        };
        
        move_to(owner, record);
    }

    /// Function to update an existing maintenance record
    public fun update_maintenance_record(
        owner: &signer,
        new_description: String
    ) acquires MaintenanceRecord {
        let owner_address = signer::address_of(owner);
        
        // Ensure the record exists and belongs to the caller
        assert!(exists<MaintenanceRecord>(owner_address), E_RECORD_NOT_FOUND);
        
        let record = borrow_global_mut<MaintenanceRecord>(owner_address);
        
        // Update the record with new maintenance information
        record.last_maintenance_timestamp = timestamp::now_seconds();
        record.maintenance_description = new_description;
        record.maintenance_count = record.maintenance_count + 1;
    }
}