terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 3.58.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 3.90.0"
    }
  }
  backend "gcs" {
    bucket = "terraform-depal6"
    prefix = "state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}


# modules
module "dataset" {
  source = "./dataset"
  furniture_DS_location = var.furniture_DS_location
  furniture = var.furniture

}

#module "table" {
  #depends_on = [google_bigquery_dataset.stationary] 
  #source = "./table"
  #stationary_id = module.dataset.stationary_dataset_id
  #tbl_notebook = var.tbl_notebook
  #tbl_pen = var.tbl_pen
#}