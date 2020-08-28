
struct PDFAppearanceCharacteristicsKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAppearanceCharacteristicsKey {
  @available(macOS 10.13, *)
  static let backgroundColor: PDFAppearanceCharacteristicsKey
  @available(macOS 10.13, *)
  static let borderColor: PDFAppearanceCharacteristicsKey
  @available(macOS 10.13, *)
  static let rotation: PDFAppearanceCharacteristicsKey
  @available(macOS 10.13, *)
  static let caption: PDFAppearanceCharacteristicsKey
  @available(macOS 10.13, *)
  static let rolloverCaption: PDFAppearanceCharacteristicsKey
  @available(macOS 10.13, *)
  static let downCaption: PDFAppearanceCharacteristicsKey
}
@available(macOS 10.13, *)
class PDFAppearanceCharacteristics : NSObject, NSCopying {
  var controlType: PDFWidgetControlType
  @NSCopying var backgroundColor: NSColor?
  @NSCopying var borderColor: NSColor?
  var rotation: Int
  var caption: String?
  var rolloverCaption: String?
  var downCaption: String?
  var appearanceCharacteristicsKeyValues: [AnyHashable : Any] { get }
}
