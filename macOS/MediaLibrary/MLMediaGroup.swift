
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
class MLMediaGroup : NSObject {
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  unowned(unsafe) var parent: @sil_unmanaged MLMediaGroup? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var mediaSourceIdentifier: String { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var name: String? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var identifier: String { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var typeIdentifier: String { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var attributes: [String : Any] { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var childGroups: [MLMediaGroup]? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var url: URL? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var modificationDate: Date? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var mediaObjects: [MLMediaObject]? { get }
}
