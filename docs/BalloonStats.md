# BalloonStats

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**target_pages** | **int** | Target number of pages the device aims to hold. | 
**actual_pages** | **int** | Actual number of pages the device is holding. | 
**target_mb** | **int** | Target amount of memory (in MB) the device aims to hold. | 
**actual_mb** | **int** | Actual amount of memory (in MB) the device is holding. | 
**swap_in** | **int** | The amount of memory that has been swapped in (in bytes). | [optional] 
**swap_out** | **int** | The amount of memory that has been swapped out to disk (in bytes). | [optional] 
**major_faults** | **int** | The number of major page faults that have occurred. | [optional] 
**minor_faults** | **int** | The number of minor page faults that have occurred. | [optional] 
**free_memory** | **int** | The amount of memory not being used for any purpose (in bytes). | [optional] 
**total_memory** | **int** | The total amount of memory available (in bytes). | [optional] 
**available_memory** | **int** | An estimate of how much memory is available (in bytes) for starting new applications, without pushing the system to swap. | [optional] 
**disk_caches** | **int** | The amount of memory, in bytes, that can be quickly reclaimed without additional I/O. Typically these pages are used for caching files from disk. | [optional] 
**hugetlb_allocations** | **int** | The number of successful hugetlb page allocations in the guest. | [optional] 
**hugetlb_failures** | **int** | The number of failed hugetlb page allocations in the guest. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

