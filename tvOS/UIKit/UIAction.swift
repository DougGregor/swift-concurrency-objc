
extension UIAction {
  @available(tvOS 13.0, *)
  struct Identifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
typealias UIActionHandler = (UIAction) -> Void
@available(tvOS 13.0, *)
class UIAction : UIMenuElement {
  var discoverabilityTitle: String?
  var identifier: UIAction.Identifier { get }
  var attributes: UIMenuElement.Attributes
  var state: UIMenuElement.State
  @available(tvOS 14.0, *)
  var sender: Any? { get }
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIAction {
  convenience init(title: String = "", image: UIImage? = nil, identifier: UIAction.Identifier? = nil, discoverabilityTitle: String? = nil, attributes: UIMenuElement.Attributes = [], state: UIMenuElement.State = .off, handler: @escaping UIActionHandler)
}
