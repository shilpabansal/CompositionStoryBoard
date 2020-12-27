//
//  AppDelegate.swift
//  TestStoryboards
//
//  Created by Shilpa Bansal on 19/12/20.
//

import UIKit

/* shilpa notes:
 This project is to see how Composite storyboard works
 
 Benefit: Only one storyboard copy can be mantained at multiple places, to avoid duplicacy and one place to change
 
 Storyboard A can ember Storyboard B in it, by creating storyBoard reference with the refernce Id as B in A.
 In order to show the storyboard in dedicated area, create container view in 2nd storyboard(eg. SinglePlayerGame.storyboard), and embed the 3rd(Player1) storyboard as viewcontroller in 2nd
 
 In the example:
 1. Main.storyboard is the initial story board, which has tabviewcontroller as root view controller
 2. Tab1 has refrence to storyBoard refrence to SinglePlayerGame.storyboard , SinglePlayerGame.storyboard has refernce to Player1.storyboard with container view in it
 3. Tab2 has refrence to storyBoard refrence to MultiplayerGame.storyboard with 1 view in it, which points to MultiplayerScore.storyboard, which creates 2 views for user A refers to Player1 and user B refers to Playe2
 4. Tab3 has refrence to TimedMultiplayer.storyboard, which has 2 views in it, first is similar to Tab2 and second view refers to TimeView.storyboard
 
 Here as player1 is used by all the tabs and multiplayerScore storyboard is used by MultiplayerGame and TimedMultiplayer, any changes in the views need only one place to be changed.
 
 
 Things to keep in mind:
 1. Prepare of segue is called everytime the storyboard is refrenced, by changing the arrow name, the changes can be made in destination viewcontroller
 2. Container view, can be captured by using childViewController/children
 */

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

