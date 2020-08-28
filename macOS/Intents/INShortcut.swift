
@available(macOS 11.0, *)
class INShortcutReference : NSObject, NSSecureCoding, NSCopying {
  @NSCopying var intent: INIntent? { get }
  var userActivity: NSUserActivity? { get }
  init?(intent: INIntent)
  init(userActivity: NSUserActivity)
}
