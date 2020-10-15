
extension NSNotification.Name {
  @available(tvOS 11.3, *)
  static let AVDisplayManagerModeSwitchStart: NSNotification.Name
  @available(tvOS 11.3, *)
  static let AVDisplayManagerModeSwitchEnd: NSNotification.Name
  @available(tvOS 11.3, *)
  static let AVDisplayManagerModeSwitchSettingsChanged: NSNotification.Name
}
@available(tvOS 11.2, *)
class AVDisplayManager : NSObject {
  @NSCopying var preferredDisplayCriteria: AVDisplayCriteria?
  var isDisplayModeSwitchInProgress: Bool { get }
  @available(tvOS 11.3, *)
  var isDisplayCriteriaMatchingEnabled: Bool { get }
}
