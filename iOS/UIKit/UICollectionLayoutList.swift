
@available(iOS 14.0, *)
enum __UICollectionLayoutListAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  case grouped
  case insetGrouped
  case sidebar
  case sidebarPlain
}
@available(iOS 14.0, *)
enum __UICollectionLayoutListHeaderMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case supplementary
  case firstItemInSection
}
@available(iOS 14.0, *)
enum __UICollectionLayoutListFooterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case supplementary
}
@available(iOS 14.0, *)
typealias __UICollectionLayoutListSwipeActionsConfigurationProvider = (IndexPath) -> UISwipeActionsConfiguration?
@available(iOS 14.0, *)
class __UICollectionLayoutListConfiguration : NSObject, NSCopying {
  init(appearance: __UICollectionLayoutListAppearance)
  var appearance: __UICollectionLayoutListAppearance { get }
  var showsSeparators: Bool
  var backgroundColor: UIColor?
  var leadingSwipeActionsConfigurationProvider: __UICollectionLayoutListSwipeActionsConfigurationProvider?
  var trailingSwipeActionsConfigurationProvider: __UICollectionLayoutListSwipeActionsConfigurationProvider?
  var headerMode: __UICollectionLayoutListHeaderMode
  var footerMode: __UICollectionLayoutListFooterMode
}
extension NSCollectionLayoutSection {
  @available(iOS 14.0, *)
  convenience init(__listConfiguration configuration: __UICollectionLayoutListConfiguration, layoutEnvironment: NSCollectionLayoutEnvironment)
}
extension UICollectionViewCompositionalLayout {
  @available(iOS 14.0, *)
  convenience init(__listConfiguration configuration: __UICollectionLayoutListConfiguration)
}
