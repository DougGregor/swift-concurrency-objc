
class SFSafariToolbarItem : NSObject, NSCopying, NSSecureCoding {
  func setEnabled(_ enabled: Bool, withBadgeText badgeText: String?)
  func setEnabled(_ enabled: Bool)
  func setBadgeText(_ badgeText: String?)
  func setImage(_ image: NSImage?)
  func setLabel(_ label: String?)
  func showPopover()
}
