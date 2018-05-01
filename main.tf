provider "aws" {
	region = "us-east-1"
}

resource "aws_instance" "dojo-terra-example" {
	subnet_id			= "subnet-bbffe894"
	ami				= "ami-b81dbfc5"
	instance_type			= "t2.micro"
	key_name			= "dojo-keypair"
	
	tags {
		Name = "dojo-terra-example"
	}
}

