
enum ITLibExportFeature : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
}
enum ITLibInitOptions : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case lazyLoadData
}
class ITLibrary : NSObject {
  var applicationVersion: String { get }
  var features: ITLibExportFeature { get }
  var apiMajorVersion: Int { get }
  var apiMinorVersion: Int { get }
  var mediaFolderLocation: URL? { get }
  var musicFolderLocation: URL? { get }
  var shouldShowContentRating: Bool { get }
  var allMediaItems: [ITLibMediaItem] { get }
  var allPlaylists: [ITLibPlaylist] { get }
  convenience init(apiVersion requestedAPIVersion: String) throws
  @available(macOS 10.14, *)
  init(apiVersion requestedAPIVersion: String, options: ITLibInitOptions) throws
  func artwork(forMediaFile mediaFileURL: URL) -> ITLibArtwork?
  func reloadData() -> Bool
  @available(macOS 10.14, *)
  func unloadData()
}
