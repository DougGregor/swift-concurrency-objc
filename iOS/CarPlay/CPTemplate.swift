
@available(iOS 12.0, *)
class CPTemplate : NSObject, NSSecureCoding {
  var userInfo: Any?
  @available(iOS 14.0, *)
  var tabTitle: String?
  @available(iOS 14.0, *)
  var tabImage: UIImage?
  @available(iOS 14.0, *)
  var tabSystemItem: UITabBarItem.SystemItem
  @available(iOS 14.0, *)
  var showsTabBadge: Bool
}
