output "test" {
  value = var.x == 2 ? "yes it is equal" : "No,those are not equal"
}
variable "x" {
  default = 2
}