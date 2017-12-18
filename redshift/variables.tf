# 
# Redshift Cluster Variables
#

variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "cluster_identifier" {
	default = "jb-redshift-cluster"
	description = "Custom name of the cluster"
}

variable "database_name" {
	default = "jb_redshift_test"
	description = "Database name"
}

variable "master_username" {
	description = "Username for the master DB user."
}

variable "master_password" {
    description = "Password for the master DB user. Password must contain at least 8 chars and contain at least one uppercase letter, one lowercase letter, and one number."
}

variable "node_type" {
	default = "dc1.large"
	description = "The node type to be provisioned for the cluster."
}

variable "cluster_type" {
	default = "multi-node"
	description = "The cluster type to use. Either single-node or multi-node."
}

variable "number_of_nodes" {
	default = "2"
	description = "The number of compute nodes in the cluster. multi-node"
}

variable "cluster_port" {
	default = "5439"
	description = "The port number"
}

variable "private_cidr" {
    description = "VPC private addressing, used for a security group"
    default = "172.31.0.0/16"
}

variable "vpc_security_group_ids" {
    description = "A list of Virtual Private Cloud (VPC) security groups to be associated with the cluster."
}