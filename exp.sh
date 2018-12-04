#!/bash/bin
echo "">output
iter=1
cd /fluent
# ls
while [ $iter -le 100 ] ; do
  ./scripts/start-kvs-local.sh n n
  sleep 3
  ./build/kvs/src/cli/flkvs-cli >> output
  ./scripts/stop-kvs-local.sh r
  iter=`expr $iter + 1`
  echo "$iter"
done
