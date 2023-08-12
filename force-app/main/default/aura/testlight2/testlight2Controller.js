({
	doinit : function(component, event, helper) {
		    var device = $A.get("$Browser.formFactor");
    var locale = $A.get("$Locale.language");
    alert(device);
          alert(locale)
	}
})