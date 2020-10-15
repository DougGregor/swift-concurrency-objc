
func NSApplicationMain(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>) -> Int32

@available(macOS 10.15.1, *)
class NSCollectionViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType> : NSObject, NSCollectionViewDataSource where SectionIdentifierType : Hashable, ItemIdentifierType : Hashable {
  typealias ItemProvider = (NSCollectionView, IndexPath, ItemIdentifierType) -> NSCollectionViewItem?
  typealias SupplementaryViewProvider = (NSCollectionView, String, IndexPath) -> (NSView & NSCollectionViewElement)?
  var supplementaryViewProvider: NSCollectionViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.SupplementaryViewProvider?
  init(collectionView: NSCollectionView, itemProvider: @escaping NSCollectionViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.ItemProvider)
  func apply(_ snapshot: NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>, animatingDifferences: Bool = true, completion: (() -> Void)? = nil)
  func snapshot() -> NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>
  func itemIdentifier(for indexPath: IndexPath) -> ItemIdentifierType?
  func indexPath(for itemIdentifier: ItemIdentifierType) -> IndexPath?
  func description() -> String
}

@available(macOS 10.15.1, *)
struct NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType> where SectionIdentifierType : Hashable, ItemIdentifierType : Hashable {
  init()
  var numberOfItems: Int { get }
  var numberOfSections: Int { get }
  var sectionIdentifiers: [SectionIdentifierType] { get }
  var itemIdentifiers: [ItemIdentifierType] { get }
  func numberOfItems(inSection identifier: SectionIdentifierType) -> Int
  func itemIdentifiers(inSection identifier: SectionIdentifierType) -> [ItemIdentifierType]
  func sectionIdentifier(containingItem identifier: ItemIdentifierType) -> SectionIdentifierType?
  func indexOfItem(_ identifier: ItemIdentifierType) -> Int?
  func indexOfSection(_ identifier: SectionIdentifierType) -> Int?
  mutating func appendItems(_ identifiers: [ItemIdentifierType], toSection sectionIdentifier: SectionIdentifierType? = nil)
  mutating func insertItems(_ identifiers: [ItemIdentifierType], beforeItem beforeIdentifier: ItemIdentifierType)
  mutating func insertItems(_ identifiers: [ItemIdentifierType], afterItem afterIdentifier: ItemIdentifierType)
  mutating func deleteItems(_ identifiers: [ItemIdentifierType])
  mutating func deleteAllItems()
  mutating func moveItem(_ identifier: ItemIdentifierType, beforeItem toIdentifier: ItemIdentifierType)
  mutating func moveItem(_ identifier: ItemIdentifierType, afterItem toIdentifier: ItemIdentifierType)
  mutating func reloadItems(_ identifiers: [ItemIdentifierType])
  mutating func appendSections(_ identifiers: [SectionIdentifierType])
  mutating func insertSections(_ identifiers: [SectionIdentifierType], beforeSection toIdentifier: SectionIdentifierType)
  mutating func insertSections(_ identifiers: [SectionIdentifierType], afterSection toIdentifier: SectionIdentifierType)
  mutating func deleteSections(_ identifiers: [SectionIdentifierType])
  mutating func moveSection(_ identifier: SectionIdentifierType, beforeSection toIdentifier: SectionIdentifierType)
  mutating func moveSection(_ identifier: SectionIdentifierType, afterSection toIdentifier: SectionIdentifierType)
  mutating func reloadSections(_ identifiers: [SectionIdentifierType])
}

@available(macOS 10.15.1, *)
extension NSDiffableDataSourceSnapshot : _ObjectiveCBridgeable {
}

