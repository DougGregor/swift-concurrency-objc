
@available(watchOS 2.0, *)
class CLKComplication : NSObject, NSCopying {
  var family: CLKComplicationFamily { get }
  @available(watchOS 7.0, *)
  var identifier: String { get }
  @available(watchOS 7.0, *)
  var userInfo: [AnyHashable : Any]? { get }
  @available(watchOS 7.0, *)
  var userActivity: NSUserActivity? { get }
}
