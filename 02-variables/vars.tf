
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
variable "z" {
    default = "Hello"
}


# values numbers and booleans need not to be quoted
# list variable
variable "1" {
    default = [10,20, "abc", false]
    }
# values in lsit need not to be same data type

#outputs
#direct valude does not required to be accessed with ${}

output "x" {
    value = var.x
}

#accessing variables has a combination with a string we need to refer variable with $
output "x1" {
    value = "value of x - ${var.x}"
}

output "1" {
    value = var.1[0]

}