provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y ansible"
    ]
  }

  provisioner "local-exec" {
    command = "ansible-playbook -i '${self.public_ip},' --private-key <path-to-key> playbook.yml"
  }
}
