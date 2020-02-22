if VBoxManage list runningvms | grep -q 'Leviathan'; then
	echo "Leviathan is already running"
else
	VBoxManage startvm Leviathan --type headless
	sleep 15
	if VBoxManage list  runningvms | grep -q 'Leviathan'; then
	echo "Leviathan is online"
	echo "Starting Jupyter"
	ssh -L 8889:localhost:8889 aquaman@192.168.56.10
	else
		echo "Leviathan failed to start. You're dead"
	fi
fi