@available(macOS 11.0, *)
class NSTableViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType> : NSObject, NSTableViewDataSource where SectionIdentifierType : Hashable, ItemIdentifierType : Hashable {
  typealias CellProvider = (NSTableView, NSTableColumn, Int, ItemIdentifierType) -> NSView
  typealias SectionHeaderViewProvider = (NSTableView, Int, SectionIdentifierType) -> NSView
  typealias RowProvider = (NSTableView, Int, AnyHashable) -> NSTableRowView
  var rowViewProvider: NSTableViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.RowProvider?
  var sectionHeaderViewProvider: NSTableViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.SectionHeaderViewProvider?
  var defaultRowAnimation: NSTableView.AnimationOptions
  init(tableView: NSTableView, cellProvider: @escaping NSTableViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.CellProvider)
  func snapshot() -> NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>
  func apply(_ snapshot: NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>, animatingDifferences: Bool, completion: (() -> Void)? = nil)
  func itemIdentifier(forRow row: Int) -> ItemIdentifierType?
  func row(forItemIdentifier identifier: ItemIdentifierType) -> Int?
  func sectionIdentifier(forRow row: Int) -> SectionIdentifierType?
  func row(forSectionIdentifier identifier: SectionIdentifierType) -> Int?
}

@available(swift 4)
protocol _AppKitKitNumericRawRepresentable : Comparable, RawRepresentable where Self.RawValue : Comparable, Self.RawValue : Numeric {
}

extension _AppKitKitNumericRawRepresentable {
  static func < (lhs: Self, rhs: Self) -> Bool
  static func + (lhs: Self, rhs: Self.RawValue) -> Self
  static func + (lhs: Self.RawValue, rhs: Self) -> Self
  static func - (lhs: Self, rhs: Self.RawValue) -> Self
  static func - (lhs: Self, rhs: Self) -> Self.RawValue
  static func += (lhs: inout Self, rhs: Self.RawValue)
  static func -= (lhs: inout Self, rhs: Self.RawValue)
}

typealias _ColorLiteralType = NSColor

typealias _ImageLiteralType = NSImage

extension NSCursor : __DefaultCustomPlaygroundQuickLookable {
}

extension NSView : __DefaultCustomPlaygroundQuickLookable {
}

@available(macOS 10.12.2, *)
extension NSTouchBar : __DefaultCustomPlaygroundQuickLookable {
}

@available(macOS 10.12.2, *)
extension NSTouchBarItem : __DefaultCustomPlaygroundQuickLookable {
}

extension NSGradient {
  convenience init?(colorsAndLocations objects: (NSColor, CGFloat)...)
}

extension NSApplicationDelegate {
  @_alwaysEmitIntoClient static func main()
}

extension NSApplication {
  @available(swift 4)
  static func loadApplication()
}

extension NSColor : _ExpressibleByColorLiteral {
}

extension NSImage : _ExpressibleByImageLiteral {
}

@available(swift 4)
extension NSAppKitVersion : _AppKitKitNumericRawRepresentable {
}

@available(swift 4)
extension NSLayoutConstraint.Priority : _AppKitKitNumericRawRepresentable {
}

@available(swift 4)
extension NSStackView.VisibilityPriority : _AppKitKitNumericRawRepresentable {
}

@available(swift 4)
extension NSToolbarItem.VisibilityPriority : _AppKitKitNumericRawRepresentable {
}

@available(swift 4)
@available(macOS 10.12.2, *)
extension NSTouchBarItem.Priority : _AppKitKitNumericRawRepresentable {
}

@available(swift 4)
extension NSWindow.Level : _AppKitKitNumericRawRepresentable {
}

@available(swift 4)
extension NSFont.Weight : _AppKitKitNumericRawRepresentable {
}

@available(macOS 10.10, *)
extension NSStoryboard {
  @available(macOS 10.15, *)
  func instantiateInitialController<Controller>(creator: ((NSCoder) -> Controller?)? = nil) -> Controller? where Controller : NSViewController
  @available(macOS 10.15, *)
  func instantiateInitialController<Controller>(creator: ((NSCoder) -> Controller?)? = nil) -> Controller? where Controller : NSWindowController
  @available(macOS 10.15, *)
  func instantiateController<Controller>(identifier: NSStoryboard.SceneIdentifier, creator: ((NSCoder) -> Controller?)? = nil) -> Controller where Controller : NSViewController
  @available(macOS 10.15, *)
  func instantiateController<Controller>(identifier: NSStoryboard.SceneIdentifier, creator: ((NSCoder) -> Controller?)? = nil) -> Controller where Controller : NSWindowController
}

