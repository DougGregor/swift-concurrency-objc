
@available(macOS 10.15, *)
struct ICCameraItemMetadataOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
@available(macOS 10.15, *)
struct ICCameraItemThumbnailOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICCameraItemThumbnailOption {
  @available(macOS 10.15, *)
  static let imageSourceThumbnailMaxPixelSize: ICCameraItemThumbnailOption
  @available(macOS 10.15, *)
  static let imageSourceShouldCache: ICCameraItemThumbnailOption
}
@available(macOS 10.4, *)
struct ICDownloadOption : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension ICDownloadOption {
  @available(macOS 10.4, *)
  static let downloadsDirectoryURL: ICDownloadOption
  @available(macOS 10.4, *)
  static let saveAsFilename: ICDownloadOption
  @available(macOS 10.4, *)
  static let savedFilename: ICDownloadOption
  @available(macOS 10.4, *)
  static let savedAncillaryFiles: ICDownloadOption
  @available(macOS 10.4, *)
  static let overwrite: ICDownloadOption
  @available(macOS 10.4, *)
  static let deleteAfterSuccessfulDownload: ICDownloadOption
  @available(macOS 10.4, *)
  static let sidecarFiles: ICDownloadOption
  @available(macOS 11.0, *)
  static let truncateAfterSuccessfulDownload: ICDownloadOption
}
@available(macOS 10.4, *)
class ICCameraItem : NSObject {
  @available(macOS 10.4, *)
  var device: ICCameraDevice? { get }
  @available(macOS 10.4, *)
  var parentFolder: ICCameraFolder? { get }
  @available(macOS 10.4, *)
  var name: String? { get }
  @available(macOS 10.4, *)
  var uti: String? { get }
  @available(macOS 10.4, *)
  var fileSystemPath: String? { get }
  @available(macOS 10.4, *)
  var isLocked: Bool { get }
  @available(macOS 10.4, *)
  var isRaw: Bool { get }
  @available(macOS 10.4, *)
  var isInTemporaryStore: Bool { get }
  @available(macOS 10.4, *)
  var creationDate: Date? { get }
  @available(macOS 10.4, *)
  var modificationDate: Date? { get }
  @available(macOS 10.4, *)
  var thumbnail: CGImage? { get }
  @available(macOS 10.4, *)
  var metadata: [AnyHashable : Any]? { get }
  @available(macOS 10.4, *)
  var userData: NSMutableDictionary? { get }
  @available(macOS 10.4, *)
  var ptpObjectHandle: UInt32 { get }
  @available(macOS 10.4, *)
  var wasAddedAfterContentCatalogCompleted: Bool { get }
  @available(macOS 10.15, *)
  func requestThumbnail()
  @available(macOS 10.15, *)
  func requestMetadata()
  @available(macOS 10.15, *)
  func flushThumbnailCache()
  @available(macOS 10.15, *)
  func flushMetadataCache()
  @available(macOS, introduced: 10.4, deprecated: 10.15)
  var thumbnailIfAvailable: CGImage? { get }
  @available(macOS, introduced: 10.4, deprecated: 10.15)
  var largeThumbnailIfAvailable: CGImage? { get }
  @available(macOS, introduced: 10.4, deprecated: 10.15)
  var metadataIfAvailable: [String : Any]? { get }
}
