
@available(tvOS 10, tvOS 10, *)
enum PHImageContentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case aspectFit
  @available(tvOS 10, *)
  case aspectFill
  @available(tvOS 10, *)
  static var `default`: PHImageContentMode { get }
}
@available(tvOS 10, tvOS 10, *)
enum PHCollectionListType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS, introduced: 10, deprecated: 13, message: "Will be removed in a future release")
  case momentList
  @available(tvOS 10, *)
  case folder
  @available(tvOS 10, *)
  case smartFolder
}
@available(tvOS 10, tvOS 10, *)
enum PHCollectionListSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS, introduced: 10, deprecated: 13, message: "Will be removed in a future release")
  case momentListCluster
  @available(tvOS, introduced: 10, deprecated: 13, message: "Will be removed in a future release")
  case momentListYear
  @available(tvOS 10, *)
  case regularFolder
  @available(tvOS 10, *)
  case smartFolderEvents
  @available(tvOS 10, *)
  case smartFolderFaces
  @available(tvOS 10, *)
  case any
}
@available(tvOS 10, tvOS 10, *)
enum PHCollectionEditOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case deleteContent
  @available(tvOS 10, *)
  case removeContent
  @available(tvOS 10, *)
  case addContent
  @available(tvOS 10, *)
  case createContent
  @available(tvOS 10, *)
  case rearrangeContent
  @available(tvOS 10, *)
  case delete
  @available(tvOS 10, *)
  case rename
}
@available(tvOS 10, tvOS 10, *)
enum PHAssetCollectionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case album
  @available(tvOS 10, *)
  case smartAlbum
  @available(tvOS, introduced: 10, deprecated: 13, message: "Will be removed in a future release")
  case moment
}
@available(tvOS 10, tvOS 10, *)
enum PHAssetCollectionSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case albumRegular
  @available(tvOS 10, *)
  case albumSyncedEvent
  @available(tvOS 10, *)
  case albumSyncedFaces
  @available(tvOS 10, *)
  case albumSyncedAlbum
  @available(tvOS 10, *)
  case albumImported
  @available(tvOS 10, *)
  case albumMyPhotoStream
  @available(tvOS 10, *)
  case albumCloudShared
  @available(tvOS 10, *)
  case smartAlbumGeneric
  @available(tvOS 10, *)
  case smartAlbumPanoramas
  @available(tvOS 10, *)
  case smartAlbumVideos
  @available(tvOS 10, *)
  case smartAlbumFavorites
  @available(tvOS 10, *)
  case smartAlbumTimelapses
  @available(tvOS 10, *)
  case smartAlbumAllHidden
  @available(tvOS 10, *)
  case smartAlbumRecentlyAdded
  @available(tvOS 10, *)
  case smartAlbumBursts
  @available(tvOS 10, *)
  case smartAlbumSlomoVideos
  @available(tvOS 10, *)
  case smartAlbumUserLibrary
  @available(tvOS 10, *)
  case smartAlbumSelfPortraits
  @available(tvOS 10, *)
  case smartAlbumScreenshots
  @available(tvOS 10.1, *)
  case smartAlbumDepthEffect
  @available(tvOS 10.2, *)
  case smartAlbumLivePhotos
  @available(tvOS 11, *)
  case smartAlbumAnimated
  @available(tvOS 11, *)
  case smartAlbumLongExposures
  @available(tvOS 13, *)
  case smartAlbumUnableToUpload
  @available(tvOS 10, *)
  case any
}
@available(tvOS 10, tvOS 10, *)
enum PHAssetEditOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case delete
  @available(tvOS 10, *)
  case content
  @available(tvOS 10, *)
  case properties
}
extension PHAsset {
  @available(tvOS 11, tvOS 10, *)
  enum PlaybackStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(tvOS 10, *)
    case unsupported
    @available(tvOS 10, *)
    case image
    @available(tvOS 10, *)
    case imageAnimated
    @available(tvOS 10, *)
    case livePhoto
    @available(tvOS 10, *)
    case video
    @available(tvOS 10, *)
    case videoLooping
  }
}
@available(tvOS 10, tvOS 10, *)
enum PHAssetMediaType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case unknown
  @available(tvOS 10, *)
  case image
  @available(tvOS 10, *)
  case video
  @available(tvOS 10, *)
  case audio
}
@available(tvOS 10, tvOS 10, *)
struct PHAssetMediaSubtype : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(tvOS 10, *)
  static var photoPanorama: PHAssetMediaSubtype { get }
  @available(tvOS 10, *)
  static var photoHDR: PHAssetMediaSubtype { get }
  @available(tvOS 10, *)
  static var photoScreenshot: PHAssetMediaSubtype { get }
  @available(tvOS 10, *)
  static var photoLive: PHAssetMediaSubtype { get }
  @available(tvOS 10.1, *)
  static var photoDepthEffect: PHAssetMediaSubtype { get }
  @available(tvOS 10, *)
  static var videoStreamed: PHAssetMediaSubtype { get }
  @available(tvOS 10, *)
  static var videoHighFrameRate: PHAssetMediaSubtype { get }
  @available(tvOS 10, *)
  static var videoTimelapse: PHAssetMediaSubtype { get }
}
@available(tvOS 10, tvOS 10, *)
struct PHAssetBurstSelectionType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(tvOS 10, *)
  static var autoPick: PHAssetBurstSelectionType { get }
  @available(tvOS 10, *)
  static var userPick: PHAssetBurstSelectionType { get }
}
@available(tvOS 10, tvOS 10, *)
struct PHAssetSourceType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(tvOS 10, *)
  static var typeUserLibrary: PHAssetSourceType { get }
  @available(tvOS 10, *)
  static var typeCloudShared: PHAssetSourceType { get }
  @available(tvOS 10, *)
  static var typeiTunesSynced: PHAssetSourceType { get }
}
@available(tvOS 10, tvOS 10, *)
enum PHAssetResourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 10, *)
  case photo
  @available(tvOS 10, *)
  case video
  @available(tvOS 10, *)
  case audio
  @available(tvOS 10, *)
  case alternatePhoto
  @available(tvOS 10, *)
  case fullSizePhoto
  @available(tvOS 10, *)
  case fullSizeVideo
  @available(tvOS 10, *)
  case adjustmentData
  @available(tvOS 10, *)
  case adjustmentBasePhoto
  @available(tvOS 10, *)
  case pairedVideo
  @available(tvOS 10, *)
  case fullSizePairedVideo
  @available(tvOS 10, *)
  case adjustmentBasePairedVideo
  @available(tvOS 10, *)
  case adjustmentBaseVideo
}
