cd `dirname $0`
cur_path=`pwd`
myFile="${cur_path}/../tmp/pids/sidekiq.pid"
if [ -f "$myFile" ]; then
  bundle exec sidekiqctl quiet $myFile
  bundle exec sidekiqctl stop $myFile
fi