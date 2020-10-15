
@available(tvOS 6.0, *)
class UITableViewHeaderFooterView : UIView {
  init(reuseIdentifier: String?)
  @available(tvOS 14.0, *)
  var __configurationState: __UIViewConfigurationState { get }
  @available(tvOS 14.0, *)
  func setNeedsUpdateConfiguration()
  @available(tvOS 14.0, *)
  func __updateConfiguration(using state: __UIViewConfigurationState)
  @available(tvOS 14.0, *)
  func __defaultContentConfiguration() -> __UIListContentConfiguration
  @available(tvOS 14.0, *)
  @NSCopying var __contentConfiguration: __UIContentConfiguration?
  @available(tvOS 14.0, *)
  var automaticallyUpdatesContentConfiguration: Bool
  var contentView: UIView { get }
  @available(tvOS, introduced: 6.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var textLabel: UILabel? { get }
  @available(tvOS, introduced: 6.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var detailTextLabel: UILabel? { get }
  @available(tvOS 14.0, *)
  @NSCopying var __backgroundConfiguration: __UIBackgroundConfiguration?
  @available(tvOS 14.0, *)
  var automaticallyUpdatesBackgroundConfiguration: Bool
  var backgroundView: UIView?
  var reuseIdentifier: String? { get }
  func prepareForReuse()
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewHeaderFooterView {
  @available(iOS 14.0, tvOS 14.0, *)
  var contentConfiguration: UIContentConfiguration?
  @available(iOS 14.0, tvOS 14.0, *)
  func defaultContentConfiguration() -> UIListContentConfiguration
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewHeaderFooterView {
  @available(iOS 14.0, tvOS 14.0, *)
  var backgroundConfiguration: UIBackgroundConfiguration?
}

@available(iOS 14.0, tvOS 14.0, *)
extension UITableViewHeaderFooterView {
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedConfigurationState) dynamic var configurationState: UIViewConfigurationState { get }
  @available(iOS 14.0, tvOS 14.0, *)
  @objc(_bridgedUpdateConfigurationUsingState:) dynamic func updateConfiguration(using state: UIViewConfigurationState)
}
