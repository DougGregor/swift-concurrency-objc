
@available(macOS 10.8, *)
class AVMediaSelectionGroup : NSObject, NSCopying {
  var options: [AVMediaSelectionOption] { get }
  @available(macOS 10.10, *)
  var defaultOption: AVMediaSelectionOption? { get }
  var allowsEmptySelection: Bool { get }
  func mediaSelectionOption(withPropertyList plist: Any) -> AVMediaSelectionOption?
}
extension AVMediaSelectionGroup {
  class func playableMediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption]) -> [AVMediaSelectionOption]
  @available(macOS 10.8, *)
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], filteredAndSortedAccordingToPreferredLanguages preferredLanguages: [String]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], with locale: Locale) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], withMediaCharacteristics mediaCharacteristics: [AVMediaCharacteristic]) -> [AVMediaSelectionOption]
  class func mediaSelectionOptions(from mediaSelectionOptions: [AVMediaSelectionOption], withoutMediaCharacteristics mediaCharacteristics: [AVMediaCharacteristic]) -> [AVMediaSelectionOption]
}
@available(macOS 10.8, *)
class AVMediaSelectionOption : NSObject, NSCopying {
  var mediaType: AVMediaType { get }
  var mediaSubTypes: [NSNumber] { get }
  func hasMediaCharacteristic(_ mediaCharacteristic: AVMediaCharacteristic) -> Bool
  var isPlayable: Bool { get }
  @available(macOS 10.9, *)
  var extendedLanguageTag: String? { get }
  var locale: Locale? { get }
  var commonMetadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [String] { get }
  func metadata(forFormat format: String) -> [AVMetadataItem]
  func associatedMediaSelectionOption(in mediaSelectionGroup: AVMediaSelectionGroup) -> AVMediaSelectionOption?
  func propertyList() -> Any
  @available(macOS 10.9, *)
  func displayName(with locale: Locale) -> String
  @available(macOS 10.9, *)
  var displayName: String { get }
}
