# Invite users to IBM Cloud Account

The objective of the tile is to add users (email-ids) to the IBM Cloud account using terraform scripts.


## 1. Email Ids
User can enter email-ids of the users in bulk. They will be added to the IBM Cloud account.

### Parameters
- Users have to change the default values given in the parameter.
- After opening the tile, expand the section **Set the deployment values** and provide value for all the parameters.
- All values have to be in a list format separated with comma and no spaces in between. 

#### Email-Ids
- Provide email-ids to be added to the IBM Cloud account in `users` parameter.
 
## 2. Install
- After setting the parameter, click on **Install** to assign users to the access groups. 
- The Schematics workspace gets created and executed to create the IAM resources. 
- The logs for assign users can be seen in Schematics workspace. 