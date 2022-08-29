name="redis-configuration"
vm="vm108"

echo "Deploying $name on $vm vm!"

ssh st133@st133${vm}.rtb-lab.pl \
  "sudo docker run --name redis -d redis;"