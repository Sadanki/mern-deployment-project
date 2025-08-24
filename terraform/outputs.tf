output "web_public_ip" {
  description = "Public IP address of the web server"
  value       = aws_instance.web.public_ip
}

output "db_public_ip" {
  description = "Public IP address of the database server"
  value       = aws_instance.db.public_ip
}

output "web_private_ip" {
  description = "Private IP address of the web server"
  value       = aws_instance.web.private_ip
}

output "db_private_ip" {
  description = "Private IP address of the database server"
  value       = aws_instance.db.private_ip
}