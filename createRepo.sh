repo_name=$1
org_name=$2
user_name=$3

usage="$(basename "$0") repo_name org_name user_name -- Create a GitHub Repository"

if [ "$1" == "-h" ] || [ "$1" == "--help" ] ; then
  echo "$usage"
  exit
fi

curl -u $3 https://api.github.com/orgs/$2/repos -d" {\"name\":\"$repo_name\"}"