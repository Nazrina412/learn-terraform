
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
variable "I" {
    default = [10,20, "abc", false]
    }
# values in lsit need not to be same data type

#Map variable
variable "m" {
    default = {
     course = "Devops"
     trainer = "john"

     }
}

#outputs
#direct valude does not required to be accessed with ${}

output "x" {
    value = var.x
}

#accessing variables has a combination with a string we need to refer variable with $
output "x1" {
    value = "value of x - ${var.x}"
}

output "I" {
    value = var.I[0]
}

output "m" {
    value = "course Name - ${var.m["course"]} , Trainer Name - ${var.m["trainer"]}"
}

##
variable "c" {
    type = number
}

output "c" {
    value = var.c
}


