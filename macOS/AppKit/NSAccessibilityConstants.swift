
extension NSAccessibility {
  static let ErrorCodeExceptionInfo: String
  struct Attribute : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct ParameterizedAttribute : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct AnnotationAttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct FontAttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct OrientationValue : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct SortDirectionValue : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct RulerMarkerTypeValue : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct RulerUnitValue : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Action : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: String)
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Notification : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Role : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct Subrole : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  struct NotificationUserInfoKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
  @available(macOS 10.7, *)
  static func post(element: Any, notification: NSAccessibility.Notification, userInfo: [NSAccessibility.NotificationUserInfoKey : Any]?)
}
extension NSAccessibility.Attribute {
  static let role: NSAccessibility.Attribute
  static let roleDescription: NSAccessibility.Attribute
  static let subrole: NSAccessibility.Attribute
  static let help: NSAccessibility.Attribute
  static let value: NSAccessibility.Attribute
  static let minValue: NSAccessibility.Attribute
  static let maxValue: NSAccessibility.Attribute
  static let enabled: NSAccessibility.Attribute
  static let focused: NSAccessibility.Attribute
  static let parent: NSAccessibility.Attribute
  static let children: NSAccessibility.Attribute
  static let window: NSAccessibility.Attribute
  static let topLevelUIElement: NSAccessibility.Attribute
  static let selectedChildren: NSAccessibility.Attribute
  static let visibleChildren: NSAccessibility.Attribute
  static let position: NSAccessibility.Attribute
  static let size: NSAccessibility.Attribute
  static let contents: NSAccessibility.Attribute
  static let title: NSAccessibility.Attribute
  static let description: NSAccessibility.Attribute
  static let shownMenu: NSAccessibility.Attribute
  @available(macOS 10.5, *)
  static let valueDescription: NSAccessibility.Attribute
  @available(macOS 10.10, *)
  static let sharedFocusElements: NSAccessibility.Attribute
  static let previousContents: NSAccessibility.Attribute
  static let nextContents: NSAccessibility.Attribute
  static let header: NSAccessibility.Attribute
  static let edited: NSAccessibility.Attribute
  static let tabs: NSAccessibility.Attribute
  static let horizontalScrollBar: NSAccessibility.Attribute
  static let verticalScrollBar: NSAccessibility.Attribute
  static let overflowButton: NSAccessibility.Attribute
  static let incrementButton: NSAccessibility.Attribute
  static let decrementButton: NSAccessibility.Attribute
  static let filename: NSAccessibility.Attribute
  static let expanded: NSAccessibility.Attribute
  static let selected: NSAccessibility.Attribute
  static let splitters: NSAccessibility.Attribute
  static let document: NSAccessibility.Attribute
  static let activationPoint: NSAccessibility.Attribute
  static let url: NSAccessibility.Attribute
  static let index: NSAccessibility.Attribute
  @available(macOS 10.5, *)
  static let rowCount: NSAccessibility.Attribute
  @available(macOS 10.5, *)
  static let columnCount: NSAccessibility.Attribute
  @available(macOS 10.5, *)
  static let orderedByRow: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let warningValue: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let criticalValue: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let placeholderValue: NSAccessibility.Attribute
  @available(macOS 10.9, *)
  static let containsProtectedContent: NSAccessibility.Attribute
  @available(macOS 10.10, *)
  static let alternateUIVisible: NSAccessibility.Attribute
  @available(macOS 10.12, *)
  static let required: NSAccessibility.Attribute
  static let titleUIElement: NSAccessibility.Attribute
  static let servesAsTitleForUIElements: NSAccessibility.Attribute
  static let linkedUIElements: NSAccessibility.Attribute
  static let selectedText: NSAccessibility.Attribute
  static let selectedTextRange: NSAccessibility.Attribute
  static let numberOfCharacters: NSAccessibility.Attribute
  static let visibleCharacterRange: NSAccessibility.Attribute
  static let sharedTextUIElements: NSAccessibility.Attribute
  static let sharedCharacterRange: NSAccessibility.Attribute
  static let insertionPointLineNumber: NSAccessibility.Attribute
  @available(macOS 10.5, *)
  static let selectedTextRanges: NSAccessibility.Attribute
  static let main: NSAccessibility.Attribute
  static let minimized: NSAccessibility.Attribute
  static let closeButton: NSAccessibility.Attribute
  static let zoomButton: NSAccessibility.Attribute
  static let minimizeButton: NSAccessibility.Attribute
  static let toolbarButton: NSAccessibility.Attribute
  static let proxy: NSAccessibility.Attribute
  static let growArea: NSAccessibility.Attribute
  static let modal: NSAccessibility.Attribute
  static let defaultButton: NSAccessibility.Attribute
  static let cancelButton: NSAccessibility.Attribute
  @available(macOS 10.7, *)
  static let fullScreenButton: NSAccessibility.Attribute
  static let menuBar: NSAccessibility.Attribute
  static let windows: NSAccessibility.Attribute
  static let frontmost: NSAccessibility.Attribute
  static let hidden: NSAccessibility.Attribute
  static let mainWindow: NSAccessibility.Attribute
  static let focusedWindow: NSAccessibility.Attribute
  static let focusedUIElement: NSAccessibility.Attribute
  @available(macOS 10.8, *)
  static let extrasMenuBar: NSAccessibility.Attribute
  static let orientation: NSAccessibility.Attribute
  static let columnTitles: NSAccessibility.Attribute
  static let searchButton: NSAccessibility.Attribute
  static let searchMenu: NSAccessibility.Attribute
  static let clearButton: NSAccessibility.Attribute
  static let rows: NSAccessibility.Attribute
  static let visibleRows: NSAccessibility.Attribute
  static let selectedRows: NSAccessibility.Attribute
  static let columns: NSAccessibility.Attribute
  static let visibleColumns: NSAccessibility.Attribute
  static let selectedColumns: NSAccessibility.Attribute
  static let sortDirection: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let selectedCells: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let visibleCells: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let rowHeaderUIElements: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let columnHeaderUIElements: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let rowIndexRange: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let columnIndexRange: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let horizontalUnits: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let verticalUnits: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let horizontalUnitDescription: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let verticalUnitDescription: NSAccessibility.Attribute
  @available(macOS 10.6, *)
  static let handles: NSAccessibility.Attribute
  static let disclosing: NSAccessibility.Attribute
  static let disclosedRows: NSAccessibility.Attribute
  static let disclosedByRow: NSAccessibility.Attribute
  static let disclosureLevel: NSAccessibility.Attribute
  static let allowedValues: NSAccessibility.Attribute
  static let labelUIElements: NSAccessibility.Attribute
  static let labelValue: NSAccessibility.Attribute
  @available(macOS, introduced: 10.1, deprecated: 10.10)
  static let matteHole: NSAccessibility.Attribute
  @available(macOS, introduced: 10.1, deprecated: 10.10)
  static let matteContentUIElement: NSAccessibility.Attribute
  static let markerUIElements: NSAccessibility.Attribute
  static let markerValues: NSAccessibility.Attribute
  static let markerGroupUIElement: NSAccessibility.Attribute
  static let units: NSAccessibility.Attribute
  static let unitDescription: NSAccessibility.Attribute
  static let markerType: NSAccessibility.Attribute
  static let markerTypeDescription: NSAccessibility.Attribute
  @available(macOS 10.7, *)
  static let identifier: NSAccessibility.Attribute
}
extension NSAccessibility.ParameterizedAttribute {
  static let lineForIndex: NSAccessibility.ParameterizedAttribute
  static let rangeForLine: NSAccessibility.ParameterizedAttribute
  static let stringForRange: NSAccessibility.ParameterizedAttribute
  static let rangeForPosition: NSAccessibility.ParameterizedAttribute
  static let rangeForIndex: NSAccessibility.ParameterizedAttribute
  static let boundsForRange: NSAccessibility.ParameterizedAttribute
  static let rtfForRange: NSAccessibility.ParameterizedAttribute
  static let styleRangeForIndex: NSAccessibility.ParameterizedAttribute
  static let attributedStringForRange: NSAccessibility.ParameterizedAttribute
  @available(macOS 10.6, *)
  static let cellForColumnAndRow: NSAccessibility.ParameterizedAttribute
  @available(macOS 10.6, *)
  static let layoutPointForScreenPoint: NSAccessibility.ParameterizedAttribute
  @available(macOS 10.6, *)
  static let layoutSizeForScreenSize: NSAccessibility.ParameterizedAttribute
  @available(macOS 10.6, *)
  static let screenPointForLayoutPoint: NSAccessibility.ParameterizedAttribute
  @available(macOS 10.6, *)
  static let screenSizeForLayoutSize: NSAccessibility.ParameterizedAttribute
}
extension NSAttributedString.Key {
  static let accessibilityFont: NSAttributedString.Key
  static let accessibilityForegroundColor: NSAttributedString.Key
  static let accessibilityBackgroundColor: NSAttributedString.Key
  static let accessibilityUnderlineColor: NSAttributedString.Key
  static let accessibilityStrikethroughColor: NSAttributedString.Key
  static let accessibilityUnderline: NSAttributedString.Key
  static let accessibilitySuperscript: NSAttributedString.Key
  static let accessibilityStrikethrough: NSAttributedString.Key
  static let accessibilityShadow: NSAttributedString.Key
  static let accessibilityAttachment: NSAttributedString.Key
  static let accessibilityLink: NSAttributedString.Key
  @available(macOS 10.7, *)
  static let accessibilityAutocorrected: NSAttributedString.Key
  @available(macOS 10.12, *)
  static let accessibilityAlignment: NSAttributedString.Key
  @available(macOS 10.11, *)
  static let accessibilityListItemPrefix: NSAttributedString.Key
  @available(macOS 10.11, *)
  static let accessibilityListItemIndex: NSAttributedString.Key
  @available(macOS 10.11, *)
  static let accessibilityListItemLevel: NSAttributedString.Key
  static let accessibilityMisspelled: NSAttributedString.Key
  @available(macOS 10.4, *)
  static let accessibilityMarkedMisspelled: NSAttributedString.Key
  @available(macOS 10.13, *)
  static let accessibilityLanguage: NSAttributedString.Key
  @available(macOS 10.13, *)
  static let accessibilityCustomText: NSAttributedString.Key
  @available(macOS 10.13, *)
  static let accessibilityAnnotationTextAttribute: NSAttributedString.Key
}
extension NSAccessibility.AnnotationAttributeKey {
  @available(macOS 10.13, *)
  static let label: NSAccessibility.AnnotationAttributeKey
  @available(macOS 10.13, *)
  static let element: NSAccessibility.AnnotationAttributeKey
  @available(macOS 10.13, *)
  static let location: NSAccessibility.AnnotationAttributeKey
}
@available(macOS 10.13, *)
enum NSAccessibilityAnnotationPosition : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case fullRange
  case start
  case end
}
extension NSAccessibility.FontAttributeKey {
  static let fontName: NSAccessibility.FontAttributeKey
  static let fontFamily: NSAccessibility.FontAttributeKey
  static let visibleName: NSAccessibility.FontAttributeKey
  static let fontSize: NSAccessibility.FontAttributeKey
}
@available(macOS 10.10, *)
enum NSAccessibilityOrientation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case vertical
  case horizontal
}
extension NSAccessibility.OrientationValue {
  static let vertical: NSAccessibility.OrientationValue
  static let horizontal: NSAccessibility.OrientationValue
  static let unknown: NSAccessibility.OrientationValue
}
extension NSAccessibility.SortDirectionValue {
  static let ascending: NSAccessibility.SortDirectionValue
  static let descending: NSAccessibility.SortDirectionValue
  static let unknown: NSAccessibility.SortDirectionValue
}
@available(macOS 10.10, *)
enum NSAccessibilitySortDirection : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case ascending
  case descending
}
extension NSAccessibility.RulerMarkerTypeValue {
  static let leftTabStop: NSAccessibility.RulerMarkerTypeValue
  static let rightTabStop: NSAccessibility.RulerMarkerTypeValue
  static let centerTabStop: NSAccessibility.RulerMarkerTypeValue
  static let decimalTabStop: NSAccessibility.RulerMarkerTypeValue
  static let headIndent: NSAccessibility.RulerMarkerTypeValue
  static let tailIndent: NSAccessibility.RulerMarkerTypeValue
  static let firstLineIndent: NSAccessibility.RulerMarkerTypeValue
  static let unknown: NSAccessibility.RulerMarkerTypeValue
}
@available(macOS 10.10, *)
enum NSAccessibilityRulerMarkerType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case tabStopLeft
  case tabStopRight
  case tabStopCenter
  case tabStopDecimal
  case indentHead
  case indentTail
  case indentFirstLine
}
extension NSAccessibility.RulerUnitValue {
  static let inches: NSAccessibility.RulerUnitValue
  static let centimeters: NSAccessibility.RulerUnitValue
  static let points: NSAccessibility.RulerUnitValue
  static let picas: NSAccessibility.RulerUnitValue
  static let unknown: NSAccessibility.RulerUnitValue
}
@available(macOS 10.10, *)
enum NSAccessibilityUnits : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case inches
  case centimeters
  case points
  case picas
}
extension NSAccessibility.Action {
  static let press: NSAccessibility.Action
  static let increment: NSAccessibility.Action
  static let decrement: NSAccessibility.Action
  static let confirm: NSAccessibility.Action
  static let pick: NSAccessibility.Action
  static let cancel: NSAccessibility.Action
  static let raise: NSAccessibility.Action
  static let showMenu: NSAccessibility.Action
  static let delete: NSAccessibility.Action
  @available(macOS 10.9, *)
  static let showAlternateUI: NSAccessibility.Action
  @available(macOS 10.9, *)
  static let showDefaultUI: NSAccessibility.Action
}
extension NSAccessibility.Notification {
  static let mainWindowChanged: NSAccessibility.Notification
  static let focusedWindowChanged: NSAccessibility.Notification
  static let focusedUIElementChanged: NSAccessibility.Notification
  static let applicationActivated: NSAccessibility.Notification
  static let applicationDeactivated: NSAccessibility.Notification
  static let applicationHidden: NSAccessibility.Notification
  static let applicationShown: NSAccessibility.Notification
  static let windowCreated: NSAccessibility.Notification
  static let windowMoved: NSAccessibility.Notification
  static let windowResized: NSAccessibility.Notification
  static let windowMiniaturized: NSAccessibility.Notification
  static let windowDeminiaturized: NSAccessibility.Notification
  static let drawerCreated: NSAccessibility.Notification
  static let sheetCreated: NSAccessibility.Notification
  static let uiElementDestroyed: NSAccessibility.Notification
  static let valueChanged: NSAccessibility.Notification
  static let titleChanged: NSAccessibility.Notification
  static let resized: NSAccessibility.Notification
  static let moved: NSAccessibility.Notification
  static let created: NSAccessibility.Notification
  @available(macOS 10.9, *)
  static let layoutChanged: NSAccessibility.Notification
  static let helpTagCreated: NSAccessibility.Notification
  static let selectedTextChanged: NSAccessibility.Notification
  static let rowCountChanged: NSAccessibility.Notification
  static let selectedChildrenChanged: NSAccessibility.Notification
  static let selectedRowsChanged: NSAccessibility.Notification
  static let selectedColumnsChanged: NSAccessibility.Notification
  @available(macOS 10.6, *)
  static let rowExpanded: NSAccessibility.Notification
  @available(macOS 10.6, *)
  static let rowCollapsed: NSAccessibility.Notification
  @available(macOS 10.6, *)
  static let selectedCellsChanged: NSAccessibility.Notification
  @available(macOS 10.6, *)
  static let unitsChanged: NSAccessibility.Notification
  @available(macOS 10.6, *)
  static let selectedChildrenMoved: NSAccessibility.Notification
  @available(macOS 10.7, *)
  static let announcementRequested: NSAccessibility.Notification
}
extension NSAccessibility.Role {
  static let unknown: NSAccessibility.Role
  static let button: NSAccessibility.Role
  static let radioButton: NSAccessibility.Role
  static let checkBox: NSAccessibility.Role
  static let slider: NSAccessibility.Role
  static let tabGroup: NSAccessibility.Role
  static let textField: NSAccessibility.Role
  static let staticText: NSAccessibility.Role
  static let textArea: NSAccessibility.Role
  static let scrollArea: NSAccessibility.Role
  static let popUpButton: NSAccessibility.Role
  static let menuButton: NSAccessibility.Role
  static let table: NSAccessibility.Role
  static let application: NSAccessibility.Role
  static let group: NSAccessibility.Role
  static let radioGroup: NSAccessibility.Role
  static let list: NSAccessibility.Role
  static let scrollBar: NSAccessibility.Role
  static let valueIndicator: NSAccessibility.Role
  static let image: NSAccessibility.Role
  static let menuBar: NSAccessibility.Role
  @available(macOS 10.12, *)
  static let menuBarItem: NSAccessibility.Role
  static let menu: NSAccessibility.Role
  static let menuItem: NSAccessibility.Role
  static let column: NSAccessibility.Role
  static let row: NSAccessibility.Role
  static let toolbar: NSAccessibility.Role
  static let busyIndicator: NSAccessibility.Role
  static let progressIndicator: NSAccessibility.Role
  static let window: NSAccessibility.Role
  static let drawer: NSAccessibility.Role
  static let systemWide: NSAccessibility.Role
  static let outline: NSAccessibility.Role
  static let incrementor: NSAccessibility.Role
  static let browser: NSAccessibility.Role
  static let comboBox: NSAccessibility.Role
  static let splitGroup: NSAccessibility.Role
  static let splitter: NSAccessibility.Role
  static let colorWell: NSAccessibility.Role
  static let growArea: NSAccessibility.Role
  static let sheet: NSAccessibility.Role
  static let helpTag: NSAccessibility.Role
  static let matte: NSAccessibility.Role
  static let ruler: NSAccessibility.Role
  static let rulerMarker: NSAccessibility.Role
  static let link: NSAccessibility.Role
  @available(macOS 10.5, *)
  static let disclosureTriangle: NSAccessibility.Role
  @available(macOS 10.5, *)
  static let grid: NSAccessibility.Role
  static let relevanceIndicator: NSAccessibility.Role
  @available(macOS 10.6, *)
  static let levelIndicator: NSAccessibility.Role
  @available(macOS 10.6, *)
  static let cell: NSAccessibility.Role
  @available(macOS 10.7, *)
  static let popover: NSAccessibility.Role
  @available(macOS 10.13, *)
  static let pageRole: NSAccessibility.Role
  @available(macOS 10.6, *)
  static let layoutArea: NSAccessibility.Role
  @available(macOS 10.6, *)
  static let layoutItem: NSAccessibility.Role
  @available(macOS 10.6, *)
  static let handle: NSAccessibility.Role
}
extension NSAccessibility.Subrole {
  static let unknown: NSAccessibility.Subrole
  static let closeButton: NSAccessibility.Subrole
  static let zoomButton: NSAccessibility.Subrole
  static let minimizeButton: NSAccessibility.Subrole
  static let toolbarButton: NSAccessibility.Subrole
  static let tableRow: NSAccessibility.Subrole
  static let outlineRow: NSAccessibility.Subrole
  static let secureTextField: NSAccessibility.Subrole
  static let standardWindow: NSAccessibility.Subrole
  static let dialog: NSAccessibility.Subrole
  static let systemDialog: NSAccessibility.Subrole
  static let floatingWindow: NSAccessibility.Subrole
  static let systemFloatingWindow: NSAccessibility.Subrole
  static let incrementArrow: NSAccessibility.Subrole
  static let decrementArrow: NSAccessibility.Subrole
  static let incrementPage: NSAccessibility.Subrole
  static let decrementPage: NSAccessibility.Subrole
  static let searchField: NSAccessibility.Subrole
  static let textAttachment: NSAccessibility.Subrole
  static let textLink: NSAccessibility.Subrole
  @available(macOS 10.5, *)
  static let timeline: NSAccessibility.Subrole
  @available(macOS 10.6, *)
  static let sortButton: NSAccessibility.Subrole
  @available(macOS 10.6, *)
  static let ratingIndicator: NSAccessibility.Subrole
  @available(macOS 10.6, *)
  static let contentList: NSAccessibility.Subrole
  @available(macOS 10.6, *)
  static let definitionList: NSAccessibility.Subrole
  @available(macOS 10.7, *)
  static let fullScreenButton: NSAccessibility.Subrole
  @available(macOS 10.9, *)
  static let toggle: NSAccessibility.Subrole
  @available(macOS 10.9, *)
  static let `switch`: NSAccessibility.Subrole
  @available(macOS 10.9, *)
  static let descriptionList: NSAccessibility.Subrole
  @available(macOS 10.13, *)
  static let tabButtonSubrole: NSAccessibility.Subrole
  @available(macOS 10.13, *)
  static let collectionListSubrole: NSAccessibility.Subrole
  @available(macOS 10.13, *)
  static let sectionListSubrole: NSAccessibility.Subrole
}
extension NSAccessibility.NotificationUserInfoKey {
  @available(macOS 10.9, *)
  static let uiElements: NSAccessibility.NotificationUserInfoKey
  @available(macOS 10.9, *)
  static let priority: NSAccessibility.NotificationUserInfoKey
  @available(macOS 10.7, *)
  static let announcement: NSAccessibility.NotificationUserInfoKey
}
@available(macOS 10.9, *)
enum NSAccessibilityPriorityLevel : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case low
  case medium
  case high
}
typealias NSAccessibilityLoadingToken = NSSecureCoding & NSObjectProtocol
