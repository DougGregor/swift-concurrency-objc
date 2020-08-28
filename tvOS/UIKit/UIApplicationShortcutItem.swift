
extension UIApplicationShortcutIcon {
  @available(tvOS 9.0, *)
  enum IconType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case compose
    case play
    case pause
    case add
    case location
    case search
    case share
    @available(tvOS 9.1, *)
    case prohibit
    @available(tvOS 9.1, *)
    case contact
    @available(tvOS 9.1, *)
    case home
    @available(tvOS 9.1, *)
    case markLocation
    @available(tvOS 9.1, *)
    case favorite
    @available(tvOS 9.1, *)
    case love
    @available(tvOS 9.1, *)
    case cloud
    @available(tvOS 9.1, *)
    case invitation
    @available(tvOS 9.1, *)
    case confirmation
    @available(tvOS 9.1, *)
    case mail
    @available(tvOS 9.1, *)
    case message
    @available(tvOS 9.1, *)
    case date
    @available(tvOS 9.1, *)
    case time
    @available(tvOS 9.1, *)
    case capturePhoto
    @available(tvOS 9.1, *)
    case captureVideo
    @available(tvOS 9.1, *)
    case task
    @available(tvOS 9.1, *)
    case taskCompleted
    @available(tvOS 9.1, *)
    case alarm
    @available(tvOS 9.1, *)
    case bookmark
    @available(tvOS 9.1, *)
    case shuffle
    @available(tvOS 9.1, *)
    case audio
    @available(tvOS 9.1, *)
    case update
  }
}
@available(tvOS 9.0, *)
class UIApplicationShortcutIcon : NSObject, NSCopying {
  convenience init(type: UIApplicationShortcutIcon.IconType)
  convenience init(templateImageName: String)
  convenience init(systemImageName: String)
}
@available(tvOS 9.0, *)
class UIApplicationShortcutItem : NSObject, NSCopying, NSMutableCopying {
  init(type: String, localizedTitle: String, localizedSubtitle: String?, icon: UIApplicationShortcutIcon?, userInfo: [String : NSSecureCoding]? = nil)
  convenience init(type: String, localizedTitle: String)
  var type: String { get }
  var localizedTitle: String { get }
  var localizedSubtitle: String? { get }
  @NSCopying var icon: UIApplicationShortcutIcon? { get }
  var userInfo: [String : NSSecureCoding]? { get }
  var targetContentIdentifier: Any? { get }
}
@available(tvOS 9.0, *)
class UIMutableApplicationShortcutItem : UIApplicationShortcutItem {
}
