
# plain variable
#Number
variable "x" {
    default = 10
}

#Boolean
variable "y" {
    default = true
}

#string
varibale "z" {
    default = "Hello"
}


# values numbers and booleans need not to be quoted


#outputs
#direct valude does not required to be accessed with ${}

output "x" {
    value = var.x
}

#accessing variables has a combination with a string we need to refer variable with $
output "x1" {
    value = "value of x - ${var.x}"
}
