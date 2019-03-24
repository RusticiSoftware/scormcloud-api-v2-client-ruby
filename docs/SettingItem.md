# RusticiSoftwareCloudV2::SettingItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**effective_value** | **String** | The value of this setting that would be used if read at this level, including defaults, fallback, and values set at less specific levels. | [optional] 
**effective_value_source** | **String** | The source of this effective value, default, fallback, or the level the value was set at. | [optional] 
**explicit_value** | **String** | The value of this setting that is explicitly set at this level. If not present, the setting is not specified at this level. | [optional] 
**metadata** | [**SettingMetadata**](SettingMetadata.md) |  | [optional] 


