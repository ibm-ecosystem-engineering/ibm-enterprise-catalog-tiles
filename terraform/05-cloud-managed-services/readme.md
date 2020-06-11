# IBM GSI Sandbox Private Catalog Tiles in IBM Cloud

This document helps to bind the below services to the existing OCP/IKS containers. 

```
    App ID
    Cloudant
    Cloud Object Storage
```
## 1. Create Private Catalog in IBM Cloud.

For createing private catalog title follow the below reference URL.

Refernce URL: https://developer.ibm.com/recipes/tutorials/creating-private-catalog-tiles-in-ibm-cloud/

## 2.  View Private Catalog Tiles. 

Here are the steps to view the Private Catalog tiles.

<details><summary>CLICK ME</summary>

1. Click on `Catalog` in ibm cloud web console.


2. Choose the `IBM-GSI-SANDBOX` menu.

<img src="images/view-catalog.png" width="600">
<br></br>

3. It shows the  tile that we created.

<img src="images/view-tile.png" width="600">
<br></br>

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