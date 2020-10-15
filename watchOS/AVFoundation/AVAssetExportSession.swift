
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
extension AVAssetExportSession {
  class func allExportPresets() -> [String]
  class func exportPresets(compatibleWith asset: AVAsset) -> [String]
}
extension AVAssetExportSession {
  var supportedFileTypes: [AVFileType] { get }
}
extension AVAssetExportSession {
  var timeRange: CMTimeRange
}
extension AVAssetExportSession {
  var metadata: [AVMetadataItem]?
}
extension AVAssetExportSession {
  @NSCopying var audioMix: AVAudioMix?
  @NSCopying var videoComposition: AVVideoComposition?
}
extension AVAssetExportSession {
}
