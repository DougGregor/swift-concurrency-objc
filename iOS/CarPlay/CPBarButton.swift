
@available(iOS 14.0, *)
enum CPBarButtonStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case rounded
}
extension CPBarButton {
  @available(iOS 12.0, *)
  enum `Type` : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case text
    case image
  }
}
@available(iOS 12.0, *)
class CPBarButton : NSObject, NSSecureCoding {
  @available(iOS 14.0, *)
  init(image: UIImage, handler: CPBarButtonHandler? = nil)
  @available(iOS 14.0, *)
  init(title: String, handler: CPBarButtonHandler? = nil)
  var isEnabled: Bool
  @available(iOS 14.0, *)
  var buttonStyle: CPBarButtonStyle
  var image: UIImage?
  var title: String?
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  init(type: CPBarButton.`Type`, handler: CPBarButtonHandler? = nil)
  @available(iOS, introduced: 12.0, deprecated: 14.0)
  var buttonType: CPBarButton.`Type` { get }
}
typealias CPBarButtonHandler = (CPBarButton) -> Void
