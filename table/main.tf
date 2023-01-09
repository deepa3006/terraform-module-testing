# notebook table
resource "google_bigquery_table" "tbl_sofa" {
  #depends_on = [ var.furniture ]  
  dataset_id = var.furniture
  table_id = var.tbl_sofa

  time_partitioning {
    type = "DAY"
  }
   #schema = file()
}

# pen table
resource "google_bigquery_table" "tbl_chair" {
  #depends_on = [ var.furniture ] 
  dataset_id = var.furniture
  table_id = var.tbl_chair

  time_partitioning {
    type = "DAY"
  }
   #schema = file()
}