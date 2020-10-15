
extension AXCustomContent {
  @available(watchOS 7.0, *)
  enum Importance : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case high
  }
}
@available(watchOS 7.0, *)
class AXCustomContent : NSObject, NSCopying, NSSecureCoding {
  convenience init(label: String, value: String)
  convenience init(attributedLabel label: NSAttributedString, attributedValue value: NSAttributedString)
  var label: String { get }
  @NSCopying var attributedLabel: NSAttributedString { get }
  var value: String { get }
  @NSCopying var attributedValue: NSAttributedString { get }
  var importance: AXCustomContent.Importance
}
@available(watchOS 7.0, *)
protocol AXCustomContentProvider : NSObjectProtocol {
  var accessibilityCustomContent: [AXCustomContent]! { get set }
}
