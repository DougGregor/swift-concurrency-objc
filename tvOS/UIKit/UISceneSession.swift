
@available(tvOS 13.0, *)
class UISceneConfiguration : NSObject, NSCopying, NSSecureCoding {
  init(name: String?, sessionRole: UISceneSession.Role)
  var name: String? { get }
  var role: UISceneSession.Role { get }
  var sceneClass: AnyClass?
  var delegateClass: AnyClass?
  var storyboard: UIStoryboard?
}
@available(tvOS 13.0, *)
class UISceneSession : NSObject, NSSecureCoding {
  var scene: UIScene? { get }
  var role: UISceneSession.Role { get }
  @NSCopying var configuration: UISceneConfiguration { get }
  var persistentIdentifier: String { get }
  var stateRestorationActivity: NSUserActivity?
  var userInfo: [String : Any]?
}
