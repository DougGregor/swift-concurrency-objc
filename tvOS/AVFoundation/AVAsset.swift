
@available(tvOS 9.0, *)
class AVAsset : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  convenience init(url URL: URL)
  var duration: CMTime { get }
  var preferredRate: Float { get }
  var preferredVolume: Float { get }
  var preferredTransform: CGAffineTransform { get }
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "No longer supported")
  var naturalSize: CGSize { get }
  @available(tvOS 11.2, *)
  var preferredDisplayCriteria: AVDisplayCriteria { get }
  @available(tvOS 13.0, *)
  var minimumTimeOffsetFromLive: CMTime { get }
}
extension AVAsset {
  var providesPreciseDurationAndTiming: Bool { get }
  func cancelLoading()
}
extension AVAsset {
  @available(tvOS 9.0, *)
  var referenceRestrictions: AVAssetReferenceRestrictions { get }
}
struct AVAssetReferenceRestrictions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var forbidRemoteReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var forbidLocalReferenceToRemote: AVAssetReferenceRestrictions { get }
  static var forbidCrossSiteReference: AVAssetReferenceRestrictions { get }
  static var forbidLocalReferenceToLocal: AVAssetReferenceRestrictions { get }
  static var forbidAll: AVAssetReferenceRestrictions { get }
  static var defaultPolicy: AVAssetReferenceRestrictions { get }
}
extension AVAsset {
  var tracks: [AVAssetTrack] { get }
  func track(withTrackID trackID: CMPersistentTrackID) -> AVAssetTrack?
  func tracks(withMediaType mediaType: AVMediaType) -> [AVAssetTrack]
  func tracks(withMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic) -> [AVAssetTrack]
  @available(tvOS 9.0, *)
  var trackGroups: [AVAssetTrackGroup] { get }
}
extension AVAsset {
  @available(tvOS 9.0, *)
  var creationDate: AVMetadataItem? { get }
  var lyrics: String? { get }
  var commonMetadata: [AVMetadataItem] { get }
  @available(tvOS 9.0, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [AVMetadataFormat] { get }
  func metadata(forFormat format: AVMetadataFormat) -> [AVMetadataItem]
}
extension AVAsset {
  @available(tvOS 9.0, *)
  var availableChapterLocales: [Locale] { get }
  @available(tvOS 9.0, *)
  func chapterMetadataGroups(withTitleLocale locale: Locale, containingItemsWithCommonKeys commonKeys: [AVMetadataKey]?) -> [AVTimedMetadataGroup]
  @available(tvOS 9.0, *)
  func chapterMetadataGroups(bestMatchingPreferredLanguages preferredLanguages: [String]) -> [AVTimedMetadataGroup]
}
extension AVAsset {
  @available(tvOS 9.0, *)
  var availableMediaCharacteristicsWithMediaSelectionOptions: [AVMediaCharacteristic] { get }
  @available(tvOS 9.0, *)
  func mediaSelectionGroup(forMediaCharacteristic mediaCharacteristic: AVMediaCharacteristic) -> AVMediaSelectionGroup?
  @available(tvOS 9.0, *)
  var preferredMediaSelection: AVMediaSelection { get }
  @available(tvOS 11.0, *)
  var allMediaSelections: [AVMediaSelection] { get }
}
extension AVAsset {
  @available(tvOS 9.0, *)
  var hasProtectedContent: Bool { get }
}
extension AVAsset {
  @available(tvOS 9.0, *)
  var canContainFragments: Bool { get }
  @available(tvOS 9.0, *)
  var containsFragments: Bool { get }
  @available(tvOS 10.2, *)
  var overallDurationHint: CMTime { get }
}
extension AVAsset {
  @available(tvOS 9.0, *)
  var isPlayable: Bool { get }
  @available(tvOS 9.0, *)
  var isExportable: Bool { get }
  @available(tvOS 9.0, *)
  var isReadable: Bool { get }
  @available(tvOS 9.0, *)
  var isComposable: Bool { get }
  @available(tvOS 9.0, *)
  var isCompatibleWithSavedPhotosAlbum: Bool { get }
  @available(tvOS 9.0, *)
  var isCompatibleWithAirPlayVideo: Bool { get }
}
@available(tvOS 9.0, *)
let AVURLAssetPreferPreciseDurationAndTimingKey: String
@available(tvOS 9.0, *)
let AVURLAssetReferenceRestrictionsKey: String
@available(tvOS 9.0, *)
let AVURLAssetHTTPCookiesKey: String
@available(tvOS 10.0, *)
let AVURLAssetAllowsCellularAccessKey: String
@available(tvOS 13.0, *)
let AVURLAssetAllowsExpensiveNetworkAccessKey: String
@available(tvOS 13.0, *)
let AVURLAssetAllowsConstrainedNetworkAccessKey: String
@available(tvOS 9.0, *)
class AVURLAsset : AVAsset {
  @available(tvOS 9.0, *)
  class func audiovisualTypes() -> [AVFileType]
  @available(tvOS 9.0, *)
  class func audiovisualMIMETypes() -> [String]
  @available(tvOS 9.0, *)
  class func isPlayableExtendedMIMEType(_ extendedMIMEType: String) -> Bool
  init(url URL: URL, options: [String : Any]? = nil)
  var url: URL { get }
}
extension AVURLAsset {
  @available(tvOS 9.0, *)
  var resourceLoader: AVAssetResourceLoader { get }
}
extension AVURLAsset {
  @available(tvOS 10.0, *)
  var assetCache: AVAssetCache? { get }
}
extension AVURLAsset {
  func compatibleTrack(for compositionTrack: AVCompositionTrack) -> AVAssetTrack?
}
extension AVURLAsset : NSItemProviderReading, NSItemProviderWriting {
}
extension NSNotification.Name {
  @available(tvOS 9.0, *)
  static let AVAssetDurationDidChange: NSNotification.Name
  @available(tvOS 12.0, *)
  static let AVAssetContainsFragmentsDidChange: NSNotification.Name
  @available(tvOS 12.0, *)
  static let AVAssetWasDefragmented: NSNotification.Name
  @available(tvOS 9.0, *)
  static let AVAssetChapterMetadataGroupsDidChange: NSNotification.Name
  @available(tvOS 9.0, *)
  static let AVAssetMediaSelectionGroupsDidChange: NSNotification.Name
}
protocol AVFragmentMinding {
  @available(tvOS 12.0, *)
  var isAssociatedWithFragmentMinder: Bool { get }
}
@available(tvOS 12.0, *)
class AVFragmentedAsset : AVURLAsset, AVFragmentMinding {
}
extension AVFragmentedAsset {
}
@available(tvOS 12.0, *)
class AVFragmentedAssetMinder : NSObject {
  init(asset: AVAsset & AVFragmentMinding, mindingInterval: TimeInterval)
  var mindingInterval: TimeInterval
  var assets: [AVAsset & AVFragmentMinding] { get }
  func addFragmentedAsset(_ asset: AVAsset & AVFragmentMinding)
  func removeFragmentedAsset(_ asset: AVAsset & AVFragmentMinding)
}
@available(tvOS 9.0, *)
extension AVURLAsset : AVContentKeyRecipient {
}
