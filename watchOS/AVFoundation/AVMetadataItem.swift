
@available(watchOS 1.0, *)
class AVMetadataItem : NSObject, AVAsynchronousKeyValueLoading, NSCopying, NSMutableCopying {
  @available(watchOS 1.0, *)
  var identifier: AVMetadataIdentifier? { get }
  @available(watchOS 1.0, *)
  var extendedLanguageTag: String? { get }
  var locale: Locale? { get }
  var time: CMTime { get }
  @available(watchOS 1.0, *)
  var duration: CMTime { get }
  @available(watchOS 1.0, *)
  var dataType: String? { get }
  @NSCopying var value: (NSCopying & NSObjectProtocol)? { get }
  var extraAttributes: [AVMetadataExtraAttributeKey : Any]? { get }
}
extension AVMetadataItem {
  @available(watchOS 2.0, *)
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
  @available(watchOS 1.0, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  @available(watchOS 1.0, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredByIdentifier identifier: AVMetadataIdentifier) -> [AVMetadataItem]
  @available(watchOS 1.0, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredBy metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  @available(watchOS 1.0, *)
  class func identifier(forKey key: Any, keySpace: AVMetadataKeySpace) -> AVMetadataIdentifier?
  @available(watchOS 1.0, *)
  class func keySpace(forIdentifier identifier: AVMetadataIdentifier) -> AVMetadataKeySpace?
  @available(watchOS 1.0, *)
  class func key(forIdentifier identifier: AVMetadataIdentifier) -> Any?
  @NSCopying var key: (NSCopying & NSObjectProtocol)? { get }
  var commonKey: AVMetadataKey? { get }
  var keySpace: AVMetadataKeySpace? { get }
}
@available(watchOS 1.0, *)
class AVMutableMetadataItem : AVMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMetadataItem {
  @available(watchOS 2.0, *)
  /*not inherited*/ init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: @escaping (AVMetadataItemValueRequest) -> Void)
}
@available(watchOS 2.0, *)
class AVMetadataItemValueRequest : NSObject {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respond(value: NSCopying & NSObjectProtocol)
  func respond(error: Error)
}
extension AVMetadataItem {
  class func metadataItems(from metadataItems: [AVMetadataItem], with locale: Locale) -> [AVMetadataItem]
  class func metadataItems(from metadataItems: [AVMetadataItem], withKey key: Any?, keySpace: AVMetadataKeySpace?) -> [AVMetadataItem]
}
