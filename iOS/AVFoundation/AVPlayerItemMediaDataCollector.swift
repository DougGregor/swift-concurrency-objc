
@available(iOS 9.3, *)
class AVPlayerItemMediaDataCollector : NSObject {
}
@available(iOS 9.3, *)
class AVPlayerItemMetadataCollector : AVPlayerItemMediaDataCollector {
  init(identifiers: [String]?, classifyingLabels: [String]?)
  func setDelegate(_ delegate: AVPlayerItemMetadataCollectorPushDelegate?, queue delegateQueue: DispatchQueue?)
  weak var delegate: @sil_weak AVPlayerItemMetadataCollectorPushDelegate? { get }
  var delegateQueue: DispatchQueue? { get }
}
protocol AVPlayerItemMetadataCollectorPushDelegate : NSObjectProtocol {
  @available(iOS 9.3, *)
  @asyncHandler func metadataCollector(_ metadataCollector: AVPlayerItemMetadataCollector, didCollect metadataGroups: [AVDateRangeMetadataGroup], indexesOfNewGroups: IndexSet, indexesOfModifiedGroups: IndexSet)
}
