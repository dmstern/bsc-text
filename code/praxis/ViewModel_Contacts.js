function ErrandsView(lists) {
	var self = this;

	self.lists = ko.observableArray(lists);
	self.newListName = ko.observable("");
	self.contacts = ko.observableArray([ util.getDummyContact() ]);

	// [...] Der Übersichtlichkeit halber gekürzt.

	self.getContacts = function(event, ui) {
		console.debug("getContacts");
		model.findContacts();
	};

	self.bindEvents = function() {
		model.addEventListener(events.FOUND_CONTACTS, function(contacts) {
			self.contacts(contacts);
		});
	};

	console.log("Init View...");
	self.bindEvents();
}