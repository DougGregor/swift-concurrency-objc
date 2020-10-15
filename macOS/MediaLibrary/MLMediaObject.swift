
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
class MLMediaObject : NSObject {
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  unowned(unsafe) var mediaLibrary: @sil_unmanaged MLMediaLibrary? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var identifier: String { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var mediaSourceIdentifier: String { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var attributes: [String : Any] { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var mediaType: MLMediaType { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var contentType: String? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var name: String? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var url: URL? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var originalURL: URL? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var fileSize: Int { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var modificationDate: Date? { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  var thumbnailURL: URL? { get }
}
