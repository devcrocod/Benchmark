provider "aws" {
	access_key = "${var.aws_access_key}"
	secret_key = "${var.aws_secret_key}"
	region = "eu-west-1"
}

resource "aws_s3_bucket" "jb_test" {
	bucket = "jb_test"
}

resource "aws_athena_database" "" {
	name = "database_name"
	bucket = "${aws_s3_bucket.jb_test.bucket}"
}