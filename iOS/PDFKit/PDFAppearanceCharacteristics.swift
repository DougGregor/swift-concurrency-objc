
struct PDFAppearanceCharacteristicsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAppearanceCharacteristicsKey {
  @available(iOS 11.0, *)
  static let backgroundColor: PDFAppearanceCharacteristicsKey
  @available(iOS 11.0, *)
  static let borderColor: PDFAppearanceCharacteristicsKey
  @available(iOS 11.0, *)
  static let rotation: PDFAppearanceCharacteristicsKey
  @available(iOS 11.0, *)
  static let caption: PDFAppearanceCharacteristicsKey
  @available(iOS 11.0, *)
  static let rolloverCaption: PDFAppearanceCharacteristicsKey
  @available(iOS 11.0, *)
  static let downCaption: PDFAppearanceCharacteristicsKey
}
@available(iOS 11.0, *)
class PDFAppearanceCharacteristics : NSObject, NSCopying {
  var controlType: PDFWidgetControlType
  @NSCopying var backgroundColor: UIColor?
  @NSCopying var borderColor: UIColor?
  var rotation: Int
  var caption: String?
  var rolloverCaption: String?
  var downCaption: String?
  var appearanceCharacteristicsKeyValues: [AnyHashable : Any] { get }
}
