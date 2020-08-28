
@available(watchOS 2.0, *)
let AVAssetExportPresetLowQuality: String
@available(watchOS 2.0, *)
let AVAssetExportPresetMediumQuality: String
@available(watchOS 2.0, *)
let AVAssetExportPresetHighestQuality: String
@available(watchOS 4.0, *)
let AVAssetExportPresetHEVCHighestQuality: String
@available(watchOS 6.0, *)
let AVAssetExportPresetHEVCHighestQualityWithAlpha: String
@available(watchOS 2.0, *)
let AVAssetExportPreset640x480: String
@available(watchOS 2.0, *)
let AVAssetExportPreset960x540: String
@available(watchOS 2.0, *)
let AVAssetExportPreset1280x720: String
@available(watchOS 2.0, *)
let AVAssetExportPreset1920x1080: String
@available(watchOS 2.0, *)
let AVAssetExportPreset3840x2160: String
@available(watchOS 4.0, *)
let AVAssetExportPresetHEVC1920x1080: String
@available(watchOS 6.0, *)
let AVAssetExportPresetHEVC1920x1080WithAlpha: String
@available(watchOS 4.0, *)
let AVAssetExportPresetHEVC3840x2160: String
@available(watchOS 6.0, *)
let AVAssetExportPresetHEVC3840x2160WithAlpha: String
@available(watchOS 2.0, *)
let AVAssetExportPresetAppleM4A: String
@available(watchOS 2.0, *)
let AVAssetExportPresetPassthrough: String
extension AVAssetExportSession {
  enum Status : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case waiting
    case exporting
    case completed
    case failed
    case cancelled
  }
}
@available(watchOS 2.0, *)
class AVAssetExportSession : NSObject {
  init?(asset: AVAsset, presetName: String)
  var presetName: String { get }
  @available(watchOS 2.0, *)
  var asset: AVAsset { get }
  var outputFileType: AVFileType?
  var outputURL: URL?
  var shouldOptimizeForNetworkUse: Bool
  var status: AVAssetExportSession.Status { get }
  var error: Error? { get }
  func exportAsynchronously(completionHandler handler: @escaping () -> Void)
  var progress: Float { get }
  func cancelExport()
}
extension AVAssetExportSession {
  class func allExportPresets() -> [String]
  class func exportPresets(compatibleWith asset: AVAsset) -> [String]
  @available(watchOS 2.0, *)
  class func determineCompatibility(ofExportPreset presetName: String, with asset: AVAsset, outputFileType: AVFileType?, completionHandler handler: @escaping (Bool) -> Void)
}
extension AVAssetExportSession {
  var supportedFileTypes: [AVFileType] { get }
  @available(watchOS 2.0, *)
  func determineCompatibleFileTypes(completionHandler handler: @escaping ([AVFileType]) -> Void)
}
extension AVAssetExportSession {
  var timeRange: CMTimeRange
  @available(watchOS, introduced: 2.0, deprecated: 99993)
  var maxDuration: CMTime { get }
  @available(watchOS, introduced: 2.0, deprecated: 99993)
  var estimatedOutputFileLength: Int64 { get }
  @available(watchOS 2.0, *)
  var fileLengthLimit: Int64
  @available(watchOS 6.0, *)
  func estimateMaximumDuration(completionHandler handler: @escaping (CMTime, Error?) -> Void)
  @available(watchOS 6.0, *)
  func estimateOutputFileLength(completionHandler handler: @escaping (Int64, Error?) -> Void)
}
extension AVAssetExportSession {
  var metadata: [AVMetadataItem]?
  @available(watchOS 2.0, *)
  var metadataItemFilter: AVMetadataItemFilter?
}
extension AVAssetExportSession {
  @available(watchOS 2.0, *)
  var audioTimePitchAlgorithm: AVAudioTimePitchAlgorithm
  @NSCopying var audioMix: AVAudioMix?
  @NSCopying var videoComposition: AVVideoComposition?
  @available(watchOS 2.0, *)
  var customVideoCompositor: AVVideoCompositing? { get }
}
extension AVAssetExportSession {
  @available(watchOS 2.0, *)
  var canPerformMultiplePassesOverSourceMediaData: Bool
  @available(watchOS 2.0, *)
  var directoryForTemporaryFiles: URL?
}
