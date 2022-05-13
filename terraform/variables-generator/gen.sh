cat main.tf | grep var | grep -o "var.*" | sed "s/var.//g" > vars

cat << EOF > template
variable "\${NAME}" {
  type = string
  default = ""
}
EOF

> variables.tf

for line in $( cat vars )
do
  export NAME="${line}"
  cat template | envsubst | tee -a variables.tf
done

rm -f template vars
