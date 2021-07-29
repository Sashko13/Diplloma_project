provider "google" {
    credentials = file(var.gcp_credentials)
    project = var.gcp_project_id
    # Warssaw, Poland
    region  = var.gcp_region
}