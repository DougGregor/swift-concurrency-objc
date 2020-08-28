
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
class MLMediaSource : NSObject {
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var mediaSourceIdentifier: String { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var attributes: [String : Any] { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var rootMediaGroup: MLMediaGroup? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  func mediaGroup(forIdentifier mediaGroupIdentifier: String) -> MLMediaGroup?
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  func mediaGroups(forIdentifiers mediaGroupIdentifiers: [String]) -> [String : MLMediaGroup]
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  func mediaObject(forIdentifier mediaObjectIdentifier: String) -> MLMediaObject?
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  func mediaObjects(forIdentifiers mediaObjectIdentifiers: [String]) -> [String : MLMediaObject]
}
