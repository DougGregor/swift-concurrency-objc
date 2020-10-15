
struct AVMetadataIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMetadataIdentifier {
  @available(tvOS 9.0, *)
  static let commonIdentifierTitle: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierCreator: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierSubject: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierPublisher: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierContributor: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierCreationDate: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierLastModifiedDate: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierType: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierFormat: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierAssetIdentifier: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierSource: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierLanguage: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierRelation: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierLocation: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierCopyrights: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierAlbumName: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierAuthor: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierArtist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierArtwork: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierMake: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierModel: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let commonIdentifierSoftware: AVMetadataIdentifier
  @available(tvOS 14.0, *)
  static let commonIdentifierAccessibilityDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataAlbum: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataArranger: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataArtist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataAuthor: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataChapter: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataComment: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataComposer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataCopyright: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataCreationDate: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataDirector: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataDisclaimer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataEncodedBy: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataFullName: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataGenre: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataHostComputer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataInformation: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeywords: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataMake: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataModel: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataOriginalArtist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataOriginalFormat: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataOriginalSource: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataPerformers: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataProducer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataPublisher: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataProduct: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataSoftware: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataSpecialPlaybackRequirements: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataTrack: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataWarning: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataWriter: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataURLLink: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataLocationISO6709: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataTrackName: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataCredits: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataPhonogramRights: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeUserDataTaggedCharacteristic: AVMetadataIdentifier
  @available(tvOS 14.0, *)
  static let quickTimeUserDataAccessibilityDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let isoUserDataCopyright: AVMetadataIdentifier
  @available(tvOS 10.0, *)
  static let isoUserDataDate: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let isoUserDataTaggedCharacteristic: AVMetadataIdentifier
  @available(tvOS 14.0, *)
  static let isoUserDataAccessibilityDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataCopyright: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataAuthor: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataPerformer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataGenre: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataRecordingYear: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataLocation: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataTitle: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataCollection: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataUserRating: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataThumbnail: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataAlbumAndTrack: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataKeywordList: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataMediaClassification: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let identifier3GPUserDataMediaRating: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataAuthor: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataComment: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataCopyright: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataCreationDate: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataDirector: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataDisplayName: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataInformation: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeywords: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataProducer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataPublisher: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataAlbum: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataArtist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataArtwork: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataSoftware: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataYear: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataGenre: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataiXML: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataLocationISO6709: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataMake: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataModel: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataArranger: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataEncodedBy: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataOriginalArtist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataPerformer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataComposer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataCredits: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataPhonogramRights: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataCameraIdentifier: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataCameraFrameReadoutTime: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataTitle: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataCollectionUser: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataRatingUser: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataLocationName: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataLocationBody: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataLocationNote: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataLocationRole: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataLocationDate: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataDirectionFacing: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataDirectionMotion: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataPreferredAffineTransform: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataDetectedFace: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataVideoOrientation: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let quickTimeMetadataContentIdentifier: AVMetadataIdentifier
  @available(tvOS 14.0, *)
  static let quickTimeMetadataAccessibilityDescription: AVMetadataIdentifier
  @available(tvOS 13.0, *)
  static let quickTimeMetadataAutoLivePhoto: AVMetadataIdentifier
  @available(tvOS 13.0, *)
  static let quickTimeMetadataLivePhotoVitalityScore: AVMetadataIdentifier
  @available(tvOS 13.0, *)
  static let quickTimeMetadataLivePhotoVitalityScoringVersion: AVMetadataIdentifier
  @available(tvOS 13.0, *)
  static let quickTimeMetadataSpatialOverCaptureQualityScore: AVMetadataIdentifier
  @available(tvOS 13.0, *)
  static let quickTimeMetadataSpatialOverCaptureQualityScoringVersion: AVMetadataIdentifier
  @available(tvOS 14.0, *)
  static let quickTimeMetadataLocationHorizontalAccuracyInMeters: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataAlbum: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataArtist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataUserComment: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataCoverArt: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataCopyright: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataReleaseDate: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataEncodedBy: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataPredefinedGenre: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataUserGenre: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataSongName: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataTrackSubTitle: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataEncodingTool: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataComposer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataAlbumArtist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataAccountKind: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataAppleID: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataArtistID: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataSongID: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataDiscCompilation: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataDiscNumber: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataGenreID: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataGrouping: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataPlaylistID: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataContentRating: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataBeatsPerMin: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataTrackNumber: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataArtDirector: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataArranger: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataAuthor: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataLyrics: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataAcknowledgement: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataConductor: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataDirector: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataEQ: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataLinerNotes: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataRecordCompany: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataOriginalArtist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataPhonogramRights: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataProducer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataPerformer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataPublisher: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataSoundEngineer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataSoloist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataCredits: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataThanks: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataOnlineExtras: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let iTunesMetadataExecProducer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataAudioEncryption: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataAttachedPicture: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataAudioSeekPointIndex: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataComments: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataCommercial: AVMetadataIdentifier
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "No longer supported")
  static let id3MetadataCommerical: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataEncryption: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataEqualization: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataEqualization2: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataEventTimingCodes: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataGeneralEncapsulatedObject: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataGroupIdentifier: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataInvolvedPeopleList_v23: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataLink: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataMusicCDIdentifier: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataMPEGLocationLookupTable: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOwnership: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataPrivate: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataPlayCounter: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataPopularimeter: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataPositionSynchronization: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataRecommendedBufferSize: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataRelativeVolumeAdjustment: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataRelativeVolumeAdjustment2: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataReverb: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataSeek: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataSignature: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataSynchronizedLyric: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataSynchronizedTempoCodes: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataAlbumTitle: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataBeatsPerMinute: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataComposer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataContentType: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataCopyright: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataDate: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataEncodingTime: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataPlaylistDelay: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOriginalReleaseTime: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataRecordingTime: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataReleaseTime: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataTaggingTime: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataEncodedBy: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataLyricist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataFileType: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataTime: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataInvolvedPeopleList_v24: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataContentGroupDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataTitleDescription: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataSubTitle: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataInitialKey: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataLanguage: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataLength: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataMusicianCreditsList: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataMediaType: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataMood: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOriginalAlbumTitle: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOriginalFilename: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOriginalLyricist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOriginalArtist: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOriginalReleaseYear: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataFileOwner: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataLeadPerformer: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataBand: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataConductor: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataModifiedBy: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataPartOfASet: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataProducedNotice: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataPublisher: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataTrackNumber: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataRecordingDates: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataInternetRadioStationName: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataInternetRadioStationOwner: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataSize: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataAlbumSortOrder: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataPerformerSortOrder: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataTitleSortOrder: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataInternationalStandardRecordingCode: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataEncodedWith: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataSetSubtitle: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataYear: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataUserText: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataUniqueFileIdentifier: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataTermsOfUse: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataUnsynchronizedLyric: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataCommercialInformation: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataCopyrightInformation: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOfficialAudioFileWebpage: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOfficialArtistWebpage: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOfficialAudioSourceWebpage: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOfficialInternetRadioStationHomepage: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataPayment: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataOfficialPublisherWebpage: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let id3MetadataUserURL: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let icyMetadataStreamTitle: AVMetadataIdentifier
  @available(tvOS 9.0, *)
  static let icyMetadataStreamURL: AVMetadataIdentifier
}
