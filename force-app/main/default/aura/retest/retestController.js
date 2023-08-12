({
    handleClick: function(component, event, helper) {
        let btnClicked = event.getSource();         // the button
        let btnMessage = btnClicked.get("v.label"); // the button's label
        component.set("v.message", btnMessage);     // update our message
 
    },
      handleClick2: function(component, event, helper) {
        let newMessage = event.getSource().get("v.label");
        component.set("v.message", newMessage);
    },
    handleClick3: function(component, event, helper) {
        component.set("v.message", event.getSource().get("v.label"));
    },
    doinit: function(component, event, helper) {
        console.log(window.toString());
    },
    
    
        fireEvent : function(cmp, event) {																	
        var compEvent = cmp.getEvent("xxxxxxEvent");																	
        compEvent.fire();																	
    },																	
																	
    addEventHandler : function(cmp, event) {																	
        cmp.addEventHandler("xxxxxxEvent", cmp.getReference("c.handleEvent"));																	
    },																	
																	
    handleEvent : function(cmp, event) {																	
        alert("イベントハンドラの動的な追加が完了しました");																	
    },																	

    
})