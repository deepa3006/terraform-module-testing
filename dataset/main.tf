resource "google_bigquery_dataset" "furniture" {
  dataset_id                  = var.furniture
  friendly_name               = "furniture"
  description                 = "This is furniture dataset "
  location                    = var.furniture_DS_location
  default_table_expiration_ms = 3600000

}