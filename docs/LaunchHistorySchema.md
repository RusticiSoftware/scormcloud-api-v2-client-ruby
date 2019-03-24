# RusticiSoftwareCloudV2::LaunchHistorySchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**instance** | **Integer** |  | [optional] 
**score** | [**ScoreSchema**](ScoreSchema.md) |  | [optional] 
**completion_status** | **String** |  | [optional] [default to &quot;UNKNOWN&quot;]
**success_status** | **String** |  | [optional] [default to &quot;UNKNOWN&quot;]
**history_log** | **String** |  | [optional] 
**total_seconds_tracked** | **Float** |  | [optional] 
**launch_time** | **DateTime** | The time of the launch in UTC | [optional] 
**exit_time** | **DateTime** | The time of the exit in UTC | [optional] 
**last_runtime_update** | **DateTime** | The time of the last runtime update in UTC | [optional] 


