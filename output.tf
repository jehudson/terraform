output "ip" {
  value = "${aws_eip.ip.public.ip}"
}
