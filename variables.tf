variable "env" {
  type = string
}
variable "name" {
  type = string
}
variable "dns" {
  type = string
}
variable "dns_zone" {
  type = string
}
variable "package_file" {
  type    = string
  default = null
}
variable "package_s3_bucket" {
  type    = string
  default = null
}
variable "package_s3_key" {
  type    = string
  default = null
}
variable "data_s3_bucket" {
  type    = string
  default = null
}
variable "runtime" {
  type    = string
  default = "nodejs14.x"
}
variable "timeout" {
  type    = number
  default = 29
}
variable "memory_size" {
  type    = number
  default = 128
}
variable "handler" {
  type    = string
  default = "lambda.handler"
}
variable "variables" {
  type    = map(string)
  default = {}
}
variable "policy_statements" {
  type = list(
    object({
      actions   = list(string),
      resources = list(string),
      effect    = string
    })
  )
  default = []
}
variable "geolocations" {
  type    = list(string)
  default = []
}
variable "forward_query_string" {
  type    = bool
  default = null
}
variable "price_class" {
  type    = string
  default = "PriceClass_100"
}
variable "publish" {
  type    = bool
  default = null
}
variable "lambda_name" {
  type    = string
  default = null
}
variable "accesslogs_s3_bucket" {
  type    = string
  default = null
}
variable "edge_lambdas" {
  type = list(object({
    event_type = string
    lambda_arn = string
    include_body = bool
  }))
  default = []
}
variable "edge_lambdas_variables" {
  type    = map(string)
  default = {}
}
variable "static_assets_edge_lambdas" {
  type = list(object({
    event_type = string
    lambda_arn = string
    include_body = bool
  }))
  default = []
}
variable "functions" {
  type = list(object({
    event_type = string
    function_arn = string
  }))
  default = []
}
variable "static_assets_functions" {
  type = list(object({
    event_type = string
    function_arn = string
  }))
  default = []
}
variable "layers" {
  type    = list(string)
  default = []
}
variable "static_assets" {
  type = list(object({
    path_pattern = string
    id           = string
    bucket_id    = string
    bucket_name  = string
  }))
  default = []
}
variable "forwarded_headers" {
  type    = list(string)
  default = null
}
variable "min_ttl" {
  type    = number
  default = 0
}
variable "max_ttl" {
  type    = number
  default = 86400
}
variable "default_ttl" {
  type    = number
  default = 0
}
variable "compress" {
  type    = bool
  default = true
}