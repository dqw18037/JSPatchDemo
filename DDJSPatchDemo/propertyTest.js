defineClass('DDJSPatchDemo.DDVC', {
	propertyTest: function() {
	
	self.setTitle('NEW VC')
	console.log('title: ' + self.title().toJS())
	
	var a = self.a()
	console.log('a: ' + a.toJS())

	var pa = self.pa()
	console.log('pa: ' + pa.toJS())

	self.setA('new_a')
	self.setPa('new_pa')

	var a = self.a()
	console.log('a: ' + a.toJS())

	var pa = self.pa()
	console.log('pa: ' + pa.toJS())
	
	self.ORIGpropertyTest()
	}
})
