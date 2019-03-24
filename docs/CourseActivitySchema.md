# RusticiSoftwareCloudV2::CourseActivitySchema

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**external_identifier** | **String** | An arbitrary identifier that the external LMS system can associate with this LearningObject to track it as it isreused across courses  | [optional] 
**item_identifier** | **String** | The string which identifies this activity in the context of its course | [optional] 
**resource_identifier** | **String** | The string which identifies this activity&#39;s resource in a course&#39;s manifest | [optional] 
**activity_type** | **String** | The type of activity this is | [optional] 
**href** | **String** | The web path used to launch this activity | [optional] 
**scaled_passing_score** | **String** | The score required of a learner to pass this activity | [optional] 
**title** | **String** | The title of the activity | [optional] 
**children** | [**Array&lt;CourseActivitySchema&gt;**](CourseActivitySchema.md) |  | [optional] 


