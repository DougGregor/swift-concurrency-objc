
extension CPAlertAction {
  @available(iOS 12.0, *)
  enum Style : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case cancel
    case destructive
  }
}
@available(iOS 12.0, *)
class CPAlertAction : NSObject, NSSecureCoding {
  init(title: String, style: CPAlertAction.Style, handler: @escaping CPAlertActionHandler)
  var title: String { get }
  var style: CPAlertAction.Style { get }
  var handler: CPAlertActionHandler { get }
}
typealias CPAlertActionHandler = (CPAlertAction) -> Void
