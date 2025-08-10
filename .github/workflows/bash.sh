read -p "Select your choice" action

if [[n$action == "apply" ]]; then
    terraform apply -auto-approve
else
    terraform destroy -auto-approve