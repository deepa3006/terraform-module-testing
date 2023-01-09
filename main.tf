terraform {
  backend "gcs" {
    bucket = "terraform-depal6"
    prefix = "state"
  }
}

provider "google" {
  project = "utility-cumulus-372111"
  region  = "us-central1"
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