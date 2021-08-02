terraform {
  backend "gcs" {
    bucket  = "diploma_tfstate"
    prefix  = "state"
    credentials = "./maximal-terrain-320110-a1c6318f51ce.json"
  }
}




