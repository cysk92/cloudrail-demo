# Test case: resource (redshift) deployed in EC2-Classic mode (there is no 'cluster_subnet_group_name')
# Expected: issue found

provider "aws" {
  region                  = "us-west-1"
}

resource "aws_redshift_cluster" "test" {
  cluster_identifier = "redshift-defaults-only"
  node_type = "dc2.large"
  master_password = "Test1234"
  master_username = "test"
  skip_final_snapshot = true
}
