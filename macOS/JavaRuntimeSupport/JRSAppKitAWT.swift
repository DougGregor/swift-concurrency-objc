
var JRSAppNameKey: String { get }
var JRSAppIsCommandLineKey: String { get }
var JRSAppIsUIElementKey: String { get }
var JRSAppIsBackgroundOnlyKey: String { get }
class JRSAppKitAWT : NSObject {
  class func awtAppDelegate() -> NSApplicationDelegate!
  class func registerApp(options: [AnyHashable : Any]! = [:])
  class func markAppIsDaemon() -> Bool
}
