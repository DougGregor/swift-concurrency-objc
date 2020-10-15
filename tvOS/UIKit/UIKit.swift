
@available(iOS 14.0, tvOS 14.0, *)
struct NSDiffableDataSourceSectionSnapshot<ItemIdentifierType> where ItemIdentifierType : Hashable {
  init()
  init(_ snapshot: NSDiffableDataSourceSectionSnapshot<ItemIdentifierType>)
  mutating func append(_ items: [ItemIdentifierType], to parent: ItemIdentifierType? = nil)
  mutating func insert(_ items: [ItemIdentifierType], before item: ItemIdentifierType)
  mutating func insert(_ items: [ItemIdentifierType], after item: ItemIdentifierType)
  mutating func delete(_ items: [ItemIdentifierType])
  mutating func deleteAll()
  mutating func expand(_ items: [ItemIdentifierType])
  mutating func collapse(_ items: [ItemIdentifierType])
  mutating func replace(childrenOf parent: ItemIdentifierType, using snapshot: NSDiffableDataSourceSectionSnapshot<ItemIdentifierType>)
  mutating func insert(_ snapshot: NSDiffableDataSourceSectionSnapshot<ItemIdentifierType>, before item: (ItemIdentifierType))
  mutating func insert(_ snapshot: NSDiffableDataSourceSectionSnapshot<ItemIdentifierType>, after item: (ItemIdentifierType))
  func isExpanded(_ item: ItemIdentifierType) -> Bool
  func isVisible(_ item: ItemIdentifierType) -> Bool
  func contains(_ item: ItemIdentifierType) -> Bool
  func level(of item: ItemIdentifierType) -> Int
  func index(of item: ItemIdentifierType) -> Int?
  func parent(of child: ItemIdentifierType) -> ItemIdentifierType?
  func snapshot(of parent: ItemIdentifierType, includingParent: Bool = false) -> NSDiffableDataSourceSectionSnapshot<ItemIdentifierType>
  var items: [ItemIdentifierType] { get }
  var rootItems: [ItemIdentifierType] { get }
  var visibleItems: [ItemIdentifierType] { get }
  func visualDescription() -> String
}

@available(iOS 14.0, tvOS 14.0, *)
extension NSDiffableDataSourceSectionSnapshot : _ObjectiveCBridgeable {
}

@available(iOS 14.0, tvOS 14.0, *)
struct NSDiffableDataSourceSectionTransaction<SectionIdentifierType, ItemIdentifierType> where SectionIdentifierType : Hashable, ItemIdentifierType : Hashable {
  var sectionIdentifier: SectionIdentifierType { get }
  var initialSnapshot: NSDiffableDataSourceSectionSnapshot<ItemIdentifierType> { get }
  var finalSnapshot: NSDiffableDataSourceSectionSnapshot<ItemIdentifierType> { get }
  var difference: CollectionDifference<ItemIdentifierType> { get }
}

@available(iOS 13.0, tvOS 13.0, *)
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

@available(iOS 13.0, tvOS 13.0, *)
extension NSDiffableDataSourceSnapshot : _ObjectiveCBridgeable {
}

@available(iOS 14.0, tvOS 14.0, *)
struct NSDiffableDataSourceTransaction<SectionIdentifierType, ItemIdentifierType> where SectionIdentifierType : Hashable, ItemIdentifierType : Hashable {
  var initialSnapshot: NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType> { get }
  var finalSnapshot: NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType> { get }
  var difference: CollectionDifference<ItemIdentifierType> { get }
  var sectionTransactions: [NSDiffableDataSourceSectionTransaction<SectionIdentifierType, ItemIdentifierType>] { get }
}

@available(swift, deprecated: 4.2, message: "Use the overload of UIApplicationMain where the type of the second parameter is UnsafeMutablePointer<UnsafeMutablePointer<Int8>?>, which is the same as the type of CommandLine.unsafeArgv.")
func UIApplicationMain(_ argc: Int32, _ argv: UnsafeMutablePointer<UnsafeMutablePointer<Int8>>!, _ principalClassName: String?, _ delegateClassName: String?) -> Int32

