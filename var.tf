variable "iam_role_name" {
  type    = string
  default = "sns_lambda_role"
}

variable "sns_topic_name" {
  type    = string
  default = "sns_lambda_topic"
}

variable "lambda_function_name" {
  type    = string
  default = "sns_lambda_lf"
}

variable "aws_region" {
  type    = string
  default = "ap-south-2"
}

variable "lambda_runtime" {
  description = "Runtime environment for Lambda"
  type        = string
  default     = "python3.9"
}

variable "lambda_handler" {
  description = "Handler function"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "lambda_zip_file" {
  description = "Path to the Lambda deployment package"
  type        = string
}