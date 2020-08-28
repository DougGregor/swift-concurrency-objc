
extension UIMenuElement {
  @available(tvOS 13.0, *)
  enum State : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case off
    case on
    case mixed
  }
  @available(tvOS 13.0, *)
  struct Attributes : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var disabled: UIMenuElement.Attributes { get }
    static var destructive: UIMenuElement.Attributes { get }
    static var hidden: UIMenuElement.Attributes { get }
  }
}
@available(tvOS 13.0, *)
class UIMenuElement : NSObject, NSCopying, NSSecureCoding {
  var title: String { get }
  var image: UIImage? { get }
}