@available(iOS 14.0, tvOS 14.0, *)
struct UIBackgroundConfiguration : Hashable {
  static func clear() -> UIBackgroundConfiguration
  static func listPlainCell() -> UIBackgroundConfiguration
  static func listPlainHeaderFooter() -> UIBackgroundConfiguration
  static func listGroupedCell() -> UIBackgroundConfiguration
  static func listGroupedHeaderFooter() -> UIBackgroundConfiguration
  func updated(for state: UIConfigurationState) -> UIBackgroundConfiguration
  var customView: UIView?
  var cornerRadius: CGFloat
  var backgroundInsets: NSDirectionalEdgeInsets
  var edgesAddingLayoutMarginsToBackgroundInsets: NSDirectionalRectEdge
  var backgroundColor: UIColor?
  var backgroundColorTransformer: UIConfigurationColorTransformer?
  func resolvedBackgroundColor(for tintColor: UIColor) -> UIColor
  var visualEffect: UIVisualEffect?
  var strokeColor: UIColor?
  var strokeColorTransformer: UIConfigurationColorTransformer?
  func resolvedStrokeColor(for tintColor: UIColor) -> UIColor
  var strokeWidth: CGFloat
  var strokeOutset: CGFloat
}

@available(iOS 14.0, tvOS 14.0, *)
extension UIBackgroundConfiguration : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(iOS 14.0, tvOS 14.0, *)
struct UICellAccessory {
  typealias ActionHandler = () -> Void
  enum DisplayedState {
    case always
    case whenEditing
    case whenNotEditing
  }
  enum LayoutDimension {
    case actual
    case standard
    case custom(CGFloat)
  }
  struct DisclosureIndicatorOptions {
    var isHidden: Bool
    var reservedLayoutWidth: UICellAccessory.LayoutDimension
    var tintColor: UIColor?
    init(isHidden: Bool? = nil, reservedLayoutWidth: UICellAccessory.LayoutDimension? = nil, tintColor: UIColor? = nil)
  }
  static func disclosureIndicator(displayed: UICellAccessory.DisplayedState = .always, options: UICellAccessory.DisclosureIndicatorOptions = DisclosureIndicatorOptions()) -> UICellAccessory
  struct CheckmarkOptions {
    var isHidden: Bool
    var reservedLayoutWidth: UICellAccessory.LayoutDimension
    var tintColor: UIColor?
    init(isHidden: Bool? = nil, reservedLayoutWidth: UICellAccessory.LayoutDimension? = nil, tintColor: UIColor? = nil)
  }
  static func checkmark(displayed: UICellAccessory.DisplayedState = .always, options: UICellAccessory.CheckmarkOptions = CheckmarkOptions()) -> UICellAccessory
  struct DeleteOptions {
    var isHidden: Bool
    var reservedLayoutWidth: UICellAccessory.LayoutDimension
    var tintColor: UIColor?
    var backgroundColor: UIColor?
    init(isHidden: Bool? = nil, reservedLayoutWidth: UICellAccessory.LayoutDimension? = nil, tintColor: UIColor? = nil, backgroundColor: UIColor? = nil)
  }
  static func delete(displayed: UICellAccessory.DisplayedState = .whenEditing, options: UICellAccessory.DeleteOptions = DeleteOptions(), actionHandler: UICellAccessory.ActionHandler? = nil) -> UICellAccessory
  struct InsertOptions {
    var isHidden: Bool
    var reservedLayoutWidth: UICellAccessory.LayoutDimension
    var tintColor: UIColor?
    var backgroundColor: UIColor?
    init(isHidden: Bool? = nil, reservedLayoutWidth: UICellAccessory.LayoutDimension? = nil, tintColor: UIColor? = nil, backgroundColor: UIColor? = nil)
  }
  static func insert(displayed: UICellAccessory.DisplayedState = .whenEditing, options: UICellAccessory.InsertOptions = InsertOptions(), actionHandler: UICellAccessory.ActionHandler? = nil) -> UICellAccessory
  struct ReorderOptions {
    var isHidden: Bool
    var reservedLayoutWidth: UICellAccessory.LayoutDimension
    var tintColor: UIColor?
    var showsVerticalSeparator: Bool
    init(isHidden: Bool? = nil, reservedLayoutWidth: UICellAccessory.LayoutDimension? = nil, tintColor: UIColor? = nil, showsVerticalSeparator: Bool? = nil)
  }
  static func reorder(displayed: UICellAccessory.DisplayedState = .whenEditing, options: UICellAccessory.ReorderOptions = ReorderOptions()) -> UICellAccessory
  struct MultiselectOptions {
    var isHidden: Bool
    var reservedLayoutWidth: UICellAccessory.LayoutDimension
    var tintColor: UIColor?
    var backgroundColor: UIColor?
    init(isHidden: Bool? = nil, reservedLayoutWidth: UICellAccessory.LayoutDimension? = nil, tintColor: UIColor? = nil, backgroundColor: UIColor? = nil)
  }
  static func multiselect(displayed: UICellAccessory.DisplayedState = .whenEditing, options: UICellAccessory.MultiselectOptions = MultiselectOptions()) -> UICellAccessory
  struct LabelOptions {
    var isHidden: Bool
    var reservedLayoutWidth: UICellAccessory.LayoutDimension
    var tintColor: UIColor?
    var font: UIFont
    var adjustsFontForContentSizeCategory: Bool
    init(isHidden: Bool? = nil, reservedLayoutWidth: UICellAccessory.LayoutDimension? = nil, tintColor: UIColor? = nil, font: UIFont? = nil, adjustsFontForContentSizeCategory: Bool? = nil)
  }
  static func label(text: String, displayed: UICellAccessory.DisplayedState = .always, options: UICellAccessory.LabelOptions = LabelOptions()) -> UICellAccessory
  enum Placement {
    typealias Position = ([UICellAccessory]) -> Int
    static func position(before accessory: UICellAccessory) -> UICellAccessory.Placement.Position
    static func position(after accessory: UICellAccessory) -> UICellAccessory.Placement.Position
    case leading(displayed: UICellAccessory.DisplayedState = .always, at: UICellAccessory.Placement.Position = { $0.count })
    case trailing(displayed: UICellAccessory.DisplayedState = .always, at: UICellAccessory.Placement.Position = { _ in 0 })
  }
  struct CustomViewConfiguration {
    let customView: UIView
    let placement: UICellAccessory.Placement
    var isHidden: Bool
    var reservedLayoutWidth: UICellAccessory.LayoutDimension
    var tintColor: UIColor?
    var maintainsFixedSize: Bool
    init(customView: UIView, placement: UICellAccessory.Placement, isHidden: Bool? = nil, reservedLayoutWidth: UICellAccessory.LayoutDimension? = nil, tintColor: UIColor? = nil, maintainsFixedSize: Bool? = nil)
  }
  static func customView(configuration: UICellAccessory.CustomViewConfiguration) -> UICellAccessory
  enum AccessoryType : Hashable {
    case disclosureIndicator
    case checkmark
    case delete
    case insert
    case reorder
    case multiselect
    case label
    case customView(UIView)
  }
  let accessoryType: UICellAccessory.AccessoryType
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICellAccessory.DisplayedState : Equatable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICellAccessory.DisplayedState : Hashable {
}

@available(iOS 14.0, tvOS 14.0, *)
struct UICellConfigurationState : UIConfigurationState, Hashable {
  @available(iOS 14.0, *)
  enum DragState : Hashable {
    case none
    case lifting
    case dragging
  }
  @available(iOS 14.0, *)
  enum DropState : Hashable {
    case none
    case notTargeted
    case targeted
  }
  var isDisabled: Bool
  var isHighlighted: Bool
  var isSelected: Bool
  var isFocused: Bool
  var isEditing: Bool
  var isExpanded: Bool
  var isSwiped: Bool
  var isReordering: Bool
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICellConfigurationState : _ObjectiveCBridgeable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICellConfigurationState : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(iOS 14.0, tvOS 14.0, *)
struct UICollectionLayoutListConfiguration {
  enum Appearance {
    case plain
    case grouped
  }
  enum HeaderMode {
    case none
    case supplementary
    case firstItemInSection
  }
  enum FooterMode {
    case none
    case supplementary
  }
  init(appearance: UICollectionLayoutListConfiguration.Appearance)
  var appearance: UICollectionLayoutListConfiguration.Appearance { get }
  var backgroundColor: UIColor?
  var headerMode: UICollectionLayoutListConfiguration.HeaderMode
  var footerMode: UICollectionLayoutListConfiguration.FooterMode
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionLayoutListConfiguration.Appearance : Equatable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionLayoutListConfiguration.Appearance : Hashable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionLayoutListConfiguration.HeaderMode : Equatable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionLayoutListConfiguration.HeaderMode : Hashable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionLayoutListConfiguration.FooterMode : Equatable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionLayoutListConfiguration.FooterMode : Hashable {
}

@available(iOS 13.0, tvOS 13.0, *)
class UICollectionViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType> : NSObject, UICollectionViewDataSource where SectionIdentifierType : Hashable, ItemIdentifierType : Hashable {
  typealias CellProvider = (UICollectionView, IndexPath, ItemIdentifierType) -> UICollectionViewCell?
  typealias SupplementaryViewProvider = (UICollectionView, String, IndexPath) -> UICollectionReusableView?
  var supplementaryViewProvider: UICollectionViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.SupplementaryViewProvider?
  init(collectionView: UICollectionView, cellProvider: @escaping UICollectionViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.CellProvider)
  func apply(_ snapshot: NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>, animatingDifferences: Bool = true, completion: (() -> Void)? = nil)
  func snapshot() -> NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>
  func itemIdentifier(for indexPath: IndexPath) -> ItemIdentifierType?
  func indexPath(for itemIdentifier: ItemIdentifierType) -> IndexPath?
  func description() -> String
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewDiffableDataSource {
  func apply(_ snapshot: NSDiffableDataSourceSectionSnapshot<ItemIdentifierType>, to section: SectionIdentifierType, animatingDifferences: Bool = true, completion: (() -> Void)? = nil)
  func snapshot(for section: SectionIdentifierType) -> NSDiffableDataSourceSectionSnapshot<ItemIdentifierType>
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewDiffableDataSource {
  struct ReorderingHandlers {
    var canReorderItem: ((ItemIdentifierType) -> Bool)?
    var willReorder: ((NSDiffableDataSourceTransaction<SectionIdentifierType, ItemIdentifierType>) -> Void)?
    var didReorder: ((NSDiffableDataSourceTransaction<SectionIdentifierType, ItemIdentifierType>) -> Void)?
    init()
  }
  var reorderingHandlers: UICollectionViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.ReorderingHandlers
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewDiffableDataSource {
  struct SectionSnapshotHandlers<ItemIdentifierType> where ItemIdentifierType : Hashable {
    var shouldExpandItem: ((ItemIdentifierType) -> Bool)?
    var willExpandItem: ((ItemIdentifierType) -> Void)?
    var shouldCollapseItem: ((ItemIdentifierType) -> Bool)?
    var willCollapseItem: ((ItemIdentifierType) -> Void)?
    var snapshotForExpandingParent: ((ItemIdentifierType, NSDiffableDataSourceSectionSnapshot<ItemIdentifierType>) -> NSDiffableDataSourceSectionSnapshot<ItemIdentifierType>)?
    init()
  }
  var sectionSnapshotHandlers: UICollectionViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.SectionSnapshotHandlers<ItemIdentifierType>
}

@available(iOS 14.0, tvOS 14.0, *)
struct UIConfigurationColorTransformer {
  let transform: (UIColor) -> UIColor
  init(_ transform: @escaping (UIColor) -> UIColor)
  func callAsFunction(_ input: UIColor) -> UIColor
  static let grayscale: UIConfigurationColorTransformer
  static let preferredTint: UIConfigurationColorTransformer
  static let monochromeTint: UIConfigurationColorTransformer
}

@available(iOS 14.0, tvOS 14.0, *)
protocol UIConfigurationState {
  init(traitCollection: UITraitCollection)
  var traitCollection: UITraitCollection { get set }
  subscript(key: UIConfigurationStateCustomKey) -> AnyHashable? { get set }
}

@available(iOS 14.0, tvOS 14.0, *)
protocol UIContentConfiguration {
  func makeContentView() -> UIView & UIContentView
  func updated(for state: UIConfigurationState) -> Self
}

@available(iOS 14.0, tvOS 14.0, *)
protocol UIContentView : NSObjectProtocol {
  var configuration: UIContentConfiguration { get set }
}

@available(swift, deprecated: 4.2, message: "Use == operator instead.")
func UIEdgeInsetsEqualToEdgeInsets(_ insets1: UIEdgeInsets, _ insets2: UIEdgeInsets) -> Bool

@available(swift, deprecated: 4.2, message: "Use == operator instead.")
func UIFloatRangeIsEqualToRange(_ range: UIFloatRange, _ otherRange: UIFloatRange) -> Bool

@available(iOS 14.0, tvOS 14.0, *)
struct UIListContentConfiguration : UIContentConfiguration, Hashable {
  struct ImageProperties : Hashable {
    var preferredSymbolConfiguration: UIImage.SymbolConfiguration?
    var tintColor: UIColor?
    var tintColorTransformer: UIConfigurationColorTransformer?
    func resolvedTintColor(for tintColor: UIColor) -> UIColor
    var cornerRadius: CGFloat
    var maximumSize: CGSize
    var reservedLayoutSize: CGSize
    var accessibilityIgnoresInvertColors: Bool
    static let standardDimension: CGFloat
  }
  struct TextProperties : Hashable {
    enum TextAlignment : Hashable {
      case natural
      case center
      case justified
    }
    enum TextTransform : Hashable {
      case none
      case uppercase
      case lowercase
      case capitalized
    }
    var font: UIFont
    var color: UIColor
    var colorTransformer: UIConfigurationColorTransformer?
    func resolvedColor() -> UIColor
    var alignment: UIListContentConfiguration.TextProperties.TextAlignment
    var lineBreakMode: NSLineBreakMode
    var numberOfLines: Int
    var adjustsFontSizeToFitWidth: Bool
    var minimumScaleFactor: CGFloat
    var allowsDefaultTighteningForTruncation: Bool
    var adjustsFontForContentSizeCategory: Bool
    var transform: UIListContentConfiguration.TextProperties.TextTransform
  }
  static func cell() -> UIListContentConfiguration
  static func subtitleCell() -> UIListContentConfiguration
  static func valueCell() -> UIListContentConfiguration
  static func plainHeader() -> UIListContentConfiguration
  static func plainFooter() -> UIListContentConfiguration
  static func groupedHeader() -> UIListContentConfiguration
  static func groupedFooter() -> UIListContentConfiguration
  var image: UIImage?
  var imageProperties: UIListContentConfiguration.ImageProperties
  var text: String?
  var attributedText: NSAttributedString?
  var textProperties: UIListContentConfiguration.TextProperties
  var secondaryText: String?
  var secondaryAttributedText: NSAttributedString?
  var secondaryTextProperties: UIListContentConfiguration.TextProperties
  var axesPreservingSuperviewLayoutMargins: UIAxis
  var directionalLayoutMargins: NSDirectionalEdgeInsets
  var prefersSideBySideTextAndSecondaryText: Bool
  var imageToTextPadding: CGFloat
  var textToSecondaryTextHorizontalPadding: CGFloat
  var textToSecondaryTextVerticalPadding: CGFloat
}

@available(iOS 14.0, tvOS 14.0, *)
extension UIListContentConfiguration : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UIListContentConfiguration.ImageProperties : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UIListContentConfiguration.TextProperties : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(swift, deprecated: 4.2, message: "Use == operator instead.")
func UIOffsetEqualToOffset(_ offset1: UIOffset, _ offset2: UIOffset) -> Bool

@available(iOS 13.0, tvOS 13.0, *)
class UITableViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType> : NSObject, UITableViewDataSource where SectionIdentifierType : Hashable, ItemIdentifierType : Hashable {
  typealias CellProvider = (UITableView, IndexPath, ItemIdentifierType) -> UITableViewCell?
  init(tableView: UITableView, cellProvider: @escaping UITableViewDiffableDataSource<SectionIdentifierType, ItemIdentifierType>.CellProvider)
  func apply(_ snapshot: NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>, animatingDifferences: Bool = true, completion: (() -> Void)? = nil)
  func snapshot() -> NSDiffableDataSourceSnapshot<SectionIdentifierType, ItemIdentifierType>
  func itemIdentifier(for indexPath: IndexPath) -> ItemIdentifierType?
  func indexPath(for itemIdentifier: ItemIdentifierType) -> IndexPath?
  var defaultRowAnimation: UITableView.RowAnimation
  func description() -> String
}

@available(iOS 14.0, tvOS 14.0, *)
struct UIViewConfigurationState : UIConfigurationState, Hashable {
  var isDisabled: Bool
  var isHighlighted: Bool
  var isSelected: Bool
  var isFocused: Bool
}

@available(iOS 14.0, tvOS 14.0, *)
extension UIViewConfigurationState : _ObjectiveCBridgeable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UIViewConfigurationState : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

typealias _ColorLiteralType = UIColor

typealias _ImageLiteralType = UIImage

@available(swift 4)
protocol _UIKitNumericRawRepresentable : Comparable, RawRepresentable where Self.RawValue : Comparable, Self.RawValue : Numeric {
}

extension _UIKitNumericRawRepresentable {
  static func < (lhs: Self, rhs: Self) -> Bool
  static func + (lhs: Self, rhs: Self.RawValue) -> Self
  static func + (lhs: Self.RawValue, rhs: Self) -> Self
  static func - (lhs: Self, rhs: Self.RawValue) -> Self
  static func - (lhs: Self, rhs: Self) -> Self.RawValue
  static func += (lhs: inout Self, rhs: Self.RawValue)
  static func -= (lhs: inout Self, rhs: Self.RawValue)
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var contentConfiguration: UIContentConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewListCell {
  @available(iOS 14.0, tvOS 14.0, *)
  func defaultContentConfiguration() -> UIListContentConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var contentConfiguration: UIContentConfiguration?
  @available(iOS 14.0, tvOS 14.0, *)
  func defaultContentConfiguration() -> UIListContentConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewHeaderFooterView {
  @available(iOS 14.0, tvOS 14.0, *)
  var contentConfiguration: UIContentConfiguration?
  @available(iOS 14.0, tvOS 14.0, *)
  func defaultContentConfiguration() -> UIListContentConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UIListContentView : UIContentView {
  @available(iOS 14.0, tvOS 14.0, *)
  convenience init(configuration: UIListContentConfiguration)
}

extension UIBarButtonItem {
  @available(iOS 14.0, *)
  convenience init(systemItem: UIBarButtonItem.SystemItem, primaryAction: UIAction? = nil, menu: UIMenu? = nil)
  @available(iOS 14.0, *)
  convenience init(title: String? = nil, image: UIImage? = nil, primaryAction: UIAction? = nil, menu: UIMenu? = nil)
}

extension UIControl {
  @available(iOS 14.0, *)
  func enumerateEventHandlers(_ iterator: (UIAction?, (Any?, Selector)?, UIControl.Event, inout Bool) -> Void)
}

extension UIButton {
  @available(iOS 14.0, *)
  convenience init(type buttonType: UIButton.ButtonType = .system, primaryAction: UIAction?)
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var backgroundConfiguration: UIBackgroundConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var backgroundConfiguration: UIBackgroundConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewHeaderFooterView {
  @available(iOS 14.0, tvOS 14.0, *)
  var backgroundConfiguration: UIBackgroundConfiguration?
}

extension UIEdgeInsets : Equatable {
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : Equatable {
}

extension UIOffset : Equatable {
}

extension UIFloatRange : Equatable {
}

extension UIEdgeInsets : Codable {
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : Codable {
}

extension UIOffset : Codable {
}

extension UIFloatRange : Codable {
}

extension UIFont.Weight : _UIKitNumericRawRepresentable {
}

extension UILayoutPriority : _UIKitNumericRawRepresentable {
}

extension UIWindow.Level : _UIKitNumericRawRepresentable {
}

extension UIView : __DefaultCustomPlaygroundQuickLookable {
}

extension UIColor : _ExpressibleByColorLiteral {
}

extension UIImage : _ExpressibleByImageLiteral {
}

extension UIFont.TextStyle {
  @available(iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var metrics: UIFontMetrics { get }
}

extension UIContentSizeCategory {
  @available(iOS 11.0, tvOS 11.0, *)
  var isAccessibilityCategory: Bool { get }
  @available(iOS 11.0, tvOS 11.0, *)
  static func < (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
  @available(iOS 11.0, tvOS 11.0, *)
  static func <= (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
  @available(iOS 11.0, tvOS 11.0, *)
  static func > (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
  @available(iOS 11.0, tvOS 11.0, *)
  static func >= (left: UIContentSizeCategory, right: UIContentSizeCategory) -> Bool
}

@available(iOS 11.0, tvOS 11.0, *)
extension UIFocusEnvironment {
  @available(iOS 11.0, tvOS 11.0, *)
  func contains(_ environment: UIFocusEnvironment) -> Bool
}

@available(iOS 11.0, tvOS 11.0, *)
extension UIFocusItem {
  @available(iOS 11.0, tvOS 11.0, *)
  var isFocused: Bool { get }
}

extension UIApplicationDelegate {
  @_alwaysEmitIntoClient static func main()
}

extension UIStoryboard {
  @available(iOS 13.0, tvOS 13.0, *)
  func instantiateInitialViewController<ViewController>(creator: ((NSCoder) -> ViewController?)? = nil) -> ViewController? where ViewController : UIViewController
  @available(iOS 13.0, tvOS 13.0, *)
  func instantiateViewController<ViewController>(identifier: String, creator: ((NSCoder) -> ViewController?)? = nil) -> ViewController where ViewController : UIViewController
}

extension UIAccessibilityTraits : OptionSet {
}

extension UITextDirection {
  static func storage(_ direction: UITextStorageDirection) -> UITextDirection
  static func layout(_ direction: UITextLayoutDirection) -> UITextDirection
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIAction {
  convenience init(title: String = "", image: UIImage? = nil, identifier: UIAction.Identifier? = nil, discoverabilityTitle: String? = nil, attributes: UIMenuElement.Attributes = [], state: UIMenuElement.State = .off, handler: @escaping UIActionHandler)
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIMenu {
  convenience init(title: String = "", image: UIImage? = nil, identifier: UIMenu.Identifier? = nil, options: UIMenu.Options = [], children: [UIMenuElement] = [])
}

@available(iOS 13.0, tvOS 14.0, *)
extension UIMenuBuilder {
  func command(for action: Selector, propertyList: Any? = nil) -> UICommand?
}

@available(iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension UIImage {
  var baselineOffsetFromBottom: CGFloat? { get }
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionView {
  struct CellRegistration<Cell, Item> where Cell : UICollectionViewCell {
    typealias Handler = (Cell, IndexPath, Item) -> Void
    init(handler: @escaping UICollectionView.CellRegistration<Cell, Item>.Handler)
    init(cellNib: UINib, handler: @escaping UICollectionView.CellRegistration<Cell, Item>.Handler)
  }
  struct SupplementaryRegistration<Supplementary> where Supplementary : UICollectionReusableView {
    typealias Handler = (Supplementary, String, IndexPath) -> Void
    init(elementKind: String, handler: @escaping UICollectionView.SupplementaryRegistration<Supplementary>.Handler)
    init(supplementaryNib: UINib, elementKind: String, handler: @escaping UICollectionView.SupplementaryRegistration<Supplementary>.Handler)
  }
  func dequeueConfiguredReusableCell<Cell, Item>(using registration: UICollectionView.CellRegistration<Cell, Item>, for indexPath: IndexPath, item: Item?) -> Cell where Cell : UICollectionViewCell
  func dequeueConfiguredReusableSupplementary<Supplementary>(using registration: UICollectionView.SupplementaryRegistration<Supplementary>, for indexPath: IndexPath) -> Supplementary where Supplementary : UICollectionReusableView
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewListCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var accessories: [UICellAccessory]
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCompositionalLayout {
  static func list(using configuration: UICollectionLayoutListConfiguration) -> UICollectionViewCompositionalLayout
}

@available(iOS 14.0, tvOS 14.0, *)
extension NSCollectionLayoutSection {
  static func list(using configuration: UICollectionLayoutListConfiguration, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection
}

extension IndexPath {
  init(row: Int, section: Int)
  var section: Int
  var row: Int
}

extension IndexPath {
  init(item: Int, section: Int)
  var item: Int
}

extension URLResourceValues {
  @available(iOS 8.0, *)
  var thumbnailDictionary: [URLThumbnailDictionaryItem : UIImage]? { get }
}

extension UIEdgeInsets : _ObjectiveCBridgeable {
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets : _ObjectiveCBridgeable {
}

extension UIOffset : _ObjectiveCBridgeable {
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedConfigurationState) dynamic var configurationState: UICellConfigurationState { get }
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedUpdateConfigurationUsingState:) dynamic func updateConfiguration(using state: UICellConfigurationState)
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedConfigurationState) dynamic var configurationState: UICellConfigurationState { get }
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedUpdateConfigurationUsingState:) dynamic func updateConfiguration(using state: UICellConfigurationState)
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewHeaderFooterView {
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedConfigurationState) dynamic var configurationState: UIViewConfigurationState { get }
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedUpdateConfigurationUsingState:) dynamic func updateConfiguration(using state: UIViewConfigurationState)
}

