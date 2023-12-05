# Sign in to Azure 
Connect-AzAccount 

# Choose the temporary Learn Subscription
Set-AzContext XXX 

# Create a resource group for the exercise 
New-AzResourceGroup `
  -Name myResourceGroup `
  -Location "Central US" 

# Deploy the template
$templateFile = "./azuredeploy.json"
New-AzResourceGroupDeployment `
  -Name blanktemplate `
  -ResourceGroupName myResourceGroup `
  -TemplateFile $templateFile 

