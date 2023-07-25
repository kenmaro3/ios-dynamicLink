//
//  DynamicLinkYoutubeApp.swift
//  DynamicLinkYoutube
//
//  Created by Kentaro Mihara on 2023/07/20.
//

import SwiftUI
import Firebase
import FirebaseDynamicLinks

@main
struct DynamicLinkYoutubeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onOpenURL(perform: { url in
                    handleDynamicLink(url)
                })
        }
    }
    
    func handleDynamicLink(_ url: URL){
        print("handleDynamicLink is called")
        let urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: true)
        
        /// if want to get query parameter
        if let queryValues = urlComponents?.queryItems{
            // if reading query parameter "?query_id=**"
            // let tmp_query_id = queryValues.filter{$0.name == "query_id"}
            
        }
        
        // MARK: Update userdefault to change the view at Content View
        let userDefaults = UserDefaults.standard
        userDefaults.set(true, forKey: "dynamic_link_status")
        userDefaults.set(url.absoluteString, forKey: "dynamic_link_url")
    }
}

// MARK: Initializing Firebase
class AppDelegate: NSObject, UIApplicationDelegate{
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        FirebaseApp.configure()
        return true
    }
    
//    /// SceneDelegate
//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//
//        print("called yo config")
//        let config = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
//        config.delegateClass = SceneDelegate.self
//        return config
//    }
//    
//    func application(_ application: UIApplication, continue userActivity: NSUserActivity,
//                     restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
//        print("called yo1")
//      let handled = DynamicLinks.dynamicLinks()
//        .handleUniversalLink(userActivity.webpageURL!) { dynamiclink, error in
//            
//        }
//        if let url = userActivity.webpageURL {
//        }
//
//      return handled
//    }
    
//    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
//        if let dynamicLink = DynamicLinks.dynamicLinks().dynamicLink(fromCustomSchemeURL: url) {
//            // Handle the deep link. For example, show the deep-linked content or
//            // apply a promotional offer to the user's account.
//            // ...
//            return true
//        }
//        return false
//    }
}


//class SceneDelegate: UIResponder, UIWindowSceneDelegate {
//
//    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
//        print("here0")
//
//        if let url = connectionOptions.userActivities.first?.webpageURL {
//            let userDefaults = UserDefaults.standard
//            userDefaults.set(true, forKey: "dynamic_link_status")
//            userDefaults.set(url.absoluteString, forKey: "dynamic_link_url")
//        }else{
//            print("let failed")
//            let userDefaults = UserDefaults.standard
//            userDefaults.set(false, forKey: "dynamic_link_status")
//        }
//    }
//
//    func scene(_ scene: UIScene, continue userActivity: NSUserActivity) {
//        print("here1")
//
//        if let url = userActivity.webpageURL {
//            let userDefaults = UserDefaults.standard
//            userDefaults.set(true, forKey: "dynamic_link_status")
//            userDefaults.set(url, forKey: "dynamic_link_url")
//
//        }else{
//            let userDefaults = UserDefaults.standard
//            userDefaults.set(false, forKey: "dynamic_link_status")
//
//        }
//    }
//
//    func scene(_ scene: UIScene, openURLContexts URLContexts: Set<UIOpenURLContext>) {
//
//        print("called scene openURLContexts")
//        if let url = URLContexts.first?.url {
//            print(url)
//        }
//    }
//    
//}
