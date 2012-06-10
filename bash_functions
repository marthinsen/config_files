# Function to run command multiple times
function run() {
  number=$1
  shift
  for i in `seq $number`; do
    $@
  done
}
