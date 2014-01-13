
var AddEmployee = function() {
	return {
		myVariable: null,

		init: function() {
			alert("AddEmployee.init()");

//			// attach an event to an HTML element
//			var self = this;
//			jQuery(".AddEmployee .myElementClass").click(function() {
//				self.myMethod();
//				// do something
//				...
//			});
		},
		
		myMethod: function() {
			alert("AddEmployee.myMethod()");
		}
		// no comma after last method
	};
}();

//jQuery(AddEmployee.init()); // Run after page loads