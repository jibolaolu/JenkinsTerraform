terraform {
  backend "s3" {
    bucket = "seunadio-tfstate"
    key    = "Week2/Node-1.tfstate"
    region = "eu-west-2"
  }
}
