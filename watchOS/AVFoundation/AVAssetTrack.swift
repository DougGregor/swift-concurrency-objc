
@available(watchOS 1.0, *)
class AVAssetTrack : NSObject, NSCopying, AVAsynchronousKeyValueLoading {
  weak var asset: @sil_weak AVAsset? { get }
  var trackID: CMPersistentTrackID { get }
}
extension AVAssetTrack {
  var mediaType: AVMediaType { get }
  var formatDescriptions: [Any] { get }
  @available(watchOS 1.0, *)
  var isPlayable: Bool { get }
  @available(watchOS 4.0, *)
  var isDecodable: Bool { get }
  var isEnabled: Bool { get }
  var isSelfContained: Bool { get }
  var totalSampleDataLength: Int64 { get }
  func hasMediaCharacteristic(_ mediaCharacteristic: AVMediaCharacteristic) -> Bool
}
extension AVAssetTrack {
  var timeRange: CMTimeRange { get }
  var naturalTimeScale: CMTimeScale { get }
  var estimatedDataRate: Float { get }
}
extension AVAssetTrack {
  var languageCode: String? { get }
  var extendedLanguageTag: String? { get }
}
extension AVAssetTrack {
  var naturalSize: CGSize { get }
  var preferredTransform: CGAffineTransform { get }
}
extension AVAssetTrack {
  var preferredVolume: Float { get }
  @available(watchOS 6.0, *)
  var hasAudioSampleDependencies: Bool { get }
}
extension AVAssetTrack {
  var nominalFrameRate: Float { get }
  @available(watchOS 1.0, *)
  var minFrameDuration: CMTime { get }
  @available(watchOS 1.0, *)
  var requiresFrameReordering: Bool { get }
}
extension AVAssetTrack {
  var segments: [AVAssetTrackSegment] { get }
  func segment(forTrackTime trackTime: CMTime) -> AVAssetTrackSegment?
  func samplePresentationTime(forTrackTime trackTime: CMTime) -> CMTime
}
extension AVAssetTrack {
  var commonMetadata: [AVMetadataItem] { get }
  @available(watchOS 1.0, *)
  var metadata: [AVMetadataItem] { get }
  var availableMetadataFormats: [AVMetadataFormat] { get }
  func metadata(forFormat format: AVMetadataFormat) -> [AVMetadataItem]
}
extension AVAssetTrack {
  @available(watchOS 1.0, *)
  var availableTrackAssociationTypes: [AVAssetTrack.AssociationType] { get }
  @available(watchOS 1.0, *)
  func associatedTracks(ofType trackAssociationType: AVAssetTrack.AssociationType) -> [AVAssetTrack]
}
extension AVAssetTrack {
  struct AssociationType : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(rawValue: String)
    var _rawValue: NSString
    var rawValue: String { get }
  }
}
extension AVAssetTrack.AssociationType {
  @available(watchOS 1.0, *)
  static let audioFallback: AVAssetTrack.AssociationType
  @available(watchOS 1.0, *)
  static let chapterList: AVAssetTrack.AssociationType
  @available(watchOS 1.0, *)
  static let forcedSubtitlesOnly: AVAssetTrack.AssociationType
  @available(watchOS 1.0, *)
  static let selectionFollower: AVAssetTrack.AssociationType
  @available(watchOS 1.0, *)
  static let timecode: AVAssetTrack.AssociationType
  @available(watchOS 1.0, *)
  static let metadataReferent: AVAssetTrack.AssociationType
}
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let AVAssetTrackTimeRangeDidChange: NSNotification.Name
  @available(watchOS 2.0, *)
  static let AVAssetTrackSegmentsDidChange: NSNotification.Name
  @available(watchOS 2.0, *)
  static let AVAssetTrackTrackAssociationsDidChange: NSNotification.Name
}
@available(watchOS 6.0, *)
class AVFragmentedAssetTrack : AVAssetTrack {
}
