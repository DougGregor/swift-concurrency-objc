
@available(tvOS 14.0, *)
enum __UICollectionLayoutListAppearance : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case plain
  case grouped
}
@available(tvOS 14.0, *)
enum __UICollectionLayoutListHeaderMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case supplementary
  case firstItemInSection
}
@available(tvOS 14.0, *)
enum __UICollectionLayoutListFooterMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case none
  case supplementary
}
@available(tvOS 14.0, *)
class __UICollectionLayoutListConfiguration : NSObject, NSCopying {
  init(appearance: __UICollectionLayoutListAppearance)
  var appearance: __UICollectionLayoutListAppearance { get }
  var backgroundColor: UIColor?
  var headerMode: __UICollectionLayoutListHeaderMode
  var footerMode: __UICollectionLayoutListFooterMode
}
extension NSCollectionLayoutSection {
  @available(tvOS 14.0, *)
  convenience init(__listConfiguration configuration: __UICollectionLayoutListConfiguration, layoutEnvironment: NSCollectionLayoutEnvironment)
}
extension UICollectionViewCompositionalLayout {
  @available(tvOS 14.0, *)
  convenience init(__listConfiguration configuration: __UICollectionLayoutListConfiguration)
}
