resource "aws_ecr_repository" "application" {
  name                 = "${var.environment}/cloudops-app"
  image_tag_mutability = "IMMUTABLE"
  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name        = "${var.environment}-cloudops-app"
    Environment = var.environment
  }
}
