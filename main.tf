resource "aws_eks_cluster" "tech_challenge" {
  name     = "tech_challenge_eks_cluster"
  role_arn = var.labRole
  version = 1.29

  vpc_config {
    subnet_ids = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
    security_group_ids = ["${var.sgId}"]
    endpoint_private_access = true
    endpoint_public_access  = true

  }

  access_config {
    authentication_mode = var.accessConfig
    bootstrap_cluster_creator_admin_permissions = true
  }  
  
}
