terraform {
  backend "gcs" {
    bucket = "terraform-module-testing"
    prefix = "dev"
  }
}

provider "google" {
  project = "utility-cumulus-372111"
  region  = "us-central1"
}

# modules
module "dataset" {
  source = "./dataset"
  #furniture_DS_location = var.furniture_DS_location
  #furniture = var.furniture
  furniture_DS_location = "US"
  furniture = "furniture"

}

# module "table" {
#   depends_on = [module.dataset] 
#   source = "./table"
#   furniture_id = module.dataset.furniture_dataset_id
#   #tbl_chair = var.tbl_chair
#   tbl_chair = "tbl_chair"
#   #tbl_sofa = var.tbl_sofa
#   tbl_sofa = "tbl_sofas"
# }