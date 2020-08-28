
@available(iOS 6.0, *)
class UITableViewHeaderFooterView : UIView {
  init(reuseIdentifier: String?)
  @available(iOS 14.0, *)
  var __configurationState: __UIViewConfigurationState { get }
  @available(iOS 14.0, *)
  func setNeedsUpdateConfiguration()
  @available(iOS 14.0, *)
  func __updateConfiguration(using state: __UIViewConfigurationState)
  @available(iOS 14.0, *)
  func __defaultContentConfiguration() -> __UIListContentConfiguration
  @available(iOS 14.0, *)
  @NSCopying var __contentConfiguration: __UIContentConfiguration?
  @available(iOS 14.0, *)
  var automaticallyUpdatesContentConfiguration: Bool
  var contentView: UIView { get }
  @available(iOS, introduced: 6.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var textLabel: UILabel? { get }
  @available(iOS, introduced: 6.0, deprecated: 100000, message: "Use UIListContentConfiguration instead, this property will be deprecated in a future release.")
  var detailTextLabel: UILabel? { get }
  @available(iOS 14.0, *)
  @NSCopying var __backgroundConfiguration: __UIBackgroundConfiguration?
  @available(iOS 14.0, *)
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
