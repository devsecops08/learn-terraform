variable "URL" {
  default = "example.com"
}

#Access a variable
#how do i access a variable

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
#variable types
variable "str2" {
  default = "WORLD"
}
variable "list1" {
  default = [
    10,
    20,
    xyz,
    false
  ]
}
# list can have a multiple data types also
variable "map1" {
  default = {
    aws ={
      trainer="john"
      duration="30"
    }
    devops={
        trainer="steve"
        duration="30"
    }
  }
}
output "list1_1" {
  value = var.list1[2]
}
output "map1_aws_trainer" {
value =var.map1["aws"]["trainer"]
}