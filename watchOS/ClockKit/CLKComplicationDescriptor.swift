
@available(watchOS 7.0, *)
class CLKComplicationDescriptor : NSObject {
  var identifier: String { get }
  var displayName: String { get }
  var __supportedFamilies: [NSNumber] { get }
  var userInfo: [AnyHashable : Any]? { get }
  var userActivity: NSUserActivity? { get }
  init(__identifier identifier: String, displayName: String, supportedFamilies: [NSNumber])
  init(__identifier identifier: String, displayName: String, supportedFamilies: [NSNumber], userInfo: [AnyHashable : Any] = [:])
  init(__identifier identifier: String, displayName: String, supportedFamilies: [NSNumber], userActivity: NSUserActivity)
}

@available(watchOS 7.0, *)
extension CLKComplicationDescriptor {
  var supportedFamilies: [CLKComplicationFamily] { get }
  convenience init(identifier: String, displayName: String, supportedFamilies: [CLKComplicationFamily])
  convenience init(identifier: String, displayName: String, supportedFamilies: [CLKComplicationFamily], userInfo: [AnyHashable : Any])
  convenience init(identifier: String, displayName: String, supportedFamilies: [CLKComplicationFamily], userActivity: NSUserActivity)
}
