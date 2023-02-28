#Output variables - this will return respective data on terminal

output "my-s3-bucket-versioning" {
  value = aws_s3_bucket.b1.versioning[0].enabled
}

output "my-s3-bucket-details" {
  value = aws_s3_bucket.b1
}
output "http_server_public_dns" {
  value = aws_instance.http_server.public_dns
}
#multiple ec2 servers
output "http_server_public_dns" {
  value = values(aws_instance.http_servers).*.public_dns
}