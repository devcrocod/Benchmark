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

variable "master_username" {}

variable "master_password" {}

variable "node_type" {
	default = "dc2.xlarge"
	description = "The node type to be provisioned for the cluster."
}

variable "cluster_type" {
	default = "single"
	description = "The cluster type to use. Either single-node or multi-node."
}

variable "number_of_nodes" {
	default = "1"
	description = "The number of compute nodes in the cluster. multi-node"
}

variable "port" {
	default = "5439"
	description = "The port number"
}