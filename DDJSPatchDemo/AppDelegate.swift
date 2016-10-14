//
//  AppDelegate.swift
//  DDJSPatchDemo
//
//  Created by dqw on 16/10/11.
//  Copyright © 2016年 ByteDance. All rights reserved.
//

import UIKit
import JSPatchPlatform

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

//        JSPatch.testScriptInBundle()
        JSPatch.startWithAppKey("d624e24f0e4ac37e")
        
        JSPatch.setupRSAPublicKey("-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDYkP+i6pAH8yFg5Qa0xTJ0txTo\nRGFSTV3GpAzhjDUUX+NAQHDRyeA2Q9Zlc0ColBiCCPquS5BhAYaaD88DEEf+p9fm\nnD9NXh5YG4P8OYx+GfZ5iwHkIh2YjQzh/gI+etjFLcUAQesldChV5QxXw6SSAYG0\n57DsLZn0MXgN5m5XQwIDAQAB\n-----END PUBLIC KEY-----")
        JSPatch.sync()
        
//        JSPatch.updateConfigWithAppKey("d624e24f0e4ac37e", withInterval: 1.0)
//        JSPatch.setupUpdatedConfigCallback { (configs, error) in
//            if let configs = configs{
//                print(configs)
//            }
//        }
//        let configs = JSPatch.getConfigParams()
//        print(configs)
        let window = UIWindow(frame: UIScreen.mainScreen().bounds)
        self.window = window
        self.window!.makeKeyAndVisible()
        let vc = DDVC()
        let nav = DDNavVC(rootViewController: vc)
        self.window?.rootViewController = nav
        
        return true
    }
    
    private func printScript() {
        let path = NSBundle.mainBundle().pathForResource("main", ofType: "js")
        do {
            let script = try NSString(contentsOfFile: path!, encoding: NSUTF8StringEncoding) as String
            print(script)
        } catch {}
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

