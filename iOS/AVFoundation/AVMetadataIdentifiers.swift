
struct AVMetadataIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMetadataIdentifier {
  @available(iOS 8.0, *)
  static let commonIdentifierTitle: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierCreator: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierSubject: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierPublisher: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierContributor: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierCreationDate: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierLastModifiedDate: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierType: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierFormat: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierAssetIdentifier: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierSource: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierLanguage: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierRelation: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierLocation: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierCopyrights: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierAlbumName: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierAuthor: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierArtist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierArtwork: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierMake: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierModel: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let commonIdentifierSoftware: AVMetadataIdentifier
  @available(iOS 14.0, *)
  static let commonIdentifierAccessibilityDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataAlbum: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataArranger: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataArtist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataAuthor: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataChapter: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataComment: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataComposer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataCopyright: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataCreationDate: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataDirector: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataDisclaimer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataEncodedBy: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataFullName: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataGenre: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataHostComputer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataInformation: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataKeywords: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataMake: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataModel: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataOriginalArtist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataOriginalFormat: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataOriginalSource: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataPerformers: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataProducer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataPublisher: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataProduct: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataSoftware: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataSpecialPlaybackRequirements: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataTrack: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataWarning: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataWriter: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataURLLink: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataLocationISO6709: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataTrackName: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataCredits: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataPhonogramRights: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeUserDataTaggedCharacteristic: AVMetadataIdentifier
  @available(iOS 14.0, *)
  static let quickTimeUserDataAccessibilityDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let isoUserDataCopyright: AVMetadataIdentifier
  @available(iOS 10.0, *)
  static let isoUserDataDate: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let isoUserDataTaggedCharacteristic: AVMetadataIdentifier
  @available(iOS 14.0, *)
  static let isoUserDataAccessibilityDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataCopyright: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataAuthor: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataPerformer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataGenre: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataRecordingYear: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataLocation: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataTitle: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataCollection: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataUserRating: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataThumbnail: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataAlbumAndTrack: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataKeywordList: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataMediaClassification: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let identifier3GPUserDataMediaRating: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataAuthor: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataComment: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataCopyright: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataCreationDate: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataDirector: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataDisplayName: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataInformation: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataKeywords: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataProducer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataPublisher: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataAlbum: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataArtist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataArtwork: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataSoftware: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataYear: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataGenre: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataiXML: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataLocationISO6709: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataMake: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataModel: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataArranger: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataEncodedBy: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataOriginalArtist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataPerformer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataComposer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataCredits: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataPhonogramRights: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataCameraIdentifier: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataCameraFrameReadoutTime: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataTitle: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataCollectionUser: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataRatingUser: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataLocationName: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataLocationBody: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataLocationNote: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataLocationRole: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataLocationDate: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataDirectionFacing: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataDirectionMotion: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let quickTimeMetadataPreferredAffineTransform: AVMetadataIdentifier
  @available(iOS 9.0, *)
  static let quickTimeMetadataDetectedFace: AVMetadataIdentifier
  @available(iOS 13.0, *)
  static let quickTimeMetadataDetectedHumanBody: AVMetadataIdentifier
  @available(iOS 13.0, *)
  static let quickTimeMetadataDetectedCatBody: AVMetadataIdentifier
  @available(iOS 13.0, *)
  static let quickTimeMetadataDetectedDogBody: AVMetadataIdentifier
  @available(iOS 13.0, *)
  static let quickTimeMetadataDetectedSalientObject: AVMetadataIdentifier
  @available(iOS 9.0, *)
  static let quickTimeMetadataVideoOrientation: AVMetadataIdentifier
  @available(iOS 9.0, *)
  static let quickTimeMetadataContentIdentifier: AVMetadataIdentifier
  @available(iOS 14.0, *)
  static let quickTimeMetadataAccessibilityDescription: AVMetadataIdentifier
  @available(iOS 13.0, *)
  static let quickTimeMetadataAutoLivePhoto: AVMetadataIdentifier
  @available(iOS 13.0, *)
  static let quickTimeMetadataLivePhotoVitalityScore: AVMetadataIdentifier
  @available(iOS 13.0, *)
  static let quickTimeMetadataLivePhotoVitalityScoringVersion: AVMetadataIdentifier
  @available(iOS 13.0, *)
  static let quickTimeMetadataSpatialOverCaptureQualityScore: AVMetadataIdentifier
  @available(iOS 13.0, *)
  static let quickTimeMetadataSpatialOverCaptureQualityScoringVersion: AVMetadataIdentifier
  @available(iOS 14.0, *)
  static let quickTimeMetadataLocationHorizontalAccuracyInMeters: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataAlbum: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataArtist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataUserComment: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataCoverArt: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataCopyright: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataReleaseDate: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataEncodedBy: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataPredefinedGenre: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataUserGenre: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataSongName: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataTrackSubTitle: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataEncodingTool: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataComposer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataAlbumArtist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataAccountKind: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataAppleID: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataArtistID: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataSongID: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataDiscCompilation: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataDiscNumber: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataGenreID: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataGrouping: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataPlaylistID: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataContentRating: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataBeatsPerMin: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataTrackNumber: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataArtDirector: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataArranger: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataAuthor: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataLyrics: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataAcknowledgement: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataConductor: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataDirector: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataEQ: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataLinerNotes: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataRecordCompany: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataOriginalArtist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataPhonogramRights: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataProducer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataPerformer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataPublisher: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataSoundEngineer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataSoloist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataCredits: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataThanks: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataOnlineExtras: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let iTunesMetadataExecProducer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataAudioEncryption: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataAttachedPicture: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataAudioSeekPointIndex: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataComments: AVMetadataIdentifier
  @available(iOS 9.0, *)
  static let id3MetadataCommercial: AVMetadataIdentifier
  @available(iOS, introduced: 8.0, deprecated: 9.0, message: "No longer supported")
  static let id3MetadataCommerical: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataEncryption: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataEqualization: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataEqualization2: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataEventTimingCodes: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataGeneralEncapsulatedObject: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataGroupIdentifier: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataInvolvedPeopleList_v23: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataLink: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataMusicCDIdentifier: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataMPEGLocationLookupTable: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOwnership: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataPrivate: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataPlayCounter: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataPopularimeter: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataPositionSynchronization: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataRecommendedBufferSize: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataRelativeVolumeAdjustment: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataRelativeVolumeAdjustment2: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataReverb: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataSeek: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataSignature: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataSynchronizedLyric: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataSynchronizedTempoCodes: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataAlbumTitle: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataBeatsPerMinute: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataComposer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataContentType: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataCopyright: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataDate: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataEncodingTime: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataPlaylistDelay: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOriginalReleaseTime: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataRecordingTime: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataReleaseTime: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataTaggingTime: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataEncodedBy: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataLyricist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataFileType: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataTime: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataInvolvedPeopleList_v24: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataContentGroupDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataTitleDescription: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataSubTitle: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataInitialKey: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataLanguage: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataLength: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataMusicianCreditsList: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataMediaType: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataMood: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOriginalAlbumTitle: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOriginalFilename: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOriginalLyricist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOriginalArtist: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOriginalReleaseYear: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataFileOwner: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataLeadPerformer: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataBand: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataConductor: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataModifiedBy: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataPartOfASet: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataProducedNotice: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataPublisher: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataTrackNumber: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataRecordingDates: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataInternetRadioStationName: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataInternetRadioStationOwner: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataSize: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataAlbumSortOrder: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataPerformerSortOrder: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataTitleSortOrder: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataInternationalStandardRecordingCode: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataEncodedWith: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataSetSubtitle: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataYear: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataUserText: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataUniqueFileIdentifier: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataTermsOfUse: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataUnsynchronizedLyric: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataCommercialInformation: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataCopyrightInformation: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOfficialAudioFileWebpage: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOfficialArtistWebpage: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOfficialAudioSourceWebpage: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOfficialInternetRadioStationHomepage: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataPayment: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataOfficialPublisherWebpage: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let id3MetadataUserURL: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let icyMetadataStreamTitle: AVMetadataIdentifier
  @available(iOS 8.0, *)
  static let icyMetadataStreamURL: AVMetadataIdentifier
}
