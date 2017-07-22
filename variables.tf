variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "all_cidrs"   { type = "list" }
variable "gonad_cidrs" { type = "list" }
