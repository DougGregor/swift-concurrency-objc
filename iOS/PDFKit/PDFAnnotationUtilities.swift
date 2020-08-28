
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
  @available(iOS 11.0, *)
  static let text: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let link: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let freeText: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let line: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let square: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let circle: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let highlight: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let underline: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let strikeOut: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let ink: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let stamp: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let popup: PDFAnnotationSubtype
  @available(iOS 11.0, *)
  static let widget: PDFAnnotationSubtype
}
struct PDFAnnotationWidgetSubtype : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAnnotationWidgetSubtype {
  @available(iOS 11.0, *)
  static let button: PDFAnnotationWidgetSubtype
  @available(iOS 11.0, *)
  static let choice: PDFAnnotationWidgetSubtype
  @available(iOS 11.0, *)
  static let signature: PDFAnnotationWidgetSubtype
  @available(iOS 11.0, *)
  static let text: PDFAnnotationWidgetSubtype
}
struct PDFAnnotationLineEndingStyle : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAnnotationLineEndingStyle {
  @available(iOS 11.0, *)
  static let none: PDFAnnotationLineEndingStyle
  @available(iOS 11.0, *)
  static let square: PDFAnnotationLineEndingStyle
  @available(iOS 11.0, *)
  static let circle: PDFAnnotationLineEndingStyle
  @available(iOS 11.0, *)
  static let diamond: PDFAnnotationLineEndingStyle
  @available(iOS 11.0, *)
  static let openArrow: PDFAnnotationLineEndingStyle
  @available(iOS 11.0, *)
  static let closedArrow: PDFAnnotationLineEndingStyle
}
struct PDFAnnotationTextIconType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAnnotationTextIconType {
  @available(iOS 11.0, *)
  static let comment: PDFAnnotationTextIconType
  @available(iOS 11.0, *)
  static let key: PDFAnnotationTextIconType
  @available(iOS 11.0, *)
  static let note: PDFAnnotationTextIconType
  @available(iOS 11.0, *)
  static let help: PDFAnnotationTextIconType
  @available(iOS 11.0, *)
  static let newParagraph: PDFAnnotationTextIconType
  @available(iOS 11.0, *)
  static let paragraph: PDFAnnotationTextIconType
  @available(iOS 11.0, *)
  static let insert: PDFAnnotationTextIconType
}
struct PDFAnnotationHighlightingMode : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension PDFAnnotationHighlightingMode {
  @available(iOS 11.0, *)
  static let none: PDFAnnotationHighlightingMode
  @available(iOS 11.0, *)
  static let invert: PDFAnnotationHighlightingMode
  @available(iOS 11.0, *)
  static let outline: PDFAnnotationHighlightingMode
  @available(iOS 11.0, *)
  static let push: PDFAnnotationHighlightingMode
}
extension PDFAnnotation {
  @NSCopying var font: UIFont?
  @NSCopying var fontColor: UIColor?
  @NSCopying var interiorColor: UIColor?
  var alignment: NSTextAlignment
  var startPoint: CGPoint
  var endPoint: CGPoint
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
  var paths: [UIBezierPath]? { get }
  func add(_ path: UIBezierPath)
  func remove(_ path: UIBezierPath)
  var destination: PDFDestination?
  var url: URL?
  var fieldName: String?
  var caption: String?
  @NSCopying var backgroundColor: UIColor?
  var stampName: String?
}
