
struct PDFAnnotationSubtype : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct PDFAnnotationKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAnnotationKey {
  @available(iOS 11.0, *)
  static let appearanceDictionary: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let appearanceState: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let border: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let color: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let contents: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let flags: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let date: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let name: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let page: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let rect: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let subtype: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let action: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let additionalActions: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let borderStyle: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let defaultAppearance: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let destination: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let highlightingMode: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let inklist: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let interiorColor: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let linePoints: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let lineEndingStyles: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let iconName: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let open: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let parent: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let popup: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let quadding: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let quadPoints: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let textLabel: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetDownCaption: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetBorderColor: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetBackgroundColor: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetCaption: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetDefaultValue: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetFieldFlags: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetFieldType: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetAppearanceDictionary: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetMaxLen: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetOptions: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetRotation: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetRolloverCaption: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetTextLabelUI: PDFAnnotationKey
  @available(iOS 11.0, *)
  static let widgetValue: PDFAnnotationKey
}
@available(iOS 11.0, *)
class PDFAnnotation : NSObject, NSCopying, NSCoding {
  @available(iOS 11.0, *)
  init(bounds: CGRect, forType annotationType: PDFAnnotationSubtype, withProperties properties: [AnyHashable : Any]?)
  weak var page: @sil_weak PDFPage?
  var type: String?
  var bounds: CGRect
  var shouldDisplay: Bool
  var shouldPrint: Bool
  @available(iOS 11.0, *)
  var modificationDate: Date?
  @available(iOS 11.0, *)
  var userName: String?
  @available(iOS 11.0, *)
  var popup: PDFAnnotation?
  @available(iOS 11.0, *)
  var border: PDFBorder?
  @available(iOS 11.0, *)
  @NSCopying var color: UIColor
  @available(iOS 11.0, *)
  var contents: String?
  @available(iOS 11.0, *)
  var action: PDFAction?
  var hasAppearanceStream: Bool { get }
  @available(iOS 11.0, *)
  var isHighlighted: Bool
  @available(iOS 11.0, *)
  func draw(with box: PDFDisplayBox, in context: CGContext)
  @available(iOS 11.0, *)
  func setValue(_ value: Any, forAnnotationKey key: PDFAnnotationKey) -> Bool
  @available(iOS 11.0, *)
  func setBoolean(_ value: Bool, forAnnotationKey key: PDFAnnotationKey) -> Bool
  @available(iOS 11.0, *)
  func setRect(_ value: CGRect, forAnnotationKey key: PDFAnnotationKey) -> Bool
  @available(iOS 11.0, *)
  var annotationKeyValues: [AnyHashable : Any] { get }
  @available(iOS 11.0, *)
  func value(forAnnotationKey key: PDFAnnotationKey) -> Any?
  @available(iOS 11.0, *)
  func removeValue(forAnnotationKey key: PDFAnnotationKey)
}
