variable "labRole" {
    default = "arn:aws:iam::758397526889:role/LabRole"
}

variable "principalArn" {
    default = "arn:aws:iam::758397526889:role/voclabs"
}

variable "nodeName" {
    default = "tech-challenge-node-group"
}

variable "subnetA" {
    default = "subnet-0f506ad7b8b92daaf"
}

variable "subnetB" {
    default = "subnet-01f6f5db452aa17c3"
}

variable "subnetC" {
    default = "subnet-0e7b9b8f5820fb830"
}

variable "sgId" {
    default = "sg-0f9b4e7ef3834c952"
}

variable "accessConfig" {
    default = "API_AND_CONFIG_MAP"
}

variable "policyArn" {
    default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSAdminPolicy"
}