#!/bin/bash

## Assigning values to the parameters from the terraform invocation
CATALOG_NAME="$1"
echo "Private Catalog Name: " ${CATALOG_NAME}
resource_group="$2"
echo "Private Catalog Resource Group: " ${resource_group}
region="$3"
echo "Private Catalog region: " ${region}
apikey="$4"
echo "Private Catalog APIKEY: " ${ibmcloud_api_key}


## Check whether API key for cli access to the IBM Cloud is available or not
if [[ ${apikey} == "" ]]; then

    echo "configuring the environment"
else
 
   ## installing the catalog managament plugin to the IBM Cloud CLI
    echo "about to install plugin catalog management"
    ibmcloud plugin install catalogs-management
    echo "plug in installation completed"

    ## Logging into the IBM Cloud using the parameters from the terraform
    ibmcloud login  --apikey ${apikey} -g ${resource_group} -r ${region}
    echo "Logged in Successfully"

    ## List out all the private catalogs in the account
    ##ibmcloud catalog create --name ${CATALOG_NAME} --description ${CATALOG_NAME}
    echo "List of Private Catlog"
    ibmcloud catalog list

    ## Enabling the filter to the IBM Public Catalog for the private catalog
    ibmcloud catalog filter show-ibm-public-catalog  ${CATALOG_NAME}

    ## Deleting the dafault filter for the private catalog
    echo "deleting default filter"
    ibmcloud catalog filter delete --catalog ${CATALOG_NAME}

    ## display the syntax for the catalog filter
    ##echo "showing syntax for create filter"
    #ibmcloud catalog filter create --help

    ## Creating a new filter for the private catalog enabling the IBM Services with Lite Plans
    echo "Creating filter with IBM Lite Services only"
    ibmcloud catalog filter create --include-all false --provider ibm_created --pricing-plan lite --catalog ${CATALOG_NAME}
    echo "Successfully created the filter with IBM Lite Services only"

fi



##ibmcloud catalog delete ${CATALOG_NAME}