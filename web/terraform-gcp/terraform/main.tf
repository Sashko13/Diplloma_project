module "network" {
  source = "./modules/terraform-gcp-vpc-native/default"
  // base network parameters
  network_name     = var.gke_network
  subnetwork_name  = var.gke_subnetwork 
  region           = var.gcp_region
  subnetwork_range    = var.gke_subnet_range 
  subnetwork_pods     = var.gke_subnet_pods
  subnetwork_services = var.gke_subnet_services
}

module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  project_id                 = var.gcp_project_id
  name                       = var.gke_name
  region                     = var.gcp_region
  regional                   = false
  zones                      = var.gke_zones
  network                    = var.gke_network
  subnetwork                 = var.gke_subnetwork
  ip_range_pods              = "gke-pods-1"
  ip_range_services          = "gke-services-1"
  http_load_balancing        = false
  horizontal_pod_autoscaling = true
  network_policy             = false

  node_pools = [
    {
      name                      = var.gke_default_nodepool_name
      machine_type              = var.gke_machine_type
      node_locations            = var.gke_node_locations
      min_count                 = 1
      max_count                 = 2
      local_ssd_count           = 0
      disk_size_gb              = 100
      disk_type                 = "pd-standard"
      image_type                = "COS"
      auto_repair               = true
      auto_upgrade              = true
      service_account           = var.gke_service_account
      preemptible               = true
      initial_node_count        = 1
    },
  ]

  node_pools_oauth_scopes = {
    all = []

    default-node-pool = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  node_pools_labels = {
    all = {}

    default-node-pool = {
      default-node-pool = true
    }
  }

  node_pools_metadata = {
    all = {}

    default-node-pool = {
      node-pool-metadata-custom-value = "my-node-pool"
    }
  }

  node_pools_taints = {
    all = []

    default-node-pool = [
      {
        key    = "default-node-pool"
        value  = true
        effect = "PREFER_NO_SCHEDULE"
      },
    ]
  }

  node_pools_tags = {
    all = []

    default-node-pool = [
      "default-node-pool",
    ]
  }
}