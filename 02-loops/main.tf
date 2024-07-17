resource "null_resource" "fruits" {
    for_each = var.fruits
    }
     default = {
       apple = {
        name = "apple"
        quantity = 100
           }
       banana ={
           name = "banana"
           quantity =20
           }
         }

    }