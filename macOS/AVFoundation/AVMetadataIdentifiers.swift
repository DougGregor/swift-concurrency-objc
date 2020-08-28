
struct AVMetadataIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMetadataIdentifier {
  @available(macOS 10.10, *)
  static let commonIdentifierTitle: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierCreator: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierSubject: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierPublisher: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierContributor: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierCreationDate: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierLastModifiedDate: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierType: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierFormat: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierAssetIdentifier: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierSource: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierLanguage: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierRelation: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierLocation: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierCopyrights: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierAlbumName: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierAuthor: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierArtist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierArtwork: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierMake: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierModel: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let commonIdentifierSoftware: AVMetadataIdentifier
  @available(macOS 11.0, *)
  static let commonIdentifierAccessibilityDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataAlbum: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataArranger: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataArtist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataAuthor: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataChapter: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataComment: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataComposer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataCopyright: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataCreationDate: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataDirector: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataDisclaimer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataEncodedBy: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataFullName: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataGenre: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataHostComputer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataInformation: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataKeywords: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataMake: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataModel: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataOriginalArtist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataOriginalFormat: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataOriginalSource: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataPerformers: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataProducer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataPublisher: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataProduct: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataSoftware: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataSpecialPlaybackRequirements: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataTrack: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataWarning: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataWriter: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataURLLink: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataLocationISO6709: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataTrackName: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataCredits: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataPhonogramRights: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeUserDataTaggedCharacteristic: AVMetadataIdentifier
  @available(macOS 11.0, *)
  static let quickTimeUserDataAccessibilityDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let isoUserDataCopyright: AVMetadataIdentifier
  @available(macOS 10.12, *)
  static let isoUserDataDate: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let isoUserDataTaggedCharacteristic: AVMetadataIdentifier
  @available(macOS 11.0, *)
  static let isoUserDataAccessibilityDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataCopyright: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataAuthor: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataPerformer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataGenre: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataRecordingYear: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataLocation: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataTitle: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataCollection: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataUserRating: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataThumbnail: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataAlbumAndTrack: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataKeywordList: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataMediaClassification: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let identifier3GPUserDataMediaRating: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataAuthor: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataComment: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataCopyright: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataCreationDate: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataDirector: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataDisplayName: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataInformation: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataKeywords: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataProducer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataPublisher: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataAlbum: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataArtist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataArtwork: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataSoftware: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataYear: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataGenre: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataiXML: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataLocationISO6709: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataMake: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataModel: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataArranger: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataEncodedBy: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataOriginalArtist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataPerformer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataComposer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataCredits: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataPhonogramRights: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataCameraIdentifier: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataCameraFrameReadoutTime: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataTitle: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataCollectionUser: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataRatingUser: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataLocationName: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataLocationBody: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataLocationNote: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataLocationRole: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataLocationDate: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataDirectionFacing: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataDirectionMotion: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let quickTimeMetadataPreferredAffineTransform: AVMetadataIdentifier
  @available(macOS 10.11, *)
  static let quickTimeMetadataDetectedFace: AVMetadataIdentifier
  @available(macOS 10.15, *)
  static let quickTimeMetadataDetectedHumanBody: AVMetadataIdentifier
  @available(macOS 10.15, *)
  static let quickTimeMetadataDetectedCatBody: AVMetadataIdentifier
  @available(macOS 10.15, *)
  static let quickTimeMetadataDetectedDogBody: AVMetadataIdentifier
  @available(macOS 10.15, *)
  static let quickTimeMetadataDetectedSalientObject: AVMetadataIdentifier
  @available(macOS 10.11, *)
  static let quickTimeMetadataVideoOrientation: AVMetadataIdentifier
  @available(macOS 10.11, *)
  static let quickTimeMetadataContentIdentifier: AVMetadataIdentifier
  @available(macOS 11.0, *)
  static let quickTimeMetadataAccessibilityDescription: AVMetadataIdentifier
  @available(macOS 10.15, *)
  static let quickTimeMetadataAutoLivePhoto: AVMetadataIdentifier
  @available(macOS 10.15, *)
  static let quickTimeMetadataLivePhotoVitalityScore: AVMetadataIdentifier
  @available(macOS 10.15, *)
  static let quickTimeMetadataLivePhotoVitalityScoringVersion: AVMetadataIdentifier
  @available(macOS 10.15, *)
  static let quickTimeMetadataSpatialOverCaptureQualityScore: AVMetadataIdentifier
  @available(macOS 10.15, *)
  static let quickTimeMetadataSpatialOverCaptureQualityScoringVersion: AVMetadataIdentifier
  @available(macOS 11.0, *)
  static let quickTimeMetadataLocationHorizontalAccuracyInMeters: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataAlbum: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataArtist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataUserComment: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataCoverArt: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataCopyright: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataReleaseDate: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataEncodedBy: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataPredefinedGenre: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataUserGenre: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataSongName: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataTrackSubTitle: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataEncodingTool: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataComposer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataAlbumArtist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataAccountKind: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataAppleID: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataArtistID: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataSongID: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataDiscCompilation: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataDiscNumber: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataGenreID: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataGrouping: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataPlaylistID: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataContentRating: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataBeatsPerMin: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataTrackNumber: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataArtDirector: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataArranger: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataAuthor: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataLyrics: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataAcknowledgement: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataConductor: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataDirector: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataEQ: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataLinerNotes: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataRecordCompany: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataOriginalArtist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataPhonogramRights: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataProducer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataPerformer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataPublisher: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataSoundEngineer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataSoloist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataCredits: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataThanks: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataOnlineExtras: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let iTunesMetadataExecProducer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataAudioEncryption: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataAttachedPicture: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataAudioSeekPointIndex: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataComments: AVMetadataIdentifier
  @available(macOS 10.11, *)
  static let id3MetadataCommercial: AVMetadataIdentifier
  @available(macOS, introduced: 10.10, deprecated: 10.11, message: "No longer supported")
  static let id3MetadataCommerical: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataEncryption: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataEqualization: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataEqualization2: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataEventTimingCodes: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataGeneralEncapsulatedObject: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataGroupIdentifier: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataInvolvedPeopleList_v23: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataLink: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataMusicCDIdentifier: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataMPEGLocationLookupTable: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOwnership: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataPrivate: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataPlayCounter: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataPopularimeter: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataPositionSynchronization: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataRecommendedBufferSize: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataRelativeVolumeAdjustment: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataRelativeVolumeAdjustment2: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataReverb: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataSeek: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataSignature: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataSynchronizedLyric: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataSynchronizedTempoCodes: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataAlbumTitle: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataBeatsPerMinute: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataComposer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataContentType: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataCopyright: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataDate: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataEncodingTime: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataPlaylistDelay: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOriginalReleaseTime: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataRecordingTime: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataReleaseTime: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataTaggingTime: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataEncodedBy: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataLyricist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataFileType: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataTime: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataInvolvedPeopleList_v24: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataContentGroupDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataTitleDescription: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataSubTitle: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataInitialKey: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataLanguage: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataLength: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataMusicianCreditsList: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataMediaType: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataMood: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOriginalAlbumTitle: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOriginalFilename: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOriginalLyricist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOriginalArtist: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOriginalReleaseYear: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataFileOwner: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataLeadPerformer: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataBand: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataConductor: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataModifiedBy: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataPartOfASet: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataProducedNotice: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataPublisher: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataTrackNumber: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataRecordingDates: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataInternetRadioStationName: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataInternetRadioStationOwner: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataSize: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataAlbumSortOrder: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataPerformerSortOrder: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataTitleSortOrder: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataInternationalStandardRecordingCode: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataEncodedWith: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataSetSubtitle: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataYear: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataUserText: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataUniqueFileIdentifier: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataTermsOfUse: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataUnsynchronizedLyric: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataCommercialInformation: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataCopyrightInformation: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOfficialAudioFileWebpage: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOfficialArtistWebpage: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOfficialAudioSourceWebpage: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOfficialInternetRadioStationHomepage: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataPayment: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataOfficialPublisherWebpage: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let id3MetadataUserURL: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let icyMetadataStreamTitle: AVMetadataIdentifier
  @available(macOS 10.10, *)
  static let icyMetadataStreamURL: AVMetadataIdentifier
}
