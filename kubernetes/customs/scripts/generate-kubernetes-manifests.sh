# generate final yamls from templates
helm template --dry-run components . | awk -vout=out -F": " '$0~/^# Source: /{file=out"/"$2; print "Creating "file; system ("mkdir -p $(dirname "file"); gecho -n "" > "file)} $0!~/^#/ && $0!="---"{print $0 >> file}'
