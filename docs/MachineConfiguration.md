# MachineConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu_template** | [**CpuTemplate**](CpuTemplate.md) |  | [optional] 
**ht_enabled** | **bool** | Flag for enabling/disabling Hyperthreading | 
**mem_size_mib** | **int** | Memory size of VM | 
**track_dirty_pages** | **bool** | Enable dirty page tracking. If this is enabled, then incremental guest memory snapshots can be created. These belong to diff snapshots, which contain, besides the microVM state, only the memory dirtied since a previous snapshot. Full snapshots each contain a full copy of the guest memory. | [optional] 
**vcpu_count** | **int** | Number of vCPUs (either 1 or an even number) | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

