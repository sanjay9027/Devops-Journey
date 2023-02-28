module "user_module" {
  source      = "../../terraform-module/users"
  environment = "dev"
}