#Google cloud provider

provider "google" {
  source  = "hashicorp/google"  
  version =  "4.47.0"
  #credentials = file("/home/deepu_palabhavi/terraform-access.json")
  project = var.project_id
  region = var.region
  zone = var.zone
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