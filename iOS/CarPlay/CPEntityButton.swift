
enum CPEntityButtonType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case message
  case call
  case directions
  case custom
}
enum CPEntityButtonColors : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case gray
  case green
}
enum CPEntityButtonStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case rounded
}
let CPEntityButtonLabelKey: String
let CPEntityButtonBackgroundColorKey: String
let CPEntityButtonIsRoundedKey: String
@available(iOS 14.0, *)
class CPEntityButton : NSObject {
  init(buttonType: CPEntityButtonType, handler: ((CPEntityButton) -> Void)? = nil)
  var entityButtonType: CPEntityButtonType { get }
  var isEnabled: Bool
  var buttonAttributes: [AnyHashable : Any]?
}
