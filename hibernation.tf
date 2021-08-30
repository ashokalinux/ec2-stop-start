
#This resource clone lambda script repo (no need to use this if we clone lambda script repo in terraform root directory by defining in before_script section of gitlab-ci.yml file)
resource "null_resource" "aws-hibernation" {
  provisioner "local-exec" {
    command = "sudo rm -r aws-hibernation-pub; git clone https://github.com/ashokalinux/aws-hibernation-pub.git"
#    command = "git clone git@github.com:modusintegration/aws-hibernation.git"
  }
#added this trigger to run local-exe with every plan - fresh clone of lambda code
  triggers = {
    always_run = timestamp()
  }
}

module "hibernation" {
#  source = "../ec2-hibernation"
  source = "./ec2-hibernation"
  region = var.region
  depends_on = [null_resource.aws-hibernation]
}
