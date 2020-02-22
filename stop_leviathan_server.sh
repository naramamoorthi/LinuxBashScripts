if VBoxManage list runningvms | grep -q 'Leviathan'; then
	echo "Shutting down Leviathan"
	ssh -t aquaman@192.168.56.10 'sudo shutdown now'
	sleep 15
	if  VBoxManage list runningvms | grep -q 'Leviathan'; then
		echo "Failed to shutdown Leviathan. Bring in the harpoons!!"
	else
		echo "Leviathan has been shutdown"
	fi
else
	echo "Leviathan is not running"
fi

