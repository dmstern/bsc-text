function findContacts() {

	if (!model.deviceReady) {
		var errorMsg = 'Gerät ist nicht bereit!'; 
		console.error(errorMsg);
		alert(errorMsg);
		return;
	}

	var onSuccess = function(contacts) {
		var successMsg = contacts.length + ' Kontakte gefunden.';
		console.log(successMsg);
		model.observerMap.notifyObservers(events.FOUND_CONTACTS, contacts);
	};

	var onError = function(contactError) {
		var errorMsg = 'Fehler beim Laden der Kontakte!';
		console.error(errorMsg);
		alert(errorMsg);
	};
	
	var options = new ContactFindOptions();
	options.filter = "";
	options.multiple = true;
	var fields = [ "*" ];
	navigator.contacts.find(fields, onSuccess, onError, options);

}