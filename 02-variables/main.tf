variable "URL" {
  default = "example.com"
}

#Access a variable
##how do i access a variable

output "URL" {
  value = var.URL
}
# variable is a combination of some other string.then we have to use ${}
output "URL2" {
  value = "URL - ${var.URL}"
}
