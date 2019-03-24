# RusticiSoftwareCloudV2::ActivityResultSchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [optional] 
**title** | **String** |  | [optional] 
**attempts** | **Integer** |  | [optional] 
**activity_completion** | **String** |  | [optional] 
**activity_success** | **String** |  | [optional] 
**score** | [**ScoreSchema**](ScoreSchema.md) |  | [optional] 
**time_tracked** | **String** |  | [optional] 
**completion_amount** | [**CompletionAmountSchema**](CompletionAmountSchema.md) |  | [optional] 
**suspended** | **BOOLEAN** |  | [optional] 
**children** | [**Array&lt;ActivityResultSchema&gt;**](ActivityResultSchema.md) |  | [optional] 
**objectives** | [**Array&lt;ObjectiveSchema&gt;**](ObjectiveSchema.md) |  | [optional] 
**static_properties** | [**StaticPropertiesSchema**](StaticPropertiesSchema.md) |  | [optional] 
**runtime** | [**RuntimeSchema**](RuntimeSchema.md) |  | [optional] 


