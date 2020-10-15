
@available(macOS 11.0, *)
class STWebpageController : NSViewController {
  var suppressUsageRecording: Bool
  var url: URL?
  var urlIsPlayingVideo: Bool
  var urlIsPictureInPicture: Bool
  var urlIsBlocked: Bool { get }
  func setBundleIdentifier(_ bundleIdentifier: String) throws
}
