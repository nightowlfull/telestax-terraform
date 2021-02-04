resource "aws_ecr_repository" "image_registry" {
  name                 = "registry-rest-api-telestax-test-task"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "imagehash_registry" {
  name                 = "registry-rest-api-imagehash-cloud"
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = true
  }
}
