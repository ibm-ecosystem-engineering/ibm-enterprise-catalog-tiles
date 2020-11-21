# Resource Group Creation
The objective of the tile is to create the Resource Groups in IAM using the terraform script.

## 1. Resource Groups

Following are the default values of resource groups for GSI sandbox. However, users can provide resource group names as per their requriement.
```
    appdev-cloudnative
    cloud-management
    business-data
    business-automation
```

### Parameters
- Users can change the default values given in the parameter.
- After opening the tile, expand the section **Set the deployment values** and provide value for `resourceGroups` parameter.
- The input value has to be a list of resource-group names separated with comma and no space in between. 
- Any number of resource-group names can be provided in the list at once. 

#### Note
- Resource group's name in the cloud account has to be unique. Hence, providing the names of resource-groups which are already present in the account, would lead to failure during tile workspace execution.

## 2. Install
- After setting the parameter, click on **Install** to create the resource-groups. 
- The Schematics workspace gets created from the private catalog tile and executed to create the IAM resources. 
- The logs for resource creation can be seen in Schematics workspace.