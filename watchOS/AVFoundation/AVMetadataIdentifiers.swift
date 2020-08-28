
struct AVMetadataIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMetadataIdentifier {
  @available(watchOS 1.0, *)
  static let commonIdentifierTitle: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierCreator: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierSubject: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierPublisher: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierContributor: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierCreationDate: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierLastModifiedDate: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierType: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierFormat: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierAssetIdentifier: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierSource: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierLanguage: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierRelation: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierLocation: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierCopyrights: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierAlbumName: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierAuthor: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierArtist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierArtwork: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierMake: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierModel: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let commonIdentifierSoftware: AVMetadataIdentifier
  @available(watchOS 7.0, *)
  static let commonIdentifierAccessibilityDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataAlbum: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataArranger: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataArtist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataAuthor: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataChapter: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataComment: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataComposer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataCopyright: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataCreationDate: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataDirector: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataDisclaimer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataEncodedBy: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataFullName: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataGenre: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataHostComputer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataInformation: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeywords: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataMake: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataModel: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataOriginalArtist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataOriginalFormat: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataOriginalSource: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataPerformers: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataProducer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataPublisher: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataProduct: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataSoftware: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataSpecialPlaybackRequirements: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataTrack: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataWarning: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataWriter: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataURLLink: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataLocationISO6709: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataTrackName: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataCredits: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataPhonogramRights: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeUserDataTaggedCharacteristic: AVMetadataIdentifier
  @available(watchOS 7.0, *)
  static let quickTimeUserDataAccessibilityDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let isoUserDataCopyright: AVMetadataIdentifier
  @available(watchOS 3.0, *)
  static let isoUserDataDate: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let isoUserDataTaggedCharacteristic: AVMetadataIdentifier
  @available(watchOS 7.0, *)
  static let isoUserDataAccessibilityDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataCopyright: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataAuthor: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataPerformer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataGenre: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataRecordingYear: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataLocation: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataTitle: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataCollection: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataUserRating: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataThumbnail: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataAlbumAndTrack: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataKeywordList: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataMediaClassification: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let identifier3GPUserDataMediaRating: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataAuthor: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataComment: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataCopyright: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataCreationDate: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataDirector: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataDisplayName: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataInformation: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeywords: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataProducer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataPublisher: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataAlbum: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataArtist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataArtwork: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataSoftware: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataYear: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataGenre: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataiXML: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataLocationISO6709: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataMake: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataModel: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataArranger: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataEncodedBy: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataOriginalArtist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataPerformer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataComposer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataCredits: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataPhonogramRights: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataCameraIdentifier: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataCameraFrameReadoutTime: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataTitle: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataCollectionUser: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataRatingUser: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataLocationName: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataLocationBody: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataLocationNote: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataLocationRole: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataLocationDate: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataDirectionFacing: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataDirectionMotion: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let quickTimeMetadataPreferredAffineTransform: AVMetadataIdentifier
  @available(watchOS 2.0, *)
  static let quickTimeMetadataDetectedFace: AVMetadataIdentifier
  @available(watchOS 6.0, *)
  static let quickTimeMetadataDetectedHumanBody: AVMetadataIdentifier
  @available(watchOS 6.0, *)
  static let quickTimeMetadataDetectedCatBody: AVMetadataIdentifier
  @available(watchOS 6.0, *)
  static let quickTimeMetadataDetectedDogBody: AVMetadataIdentifier
  @available(watchOS 6.0, *)
  static let quickTimeMetadataDetectedSalientObject: AVMetadataIdentifier
  @available(watchOS 2.0, *)
  static let quickTimeMetadataVideoOrientation: AVMetadataIdentifier
  @available(watchOS 2.0, *)
  static let quickTimeMetadataContentIdentifier: AVMetadataIdentifier
  @available(watchOS 7.0, *)
  static let quickTimeMetadataAccessibilityDescription: AVMetadataIdentifier
  @available(watchOS 6.0, *)
  static let quickTimeMetadataAutoLivePhoto: AVMetadataIdentifier
  @available(watchOS 6.0, *)
  static let quickTimeMetadataLivePhotoVitalityScore: AVMetadataIdentifier
  @available(watchOS 6.0, *)
  static let quickTimeMetadataLivePhotoVitalityScoringVersion: AVMetadataIdentifier
  @available(watchOS 6.0, *)
  static let quickTimeMetadataSpatialOverCaptureQualityScore: AVMetadataIdentifier
  @available(watchOS 6.0, *)
  static let quickTimeMetadataSpatialOverCaptureQualityScoringVersion: AVMetadataIdentifier
  @available(watchOS 7.0, *)
  static let quickTimeMetadataLocationHorizontalAccuracyInMeters: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataAlbum: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataArtist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataUserComment: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataCoverArt: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataCopyright: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataReleaseDate: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataEncodedBy: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataPredefinedGenre: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataUserGenre: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataSongName: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataTrackSubTitle: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataEncodingTool: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataComposer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataAlbumArtist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataAccountKind: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataAppleID: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataArtistID: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataSongID: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataDiscCompilation: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataDiscNumber: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataGenreID: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataGrouping: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataPlaylistID: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataContentRating: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataBeatsPerMin: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataTrackNumber: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataArtDirector: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataArranger: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataAuthor: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataLyrics: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataAcknowledgement: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataConductor: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataDirector: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataEQ: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataLinerNotes: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataRecordCompany: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataOriginalArtist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataPhonogramRights: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataProducer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataPerformer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataPublisher: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataSoundEngineer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataSoloist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataCredits: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataThanks: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataOnlineExtras: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let iTunesMetadataExecProducer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataAudioEncryption: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataAttachedPicture: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataAudioSeekPointIndex: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataComments: AVMetadataIdentifier
  @available(watchOS 2.0, *)
  static let id3MetadataCommercial: AVMetadataIdentifier
  @available(watchOS, introduced: 1.0, deprecated: 1.0, message: "No longer supported")
  static let id3MetadataCommerical: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataEncryption: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataEqualization: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataEqualization2: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataEventTimingCodes: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataGeneralEncapsulatedObject: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataGroupIdentifier: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataInvolvedPeopleList_v23: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataLink: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataMusicCDIdentifier: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataMPEGLocationLookupTable: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOwnership: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataPrivate: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataPlayCounter: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataPopularimeter: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataPositionSynchronization: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataRecommendedBufferSize: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataRelativeVolumeAdjustment: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataRelativeVolumeAdjustment2: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataReverb: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataSeek: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataSignature: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataSynchronizedLyric: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataSynchronizedTempoCodes: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataAlbumTitle: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataBeatsPerMinute: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataComposer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataContentType: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataCopyright: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataDate: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataEncodingTime: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataPlaylistDelay: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOriginalReleaseTime: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataRecordingTime: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataReleaseTime: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataTaggingTime: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataEncodedBy: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataLyricist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataFileType: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataTime: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataInvolvedPeopleList_v24: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataContentGroupDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataTitleDescription: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataSubTitle: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataInitialKey: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataLanguage: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataLength: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataMusicianCreditsList: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataMediaType: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataMood: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOriginalAlbumTitle: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOriginalFilename: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOriginalLyricist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOriginalArtist: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOriginalReleaseYear: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataFileOwner: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataLeadPerformer: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataBand: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataConductor: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataModifiedBy: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataPartOfASet: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataProducedNotice: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataPublisher: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataTrackNumber: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataRecordingDates: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataInternetRadioStationName: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataInternetRadioStationOwner: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataSize: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataAlbumSortOrder: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataPerformerSortOrder: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataTitleSortOrder: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataInternationalStandardRecordingCode: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataEncodedWith: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataSetSubtitle: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataYear: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataUserText: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataUniqueFileIdentifier: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataTermsOfUse: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataUnsynchronizedLyric: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataCommercialInformation: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataCopyrightInformation: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOfficialAudioFileWebpage: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOfficialArtistWebpage: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOfficialAudioSourceWebpage: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOfficialInternetRadioStationHomepage: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataPayment: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataOfficialPublisherWebpage: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let id3MetadataUserURL: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let icyMetadataStreamTitle: AVMetadataIdentifier
  @available(watchOS 1.0, *)
  static let icyMetadataStreamURL: AVMetadataIdentifier
}
