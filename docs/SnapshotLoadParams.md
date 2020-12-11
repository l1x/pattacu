# SnapshotLoadParams

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**enable_diff_snapshots** | **bool** | Enable support for incremental (diff) snapshots by tracking dirty guest pages. | [optional] 
**mem_file_path** | **str** | Path to the file that contains the guest memory to be loaded. | 
**snapshot_path** | **str** | Path to the file that contains the microVM state to be loaded. | 
**resume_vm** | **bool** | When set to true, the vm is also resumed if the snapshot load is successful. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

