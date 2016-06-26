CMD="$1"
LOOKUP="$REPO"

isInFile ()
{
  FILE="$1"
  LOOKUP="$2"
  while read line; do
    set -- junk $line
    shift
    left=$1
    right=$2
    if [ "$LOOKUP" == "$1" ]; then
      echo $right;
      return 0;
    fi
  done <"$FILE"
}
if [ "$CMD" == "lookup" ]; then
  isInFile /repo.txt "$LOOKUP" 
fi
