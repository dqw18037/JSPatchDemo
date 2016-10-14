
//include('simpleDemo.js');
//include('propertyTest.js') // 没有效果，不知道原因

//defineClass("DDJSPatchDemo.DDVC", {
//            test:function() {
//            console.log('js viewDidLoad begin')
//            self.setTitle('NEW VC')
//            self.label().setText('xxxxxxx')
//            console.log('js viewDidLoad edn')
//            }
//})
require("UIColor")
include('main2.js')
defineClass('DDJSPatchDemo.DDVC', {
//            propertyTest: function() {
//            
//            self.setTitle('NEW VC')
//            console.log('title: ' + self.title().toJS())
//            
//            var a = self.a()
//            console.log('a: ' + a.toJS())
//            
//            var pa = self.pa()
//            console.log('pa: ' + pa.toJS())
//            
//            self.setA('new_a')
//            self.setPa('new_pa')
//            
//            var a = self.a()
//            console.log('a: ' + a.toJS())
//            
//            var pa = self.pa()
//            console.log('pa: ' + pa.toJS())
//            
//            self.ORIGpropertyTest()
//            },
            
            fun: function() {
//            self.view().setBackgroundColor(UIColor.redcolor)
            self.setTitle("JSPatch_New")
            var a = self.a()
            console.log('a: ' + a.toJS())
            
            self.setA('new_a')
            
            var a = self.a()
            console.log('a: ' + a.toJS())
            
            self.ORIGfun()
            }, // 必须要带的参数
//
//            pfun: function() {
//            
//            var pa = self.pa()
//            console.log('pa: ' + pa.toJS())
//            
//            self.setPa('new_pa')
//            
//            var pa = self.pa()
//            console.log('pa: ' + pa.toJS())
//            
//            self.ORIGpfun()
//            },
            }, { // 类方法
            
            sfun: function() {
            console.log('new static func')
            },
            
            cfun: function() {
            console.log('new class func')
            }
            })
