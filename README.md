# Winware for iOS

<a href='http://winware.ai' target='_blank'>Winware</a> identifies the product experiences that compel your customers to buy and renew.

## Installation

Winware iOS has to be installed from Swift Package Manager.

1. Open Swift Package Manager - `Xcode->File->Add Packages...`.
2. Search for url of this repo `https://github.com/winware-ai/winware-ios-sdk` and add it to your project.
3. We advise to set *Dependency Rule* to *Up to Next Major Version*.
4. Initialize SDK in your app delegate with your organization id provided by Winware:

**Objective-C**
```objectivec
@import Winware;

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [WinwareSDK startSessionWithOrganizationId:@"YOUR ORGANIZATION ID" userIdentity:nil metadata:nil];
    
    ...
}
```
**Swift**
```swift
import Winware

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
        WinwareSDK.startSessionWith(organizationId: "YOUR ORGANIZATION ID", userIdentity: nil, metadata: nil)

        ...
    }
}
```
5. Optionally you can provide your own user identity and custom metadata, which you can use to identify your user in Winware platform and track changes in the metadata.
6. You can also set metadata later, eg. when user is logging in:
```swift
    WinwareSDK.setMetadata([
        "user_name": "Your user name",
        "user_email": "email@example.com",
        "account_id": "some uuid",
        "account_name": "Your user account name",
        "plan_id": "",
        "plan_name": "free",
        "plan_cycle": "1 month",
        "plan_expiry": "2038-01-19", // date YYYY-MM-DD
        "segments": ["Segment 1", "Segment 2"],
    ])
``` 

## Updating

Right-click on Winware package and select *Update Package*.

## Known limitations

For now Winware iOS SDK works only with UIKit. Other frameworks (like React Native or Swift UI) will be supported in the future.
