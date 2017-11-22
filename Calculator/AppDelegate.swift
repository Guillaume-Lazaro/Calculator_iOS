//
//  AppDelegate.swift
//  Calculator
//
//  Created by Guillaume Lazaro on 23/10/2017.
//  Copyright © 2017 Guillaume Lazaro. All rights reserved.
//

import UIKit
import Sentry

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //Centry:
        // Create a Sentry client and start crash handler
        do {
            Client.shared = try Client(dsn: "https://870afb90b8404e7897172bbea7528c7e:ec7b4b8b04e349c8abb26c2bc218314e@sentry.io/247890")
            try Client.shared?.startCrashHandler()
        } catch let error {
            print("\(error)")
            // Wrong DSN or KSCrash not installed
        }
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

