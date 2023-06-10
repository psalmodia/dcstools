#!/bin/sh

if [ $# -lt 3 ]; then
    echo "Usage: $0 YYYY MM DD" >&2
    exit 1
fi

year=$1
month=$2
day=$3

if [ -r "${year}${month}${day}" ]; then
    echo "${year}${month}${day} already exists. Bailing ..." >&2
    exit 2
fi

mkdir "${year}${month}${day}"
cat > "${year}${month}${day}/YYYYMMDD" <<EOF
year=${year}
month=${month}
day=${day}
EOF

cp template/getthem.sh template/doit.sh "${year}${month}${day}"

echo "Directory ${year}${month}${day} successfully set up!" >&2
