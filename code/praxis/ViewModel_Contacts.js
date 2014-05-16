function ErrandsViewModel(lists) {
	console.log("Init ViewModel...");
	
	var self = this;

	this.lists = ko.observableArray(lists);
	this.newListName = ko.observable("");
	this.contacts = ko.observableArray([ util.createDummyContact() ]);

	// [...] Der Übersichtlichkeit halber gekürzt.	

	this.getContacts = function(event, ui) {
		console.debug("getContacts");
		self.contacts(app.getContacts());
	};
}