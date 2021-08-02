gcp_credentials = "maximal-terrain-320110-a1c6318f51ce.json"
gcp_project_id = "maximal-terrain-320110"
gcp_region = "europe-central2"
gke_name = "diploma-cluster"
gke_zones = [ "europe-central2-a"]
gke_default_nodepool_name = "default-node-pool"
gke_network = "kube"
gke_subnetwork = "kube-subnet"
gke_machine_type = "e2-standard-4"
gke_node_locations = "europe-central2-a,europe-central2-b"
gke_service_account = "tf-gke-diploma-cluster-fkyx@maximal-terrain-320110.iam.gserviceaccount.com"
gke_subnet_range = "10.40.0.0/16"
gke_subnet_pods  = "10.41.0.0/16"
gke_subnet_services = "10.42.0.0/16"
remote_state_address= "http://localhost:10080/diploma-project/terraform-gcp/-/blob/main/terraform/terraform.tfstate"
username = "root"
access_token = "pVYXeLsyB2NPiNFYAKZX"
lock_address = "http://localhost:10080/diploma-project/terraform-gcp/-/blob/main/terraform/terraform.tfstate.lock.hcl"
unlock_address = "http://localhost:10080/diploma-project/terraform-gcp/-/blob/main/terraform/terraform.tfstate.lock.hcl"
lock_method = "POST"
unlock_method = "DELETE"
retry_wait_min = "5"




