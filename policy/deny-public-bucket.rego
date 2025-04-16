package validate.gcp.storage

deny[msg] if {
  some rc in input.resource_changes
  rc.change.after.public_access_prevention == "unspecified"
  msg := "Bucket must have public_access_prevention set to 'enforced'."
}
