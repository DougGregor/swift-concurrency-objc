
@available(iOS 13.0, *)
struct UIActivityItemsConfigurationMetadataKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension UIActivityItemsConfigurationMetadataKey {
  @available(iOS 13.0, *)
  static let title: UIActivityItemsConfigurationMetadataKey
  @available(iOS 13.0, *)
  static let messageBody: UIActivityItemsConfigurationMetadataKey
}
@available(iOS 13.0, *)
struct UIActivityItemsConfigurationPreviewIntent : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension UIActivityItemsConfigurationPreviewIntent {
  @available(iOS 13.0, *)
  static let fullSize: UIActivityItemsConfigurationPreviewIntent
  @available(iOS 13.0, *)
  static let thumbnail: UIActivityItemsConfigurationPreviewIntent
}
@available(iOS 13.0, *)
struct UIActivityItemsConfigurationInteraction : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension UIActivityItemsConfigurationInteraction {
  @available(iOS 13.0, *)
  static let share: UIActivityItemsConfigurationInteraction
}
@available(iOS 13.0, *)
protocol UIActivityItemsConfigurationReading : NSObjectProtocol {
  var itemProvidersForActivityItemsConfiguration: [NSItemProvider] { get }
  optional func activityItemsConfigurationSupports(interaction: UIActivityItemsConfigurationInteraction) -> Bool
  optional func activityItemsConfigurationMetadata(key: UIActivityItemsConfigurationMetadataKey) -> Any?
  optional func activityItemsConfigurationMetadataForItem(at index: Int, key: UIActivityItemsConfigurationMetadataKey) -> Any?
  optional func activityItemsConfigurationPreviewForItem(at index: Int, intent: UIActivityItemsConfigurationPreviewIntent, suggestedSize: CGSize) -> NSItemProvider?
  optional var applicationActivitiesForActivityItemsConfiguration: [UIActivity]? { get }
}
