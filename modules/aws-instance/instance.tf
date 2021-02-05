resource "aws_instance" "web" {
  ami = "ami-00831fc7c1e3ddc60"
  instance_type = "t2.micro"
  count = 1

  user_data = <<-EOF
    sudo apt-get update

    sudo apt install default-jre -y
    sudo apt install default-jdk -y

    sudo apt-get install \
      apt-transport-https \
      ca-certificates \
      curl \
      gnupg-agent \
      software-properties-common

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

    sudo apt-get update
    sudo apt-get install docker-ce docker-ce-cli containerd.io
    EOF
}