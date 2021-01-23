terraform {
  backend "s3" {
    bucket = "seunadio-tfstate"
    key    = "Week2/Node-2.tfstate"
    region = "eu-west-2"
  }
}
