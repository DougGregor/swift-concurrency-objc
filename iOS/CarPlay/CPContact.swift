
@available(iOS 14.0, *)
class CPContact : NSObject, NSSecureCoding {
  init(name: String, image: UIImage)
  var name: String
  var image: UIImage
  var actions: [CPButton]?
  var subtitle: String?
  var informativeText: String?
}
@available(iOS 14.0, *)
class CPContactCallButton : CPButton {
  init(handler: ((CPButton) -> Void)? = nil)
}
@available(iOS 14.0, *)
class CPContactMessageButton : CPButton {
  init(phoneOrEmail: String)
  var phoneOrEmail: String { get }
}
@available(iOS 14.0, *)
class CPContactDirectionsButton : CPButton {
  init(handler: ((CPButton) -> Void)? = nil)
}
