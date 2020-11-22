# IBM Cloud - Enterprise tiles

One of the features of the IBM Cloud Catalog is support for private catalog tiles. These can
contain custom Terraform definitions that can accelerate SRE teams in the execution of common
and repetitive tasks. This collection of Enterprise tiles can help speed up repetative tasks. This is the recommended approach for using this asset multiple times.
These tiles focus on common tasks when preparing an IBM Cloud account for production use. They help create **Resource Groups**, **Access Groups** defined with the correct access policies for general usage and a lot more

## Enterprise tiles

The following Enterprise tiles are included in this git repository. They compliment the **Cloud-Native Toolkit** that add a set of DevSecOps tools that accelerate your Software Delivery Life Cycle approach with IBM Cloud. They can be found here [Cloud-Native Toolkit Private Catalog Tiles](https://cloudnativetoolkit.dev/getting-started-day-0/install-toolkit/private-catalog)

  | **Tile**      | **README**                                                       | 
  |---------------|------------------------------------------------------------------|
    | `100`         |  [Create Resource Group Creation](tiles/create-resource-groups) |
    | `110`         |  [Access Groups and Access Policies Creation](tiles/create-access-group-policies)|
    | `120`         |  [Invite users to IBM Cloud Account](tiles/invite-users)    |
    | `130`         |  [Assign users to Access Groups](tiles/add-users-to-access-groups)     |
    | `140`         |  [Binding App ID, Cloudant and Cloud Object Storage services](tiles/cloud-managed-services)        |
    | `150`         |  [Create IBM Lite Services](tiles/enable-catalog-lite-services) | 

## Installation

Follow the steps below to install the Enterprise tiles in your IBM Cloud Private Catalog.

### A. Create the catalog

1. Log in to the IBM Cloud Console
2. Click **Manage->Catalogs** from the top menu
3. Click on **Create Catalog**
4. In the `Create a catalog` dialog, provide the following values:
    - **name:** the name of the catalog, for example `SRE Catalog`
    - **description:** (optional) a brief description of the purpose of the catalog
    - **products:** select **Start with no products**
    - **resource group:** click **Update** to change the default resource group for the catalog
5. Click **Create** to complete the catalog creation

### B. Register the Enterprise tiles in the catalog

**Note:** The following instructions depend on the `jq` command. please make sure you environment has this useful utility installed

1. Download `create-catalog-offering.sh` from the <a href="https://github.com/ibm-gsi-ecosystem/ibm-enterprise-catalog-tiles/releases/latest" target="_blank">latest Enterprise tiles release</a> and make the file executable. Copy this script into your CLI.
    ```shell script
    LATEST_RELEASE=$(curl -sL https://api.github.com/repos/ibm-gsi-ecosystem/ibm-enterprise-catalog-tiles/releases/latest | jq -r '.tag_name')
    curl -OL "https://github.com/ibm-gsi-ecosystem/ibm-enterprise-catalog-tiles/releases/download/${LATEST_RELEASE}/create-enterprise-tiles.sh"
    chmod +x create-enterprise-tiles.sh
    ```

2. Run the `create-enterprise-tiles` scripts passing in the API Key and the name of the catalog that you created
    ```shell script
    ./create-enterprise-tiles.sh {API_KEY} "Team Catalog"
    ```

### C. Apply the tile

Once the tiles has been installed it can be used repeatedly managing common IBM Cloud Account SRE activities

1. Log in to the IBM Cloud Console.
2. Select **Catalog** from the top menu.
3. From the side menu, select your catalog from the drop-down list (e.g. `SRE Catalog`). (**IBM Cloud catalog** should be selected initially.)
4. Click **Private** on the side menu to see the private catalog entries

5. Click on the tile and click the About tab to read how to use it 
6. Enter values for the variables that are required.

7. Check the box to accept the **Apache 2** license for the tile.
8. Click **Install** to start the install process

This will kick off the tile terraform in a schematics process. This progress can be reviewed from the
**Schematics** menu on the IBM Cloud Console

## Post-installation steps

Once the Terraform has completed, walk through the [post installation steps](/getting-started-day-0/post-installation) to
explore and verify the environment.

## Troubleshooting

If you find that the Terraform provisioning has failed, for Private Catalog delete the workspace and for Enterprise tile  try re-running the `runTerraform.sh` script again.
The state will be saved and Terraform will try and apply the configuration to match the desired end state.

IBM Cloud setup utilities helps to create IAM entries and some basic services in IBM cloud account. The Utilities are created as Private Catalog tiles and users can run the tiles to get them created in IBM Cloud Account.

Here is the complete list of utilities available. 



