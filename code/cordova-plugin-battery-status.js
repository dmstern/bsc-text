window.addEventListener("batterystatus", onBatteryStatus, false);

function onBatteryStatus(info) {
	// Handle the online event
	console.log("Level: " + info.level + " isPlugged: " + info.isPlugged);
}