
@available(macOS 10.7, *)
class AVMetadataItem : NSObject, AVAsynchronousKeyValueLoading, NSCopying, NSMutableCopying {
  @available(macOS 10.10, *)
  var identifier: AVMetadataIdentifier? { get }
  @available(macOS 10.10, *)
  var extendedLanguageTag: String? { get }
  var locale: Locale? { get }
  var time: CMTime { get }
  @available(macOS 10.7, *)
  var duration: CMTime { get }
  @available(macOS 10.10, *)
  var dataType: String? { get }
  @NSCopying var value: (NSCopying & NSObjectProtocol)? { get }
  var extraAttributes: [AVMetadataExtraAttributeKey : Any]? { get }
}
extension AVMetadataItem {
  @available(macOS 10.11, *)
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
  @available(macOS 10.8, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMetadataItem]
  @available(macOS 10.10, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredByIdentifier identifier: AVMetadataIdentifier) -> [AVMetadataItem]
  @available(macOS 10.9, *)
  class func metadataItems(from metadataItems: [AVMetadataItem], filteredBy metadataItemFilter: AVMetadataItemFilter) -> [AVMetadataItem]
}
extension AVMetadataItem {
  @available(macOS 10.10, *)
  class func identifier(forKey key: Any, keySpace: AVMetadataKeySpace) -> AVMetadataIdentifier?
  @available(macOS 10.10, *)
  class func keySpace(forIdentifier identifier: AVMetadataIdentifier) -> AVMetadataKeySpace?
  @available(macOS 10.10, *)
  class func key(forIdentifier identifier: AVMetadataIdentifier) -> Any?
  @NSCopying var key: (NSCopying & NSObjectProtocol)? { get }
  var commonKey: AVMetadataKey? { get }
  var keySpace: AVMetadataKeySpace? { get }
}
@available(macOS 10.7, *)
class AVMutableMetadataItem : AVMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMutableMetadataItem {
}
extension AVMetadataItem {
  @available(macOS 10.11, *)
  /*not inherited*/ init(propertiesOf metadataItem: AVMetadataItem, valueLoadingHandler handler: @escaping (AVMetadataItemValueRequest) -> Void)
}
@available(macOS 10.11, *)
class AVMetadataItemValueRequest : NSObject {
  weak var metadataItem: @sil_weak AVMetadataItem? { get }
  func respond(value: NSCopying & NSObjectProtocol)
  func respond(error: Error)
}
@available(macOS 10.9, *)
class AVMetadataItemFilter : NSObject {
  class func forSharing() -> AVMetadataItemFilter
}
extension AVMetadataItem {
  class func metadataItems(from metadataItems: [AVMetadataItem], with locale: Locale) -> [AVMetadataItem]
  class func metadataItems(from metadataItems: [AVMetadataItem], withKey key: Any?, keySpace: AVMetadataKeySpace?) -> [AVMetadataItem]
}
