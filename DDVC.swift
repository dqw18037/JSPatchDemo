//
//  DDVC.swift
//  DDJSPatchDemo
//
//  Created by dqw on 16/10/12.
//  Copyright © 2016年 ByteDance. All rights reserved.
//

import UIKit


class DDVC: UIViewController {
    var label: UILabel = UILabel() // 这样的属性，不用dynamic修饰，也可以访问

    var a = "a" // 能够访问
//    private var pa = "pa" // blog里面这样会崩溃，但是我这里并没有， 如果没有dynamic，则访问pa 的值 是false
    dynamic private var pa = "pa" // 能够访问
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.whiteColor()
        super.viewDidLoad()
        
        createLabel()
//        test()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
//        propertyTest()
        fun()
//        pfun()
        DDVC.sfun()
        DDVC.cfun()
    }
    
    // MARK: test functions
    
   dynamic func  propertyTest() {
    print("ORIG title:\(self.title!)")
    print("ORIG a:\(a)")
    print("ORIG pa:\(pa)")
    
    }
    
    dynamic func test() {
        label.text = "JSPatch"
        print("originTest()")
    }
    
   dynamic  func fun() {
        print("ORIG fun self.a: \(self.a)")
        subfun()
    }
    
  dynamic private func subfun() {
        print("ORIG subfun")
    }
//
//   dynamic private func pfun() {
//        print("ORIG pfun self.pa: \(self.pa)")
//    }
    
     static private func sfun() {
        print("ORIG static func")
    
    }
    
     class private func cfun() {
        print("ORIG class func")
    }

    // MARK: private mehtods
    
    private func createLabel() {
        label.text = "JSPatch"
        label.sizeToFit()
        var frame = label.bounds
        frame.origin.x = 100
        frame.origin.y = 100
        //        label.text = "originText"
        label.frame = frame
        view.addSubview(label)
    }
}


