
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
struct MLMediaSourceType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  static var audio: MLMediaSourceType { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  static var image: MLMediaSourceType { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  static var movie: MLMediaSourceType { get }
}
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
enum MLMediaType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  case audio
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  case image
  @available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
  case movie
}
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLFolderRootGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLFolderGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesRootGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesPurchasedPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesPodcastPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesVideoPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesSmartPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesFolderPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesMoviesPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesTVShowsPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesAudioBooksPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesMusicPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesMusicVideosPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesGeniusPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesSavedGeniusPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiTunesiTunesUPlaylistTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosRootGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosSharedGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosAlbumsGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosAlbumTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosFolderTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosSmartAlbumTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosPublishedAlbumTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "No longer supported")
let MLPhotosAllMomentsGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "No longer supported")
let MLPhotosMomentGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "No longer supported")
let MLPhotosAllCollectionsGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "No longer supported")
let MLPhotosCollectionGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "No longer supported")
let MLPhotosAllYearsGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "No longer supported")
let MLPhotosYearGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosLastImportGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosMyPhotoStreamTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosSharedPhotoStreamTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosFavoritesGroupTypeIdentifier: String
@available(macOS, introduced: 10.11, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosFrontCameraGroupTypeIdentifier: String
@available(macOS, introduced: 10.13, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosLivePhotosGroupTypeIdentifier: String
@available(macOS, introduced: 10.13, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosLongExposureGroupTypeIdentifier: String
@available(macOS, introduced: 10.13, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosAnimatedGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosPanoramasGroupTypeIdentifier: String
@available(macOS, introduced: 10.10, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosVideosGroupTypeIdentifier: String
@available(macOS, introduced: 10.10.3, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosSloMoGroupTypeIdentifier: String
@available(macOS, introduced: 10.12.1, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosDepthEffectGroupTypeIdentifier: String
@available(macOS, introduced: 10.10.3, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosTimelapseGroupTypeIdentifier: String
@available(macOS, introduced: 10.10.3, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosBurstGroupTypeIdentifier: String
@available(macOS, introduced: 10.11, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosScreenshotGroupTypeIdentifier: String
@available(macOS, introduced: 10.10.3, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosFacesAlbumTypeIdentifier: String
@available(macOS, introduced: 10.10.3, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLPhotosAllPhotosAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoRootGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoLibraryAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoEventsFolderTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoSmartAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoEventAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoLastImportAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoLastNMonthsAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoFlaggedAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoFolderAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoSubscribedAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoFacesAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoPlacesAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoPlacesCountryAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoPlacesProvinceAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoPlacesCityAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoPlacesPointOfInterestAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoFacebookAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoFlickrAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoFacebookGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoFlickrGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoSlideShowAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoLastViewedEventAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiPhotoPhotoStreamAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureRootGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureUserAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureUserSmartAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureProjectAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureFolderAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureProjectFolderAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureLightTableTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureFlickrGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureFlickrAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureFacebookGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureFacebookAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureSmugMugGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureSmugMugAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureSlideShowTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureAllPhotosTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureFlaggedTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureAllProjectsTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureFacesAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLAperturePlacesAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLAperturePlacesCountryAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLAperturePlacesProvinceAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLAperturePlacesCityAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLAperturePlacesPointOfInterestAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureLastImportAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureLastNMonthsAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLApertureLastViewedEventAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLAperturePhotoStreamAlbumTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLGarageBandRootGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLGarageBandFolderGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLLogicRootGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLLogicBouncesGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLLogicProjectsGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLLogicProjectTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiMovieRootGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiMovieEventGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiMovieProjectGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiMovieEventLibraryGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiMovieEventCalendarGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLiMovieFolderGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLFinalCutRootGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLFinalCutEventGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLFinalCutProjectGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLFinalCutEventLibraryGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLFinalCutEventCalendarGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLFinalCutFolderGroupTypeIdentifier: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectDurationKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectArtistKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectAlbumKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectGenreKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectKindKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectTrackNumberKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectBitRateKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectSampleRateKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectChannelCountKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectResolutionStringKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectCommentsKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectKeywordsKey: String
@available(macOS, introduced: 10.9, deprecated: 10.15, message: "MediaLibrary.framework will be removed in a future OS version. Use Photos.framework or iTunesLibrary.framework instead.")
let MLMediaObjectProtectedKey: String
