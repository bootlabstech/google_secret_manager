//required variables

variable "secret_id" {
  description = "This must be unique within the project."
  type        = string
}

variable "location" {
  description = <<-EOT
    {
   "type": "json",
   "purpose": "autocomplete",
   "data":[ "asia-east1",
        "asia-east2",
        "asia-northeast1",
        "asia-northeast2",
        "asia-northeast3",
        "asia-south1",
        "asia-south2",
        "asia-southeast1",
        "asia-southeast2",
        "australia-southeast1",
        "australia-southeast2",
        "europe-central2",
        "europe-north1",
        "europe-west1",
        "europe-west2",
        "europe-west3",
        "europe-west4",
        "europe-west6",
        "northamerica-northeast1",
        "northamerica-northeast2",
        "southamerica-east1",
        "southamerica-west1",
        "us-central1",
        "us-east1",
        "us-east4",
        "us-west1",
        "us-west2",
        "us-west3",
        "us-west4"
    ],
   "description":"location"
}
  EOT
  type        = string
}

variable "kms_key_name" {
  description = " The canonical IDs of the location to replicate data."
  type        = string
}

variable "name" {
  description = "The resource name of the Pub/Sub topic that will be published."
  type        = string
}

variable "project" {
  description = "The Duration between rotation notifications."
  type        = string
}

variable "members" {
  description = "Identities that will be granted the privilege"
  type        = list(string)
}

variable "member" {
  description = "Identities that will be granted the privilege"
  type        = string
}

variable "role" {
  description = "The Duration between rotation notifications."
  type        = string
}

variable "secret_data" {
  description = "The secret data. Must be no larger than 64KiB."
  type        = string
}

//optional variables

variable "automatic" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "TRUE",
             "FALSE"
            ],
   "description": "The Secret will automatically be replicated without any restrictions."
}
EOT
  type        = bool
  default     = true
}

variable "lables" {
  description = "The labels assigned to this Secret."
  type        = map(string)
  default     = { "label" : "my-label" }
}

variable "expire_time" {
  description = "Timestamp in UTC when the Secret is scheduled to expire."
  type        = string
  default     = "30days"
}

variable "ttl" {
  description = "The TTL for the Secret."
  type        = string
  default     = "3.5s"
}

variable "next_rotation_time" {
  description = "Timestamp in UTC at which the Secret is scheduled to rotate. "
  type        = string
  default     = "30days"
}

variable "rotation_period" {
  description = "The Duration between rotation notifications."
  type        = string
  default     = "2592000s"
}

variable "enabled" {
  description = <<-EOT
  {
   "type": "json",
   "purpose": "autocomplete",
   "data": [ "TRUE",
             "FALSE"
            ],
   "description": " The current state of the SecretVersion."
}
EOT
  type        = bool
  default     = false
}
