# Assign users to Access Groups

The objective of the tile is to assign users (email-ids) to the Access Groups in IAM using terraform scripts.


## 1. Email Ids
User can enter email-ids for ADMINS and USERS in bulk. They will be assigned to the below mentioned Access Groups.

## 2. Access Groups

### Access Groups - Admins
Here are the default access groups for admin.
```
    CLOUDMANAGEMENT-ADMINS
    APPDEV-ADMINS
    APPDEV-ENVIRONMENT-ADMINS
    INTEGRATION-ADMINS
    DATA-ADMINS
    AUTOMATION-ADMINS
```

### Access Groups - Users
Here are the default access groups for users.
```
    APPDEV-USERS
```

### Parameters
- Users can change the default values given in the parameter.
- After opening the tile, expand the section **Set the deployment values** and provide value for all the parameters.
- All values have to be in a list format separated with comma and no spaces in between. 

#### Access Groups
- If you have created different access-groups than the above mentioned default access-groups, you can provide the names of those.
- Provide all the Admin access-group names in `admin_access_groups` parameter.
- Provide all User access-group names in `user_access_groups` parameter. 

#### Email-Ids
- Email-ids to be added to the Admins access-group in `admin_ids` parameter, 
- Email-ids to be added to the Users acess-group in `user_ids` parameter. 
 
## 3. Install
- After setting the parameter, click on **Install** to assign users to the access groups. 
- The Schematics workspace gets created and executed to create the IAM resources. 
- The logs for assign users can be seen in Schematics workspace.