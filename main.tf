module "iam" {
  source        = "../iam"
  iam_role_name = var.iam_role_name
}

module "sns" {
  source         = "../sns"
  sns_topic_name = var.sns_topic_name
}

module "lambda" {
  source               = "../lambda"
  aws_region           = var.aws_region
  lambda_function_name = var.lambda_function_name
  lambda_runtime       = var.lambda_runtime
  lambda_handler       = var.lambda_handler
  lambda_zip_file      = var.lambda_zip_file
  role_arn             = module.iam.role_arn
  sns_topic_arn        = module.sns.sns_topic_arn
}

