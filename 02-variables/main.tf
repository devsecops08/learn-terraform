variable "URL" {
  default = "example.com"
}

#Access a variable
##how do i access a variable

output "URL" {
  value = var.URL
}