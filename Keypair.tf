resource "aws_key_pair" "terra-key" {
  key_name   = "terra-key"
  public_key = "make your own access keys using ssh-keygen command and paste the content of .pub file here."
}
