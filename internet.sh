
# Create a mac address with six times double digits
newip=$((RANDOM%10))$((RANDOM%10))
for variable in {1..5}
do 
  newip=$newip:$((RANDOM%10))$((RANDOM%10))
done

# Use this mac address, and shut down wifi for a second and reconnect
ifconfig en0 ether $newip
ifconfig en0 down
sleep 1
ifconfig en0 up
