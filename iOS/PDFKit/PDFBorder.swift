
@available(iOS 11.0, *)
enum PDFBorderStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case solid
  case dashed
  case beveled
  case inset
  case underline
}
struct PDFBorderKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFBorderKey {
  @available(iOS 11.0, *)
  static let lineWidth: PDFBorderKey
  @available(iOS 11.0, *)
  static let style: PDFBorderKey
  @available(iOS 11.0, *)
  static let dashPattern: PDFBorderKey
}
@available(iOS 11.0, *)
class PDFBorder : NSObject, NSCopying, NSCoding {
  var style: PDFBorderStyle
  var lineWidth: CGFloat
  var dashPattern: [Any]?
  var borderKeyValues: [AnyHashable : Any] { get }
  func draw(in rect: CGRect)
}
