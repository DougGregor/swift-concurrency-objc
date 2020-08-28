
@available(iOS 4.0, *)
class AVMetadataItem : NSObject, AVAsynchronousKeyValueLoading, NSCopying, NSMutableCopying {
  @available(iOS 8.0, *)
  var identifier: AVMetadataIdentifier? { get }
  @available(iOS 8.0, *)
  var extendedLanguageTag: String? { get }
  var locale: Locale? { get }
  var time: CMTime { get }
  @available(iOS 4.2, *)
  var duration: CMTime { get }
  @available(iOS 8.0, *)
  var dataType: String? { get }
  @NSCopying var value: (NSCopying & NSObjectProtocol)? { get }
  var extraAttributes: [AVMetadataExtraAttributeKey : Any]? { get }
}
extension AVMetadataItem {
  @available(iOS 9.0, *)
  var startDate: Date? { get }
}
extension AVMetadataItem {
  var stringValue: String? { get }
  var numberValue: NSNumber? { get }
  var dateValue: Date? { get }
  var dataValue: Data? { get }
}
extension AVMetadataItem {
}
extension AVMetadataItem {
  @available(iOS 6.0, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  @available(iOS 8.0, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredByIdentifier identifier: AVMetadataIdentifier) -> [AVMetadataItem]
  @available(iOS 7.0, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredBy metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  @available(iOS 8.0, *)
  class func identifier(forKey key: Any, keySpace: AVMetadataKeySpace) -> AVMetadataIdentifier?
  @available(iOS 8.0, *)
  class func keySpace(forIdentifier identifier: AVMetadataIdentifier) -> AVMetadataKeySpace?
  @available(iOS 8.0, *)
  class func key(forIdentifier identifier: AVMetadataIdentifier) -> Any?
  @NSCopying var key: (NSCopying & NSObjectProtocol)? { get }
  var commonKey: AVMetadataKey? { get }
  var keySpace: AVMetadataKeySpace? { get }
}
@available(iOS 4.0, *)
class AVMutableMetadataItem : AVMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMetadataItem {
  @available(iOS 9.0, *)
  /*not inherited*/ init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: @escaping (AVMetadataItemValueRequest) -> Void)
}
@available(iOS 9.0, *)
class AVMetadataItemValueRequest : NSObject {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respond(value: NSCopying & NSObjectProtocol)
  func respond(error: Error)
}
@available(iOS 7.0, *)
class AVMetadataItemFilter : NSObject {
  class func forSharing() -> AVMetadataItemFilter
}
extension AVMetadataItem {
  class func metadataItems(from metadataItems: [AVMetadataItem], with locale: Locale) -> [AVMetadataItem]
  class func metadataItems(from metadataItems: [AVMetadataItem], withKey key: Any?, keySpace: AVMetadataKeySpace?) -> [AVMetadataItem]
}
