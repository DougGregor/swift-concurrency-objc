
@available(iOS 8, iOS 8, *)
enum PHImageContentMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case aspectFit
  @available(iOS 8, *)
  case aspectFill
  @available(iOS 8, *)
  static var `default`: PHImageContentMode { get }
}
@available(iOS 8, iOS 8, *)
enum PHCollectionListType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 8, deprecated: 13, message: "Will be removed in a future release")
  case momentList
  @available(iOS 8, *)
  case folder
  @available(iOS 8, *)
  case smartFolder
}
@available(iOS 8, iOS 8, *)
enum PHCollectionListSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS, introduced: 8, deprecated: 13, message: "Will be removed in a future release")
  case momentListCluster
  @available(iOS, introduced: 8, deprecated: 13, message: "Will be removed in a future release")
  case momentListYear
  @available(iOS 8, *)
  case regularFolder
  @available(iOS 8, *)
  case smartFolderEvents
  @available(iOS 8, *)
  case smartFolderFaces
  @available(iOS 8, *)
  case any
}
@available(iOS 8, iOS 8, *)
enum PHCollectionEditOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case deleteContent
  @available(iOS 8, *)
  case removeContent
  @available(iOS 8, *)
  case addContent
  @available(iOS 8, *)
  case createContent
  @available(iOS 8, *)
  case rearrangeContent
  @available(iOS 8, *)
  case delete
  @available(iOS 8, *)
  case rename
}
@available(iOS 8, iOS 8, *)
enum PHAssetCollectionType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case album
  @available(iOS 8, *)
  case smartAlbum
  @available(iOS, introduced: 8, deprecated: 13, message: "Will be removed in a future release")
  case moment
}
@available(iOS 8, iOS 8, *)
enum PHAssetCollectionSubtype : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case albumRegular
  @available(iOS 8, *)
  case albumSyncedEvent
  @available(iOS 8, *)
  case albumSyncedFaces
  @available(iOS 8, *)
  case albumSyncedAlbum
  @available(iOS 8, *)
  case albumImported
  @available(iOS 8, *)
  case albumMyPhotoStream
  @available(iOS 8, *)
  case albumCloudShared
  @available(iOS 8, *)
  case smartAlbumGeneric
  @available(iOS 8, *)
  case smartAlbumPanoramas
  @available(iOS 8, *)
  case smartAlbumVideos
  @available(iOS 8, *)
  case smartAlbumFavorites
  @available(iOS 8, *)
  case smartAlbumTimelapses
  @available(iOS 8, *)
  case smartAlbumAllHidden
  @available(iOS 8, *)
  case smartAlbumRecentlyAdded
  @available(iOS 8, *)
  case smartAlbumBursts
  @available(iOS 8, *)
  case smartAlbumSlomoVideos
  @available(iOS 8, *)
  case smartAlbumUserLibrary
  @available(iOS 9, *)
  case smartAlbumSelfPortraits
  @available(iOS 9, *)
  case smartAlbumScreenshots
  @available(iOS 10.2, *)
  case smartAlbumDepthEffect
  @available(iOS 10.3, *)
  case smartAlbumLivePhotos
  @available(iOS 11, *)
  case smartAlbumAnimated
  @available(iOS 11, *)
  case smartAlbumLongExposures
  @available(iOS 13, *)
  case smartAlbumUnableToUpload
  @available(iOS 8, *)
  case any
}
@available(iOS 8, iOS 8, *)
enum PHAssetEditOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case delete
  @available(iOS 8, *)
  case content
  @available(iOS 8, *)
  case properties
}
extension PHAsset {
  @available(iOS 11, iOS 8, *)
  enum PlaybackStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    @available(iOS 8, *)
    case unsupported
    @available(iOS 8, *)
    case image
    @available(iOS 8, *)
    case imageAnimated
    @available(iOS 8, *)
    case livePhoto
    @available(iOS 8, *)
    case video
    @available(iOS 8, *)
    case videoLooping
  }
}
@available(iOS 8, iOS 8, *)
enum PHAssetMediaType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case unknown
  @available(iOS 8, *)
  case image
  @available(iOS 8, *)
  case video
  @available(iOS 8, *)
  case audio
}
@available(iOS 8, iOS 8, *)
struct PHAssetMediaSubtype : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS 8, *)
  static var photoPanorama: PHAssetMediaSubtype { get }
  @available(iOS 8, *)
  static var photoHDR: PHAssetMediaSubtype { get }
  @available(iOS 9, *)
  static var photoScreenshot: PHAssetMediaSubtype { get }
  @available(iOS 9.1, *)
  static var photoLive: PHAssetMediaSubtype { get }
  @available(iOS 10.2, *)
  static var photoDepthEffect: PHAssetMediaSubtype { get }
  @available(iOS 8, *)
  static var videoStreamed: PHAssetMediaSubtype { get }
  @available(iOS 8, *)
  static var videoHighFrameRate: PHAssetMediaSubtype { get }
  @available(iOS 8, *)
  static var videoTimelapse: PHAssetMediaSubtype { get }
}
@available(iOS 8, iOS 8, *)
struct PHAssetBurstSelectionType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS 8, *)
  static var autoPick: PHAssetBurstSelectionType { get }
  @available(iOS 8, *)
  static var userPick: PHAssetBurstSelectionType { get }
}
@available(iOS 9, iOS 8, *)
struct PHAssetSourceType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS 8, *)
  static var typeUserLibrary: PHAssetSourceType { get }
  @available(iOS 8, *)
  static var typeCloudShared: PHAssetSourceType { get }
  @available(iOS 8, *)
  static var typeiTunesSynced: PHAssetSourceType { get }
}
@available(iOS 9, iOS 8, *)
enum PHAssetResourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8, *)
  case photo
  @available(iOS 8, *)
  case video
  @available(iOS 8, *)
  case audio
  @available(iOS 8, *)
  case alternatePhoto
  @available(iOS 8, *)
  case fullSizePhoto
  @available(iOS 8, *)
  case fullSizeVideo
  @available(iOS 8, *)
  case adjustmentData
  @available(iOS 8, *)
  case adjustmentBasePhoto
  @available(iOS 9.1, *)
  case pairedVideo
  @available(iOS 10, *)
  case fullSizePairedVideo
  @available(iOS 10, *)
  case adjustmentBasePairedVideo
  @available(iOS 13, *)
  case adjustmentBaseVideo
}
