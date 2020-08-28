
@available(tvOS 10.0, *)
class AVContentProposal : NSObject, NSCopying {
  var contentTimeForTransition: CMTime { get }
  var automaticAcceptanceInterval: TimeInterval
  var title: String { get }
  var previewImage: UIImage? { get }
  var url: URL?
  var metadata: [AVMetadataItem]
  init(contentTimeForTransition: CMTime, title: String, previewImage: UIImage?)
}
extension AVPlayerItem {
  @available(tvOS 10.0, *)
  var nextContentProposal: AVContentProposal?
}
