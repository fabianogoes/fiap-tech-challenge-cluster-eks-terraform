resource "aws_eks_node_group" "eks_node_group" {
    cluster_name = aws_eks_cluster.tech_challenge.name
    node_group_name = var.nodeName
    node_role_arn = var.labRole
    subnet_ids = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
    disk_size = 50
    instance_types = ["t3.micro"]

    scaling_config {
      desired_size = 1
      max_size = 3
      min_size = 1
    }

    update_config {
      max_unavailable = 1
    }
}