extension CocoaError.Code {
  static var textReadInapplicableDocumentType: CocoaError.Code { get }
  static var textWriteInapplicableDocumentType: CocoaError.Code { get }
  static var serviceApplicationNotFound: CocoaError.Code { get }
  static var serviceApplicationLaunchFailed: CocoaError.Code { get }
  static var serviceRequestTimedOut: CocoaError.Code { get }
  static var serviceInvalidPasteboardData: CocoaError.Code { get }
  static var serviceMalformedServiceDictionary: CocoaError.Code { get }
  static var serviceMiscellaneousError: CocoaError.Code { get }
  static var sharingServiceNotConfigured: CocoaError.Code { get }
  @available(macOS 10.13, *)
  static var fontAssetDownloadError: CocoaError.Code { get }
}

extension CocoaError.Code {
  @available(*, deprecated, renamed: "textReadInapplicableDocumentType")
  static var textReadInapplicableDocumentTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "textWriteInapplicableDocumentType")
  static var textWriteInapplicableDocumentTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceApplicationNotFound")
  static var serviceApplicationNotFoundError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceApplicationLaunchFailed")
  static var serviceApplicationLaunchFailedError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceRequestTimedOut")
  static var serviceRequestTimedOutError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceInvalidPasteboardData")
  static var serviceInvalidPasteboardDataError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceMalformedServiceDictionary")
  static var serviceMalformedServiceDictionaryError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceMiscellaneousError")
  static var serviceMiscellaneous: CocoaError.Code { get }
  @available(*, deprecated, renamed: "sharingServiceNotConfigured")
  static var sharingServiceNotConfiguredError: CocoaError.Code { get }
}

extension CocoaError {
  static var textReadInapplicableDocumentType: CocoaError.Code { get }
  static var textWriteInapplicableDocumentType: CocoaError.Code { get }
  static var serviceApplicationNotFound: CocoaError.Code { get }
  static var serviceApplicationLaunchFailed: CocoaError.Code { get }
  static var serviceRequestTimedOut: CocoaError.Code { get }
  static var serviceInvalidPasteboardData: CocoaError.Code { get }
  static var serviceMalformedServiceDictionary: CocoaError.Code { get }
  static var serviceMiscellaneous: CocoaError.Code { get }
  static var sharingServiceNotConfigured: CocoaError.Code { get }
  @available(macOS 10.13, *)
  static var fontAssetDownloadError: CocoaError.Code { get }
}

extension CocoaError {
  @available(*, deprecated, renamed: "textReadInapplicableDocumentType")
  static var textReadInapplicableDocumentTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "textWriteInapplicableDocumentType")
  static var textWriteInapplicableDocumentTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceApplicationNotFound")
  static var serviceApplicationNotFoundError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceApplicationLaunchFailed")
  static var serviceApplicationLaunchFailedError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceRequestTimedOut")
  static var serviceRequestTimedOutError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceInvalidPasteboardData")
  static var serviceInvalidPasteboardDataError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceMalformedServiceDictionary")
  static var serviceMalformedServiceDictionaryError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceMiscellaneous")
  static var serviceMiscellaneousError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "sharingServiceNotConfigured")
  static var sharingServiceNotConfiguredError: CocoaError.Code { get }
}

extension CocoaError {
  var isServiceError: Bool { get }
  var isSharingServiceError: Bool { get }
  var isTextReadWriteError: Bool { get }
  @available(macOS 10.13, *)
  var isFontError: Bool { get }
}

