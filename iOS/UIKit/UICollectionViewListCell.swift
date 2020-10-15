
@available(iOS 14.0, *)
class UICollectionViewListCell : UICollectionViewCell {
  func __defaultContentConfiguration() -> __UIListContentConfiguration
  var indentationLevel: Int
  var indentationWidth: CGFloat
  var indentsAccessories: Bool
  var __accessories: [__UICellAccessory]
  var separatorLayoutGuide: UILayoutGuide { get }
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewListCell {
  @available(iOS 14.0, tvOS 14.0, *)
  func defaultContentConfiguration() -> UIListContentConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewListCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var accessories: [UICellAccessory]
}
