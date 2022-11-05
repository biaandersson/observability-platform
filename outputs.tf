output "grafana_access" {
  value = { for i in aws_instance.mtc_main[*] : i.tags.Name => "${i.public_ip}:3000" }
}
