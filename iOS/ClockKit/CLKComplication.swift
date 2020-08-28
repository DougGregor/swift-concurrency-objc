
class CLKComplication : NSObject, NSCopying {
  var family: CLKComplicationFamily { get }
  var identifier: String { get }
  var userInfo: [AnyHashable : Any]? { get }
  var userActivity: NSUserActivity? { get }
}
