# IBM Cloud Reference Architecture

This reference architecture is a package of Terraform automation that can be configured and run in IBM Cloud. Read the instructions before configuring a schematics workspace.

## {name}

{short_desc}

{long_desc}

The following diagram gives an overview of the IBM Cloud architecture topology and the components that will be configured by the Terraform automation.

![Reference Diagram](./{diagram})

## Prepare Git Repo

The following steps will guide you through the creation of a Schematics Workspace in IBM Cloud, before you get started please read the important comment below about IBM Cloud API keys.

> #### Sensitive variable values
>
> - NEVER save API keys in `variables.tf` file
> - NEVER push any API keys or senstive data to a git repository
>
>  *Use Terraform Environment Variables if locally testing* Read more [here](https://www.terraform.io/docs/language/values/variables.html#environment-variables)

1. If you are reading README.MD file then you have received or download a package of terraform automation. Follow these instructions to provision this refernece archtiecture in IBM Cloud using the Schematics Terraform as a Service capability.

2. Using your favourite Git source code management capabilility either in IBM Cloud or intInitial a Git Repository to store this package of Terraform within, follow instructions for `git init` etc.

3. Push the Terraform into your repository

```
git add .
git commit -m "initial release"
git push
```

4. Within the IBM Cloud Console create an IBM Cloud Schematics Workspace


## Terraform Modules

For more documentation on the specific features of the terraform modules included in this reference architecture use the referenced links below

{modules}

## Summary

For more information on IBM Cloud , IBM Schematics and Reference Architectures please reference these links below :


- [IBM Cloud Documentations](https://cloud.ibm.com/docs)

