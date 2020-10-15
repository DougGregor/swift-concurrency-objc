
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
  @available(macOS 10.13, *)
  static let appearanceDictionary: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let appearanceState: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let border: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let color: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let contents: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let flags: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let date: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let name: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let page: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let rect: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let subtype: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let action: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let additionalActions: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let borderStyle: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let defaultAppearance: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let destination: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let highlightingMode: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let inklist: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let interiorColor: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let linePoints: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let lineEndingStyles: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let iconName: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let open: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let parent: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let popup: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let quadding: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let quadPoints: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let textLabel: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetDownCaption: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetBorderColor: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetBackgroundColor: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetCaption: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetDefaultValue: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetFieldFlags: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetFieldType: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetAppearanceDictionary: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetMaxLen: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetOptions: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetRotation: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetRolloverCaption: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetTextLabelUI: PDFAnnotationKey
  @available(macOS 10.13, *)
  static let widgetValue: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _AppearanceDictionary: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _AppearanceState: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Border: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Color: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Contents: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Flags: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Date: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Name: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Page: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Rect: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Subtype: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Action: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _AdditionalActions: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _BorderStyle: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _DefaultAppearance: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Destination: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _HighlightingMode: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Inklist: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _InteriorColor: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _LinePoints: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _LineEndingStyles: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _IconName: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Open: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Parent: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Popup: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _Quadding: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _QuadPoints: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _TextLabel: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _WidgetDefaultValue: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _WidgetFieldFlags: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _WidgetFieldType: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _WidgetAppearanceDictionary: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _WidgetMaxLen: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _WidgetOptions: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _WidgetTextLabelUI: PDFAnnotationKey
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  static let _WidgetValue: PDFAnnotationKey
}
@available(macOS 10.4, *)
class PDFAnnotation : NSObject, NSCopying, NSCoding {
  @available(macOS 10.13, *)
  init(bounds: NSRect, forType annotationType: PDFAnnotationSubtype, withProperties properties: [AnyHashable : Any]?)
  weak var page: @sil_weak PDFPage?
  var type: String?
  var bounds: NSRect
  var shouldDisplay: Bool
  var shouldPrint: Bool
  @available(macOS 10.5, *)
  var modificationDate: Date?
  @available(macOS 10.5, *)
  var userName: String?
  @available(macOS 10.5, *)
  var popup: PDFAnnotationPopup?
  @available(macOS 10.4, *)
  var border: PDFBorder?
  @available(macOS 10.4, *)
  @NSCopying var color: NSColor
  @available(macOS 10.5, *)
  var contents: String?
  @available(macOS 10.5, *)
  var action: PDFAction?
  var hasAppearanceStream: Bool { get }
  @available(macOS 10.13, *)
  var isHighlighted: Bool
  @available(macOS 10.12, *)
  func draw(with box: PDFDisplayBox, in context: CGContext)
  @available(macOS 10.12, *)
  func setValue(_ value: Any, forAnnotationKey key: PDFAnnotationKey) -> Bool
  @available(macOS 10.12, *)
  func setBoolean(_ value: Bool, forAnnotationKey key: PDFAnnotationKey) -> Bool
  @available(macOS 10.12, *)
  func setRect(_ value: NSRect, forAnnotationKey key: PDFAnnotationKey) -> Bool
  @available(macOS 10.13, *)
  var annotationKeyValues: [AnyHashable : Any] { get }
  @available(macOS 10.12, *)
  func value(forAnnotationKey key: PDFAnnotationKey) -> Any?
  @available(macOS 10.12, *)
  func removeValue(forAnnotationKey key: PDFAnnotationKey)
}
extension PDFAnnotation {
  @available(macOS, introduced: 10.12, deprecated: 10.13)
  convenience init(dictionary: [AnyHashable : Any], for page: PDFPage?)
  @available(macOS, introduced: 10.4, deprecated: 10.12)
  convenience init(bounds: NSRect)
  @available(macOS, introduced: 10.5, deprecated: 10.12)
  var toolTip: String? { get }
  @available(macOS, introduced: 10.5, deprecated: 10.13)
  var mouseUpAction: PDFAction?
  @available(macOS, introduced: 10.5, deprecated: 10.12)
  func removeAllAppearanceStreams()
  @available(macOS, introduced: 10.4, deprecated: 10.12)
  func draw(with box: PDFDisplayBox)
}
