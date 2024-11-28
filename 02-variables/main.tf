variable "URL" {
  default = "example.com"
}

#Access a variable
##how do i access a variable

output "URL" {
  value = var.URL
}
# variable is a combination of some other string.then we have to use ${}
output "URL1" {
  value = "URL - ${var.URL}"
}

#data types
variable "num1" {
  default = "10"
}
variable "bool1" {
  default = "true"
}
variable "str1" {
  default = "Hello"
}
# numbers,booleans & strings