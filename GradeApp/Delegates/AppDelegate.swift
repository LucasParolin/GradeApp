//
//  AppDelegate.swift
//  GradeApp
//
//  Created by Lucas Parolin on 13/01/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navigationView =  UINavigationController(rootViewController: InicialScreenViewController())
        navigationView.navigationBar.tintColor = .black
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = UIColor(red: 0.42, green: 0.51, blue: 0.62, alpha: 0.9)
        window?.rootViewController = navigationView
        return true
    }
}
