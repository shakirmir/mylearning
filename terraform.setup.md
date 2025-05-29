https://learn.microsoft.com/en-us/azure/developer/terraform/get-started-windows-bash 

# Pre-requisites: 
1. **Install git**
2. **Install az cli** 
3. **Install terraform** 
4. **Configure your environment to run Terraform on Windows -setp env variable**
5. **Authenticate via a Microsoft account from Windows (using Bash or PowerShell)**: 

- https://learn.microsoft.com/en-us/azure/developer/terraform/get-started-windows-bash
6. **Create a service principal using the Azure CLI - Authenticate terraform using service princple to azure**
- https://learn.microsoft.com/en-us/azure/developer/terraform/authenticate-to-azure-with-service-principle?tabs=bash 

```
az ad sp create-for-rbac --query "{ client_id: appId, client_secret: password, tenant_id: tenant }" 

```

**Note:Service principal is an identity used by applications,services,scripts to authenticate and access azure resources**
**By default, the created Service Principal has Contributor role access to the subscription**

 