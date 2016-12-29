//
//  AppDelegate.swift
//  HelloSwift
//
//  Created by Sycooo on 2016/12/28.
//  Copyright © 2016年 Sycooo. All rights reserved.
//

import UIKit

//@UIApplicationMain
class AppDelegate: UIApplication, UIApplicationDelegate {

    var window: UIWindow?

    
    override func sendEvent(_ event: UIEvent) {
        
        super.sendEvent(event)
        
        let allTouches = event.allTouches
        
        if ((allTouches?.count) != nil) {
            
            print(123)
            
        }
        
        
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = wxTabbar
//        window?.rootViewController = normalTabbar
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        
        return true
    }
    
    lazy var wxTabbar:WXTabBarController = {
       
        let tbc = WXTabBarController()
        
        let leftVC:LeftViewController = {
            
            let vc = LeftViewController()
            vc.title = "WeChat"
            let img = UIImage(named: "tabbar_mainframe")
            let imgSel = UIImage(named: "tabbar_mainframeHL")
            vc.tabBarItem = UITabBarItem(title: "微信", image: img, selectedImage: imgSel)
            return vc
            
        }()
        
        let leftNav = UINavigationController(rootViewController: leftVC)
        
        let VC:ViewController = {
            
            let vc = ViewController()
            vc.title = "Discover"
            let img = UIImage(named: "tabbar_discover")
            let imgSel = UIImage(named: "tabbar_discoverHL")
            vc.tabBarItem = UITabBarItem(title: "发现", image: img, selectedImage: imgSel)
            return vc
            
        }()
        
        let nav = UINavigationController(rootViewController: VC)
        
        let rightVC:RightViewController = {
            
            let vc = RightViewController()
            vc.title = "Me"
            let img = UIImage(named: "tabbar_me")
            let imgSel = UIImage(named: "tabbar_meHL")
            vc.tabBarItem = UITabBarItem(title: "我", image: img, selectedImage: imgSel)
            return vc
            
        }()
        
        let rightNav = UINavigationController(rootViewController: rightVC)
        
        tbc.viewControllers = [leftNav, nav, rightNav]
        
        tbc.tabBar.tintColor = UIColor.init(red: 26/255, green: 178/255, blue: 10/255, alpha: 1)
        
        return tbc
        
    }()
    
    lazy var normalTabbar:UITabBarController = {
        
        let tbc = UITabBarController()
        
        let leftVC:LeftViewController = {
            
            let vc = LeftViewController()
            
            let img = UIImage(named: "tabbar_mainframe")
            let imgSel = UIImage(named: "tabbar_mainframeHL")
            vc.tabBarItem = UITabBarItem(title: "微信", image: img, selectedImage: imgSel)
            return vc
            
        }()
        
        let leftNav = UINavigationController(rootViewController: leftVC)
        
        let VC:ViewController = {
            
            let vc = ViewController()
            
            let img = UIImage(named: "tabbar_discover")
            let imgSel = UIImage(named: "tabbar_discoverHL")
            vc.tabBarItem = UITabBarItem(title: "发现", image: img, selectedImage: imgSel)
            return vc
            
        }()
        
        let nav = UINavigationController(rootViewController: VC)
        
        let rightVC:RightViewController = {
            
            let vc = RightViewController()
            
            let img = UIImage(named: "tabbar_me")
            let imgSel = UIImage(named: "tabbar_meHL")
            vc.tabBarItem = UITabBarItem(title: "我", image: img, selectedImage: imgSel)
            return vc
            
        }()
        
        let rightNav = UINavigationController(rootViewController: rightVC)
        
        tbc.viewControllers = [leftNav, nav, rightNav]
        
        tbc.tabBar.tintColor = UIColor.init(red: 26/255, green: 178/255, blue: 10/255, alpha: 1)
//        tbc.tabBar.tintColor = UIColor.init(red: 0.2, green: 0.2, blue: 0.5, alpha: 1)
        
        return tbc
    }()
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

