import UIKit
import Flutter
import GoogleMaps
@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
 override func application(
 _ application: UIApplication,
 didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
 ) -> Bool {
 GMSServices.provideAPIKey("AIzaSyBVSyA1Ks03mGIURmX_T2vv87dE7hwCw6E")
 GeneratedPluginRegistrant.register(with: self)
 return super.application(application, didFinishLaunchingWithOptions: launchOptions)
 }
}
