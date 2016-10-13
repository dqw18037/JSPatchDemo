//
//  DDVC.swift
//  DDJSPatchDemo
//
//  Created by dqw on 16/10/12.
//  Copyright © 2016年 ByteDance. All rights reserved.
//

import UIKit

class DDVC: UIViewController {

   dynamic var label: UILabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.whiteColor()
        label.text = "JSPatch"

        label.sizeToFit()
        var frame = label.bounds
        frame.origin.x = 100
        frame.origin.y = 100
//        label.text = "originText"
        label.frame = frame
        view.addSubview(label)
        test()
    }
    
//    override func viewDidAppear(animated: Bool) {
//        super.viewDidAppear(animated)
//        test()
//    }
    
    dynamic func test() {
        label.text = "JSPatch"
        print("originTest()")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

public class TestObj {
    
}
