variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "identifier" {
	default = "pgdb-rds"
	description = "Identifier for DB"
}

variable "storage" {
	default = "20"
	description = "Storage size in GB"
}

variable "engine" {
	default = "postgres"
	description = "Engine type"
}

variable "engine_version" {
	default = "9.6.5"
	description = "Engine version"
}

variable "instance_class" {
	default = "db.t2.micro"
	description = "Instance class"
}

variable "publicly_accessible" {
	default = "true"
}

variable "db_name" {
	default = "postgres"
	description = "DB name"
}

variable "username" {
	default = "postgres"
	description = "User name"

}

variable "password" {
	default = "password"
}

variable "storage_type" {
	default = "gp2"
	description = "Type of storage"
}
