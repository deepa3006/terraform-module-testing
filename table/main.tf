# notebook table
resource "google_bigquery_table" "tbl_notebook" {
  #depends_on = [ var.furniture ]  
  dataset_id = var.furniture
  table_id = var.tbl_notebook

  time_partitioning {
    type = "DAY"
  }
   #schema = file()
}

# pen table
resource "google_bigquery_table" "tbl_pen" {
  #depends_on = [ var.furniture ] 
  dataset_id = var.furniture
  table_id = var.tbl_pen

  time_partitioning {
    type = "DAY"
  }
   #schema = file()
}