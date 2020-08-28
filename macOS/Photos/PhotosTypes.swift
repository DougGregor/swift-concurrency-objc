
@available(macOS 10.11, macOS 10.11, *)
enum PHImageContentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case aspectFit
  @available(macOS 10.11, *)
  case aspectFill
  @available(macOS 10.11, *)
  static var `default`: PHImageContentMode { get }
}
@available(macOS 10.11, macOS 10.11, *)
enum PHCollectionListType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case folder
  @available(macOS 10.11, *)
  case smartFolder
}
@available(macOS 10.11, macOS 10.11, *)
enum PHCollectionListSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case regularFolder
  @available(macOS 10.11, *)
  case smartFolderEvents
  @available(macOS 10.11, *)
  case smartFolderFaces
  @available(macOS 10.11, *)
  case any
}
@available(macOS 10.11, macOS 10.11, *)
enum PHCollectionEditOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case deleteContent
  @available(macOS 10.11, *)
  case removeContent
  @available(macOS 10.11, *)
  case addContent
  @available(macOS 10.11, *)
  case createContent
  @available(macOS 10.11, *)
  case rearrangeContent
  @available(macOS 10.11, *)
  case delete
  @available(macOS 10.11, *)
  case rename
}
@available(macOS 10.11, macOS 10.11, *)
enum PHAssetCollectionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case album
  @available(macOS 10.11, *)
  case smartAlbum
}
@available(macOS 10.11, macOS 10.11, *)
enum PHAssetCollectionSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case albumRegular
  @available(macOS 10.11, *)
  case albumSyncedEvent
  @available(macOS 10.11, *)
  case albumSyncedFaces
  @available(macOS 10.11, *)
  case albumSyncedAlbum
  @available(macOS 10.11, *)
  case albumImported
  @available(macOS 10.11, *)
  case albumMyPhotoStream
  @available(macOS 10.11, *)
  case albumCloudShared
  @available(macOS 10.11, *)
  case smartAlbumGeneric
  @available(macOS 10.11, *)
  case smartAlbumPanoramas
  @available(macOS 10.11, *)
  case smartAlbumVideos
  @available(macOS 10.11, *)
  case smartAlbumFavorites
  @available(macOS 10.11, *)
  case smartAlbumTimelapses
  @available(macOS 10.11, *)
  case smartAlbumAllHidden
  @available(macOS 10.11, *)
  case smartAlbumRecentlyAdded
  @available(macOS 10.11, *)
  case smartAlbumBursts
  @available(macOS 10.11, *)
  case smartAlbumSlomoVideos
  @available(macOS 10.11, *)
  case smartAlbumUserLibrary
  @available(macOS 10.11, *)
  case smartAlbumSelfPortraits
  @available(macOS 10.11, *)
  case smartAlbumScreenshots
  @available(macOS 10.13, *)
  case smartAlbumDepthEffect
  @available(macOS 10.13, *)
  case smartAlbumLivePhotos
  @available(macOS 10.15, *)
  case smartAlbumAnimated
  @available(macOS 10.15, *)
  case smartAlbumLongExposures
  @available(macOS 10.15, *)
  case smartAlbumUnableToUpload
  @available(macOS 10.11, *)
  case any
}
@available(macOS 10.11, macOS 10.11, *)
enum PHAssetEditOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case delete
  @available(macOS 10.11, *)
  case content
  @available(macOS 10.11, *)
  case properties
}
extension PHAsset {
  @available(macOS 10.13, macOS 10.11, *)
  enum PlaybackStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(macOS 10.11, *)
    case unsupported
    @available(macOS 10.11, *)
    case image
    @available(macOS 10.11, *)
    case imageAnimated
    @available(macOS 10.11, *)
    case livePhoto
    @available(macOS 10.11, *)
    case video
    @available(macOS 10.11, *)
    case videoLooping
  }
}
@available(macOS 10.11, macOS 10.11, *)
enum PHAssetMediaType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case unknown
  @available(macOS 10.11, *)
  case image
  @available(macOS 10.11, *)
  case video
  @available(macOS 10.11, *)
  case audio
}
@available(macOS 10.11, macOS 10.11, *)
struct PHAssetMediaSubtype : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.11, *)
  static var photoPanorama: PHAssetMediaSubtype { get }
  @available(macOS 10.11, *)
  static var photoHDR: PHAssetMediaSubtype { get }
  @available(macOS 10.11, *)
  static var photoScreenshot: PHAssetMediaSubtype { get }
  @available(macOS 10.11, *)
  static var photoLive: PHAssetMediaSubtype { get }
  @available(macOS 10.12.2, *)
  static var photoDepthEffect: PHAssetMediaSubtype { get }
  @available(macOS 10.11, *)
  static var videoStreamed: PHAssetMediaSubtype { get }
  @available(macOS 10.11, *)
  static var videoHighFrameRate: PHAssetMediaSubtype { get }
  @available(macOS 10.11, *)
  static var videoTimelapse: PHAssetMediaSubtype { get }
}
@available(macOS 10.11, macOS 10.11, *)
struct PHAssetBurstSelectionType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.11, *)
  static var autoPick: PHAssetBurstSelectionType { get }
  @available(macOS 10.11, *)
  static var userPick: PHAssetBurstSelectionType { get }
}
@available(macOS 10.11, macOS 10.11, *)
struct PHAssetSourceType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 10.11, *)
  static var typeUserLibrary: PHAssetSourceType { get }
  @available(macOS 10.11, *)
  static var typeCloudShared: PHAssetSourceType { get }
  @available(macOS 10.11, *)
  static var typeiTunesSynced: PHAssetSourceType { get }
}
@available(macOS 10.11, macOS 10.11, *)
enum PHAssetResourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.11, *)
  case photo
  @available(macOS 10.11, *)
  case video
  @available(macOS 10.11, *)
  case audio
  @available(macOS 10.11, *)
  case alternatePhoto
  @available(macOS 10.11, *)
  case fullSizePhoto
  @available(macOS 10.11, *)
  case fullSizeVideo
  @available(macOS 10.11, *)
  case adjustmentData
  @available(macOS 10.11, *)
  case adjustmentBasePhoto
  @available(macOS 10.11, *)
  case pairedVideo
  @available(macOS 10.15, *)
  case fullSizePairedVideo
  @available(macOS 10.15, *)
  case adjustmentBasePairedVideo
  @available(macOS 10.15, *)
  case adjustmentBaseVideo
}
