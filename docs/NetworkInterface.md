# NetworkInterface

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_mmds_requests** | **bool** | If this field is set, the device model will reply to HTTP GET requests sent to the MMDS address via this interface. In this case, both ARP requests for 169.254.169.254 and TCP segments heading to the same address are intercepted by the device model, and do not reach the associated TAP device. | [optional] 
**guest_mac** | **str** |  | [optional] 
**host_dev_name** | **str** | Host level path for the guest network interface | 
**iface_id** | **str** |  | 
**rx_rate_limiter** | [**RateLimiter**](RateLimiter.md) |  | [optional] 
**tx_rate_limiter** | [**RateLimiter**](RateLimiter.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

