terraform-Module/
│
├── main.tf              # root calling all modules
├── variables.tf         # defines variables used in root module
├── terraform.tfvars     # ONLY at root level
├── outputs.tf
│
└── modules/
    ├── ec2/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── vpc/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    ├── security_group/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    └── storage/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf