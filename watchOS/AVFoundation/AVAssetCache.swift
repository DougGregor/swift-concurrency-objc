
@available(watchOS 3.0, *)
class AVAssetCache : NSObject {
  var isPlayableOffline: Bool { get }
  func mediaSelectionOptions(in mediaSelectionGroup: AVMediaSelectionGroup) -> [AVMediaSelectionOption]
}