extension CocoaError {
  @available(*, deprecated, renamed: "textReadInapplicableDocumentType")
  static var TextReadInapplicableDocumentTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "textWriteInapplicableDocumentType")
  static var TextWriteInapplicableDocumentTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceApplicationNotFound")
  static var ServiceApplicationNotFoundError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceApplicationLaunchFailed")
  static var ServiceApplicationLaunchFailedError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceRequestTimedOut")
  static var ServiceRequestTimedOutError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceInvalidPasteboardData")
  static var ServiceInvalidPasteboardDataError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceMalformedServiceDictionary")
  static var ServiceMalformedServiceDictionaryError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceMiscellaneous")
  static var ServiceMiscellaneousError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "sharingServiceNotConfigured")
  static var SharingServiceNotConfiguredError: CocoaError.Code { get }
}

extension CocoaError.Code {
  @available(*, deprecated, renamed: "textReadInapplicableDocumentType")
  static var TextReadInapplicableDocumentTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "textWriteInapplicableDocumentType")
  static var TextWriteInapplicableDocumentTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceApplicationNotFound")
  static var ServiceApplicationNotFoundError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceApplicationLaunchFailed")
  static var ServiceApplicationLaunchFailedError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceRequestTimedOut")
  static var ServiceRequestTimedOutError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceInvalidPasteboardData")
  static var ServiceInvalidPasteboardDataError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceMalformedServiceDictionary")
  static var ServiceMalformedServiceDictionaryError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "serviceMiscellaneous")
  static var ServiceMiscellaneousError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "sharingServiceNotConfigured")
  static var SharingServiceNotConfiguredError: CocoaError.Code { get }
}

extension CGRect {
  @available(swift 4)
  func fill(using operation: NSCompositingOperation = NSGraphicsContext.current?.compositingOperation ?? .sourceOver)
  @available(swift 4)
  func frame(withWidth width: CGFloat = 1.0, using operation: NSCompositingOperation = NSGraphicsContext.current?.compositingOperation ?? .sourceOver)
  @available(swift 4)
  func clip()
}

extension Sequence where Self.Element == NSRect {
  @available(swift 4)
  func fill(using operation: NSCompositingOperation = NSGraphicsContext.current?.compositingOperation ?? .sourceOver)
  @available(swift 4)
  func clip()
}

extension Sequence where Self.Element == (CGRect, NSColor) {
  @available(swift 4)
  func fill(using operation: NSCompositingOperation = NSGraphicsContext.current?.compositingOperation ?? .sourceOver)
}

extension Sequence where Self.Element == (CGRect, gray: CGFloat) {
  @available(swift 4)
  func fill(using operation: NSCompositingOperation = NSGraphicsContext.current?.compositingOperation ?? .sourceOver)
}

extension NSWindow.Depth {
  @available(swift 4)
  static func bestDepth(colorSpaceName: NSColorSpaceName, bitsPerSample: Int, bitsPerPixel: Int, isPlanar: Bool) -> (NSWindow.Depth, isExactMatch: Bool)
  @available(swift 4)
  static var availableDepths: [NSWindow.Depth] { get }
}

extension NSAnimationEffect {
  @available(swift 4)
  func show(centeredAt centerLocation: NSPoint, size: NSSize, completionHandler: @escaping () -> Void = { })
}

extension NSSound {
  @available(swift 4)
  static func beep()
}

extension NSEvent {
  struct SpecialKey : RawRepresentable, Equatable, Hashable {
    var unicodeScalar: Unicode.Scalar { get }
  }
  var specialKey: NSEvent.SpecialKey? { get }
}

extension IndexPath {
  init(item: Int, section: Int)
  var item: Int
  var section: Int
}

extension URLResourceValues {
  @available(macOS 10.10, *)
  var thumbnail: NSImage? { get }
  var labelColor: NSColor? { get }
  var effectiveIcon: AnyObject? { get }
  var customIcon: NSImage? { get }
  @available(macOS 10.10, *)
  var thumbnailDictionary: [URLThumbnailDictionaryItem : NSImage]? { get }
}

extension NSOpenGLGlobalOption {
  @available(swift 4)
  var globalValue: GLint
}

extension NSOpenGLContext {
  @available(swift 4)
  static var openGLVersion: (major: GLint, minor: GLint) { get }
}

