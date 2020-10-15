
extension UICollectionViewCell {
  @available(iOS 11.0, *)
  enum DragState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case none
    case lifting
    case dragging
  }
}
@available(iOS 6.0, *)
class UICollectionReusableView : UIView {
  var reuseIdentifier: String? { get }
  func prepareForReuse()
  func apply(_ layoutAttributes: UICollectionViewLayoutAttributes)
  func willTransition(from oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  func didTransition(from oldLayout: UICollectionViewLayout, to newLayout: UICollectionViewLayout)
  @available(iOS 8.0, *)
  func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes
}
@available(iOS 6.0, *)
class UICollectionViewCell : UICollectionReusableView {
  @available(iOS 14.0, *)
  var __configurationState: __UICellConfigurationState { get }
  @available(iOS 14.0, *)
  func setNeedsUpdateConfiguration()
  @available(iOS 14.0, *)
  func __updateConfiguration(using state: __UICellConfigurationState)
  @available(iOS 14.0, *)
  @NSCopying var __contentConfiguration: __UIContentConfiguration?
  @available(iOS 14.0, *)
  var automaticallyUpdatesContentConfiguration: Bool
  var contentView: UIView { get }
  var isSelected: Bool
  var isHighlighted: Bool
  @available(iOS 11.0, *)
  func dragStateDidChange(_ dragState: UICollectionViewCell.DragState)
  @available(iOS 14.0, *)
  @NSCopying var __backgroundConfiguration: __UIBackgroundConfiguration?
  @available(iOS 14.0, *)
  var automaticallyUpdatesBackgroundConfiguration: Bool
  var backgroundView: UIView?
  var selectedBackgroundView: UIView?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var contentConfiguration: UIContentConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  var backgroundConfiguration: UIBackgroundConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UICollectionViewCell {
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedConfigurationState) dynamic var configurationState: UICellConfigurationState { get }
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedUpdateConfigurationUsingState:) dynamic func updateConfiguration(using state: UICellConfigurationState)
}
