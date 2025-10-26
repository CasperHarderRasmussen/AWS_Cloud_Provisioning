variable "Access_Key" {
  type = string
  sensitive = true 
  description = "This is the access key for the AWS User"
  
  
}

variable "Secret_Key" {
  type = string
  sensitive = true 
  description = "This is the secret key for the AWS User"
}