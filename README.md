# IBM Cloud GSI Sandbox - Private Catalog tiles

```
    Resource Group
    Access Group
    Assign Users to Access Group
    Assign Access Policies to Access Group
    Provision Cloud Managed Services
    Enterprise Lite Catalog
```

<img src="images/00-tiles.png" width="900" title="Issue" bordercolor=green>


## 1. View Private Catalog Tiles. 

Here are the steps to view the Private Catalog tiles.

1. Click on `Catalog` in ibm cloud web console.

2. Choose the `Sandbox-Catalog` menu. 

3. It shows the 7 tiles that we created.

Note: To know how to create private catalog, you can refer https://github.ibm.com/gsi-labs/ibm-gsi-learning-private-catalog


## 2. Run Tiles

Here are the steps to run the tiles.

### 1. Run Tile - Resource Group

1. Click on `Resource Group` tile listed in the `Sandbox-Catalog` private catalog 

2. It shows the tile details page. Default values are displayed. You can modify the values. 

<img src="images/03-tiledetails-1.png" width="900" >
<img src="images/03-tiledetails-2.png" width="900" >

3. Click on `Install` link. 

It creates the resource groups.

### 2. Install your clusters.

Install the required clusters.

### 3. Run Tile - Access Group and Access Policies

1. Click on `Access Group and Access Policies` tile listed in the `Sandbox-Catalog` private catalog 

2. It shows the tile details page. Default values are displayed. You can modify the values. 

Make sure you give same Resource-Groups that you have entered in the previous step.

<img src="images/03-tiledetails-3.png" width="900" >
<img src="images/03-tiledetails-4.png" width="900" >

3. Click on `Install` link. 

It creates the access groups and assign access polcies.

### 4. Run Tile - Assign User to Access Group

1. Click on `Assign User to Access Group` tile listed in the `Sandbox-Catalog` private catalog 

2. It shows the tile details page. Default values are displayed. You can modify the values. 

Make sure you give same Access-Groups that you have entered in the previous step.

<img src="images/03-tiledetails-5.png" width="900" >
<img src="images/03-tiledetails-6.png" width="900" >

3. Click on `Install` link. 

It assigns users to the access groups.


# 3. IAM Objects

<details><summary>CLICK ME</summary>

The below diagram describes the various objects created by these tiles.

<img src="images/01-sandbox-arch.png" width="900" title="Issue" bordercolor=green>

Here is the list of objects created by default.

### Resource Groups

The below resource groups are cretaed. 

```
    appdev-cloudnative
    cloud-management
    business-data
    business-automation
```

IBM Cloud IAM screen with the created resource groups

<img src="images/02-iam-resource-group.png" width="656" title="Resource Group" bordercolor=blue>

### Access Groups

The below access Groups are cretaed. 

```
    CLOUDMANAGEMENT-ADMINS
    APPDEV-ADMINS
    APPDEV-ENVIRONMENT-ADMINS
    APPDEV-USERS
    INTEGRATION-ADMINS
    DATA-ADMINS
    AUTOMATION-ADMINS
```

IBM Cloud IAM screen with the created access groups

<img src="images/02-iam-access-groups.png" width="656" title="Access Group" bordercolor=blue>

### Access Policies

The below access Policies are cretaed. 

For all ADMIN groups 

```
-   Resource Group  - 40
-   Resource Group  - 10
-   Kubernetes - 45
-   Container Registery - 64
```

For all USERS groups

```
-   Resource Group - 32
-   Resource Group - 10
-   Kubernetes - 73
-   Kubernetes - 73 with IKS instance
-   Kubernetes - 73 with OCP instance
-   Container Registery - 41
-   Cloudant - 94
-   COS - 197
-   SysDig - 37
-   LogDNA - 69
-   AppID - 259
```
IBM Cloud IAM screen with the created access Policies

<img src="images/02-iam-access-groups-policy-admin.png" width="656" title="Access Group" bordercolor=blue>

The figures above shows the default access policies added to the access group `CLOUDMANAGEMENT-ADMINS`.

<img src="images/02-iam-access-groups-policy-users.png" width="656" title="Access Group" bordercolor=blue>

The figures above shows the default access policies added to the access group `APPDEV-USERS`.

### Clusters

By default 5 clusters are installed, one for each cloud pak.
```
    Cloud Pak for Application
    Cloud Pak for Integration
    Cloud Pak for Multicloud Management
    Cloud Pak for Automation
    Cloud Pak for Data
```

</details>

## 3. Run Tile - "Cloud Managed Services"

Here are the steps to run the tile `Cloud Managed Services`

<details><summary>CLICK ME</summary>

1. Click on `Cloud Managed Services` tile listed in the `IBM-GSI-SANDBOX` private catalog (See the previous section to open it) .

2. It shows the tile details page.


<img src="images/tile-view-page.png" width="600">
<br></br>

3. It shows the readme that we have entered

<img src="images/tile-readme-page.png" width="600">
<br></br>

4. By clicking on `Doc` link, it shows the readme.me that we have linked

<img src="images/doc.png" width="600">
<br></br>

5. Set the  `deployment values`. Enter the values for the respective input parameters.

<img src="images/deployement-values.png" width="600">
<br></br>

6. Click on `Install` link, run the tile to create services to the respective OCP/IKS conatiners.

7. It shows `Apply Plan` which indicates the status of the execution.

<img src="images/apply-plan.png" width="600">
<br></br>

8. Execution is completed.

<img src="images/execution-completed.png" width="600">

9. Here are the logs.

<img src="images/execution-log.png" width="600">
<br></br>

10. Click on `Resource List` in ibm cloud web console to view the resources.

<img src="images/resource-list.png" width="600">
<br></br>

11. its show the list of services which we created using the Tile.

<img src="images/services-list.png" width="600">
<br></br>

</details>

# 4. References

#### How to create Private Catalog tiles.

How to create private catalog and tiles are detailed in the below docmentation.

https://github.ibm.com/gsi-labs/ibm-gsi-learning-private-catalog
