output "public-ip" {
    value = azurerm_public_ip.example.ip_address
  
}

output "private_key" {
    value = tls_private_key.example.private_key_openssh
    sensitive = true
}