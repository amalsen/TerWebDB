# TerWebDB: Terraform-prosjekt for webserver tilkoblet til database i Azure

Terraform-prosjekt som oppretter en VM med webtjeneste og 2 VM med database i lastbalansering

## Struktur

- **`terraform/main.tf`**: Hovedkonfigurasjonsfilen
- **`terraform/variables.tf`**: Definerer variabler
- **`terraform/variables.tfvars`**: Variabler ment til å endres

## Instruksjoner for oppsett

### Forutsetninger

- Installert [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
- Azure-konto med nødvendige rettigheter.
- Installert [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli) og autentisert med `az login`.

### Nedlastning og oppsett

1. **NEDLASTNING**:
- Last ned mappen **`terraform`** og pakk ut
2. **ENDRINGER**
- Gjør nødvendige endringer i **`terraform/variables.tfvars`**
3. **KJØRE TERRAFORM VIA POWERSHELL**
  ```powershell
  cd <stien til terraform-mappen>
  az login
  terraform init
  terraform plan -out main.tfplan
  terraform apply main.tfplan
  ```
- Trykk på enterknappen når **`Enter a value:`** dukker opp når SSH offentlig nøkkel opprettes uten å skrive noe.
4. **ELIMINERE RESSURSER ETTER OPPSETT**
  ```powershell
  terraform plan -destroy -out main.destroy.tfplan
  terraform apply main.destroy.tfplan
  ```
