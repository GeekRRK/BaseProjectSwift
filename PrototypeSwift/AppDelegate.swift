//
//  AppDelegate.swift
//  BaseProjectSwift
//
//  Created by GeekRRK on 2016/11/24.
//  Copyright © 2016年 GeekRRK. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let PT_NAVBAR_TITLE_FONTSIZE: CGFloat = 19

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        setRootVC()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
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
    
    func setRootVC() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        
        let vc1 = UIViewController()
        let vc2 = UIViewController()
        let vc3 = UIViewController()
        
        let vcs = [vc1, vc2, vc3]
        let titles = [PTUtil.localStr("Homepage"), PTUtil.localStr("Video"), PTUtil.localStr("Me")]
        let tabItemImages = ["tabbar_homepage", "tabbar_video", "tabbar_me"]
        
        var navCtrls = [UIViewController]()
        for i in 0..<vcs.count {
            let itemVC = vcs[i]
            itemVC.title = titles[i]
            let navVC = UINavigationController(rootViewController: itemVC)
            navVC.navigationBar.barTintColor = UIColor.black
            navVC.navigationBar.tintColor = UIColor.white
            navVC.navigationBar.isTranslucent = false
            navVC.navigationBar.titleTextAttributes = [NSAttributedStringKey.font.rawValue: UIFont.systemFont(ofSize: PT_NAVBAR_TITLE_FONTSIZE), NSAttributedStringKey.foregroundColor.rawValue: UIColor.white]
            
            let imgName = tabItemImages[i]
            let selImgName = "\(tabItemImages[i])_sel"
            navVC.tabBarItem = UITabBarItem(title: titles[i], image: UIImage(named: imgName), selectedImage: UIImage(named: selImgName))
            
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .normal)
            UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.green], for: .selected)
            
            navCtrls.append(navVC)
        }
        
        let tabBarVC = UITabBarController()
        tabBarVC.viewControllers = navCtrls
        tabBarVC.tabBar.barTintColor = UIColor.black
        tabBarVC.tabBar.tintColor = UIColor.green
        tabBarVC.tabBar.isTranslucent = false
        
        window?.rootViewController = tabBarVC
    }
    
}

