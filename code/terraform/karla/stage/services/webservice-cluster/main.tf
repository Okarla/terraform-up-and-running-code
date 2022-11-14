provider "aws" {
    region = "us-east-2"
}

module "webserver_cluster" {
  source = "../../../../karla/modules/services/webserver-cluster"
}