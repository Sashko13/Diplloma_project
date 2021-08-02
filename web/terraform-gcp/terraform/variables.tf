variable "gcp_credentials" {
    type = string
    description = "Location of service account for GCP"
}

variable "gcp_project_id" {
    type = string
    description = "GCP project id"
}

variable "gcp_region" {
    type = string
    description = "GCP region"
}

variable "gke_name" {
  type = string
  description = "GKE cluster name"
}

variable "gke_zones" {
    type = list(string)
    description = "my cluster zones"
}

variable "gke_network" {
  type = string
  description = "VPC network name"
}

variable "gke_subnetwork" {
  type = string
  description = "VPC subnetwork name"
}

variable "gke_default_nodepool_name" {
  type = string
  description = "GKE node pool default name"
}

variable "gke_machine_type" {
    type = string
    description = "Nodes virtual machines"
}

variable "gke_node_locations" {
    type = string
    description = "zones where will deploy nodes"  
}

variable "gke_service_account" {
    type = string
    description = "GKE service account name"
}

variable "gke_subnet_range" {
    type = string
    description = "subnet range for GKE cluster"
}

variable "gke_subnet_pods" {
    type = string
    description = "subnet range for GKE pods" 
}

variable "gke_subnet_services" {
    type = string
    description = "subnet range for GKE services" 
}

variable "remote_state_address" {
    type = string
}

variable "username" {
    type = string
}

variable "access_token" {
    type = string
}

variable "lock_address" {
    type = string
}

variable "unlock_address" {
    type = string
}

variable "lock_method" {
    type = string
}

variable "unlock_method" {
    type = string
}

variable "retry_wait_min" {
    type = string
}

