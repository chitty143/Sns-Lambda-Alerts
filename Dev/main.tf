# module "sns_lambda_alerts" {
#   source               = "./.."
#   lambda_function_name = "sns_lambda_lf-dev"
#   role_arn             = module.iam.role_arn
#   sns_topic_arn        = module.sns.sns_topic_arn
#   lambda_runtime       = "python3.9"
#   lambda_handler       = "lambda_function.lambda_handler"
#   lambda_zip_file      = "${path.module}/../lambda_function.zip"
# }

module "sns_lambda_alerts" {
  source               = "./.."
  lambda_function_name = "sns_lambda_lf-dev"
  lambda_runtime       = "python3.9"
  lambda_handler       = "lambda_function.lambda_handler"
  lambda_zip_file      = "${path.module}/../lambda_function.zip"
}
