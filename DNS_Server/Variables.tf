variable "Key_Secret" {
  description = "The secret key for DNS server authentication"
  type        = string
  sensitive   = true  
}

variable "Key_Name" {
  description = "The key name for DNS server authentication"
  type        = string
  sensitive   = true
}

variable "Key_Algorithm" {
  description = "The key algorithm for DNS server authentication"
  type        = string
  sensitive   = true 
}