# swagger_client.DefaultApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_snapshot**](DefaultApi.md#create_snapshot) | **PUT** /snapshot/create | Creates a full or diff snapshot. Post-boot only.
[**create_sync_action**](DefaultApi.md#create_sync_action) | **PUT** /actions | Creates a synchronous action.
[**describe_balloon_config**](DefaultApi.md#describe_balloon_config) | **GET** /balloon | Returns the current balloon device configuration.
[**describe_balloon_stats**](DefaultApi.md#describe_balloon_stats) | **GET** /balloon/statistics | Returns the latest balloon device statistics, only if enabled pre-boot.
[**describe_instance**](DefaultApi.md#describe_instance) | **GET** / | Returns general information about an instance.
[**get_machine_configuration**](DefaultApi.md#get_machine_configuration) | **GET** /machine-config | Gets the machine configuration of the VM.
[**load_snapshot**](DefaultApi.md#load_snapshot) | **PUT** /snapshot/load | Loads a snapshot. Pre-boot only.
[**mmds_config_put**](DefaultApi.md#mmds_config_put) | **PUT** /mmds/config | Set MMDS configuration. Pre-boot only.
[**mmds_get**](DefaultApi.md#mmds_get) | **GET** /mmds | Get the MMDS data store.
[**mmds_patch**](DefaultApi.md#mmds_patch) | **PATCH** /mmds | Updates the MMDS data store.
[**mmds_put**](DefaultApi.md#mmds_put) | **PUT** /mmds | Creates a MMDS (Microvm Metadata Service) data store.
[**patch_balloon**](DefaultApi.md#patch_balloon) | **PATCH** /balloon | Updates a balloon device.
[**patch_balloon_stats_interval**](DefaultApi.md#patch_balloon_stats_interval) | **PATCH** /balloon/statistics | Updates a balloon device statistics polling interval.
[**patch_guest_drive_by_id**](DefaultApi.md#patch_guest_drive_by_id) | **PATCH** /drives/{drive_id} | Updates the properties of a drive. Post-boot only.
[**patch_guest_network_interface_by_id**](DefaultApi.md#patch_guest_network_interface_by_id) | **PATCH** /network-interfaces/{iface_id} | Updates the rate limiters applied to a network interface. Post-boot only.
[**patch_machine_configuration**](DefaultApi.md#patch_machine_configuration) | **PATCH** /machine-config | Partially updates the Machine Configuration of the VM. Pre-boot only.
[**patch_vm**](DefaultApi.md#patch_vm) | **PATCH** /vm | Updates the microVM state.
[**put_balloon**](DefaultApi.md#put_balloon) | **PUT** /balloon | Creates or updates a balloon device.
[**put_guest_boot_source**](DefaultApi.md#put_guest_boot_source) | **PUT** /boot-source | Creates or updates the boot source. Pre-boot only.
[**put_guest_drive_by_id**](DefaultApi.md#put_guest_drive_by_id) | **PUT** /drives/{drive_id} | Creates or updates a drive. Pre-boot only.
[**put_guest_network_interface_by_id**](DefaultApi.md#put_guest_network_interface_by_id) | **PUT** /network-interfaces/{iface_id} | Creates a network interface. Pre-boot only.
[**put_guest_vsock**](DefaultApi.md#put_guest_vsock) | **PUT** /vsock | Creates/updates a vsock device. Pre-boot only.
[**put_logger**](DefaultApi.md#put_logger) | **PUT** /logger | Initializes the logger by specifying a named pipe or a file for the logs output.
[**put_machine_configuration**](DefaultApi.md#put_machine_configuration) | **PUT** /machine-config | Updates the Machine Configuration of the VM. Pre-boot only.
[**put_metrics**](DefaultApi.md#put_metrics) | **PUT** /metrics | Initializes the metrics system by specifying a named pipe or a file for the metrics output.

# **create_snapshot**
> create_snapshot(body)

Creates a full or diff snapshot. Post-boot only.

Creates a snapshot of the microVM state. The microVM should be in the `Paused` state.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.SnapshotCreateParams() # SnapshotCreateParams | The configuration used for creating a snaphot.

try:
    # Creates a full or diff snapshot. Post-boot only.
    api_instance.create_snapshot(body)
except ApiException as e:
    print("Exception when calling DefaultApi->create_snapshot: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SnapshotCreateParams**](SnapshotCreateParams.md)| The configuration used for creating a snaphot. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_sync_action**
> create_sync_action(body)

Creates a synchronous action.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.InstanceActionInfo() # InstanceActionInfo | 

try:
    # Creates a synchronous action.
    api_instance.create_sync_action(body)
except ApiException as e:
    print("Exception when calling DefaultApi->create_sync_action: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InstanceActionInfo**](InstanceActionInfo.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **describe_balloon_config**
> Balloon describe_balloon_config()

Returns the current balloon device configuration.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()

try:
    # Returns the current balloon device configuration.
    api_response = api_instance.describe_balloon_config()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->describe_balloon_config: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Balloon**](Balloon.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **describe_balloon_stats**
> BalloonStats describe_balloon_stats()

Returns the latest balloon device statistics, only if enabled pre-boot.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()

try:
    # Returns the latest balloon device statistics, only if enabled pre-boot.
    api_response = api_instance.describe_balloon_stats()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->describe_balloon_stats: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BalloonStats**](BalloonStats.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **describe_instance**
> InstanceInfo describe_instance()

Returns general information about an instance.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()

try:
    # Returns general information about an instance.
    api_response = api_instance.describe_instance()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->describe_instance: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InstanceInfo**](InstanceInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_machine_configuration**
> MachineConfiguration get_machine_configuration()

Gets the machine configuration of the VM.

Gets the machine configuration of the VM. When called before the PUT operation, it will return the default values for the vCPU count (=1), memory size (=128 MiB). By default Hyperthreading is disabled and there is no CPU Template.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()

try:
    # Gets the machine configuration of the VM.
    api_response = api_instance.get_machine_configuration()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->get_machine_configuration: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MachineConfiguration**](MachineConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **load_snapshot**
> load_snapshot(body)

Loads a snapshot. Pre-boot only.

Loads the microVM state from a snapshot. Only accepted on a fresh Firecracker process (before configuring any resource other than the Logger and Metrics).

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.SnapshotLoadParams() # SnapshotLoadParams | The configuration used for loading a snaphot.

try:
    # Loads a snapshot. Pre-boot only.
    api_instance.load_snapshot(body)
except ApiException as e:
    print("Exception when calling DefaultApi->load_snapshot: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SnapshotLoadParams**](SnapshotLoadParams.md)| The configuration used for loading a snaphot. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmds_config_put**
> mmds_config_put(body)

Set MMDS configuration. Pre-boot only.

Creates MMDS configuration to be used by the MMDS network stack.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.MmdsConfig() # MmdsConfig | The MMDS configuration as JSON.

try:
    # Set MMDS configuration. Pre-boot only.
    api_instance.mmds_config_put(body)
except ApiException as e:
    print("Exception when calling DefaultApi->mmds_config_put: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MmdsConfig**](MmdsConfig.md)| The MMDS configuration as JSON. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmds_get**
> object mmds_get()

Get the MMDS data store.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()

try:
    # Get the MMDS data store.
    api_response = api_instance.mmds_get()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling DefaultApi->mmds_get: %s\n" % e)
```

### Parameters
This endpoint does not need any parameter.

### Return type

**object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmds_patch**
> mmds_patch(body=body)

Updates the MMDS data store.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = NULL # object | The MMDS data store patch JSON. (optional)

try:
    # Updates the MMDS data store.
    api_instance.mmds_patch(body=body)
except ApiException as e:
    print("Exception when calling DefaultApi->mmds_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**object**](object.md)| The MMDS data store patch JSON. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mmds_put**
> mmds_put(body=body)

Creates a MMDS (Microvm Metadata Service) data store.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = NULL # object | The MMDS data store as JSON. (optional)

try:
    # Creates a MMDS (Microvm Metadata Service) data store.
    api_instance.mmds_put(body=body)
except ApiException as e:
    print("Exception when calling DefaultApi->mmds_put: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**object**](object.md)| The MMDS data store as JSON. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_balloon**
> patch_balloon(body)

Updates a balloon device.

Updates an existing balloon device, before or after machine startup. Will fail if update is not possible.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.BalloonUpdate() # BalloonUpdate | Balloon properties

try:
    # Updates a balloon device.
    api_instance.patch_balloon(body)
except ApiException as e:
    print("Exception when calling DefaultApi->patch_balloon: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BalloonUpdate**](BalloonUpdate.md)| Balloon properties | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_balloon_stats_interval**
> patch_balloon_stats_interval(body)

Updates a balloon device statistics polling interval.

Updates an existing balloon device statistics interval, before or after machine startup. Will fail if update is not possible.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.BalloonStatsUpdate() # BalloonStatsUpdate | Balloon properties

try:
    # Updates a balloon device statistics polling interval.
    api_instance.patch_balloon_stats_interval(body)
except ApiException as e:
    print("Exception when calling DefaultApi->patch_balloon_stats_interval: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BalloonStatsUpdate**](BalloonStatsUpdate.md)| Balloon properties | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_guest_drive_by_id**
> patch_guest_drive_by_id(body, drive_id)

Updates the properties of a drive. Post-boot only.

Updates the properties of the drive with the ID specified by drive_id path parameter. Will fail if update is not possible.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.PartialDrive() # PartialDrive | Guest drive properties
drive_id = 'drive_id_example' # str | The id of the guest drive

try:
    # Updates the properties of a drive. Post-boot only.
    api_instance.patch_guest_drive_by_id(body, drive_id)
except ApiException as e:
    print("Exception when calling DefaultApi->patch_guest_drive_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PartialDrive**](PartialDrive.md)| Guest drive properties | 
 **drive_id** | **str**| The id of the guest drive | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_guest_network_interface_by_id**
> patch_guest_network_interface_by_id(body, iface_id)

Updates the rate limiters applied to a network interface. Post-boot only.

Updates the rate limiters applied to a network interface.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.PartialNetworkInterface() # PartialNetworkInterface | A subset of the guest network interface properties
iface_id = 'iface_id_example' # str | The id of the guest network interface

try:
    # Updates the rate limiters applied to a network interface. Post-boot only.
    api_instance.patch_guest_network_interface_by_id(body, iface_id)
except ApiException as e:
    print("Exception when calling DefaultApi->patch_guest_network_interface_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PartialNetworkInterface**](PartialNetworkInterface.md)| A subset of the guest network interface properties | 
 **iface_id** | **str**| The id of the guest network interface | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_machine_configuration**
> patch_machine_configuration(body=body)

Partially updates the Machine Configuration of the VM. Pre-boot only.

Partially updates the Virtual Machine Configuration with the specified input. If any of the parameters has an incorrect value, the whole update fails.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.MachineConfiguration() # MachineConfiguration | A subset of Machine Configuration Parameters (optional)

try:
    # Partially updates the Machine Configuration of the VM. Pre-boot only.
    api_instance.patch_machine_configuration(body=body)
except ApiException as e:
    print("Exception when calling DefaultApi->patch_machine_configuration: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MachineConfiguration**](MachineConfiguration.md)| A subset of Machine Configuration Parameters | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **patch_vm**
> patch_vm(body)

Updates the microVM state.

Sets the desired state (Paused or Resumed) for the microVM.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.Vm() # Vm | The microVM state

try:
    # Updates the microVM state.
    api_instance.patch_vm(body)
except ApiException as e:
    print("Exception when calling DefaultApi->patch_vm: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Vm**](Vm.md)| The microVM state | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_balloon**
> put_balloon(body)

Creates or updates a balloon device.

Creates a new balloon device if one does not already exist, otherwise updates it, before machine startup. This will fail after machine startup. Will fail if update is not possible.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.Balloon() # Balloon | Balloon properties

try:
    # Creates or updates a balloon device.
    api_instance.put_balloon(body)
except ApiException as e:
    print("Exception when calling DefaultApi->put_balloon: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Balloon**](Balloon.md)| Balloon properties | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_guest_boot_source**
> put_guest_boot_source(body)

Creates or updates the boot source. Pre-boot only.

Creates new boot source if one does not already exist, otherwise updates it. Will fail if update is not possible.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.BootSource() # BootSource | Guest boot source properties

try:
    # Creates or updates the boot source. Pre-boot only.
    api_instance.put_guest_boot_source(body)
except ApiException as e:
    print("Exception when calling DefaultApi->put_guest_boot_source: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BootSource**](BootSource.md)| Guest boot source properties | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_guest_drive_by_id**
> put_guest_drive_by_id(body, drive_id)

Creates or updates a drive. Pre-boot only.

Creates new drive with ID specified by drive_id path parameter. If a drive with the specified ID already exists, updates its state based on new input. Will fail if update is not possible.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.Drive() # Drive | Guest drive properties
drive_id = 'drive_id_example' # str | The id of the guest drive

try:
    # Creates or updates a drive. Pre-boot only.
    api_instance.put_guest_drive_by_id(body, drive_id)
except ApiException as e:
    print("Exception when calling DefaultApi->put_guest_drive_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Drive**](Drive.md)| Guest drive properties | 
 **drive_id** | **str**| The id of the guest drive | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_guest_network_interface_by_id**
> put_guest_network_interface_by_id(body, iface_id)

Creates a network interface. Pre-boot only.

Creates new network interface with ID specified by iface_id path parameter.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.NetworkInterface() # NetworkInterface | Guest network interface properties
iface_id = 'iface_id_example' # str | The id of the guest network interface

try:
    # Creates a network interface. Pre-boot only.
    api_instance.put_guest_network_interface_by_id(body, iface_id)
except ApiException as e:
    print("Exception when calling DefaultApi->put_guest_network_interface_by_id: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**NetworkInterface**](NetworkInterface.md)| Guest network interface properties | 
 **iface_id** | **str**| The id of the guest network interface | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_guest_vsock**
> put_guest_vsock(body)

Creates/updates a vsock device. Pre-boot only.

The first call creates the device with the configuration specified in body. Subsequent calls will update the device configuration. May fail if update is not possible.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.Vsock() # Vsock | Guest vsock properties

try:
    # Creates/updates a vsock device. Pre-boot only.
    api_instance.put_guest_vsock(body)
except ApiException as e:
    print("Exception when calling DefaultApi->put_guest_vsock: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Vsock**](Vsock.md)| Guest vsock properties | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_logger**
> put_logger(body)

Initializes the logger by specifying a named pipe or a file for the logs output.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.Logger() # Logger | Logging system description

try:
    # Initializes the logger by specifying a named pipe or a file for the logs output.
    api_instance.put_logger(body)
except ApiException as e:
    print("Exception when calling DefaultApi->put_logger: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Logger**](Logger.md)| Logging system description | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_machine_configuration**
> put_machine_configuration(body=body)

Updates the Machine Configuration of the VM. Pre-boot only.

Updates the Virtual Machine Configuration with the specified input. Firecracker starts with default values for vCPU count (=1) and memory size (=128 MiB). With Hyperthreading enabled, the vCPU count is restricted to be 1 or an even number, otherwise there are no restrictions regarding the vCPU count. If any of the parameters has an incorrect value, the whole update fails.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.MachineConfiguration() # MachineConfiguration | Machine Configuration Parameters (optional)

try:
    # Updates the Machine Configuration of the VM. Pre-boot only.
    api_instance.put_machine_configuration(body=body)
except ApiException as e:
    print("Exception when calling DefaultApi->put_machine_configuration: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MachineConfiguration**](MachineConfiguration.md)| Machine Configuration Parameters | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_metrics**
> put_metrics(body)

Initializes the metrics system by specifying a named pipe or a file for the metrics output.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.DefaultApi()
body = swagger_client.Metrics() # Metrics | Metrics system description

try:
    # Initializes the metrics system by specifying a named pipe or a file for the metrics output.
    api_instance.put_metrics(body)
except ApiException as e:
    print("Exception when calling DefaultApi->put_metrics: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Metrics**](Metrics.md)| Metrics system description | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

