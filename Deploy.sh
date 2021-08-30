#Remove old repo directory 
echo "remove old repo "aws-hibernation-pub" "
sudo rm -r aws-hibernation-pub


##git clone

##lambda
echo "clone lambda script repo "aws-hibernation-pub" "
#git clone git@github.com:modusintegration/aws-hibernation.git
#git clone git@github.com:ashokalinux/aws-hibernation-pub.git
git clone https://github.com/ashokalinux/aws-hibernation-pub.git

##Terraform plan
#echo "Run Terraform plan"
#sudo terraform plan -out plan-$(date +\"%Y-%m-%d-%H:%M:%S\")
