FROM hashicorp/terraform:light

ENTRYPOINT [ "/bin/sh", "./aws/exec.sh" ]

