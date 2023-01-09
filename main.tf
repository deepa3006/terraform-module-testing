terraform {
  backend "gcs" {
    bucket = "terraform-wif-example"
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
  furniture_DS_location = var.furniture_DS_location
  furniture = var.furniture

}

module "table" {
  depends_on = [module.dataset] 
  source = "./table"
  furniture_id = module.dataset.furniture.dataset_id
  tbl_chair = var.tbl_chair
  tbl_sofa = var.tbl_sofa
}