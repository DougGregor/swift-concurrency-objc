
@available(macOS 10.12, *)
class AVAssetCache : NSObject {
  var isPlayableOffline: Bool { get }
  func mediaSelectionOptions(in mediaSelectionGroup: AVMediaSelectionGroup) -> [AVMediaSelectionOption]
}
