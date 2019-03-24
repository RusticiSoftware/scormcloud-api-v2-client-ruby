# RusticiSoftwareCloudV2::SettingMetadata

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default** | **String** | Default value of this setting | [optional] 
**data_type** | **String** | The data type of this setting | [optional] 
**setting_description** | **String** | description of this setting | [optional] 
**level** | **String** | The level this setting will be applied at, which limits where it can be set. For example, WebPathToContentRoot is applied at the application level, so it&#39;s not valid to set it for a registration. | [optional] 
**learning_standards** | **Array&lt;String&gt;** | The list of learning standards this setting applies to. If not present, this setting is not limited to certain learning standards. | [optional] 
**learning_standard_variant** | **String** | Does this setting apply to only single-SCO packages, only multi-SCO, or either? | [optional] [default to &quot;either&quot;]
**fallback** | **String** | A setting that will be used instead of this setting if no value is provided for this setting (This is similar to a default, except that the the value of another setting is being used instead of a fixed default value). | [optional] 
**valid_values** | [**Array&lt;SettingMetadataValidValues&gt;**](SettingMetadataValidValues.md) | For settings with a fixed list of valid values, the list of those values | [optional] 


