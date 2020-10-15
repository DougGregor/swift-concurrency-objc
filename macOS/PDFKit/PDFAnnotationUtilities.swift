
enum PDFLineStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case square
  case circle
  case diamond
  case openArrow
  case closedArrow
}
enum PDFTextAnnotationIconType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case comment
  case key
  case note
  case help
  case newParagraph
  case paragraph
  case insert
}
enum PDFMarkupType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case highlight
  case strikeOut
  case underline
  case redact
}
enum PDFWidgetControlType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknownControl
  case pushButtonControl
  case radioButtonControl
  case checkBoxControl
}
enum PDFWidgetCellState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case mixedState
  case offState
  case onState
}
extension PDFAnnotationSubtype {
  @available(macOS 10.13, *)
  static let text: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let link: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let freeText: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let line: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let square: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let circle: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let highlight: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let underline: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let strikeOut: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let ink: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let stamp: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let popup: PDFAnnotationSubtype
  @available(macOS 10.13, *)
  static let widget: PDFAnnotationSubtype
}
struct PDFAnnotationWidgetSubtype : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAnnotationWidgetSubtype {
  @available(macOS 10.13, *)
  static let button: PDFAnnotationWidgetSubtype
  @available(macOS 10.13, *)
  static let choice: PDFAnnotationWidgetSubtype
  @available(macOS 10.13, *)
  static let signature: PDFAnnotationWidgetSubtype
  @available(macOS 10.13, *)
  static let text: PDFAnnotationWidgetSubtype
}
struct PDFAnnotationLineEndingStyle : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAnnotationLineEndingStyle {
  @available(macOS 10.13, *)
  static let none: PDFAnnotationLineEndingStyle
  @available(macOS 10.13, *)
  static let square: PDFAnnotationLineEndingStyle
  @available(macOS 10.13, *)
  static let circle: PDFAnnotationLineEndingStyle
  @available(macOS 10.13, *)
  static let diamond: PDFAnnotationLineEndingStyle
  @available(macOS 10.13, *)
  static let openArrow: PDFAnnotationLineEndingStyle
  @available(macOS 10.13, *)
  static let closedArrow: PDFAnnotationLineEndingStyle
}
struct PDFAnnotationTextIconType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAnnotationTextIconType {
  @available(macOS 10.13, *)
  static let comment: PDFAnnotationTextIconType
  @available(macOS 10.13, *)
  static let key: PDFAnnotationTextIconType
  @available(macOS 10.13, *)
  static let note: PDFAnnotationTextIconType
  @available(macOS 10.13, *)
  static let help: PDFAnnotationTextIconType
  @available(macOS 10.13, *)
  static let newParagraph: PDFAnnotationTextIconType
  @available(macOS 10.13, *)
  static let paragraph: PDFAnnotationTextIconType
  @available(macOS 10.13, *)
  static let insert: PDFAnnotationTextIconType
}
struct PDFAnnotationHighlightingMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAnnotationHighlightingMode {
  @available(macOS 10.13, *)
  static let none: PDFAnnotationHighlightingMode
  @available(macOS 10.13, *)
  static let invert: PDFAnnotationHighlightingMode
  @available(macOS 10.13, *)
  static let outline: PDFAnnotationHighlightingMode
  @available(macOS 10.13, *)
  static let push: PDFAnnotationHighlightingMode
}
extension PDFAnnotation {
  @NSCopying var font: NSFont?
  @NSCopying var fontColor: NSColor?
  @NSCopying var interiorColor: NSColor?
  var alignment: NSTextAlignment
  var startPoint: NSPoint
  var endPoint: NSPoint
  var startLineStyle: PDFLineStyle
  var endLineStyle: PDFLineStyle
  class func lineStyle(fromName name: String) -> PDFLineStyle
  class func name(for style: PDFLineStyle) -> String
  var iconType: PDFTextAnnotationIconType
  var quadrilateralPoints: [NSValue]?
  var markupType: PDFMarkupType
  var widgetFieldType: PDFAnnotationWidgetSubtype
  var widgetControlType: PDFWidgetControlType
  var isMultiline: Bool
  var isPasswordField: Bool { get }
  var hasComb: Bool
  var maximumLength: Int
  var widgetStringValue: String?
  var widgetDefaultStringValue: String?
  var allowsToggleToOff: Bool
  var radiosInUnison: Bool
  var isReadOnly: Bool
  var isListChoice: Bool
  var choices: [String]?
  var values: [String]?
  var buttonWidgetState: PDFWidgetCellState
  var buttonWidgetStateString: String
  var isOpen: Bool
  var paths: [NSBezierPath]? { get }
  func add(_ path: NSBezierPath)
  func remove(_ path: NSBezierPath)
  var destination: PDFDestination?
  var url: URL?
  var fieldName: String?
  var caption: String?
  @NSCopying var backgroundColor: NSColor?
  var stampName: String?
}
