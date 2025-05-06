current_date=$(date -Iseconds)
my_username=$GITHUB_ACTOR

if [ ! -f Activity6/log.txt ]; then
  echo "Log File Created Current Date and Time: $current_date by $my_username" >> Activity6/log.txt
else 
  update_count=$(grep -c 'Log File Updated' Activity6/log.txt)
  update_count=$((update_count + 1))
  echo "Log File Updated Current Date and Time: $current_date by $my_username - Update Count: $update_count" >> Activity6/log.txt
fi