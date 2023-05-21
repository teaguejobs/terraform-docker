# output "container-name" {
#   value       = module.container[*].container-name
#   description = "The name of the container"
# }

# output "IP-Address" {
#   value       = flatten(module.container[*].IP-Address)
#   description = "The ip address and external port of the container"

# }

output "application_access" {
  value       = [for x in module.container[*] : x]
  description = "The name and socket for each application."
}