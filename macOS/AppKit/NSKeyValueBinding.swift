
struct NSBindingName : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct NSBindingOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.14, *)
class NSBindingSelectionMarker : NSObject, NSCopying {
  @available(macOS 10.14, *)
  class var multipleValues: NSBindingSelectionMarker { get }
  @available(macOS 10.14, *)
  class var noSelection: NSBindingSelectionMarker { get }
  @available(macOS 10.14, *)
  class var notApplicable: NSBindingSelectionMarker { get }
  @available(macOS 10.15, *)
  class func setDefaultPlaceholder(_ placeholder: Any?, for marker: NSBindingSelectionMarker?, on objectClass: AnyClass, withBinding binding: NSBindingName)
  @available(macOS 10.15, *)
  class func defaultPlaceholder(for marker: NSBindingSelectionMarker?, on objectClass: AnyClass, withBinding binding: NSBindingName) -> Any?
}
@available(macOS, introduced: 10.0, deprecated: 11.0)
var NSMultipleValuesMarker: AnyObject
@available(macOS, introduced: 10.0, deprecated: 11.0)
var NSNoSelectionMarker: AnyObject
@available(macOS, introduced: 10.0, deprecated: 11.0)
var NSNotApplicableMarker: AnyObject
func NSIsControllerMarker(_ object: Any?) -> Bool
struct NSBindingInfoKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension NSBindingInfoKey {
  static let observedObject: NSBindingInfoKey
  static let observedKeyPath: NSBindingInfoKey
  static let options: NSBindingInfoKey
}
extension NSObject {
  class func exposeBinding(_ binding: NSBindingName)
  var exposedBindings: [NSBindingName] { get }
  class func valueClassForBinding(_ binding: NSBindingName) -> AnyClass?
  func valueClassForBinding(_ binding: NSBindingName) -> AnyClass?
  class func bind(_ binding: NSBindingName, to observable: Any, withKeyPath keyPath: String, options: [NSBindingOption : Any]? = nil)
  func bind(_ binding: NSBindingName, to observable: Any, withKeyPath keyPath: String, options: [NSBindingOption : Any]? = nil)
  class func unbind(_ binding: NSBindingName)
  func unbind(_ binding: NSBindingName)
  class func infoForBinding(_ binding: NSBindingName) -> [NSBindingInfoKey : Any]?
  func infoForBinding(_ binding: NSBindingName) -> [NSBindingInfoKey : Any]?
  @available(macOS 10.5, *)
  class func optionDescriptionsForBinding(_ binding: NSBindingName) -> [NSAttributeDescription]
  @available(macOS 10.5, *)
  func optionDescriptionsForBinding(_ binding: NSBindingName) -> [NSAttributeDescription]
  class func exposedBindings() -> [NSBindingName]
}
extension NSObject {
  @available(macOS, introduced: 10.0, deprecated: 11.0)
  class func setDefaultPlaceholder(_ placeholder: Any?, for marker: Any?, with binding: NSBindingName)
  @available(macOS, introduced: 10.0, deprecated: 11.0)
  class func defaultPlaceholder(for marker: Any?, with binding: NSBindingName) -> Any?
}
protocol NSEditor : NSObjectProtocol {
  func discardEditing()
  func commitEditing() -> Bool
  func commitEditing(withDelegate delegate: Any?, didCommit didCommitSelector: Selector?, contextInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.7, *)
  func commitEditingWithoutPresentingError() throws
}
protocol NSEditorRegistration : NSObjectProtocol {
  @asyncHandler optional func objectDidBeginEditing(_ editor: NSEditor)
  @asyncHandler optional func objectDidEndEditing(_ editor: NSEditor)
}
extension NSBindingName {
  static let alignment: NSBindingName
  static let alternateImage: NSBindingName
  static let alternateTitle: NSBindingName
  static let animate: NSBindingName
  static let animationDelay: NSBindingName
  static let argument: NSBindingName
  static let attributedString: NSBindingName
  static let contentArray: NSBindingName
  static let contentArrayForMultipleSelection: NSBindingName
  static let content: NSBindingName
  @available(macOS 10.5, *)
  static let contentDictionary: NSBindingName
  static let contentHeight: NSBindingName
  static let contentObject: NSBindingName
  static let contentObjects: NSBindingName
  static let contentSet: NSBindingName
  static let contentValues: NSBindingName
  static let contentWidth: NSBindingName
  static let criticalValue: NSBindingName
  static let data: NSBindingName
  static let displayPatternTitle: NSBindingName
  static let displayPatternValue: NSBindingName
  static let documentEdited: NSBindingName
  static let doubleClickArgument: NSBindingName
  static let doubleClickTarget: NSBindingName
  static let editable: NSBindingName
  static let enabled: NSBindingName
  @available(macOS 10.5, *)
  static let excludedKeys: NSBindingName
  static let filterPredicate: NSBindingName
  static let font: NSBindingName
  static let fontBold: NSBindingName
  static let fontFamilyName: NSBindingName
  static let fontItalic: NSBindingName
  static let fontName: NSBindingName
  static let fontSize: NSBindingName
  static let headerTitle: NSBindingName
  static let hidden: NSBindingName
  static let image: NSBindingName
  @available(macOS 10.5, *)
  static let includedKeys: NSBindingName
  @available(macOS 10.5, *)
  static let initialKey: NSBindingName
  @available(macOS 10.5, *)
  static let initialValue: NSBindingName
  static let isIndeterminate: NSBindingName
  static let label: NSBindingName
  @available(macOS 10.5, *)
  static let localizedKeyDictionary: NSBindingName
  static let managedObjectContext: NSBindingName
  static let maximumRecents: NSBindingName
  static let maxValue: NSBindingName
  static let maxWidth: NSBindingName
  static let minValue: NSBindingName
  static let minWidth: NSBindingName
  static let mixedStateImage: NSBindingName
  static let offStateImage: NSBindingName
  static let onStateImage: NSBindingName
  @available(macOS 10.7, *)
  static let positioningRect: NSBindingName
  static let predicate: NSBindingName
  static let recentSearches: NSBindingName
  static let representedFilename: NSBindingName
  static let rowHeight: NSBindingName
  static let selectedIdentifier: NSBindingName
  static let selectedIndex: NSBindingName
  static let selectedLabel: NSBindingName
  static let selectedObject: NSBindingName
  static let selectedObjects: NSBindingName
  static let selectedTag: NSBindingName
  static let selectedValue: NSBindingName
  static let selectedValues: NSBindingName
  static let selectionIndexes: NSBindingName
  static let selectionIndexPaths: NSBindingName
  static let sortDescriptors: NSBindingName
  static let target: NSBindingName
  static let textColor: NSBindingName
  static let title: NSBindingName
  static let toolTip: NSBindingName
  @available(macOS 10.5, *)
  static let transparent: NSBindingName
  static let value: NSBindingName
  static let valuePath: NSBindingName
  static let valueURL: NSBindingName
  static let visible: NSBindingName
  static let warningValue: NSBindingName
  static let width: NSBindingName
}
extension NSBindingOption {
  static let allowsEditingMultipleValuesSelection: NSBindingOption
  static let allowsNullArgument: NSBindingOption
  static let alwaysPresentsApplicationModalAlerts: NSBindingOption
  static let conditionallySetsEditable: NSBindingOption
  static let conditionallySetsEnabled: NSBindingOption
  static let conditionallySetsHidden: NSBindingOption
  static let continuouslyUpdatesValue: NSBindingOption
  static let createsSortDescriptor: NSBindingOption
  static let deletesObjectsOnRemove: NSBindingOption
  static let displayName: NSBindingOption
  static let displayPattern: NSBindingOption
  @available(macOS 10.5, *)
  static let contentPlacementTag: NSBindingOption
  static let handlesContentAsCompoundValue: NSBindingOption
  static let insertsNullPlaceholder: NSBindingOption
  static let invokesSeparatelyWithArrayObjects: NSBindingOption
  static let multipleValuesPlaceholder: NSBindingOption
  static let noSelectionPlaceholder: NSBindingOption
  static let notApplicablePlaceholder: NSBindingOption
  static let nullPlaceholder: NSBindingOption
  static let raisesForNotApplicableKeys: NSBindingOption
  static let predicateFormat: NSBindingOption
  static let selectorName: NSBindingOption
  static let selectsAllWhenSettingContent: NSBindingOption
  static let validatesImmediately: NSBindingOption
  static let valueTransformerName: NSBindingOption
  static let valueTransformer: NSBindingOption
}
extension NSManagedObjectContext : NSEditor, NSEditorRegistration {
}
