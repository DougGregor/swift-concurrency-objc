
typealias __UICollectionViewCellRegistrationConfigurationHandler = (UICollectionViewCell, IndexPath, Any) -> Void
@available(iOS 14.0, *)
class __UICollectionViewCellRegistration : NSObject {
  convenience init(cellClass: AnyClass, configurationHandler: @escaping __UICollectionViewCellRegistrationConfigurationHandler)
  convenience init(cellNib: UINib, configurationHandler: @escaping __UICollectionViewCellRegistrationConfigurationHandler)
  var cellClass: AnyClass? { get }
  var cellNib: UINib? { get }
  var configurationHandler: __UICollectionViewCellRegistrationConfigurationHandler { get }
}
typealias __UICollectionViewSupplementaryRegistrationConfigurationHandler = (UICollectionReusableView, String, IndexPath) -> Void
@available(iOS 14.0, *)
class __UICollectionViewSupplementaryRegistration : NSObject {
  convenience init(supplementaryClass: AnyClass, elementKind: String, configurationHandler: @escaping __UICollectionViewSupplementaryRegistrationConfigurationHandler)
  convenience init(supplementaryNib: UINib, elementKind: String, configurationHandler: @escaping __UICollectionViewSupplementaryRegistrationConfigurationHandler)
  var supplementaryClass: AnyClass? { get }
  var supplementaryNib: UINib? { get }
  var elementKind: String { get }
  var configurationHandler: __UICollectionViewSupplementaryRegistrationConfigurationHandler { get }
}
