
@available(iOS 13.4, *)
class UIPointerRegion : NSObject, NSCopying {
  var rect: CGRect { get }
  var __identifier: NSObjectProtocol? { get }
  convenience init(__rect rect: CGRect, identifier: NSObjectProtocol?)
}

@available(iOS 13.4, *)
extension UIPointerRegion {
  convenience init(rect: CGRect, identifier: AnyHashable? = nil)
  var identifier: AnyHashable? { get }
}
