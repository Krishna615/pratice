provider "local" {}

resource "local_file" "foo"{
  content = "hello world"
  filename = "/tmp/foo.bar"
}
variable "x" {
  default = 10
}

output "x" {
  value = var.x
}

output "x1" {
  value = "value of x - ${var.x}"
}

variable "input" {}
output "input" {
  value = var.input
}

variable "class" {}
output "class" {
  value = var.class
}

variable "trainer" {}
output "trainer"{
  value= var.trainer
}