function getContacts() {
	var result = null;
	
	if ( ! this.deviceReady ) {
		console.error('Gerät ist nicht bereit!');
		return null;
	}

	var onSuccess = function(contacts) {
		var successMsg = contacts.length + ' Kontakte gefunden.';
		console.log(successMsg);
		result = contacts;
	};

	var onError = function(contactError) {
		var errorMsg = 'Fehler beim Laden der Kontakte!';
		console.error(errorMsg);
		alert(errorMsg);
	};

	var options = new ContactFindOptions();
	options.filter = "";
	options.multiple = true;
	var fields = [ "displayName", "name" ];
	navigator.contacts.find(fields, onSuccess, onError, options);
	
	return result;
}