
struct AVMetadataFormat : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct AVMetadataKeySpace : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
struct AVMetadataKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMetadataKeySpace {
  @available(iOS 4.0, *)
  static let common: AVMetadataKeySpace
  @available(iOS 4.0, *)
  static let quickTimeUserData: AVMetadataKeySpace
  @available(iOS 7.0, *)
  static let isoUserData: AVMetadataKeySpace
  @available(iOS 4.0, *)
  static let quickTimeMetadata: AVMetadataKeySpace
  @available(iOS 4.0, *)
  static let iTunes: AVMetadataKeySpace
  @available(iOS 4.0, *)
  static let id3: AVMetadataKeySpace
  @available(iOS 8.0, *)
  static let icy: AVMetadataKeySpace
  @available(iOS 9.3, *)
  static let hlsDateRange: AVMetadataKeySpace
  @available(iOS 11.0, *)
  static let audioFile: AVMetadataKeySpace
}
extension AVMetadataKey {
  @available(iOS 4.0, *)
  static let commonKeyTitle: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyCreator: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeySubject: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyPublisher: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyContributor: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyCreationDate: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyLastModifiedDate: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyType: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyFormat: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyIdentifier: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeySource: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyLanguage: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyRelation: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyLocation: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyCopyrights: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyAlbumName: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyAuthor: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyArtist: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyArtwork: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyMake: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeyModel: AVMetadataKey
  @available(iOS 4.0, *)
  static let commonKeySoftware: AVMetadataKey
  @available(iOS 14.0, *)
  static let commonKeyAccessibilityDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyAlbum: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyArranger: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyArtist: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyAuthor: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyChapter: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyComment: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyComposer: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyCopyright: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyCreationDate: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyDirector: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyDisclaimer: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyEncodedBy: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyFullName: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyGenre: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyHostComputer: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyInformation: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyKeywords: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyMake: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyModel: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyOriginalArtist: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyOriginalFormat: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyOriginalSource: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyPerformers: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyProducer: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyPublisher: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyProduct: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeySoftware: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeySpecialPlaybackRequirements: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyTrack: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyWarning: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyWriter: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyURLLink: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyLocationISO6709: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyTrackName: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyCredits: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeUserDataKeyPhonogramRights: AVMetadataKey
  @available(iOS 5.0, *)
  static let quickTimeUserDataKeyTaggedCharacteristic: AVMetadataKey
  @available(iOS 14.0, *)
  static let quickTimeUserDataKeyAccessibilityDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let isoUserDataKeyCopyright: AVMetadataKey
  @available(iOS 8.0, *)
  static let isoUserDataKeyTaggedCharacteristic: AVMetadataKey
  @available(iOS 10.0, *)
  static let isoUserDataKeyDate: AVMetadataKey
  @available(iOS 14.0, *)
  static let isoUserDataKeyAccessibilityDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let metadata3GPUserDataKeyCopyright: AVMetadataKey
  @available(iOS 4.0, *)
  static let metadata3GPUserDataKeyAuthor: AVMetadataKey
  @available(iOS 4.0, *)
  static let metadata3GPUserDataKeyPerformer: AVMetadataKey
  @available(iOS 4.0, *)
  static let metadata3GPUserDataKeyGenre: AVMetadataKey
  @available(iOS 4.0, *)
  static let metadata3GPUserDataKeyRecordingYear: AVMetadataKey
  @available(iOS 4.0, *)
  static let metadata3GPUserDataKeyLocation: AVMetadataKey
  @available(iOS 4.0, *)
  static let metadata3GPUserDataKeyTitle: AVMetadataKey
  @available(iOS 4.0, *)
  static let metadata3GPUserDataKeyDescription: AVMetadataKey
  @available(iOS 7.0, *)
  static let metadata3GPUserDataKeyCollection: AVMetadataKey
  @available(iOS 7.0, *)
  static let metadata3GPUserDataKeyUserRating: AVMetadataKey
  @available(iOS 7.0, *)
  static let metadata3GPUserDataKeyThumbnail: AVMetadataKey
  @available(iOS 7.0, *)
  static let metadata3GPUserDataKeyAlbumAndTrack: AVMetadataKey
  @available(iOS 7.0, *)
  static let metadata3GPUserDataKeyKeywordList: AVMetadataKey
  @available(iOS 7.0, *)
  static let metadata3GPUserDataKeyMediaClassification: AVMetadataKey
  @available(iOS 7.0, *)
  static let metadata3GPUserDataKeyMediaRating: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyAuthor: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyComment: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyCopyright: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyCreationDate: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyDirector: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyDisplayName: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyInformation: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyKeywords: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyProducer: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyPublisher: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyAlbum: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyArtist: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyArtwork: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeySoftware: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyYear: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyGenre: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyiXML: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyLocationISO6709: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyMake: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyModel: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyArranger: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyEncodedBy: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyOriginalArtist: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyPerformer: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyComposer: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyCredits: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyPhonogramRights: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyCameraIdentifier: AVMetadataKey
  @available(iOS 4.0, *)
  static let quickTimeMetadataKeyCameraFrameReadoutTime: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyTitle: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyCollectionUser: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyRatingUser: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyLocationName: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyLocationBody: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyLocationNote: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyLocationRole: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyLocationDate: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyDirectionFacing: AVMetadataKey
  @available(iOS 4.3, *)
  static let quickTimeMetadataKeyDirectionMotion: AVMetadataKey
  @available(iOS 9.0, *)
  static let quickTimeMetadataKeyContentIdentifier: AVMetadataKey
  @available(iOS 14.0, *)
  static let quickTimeMetadataKeyAccessibilityDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyAlbum: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyArtist: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyUserComment: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyCoverArt: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyCopyright: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyReleaseDate: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyEncodedBy: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyPredefinedGenre: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyUserGenre: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeySongName: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyTrackSubTitle: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyEncodingTool: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyComposer: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyAlbumArtist: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyAccountKind: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyAppleID: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyArtistID: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeySongID: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyDiscCompilation: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyDiscNumber: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyGenreID: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyGrouping: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyPlaylistID: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyContentRating: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyBeatsPerMin: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyTrackNumber: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyArtDirector: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyArranger: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyAuthor: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyLyrics: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyAcknowledgement: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyConductor: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyDirector: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyEQ: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyLinerNotes: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyRecordCompany: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyOriginalArtist: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyPhonogramRights: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyProducer: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyPerformer: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyPublisher: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeySoundEngineer: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeySoloist: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyCredits: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyThanks: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyOnlineExtras: AVMetadataKey
  @available(iOS 4.0, *)
  static let iTunesMetadataKeyExecProducer: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyAudioEncryption: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyAttachedPicture: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyAudioSeekPointIndex: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyComments: AVMetadataKey
  @available(iOS 9.0, *)
  static let id3MetadataKeyCommercial: AVMetadataKey
  @available(iOS, introduced: 4.0, deprecated: 9.0, message: "No longer supported")
  static let id3MetadataKeyCommerical: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyEncryption: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyEqualization: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyEqualization2: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyEventTimingCodes: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyGeneralEncapsulatedObject: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyGroupIdentifier: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyInvolvedPeopleList_v23: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyLink: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyMusicCDIdentifier: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyMPEGLocationLookupTable: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOwnership: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyPrivate: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyPlayCounter: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyPopularimeter: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyPositionSynchronization: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyRecommendedBufferSize: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyRelativeVolumeAdjustment: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyRelativeVolumeAdjustment2: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyReverb: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeySeek: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeySignature: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeySynchronizedLyric: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeySynchronizedTempoCodes: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyAlbumTitle: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyBeatsPerMinute: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyComposer: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyContentType: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyCopyright: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyDate: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyEncodingTime: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyPlaylistDelay: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOriginalReleaseTime: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyRecordingTime: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyReleaseTime: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyTaggingTime: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyEncodedBy: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyLyricist: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyFileType: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyTime: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyInvolvedPeopleList_v24: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyContentGroupDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyTitleDescription: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeySubTitle: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyInitialKey: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyLanguage: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyLength: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyMusicianCreditsList: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyMediaType: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyMood: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOriginalAlbumTitle: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOriginalFilename: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOriginalLyricist: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOriginalArtist: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOriginalReleaseYear: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyFileOwner: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyLeadPerformer: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyBand: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyConductor: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyModifiedBy: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyPartOfASet: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyProducedNotice: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyPublisher: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyTrackNumber: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyRecordingDates: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyInternetRadioStationName: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyInternetRadioStationOwner: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeySize: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyAlbumSortOrder: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyPerformerSortOrder: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyTitleSortOrder: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyInternationalStandardRecordingCode: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyEncodedWith: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeySetSubtitle: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyYear: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyUserText: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyUniqueFileIdentifier: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyTermsOfUse: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyUnsynchronizedLyric: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyCommercialInformation: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyCopyrightInformation: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOfficialAudioFileWebpage: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOfficialArtistWebpage: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOfficialAudioSourceWebpage: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOfficialInternetRadioStationHomepage: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyPayment: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyOfficialPublisherWebpage: AVMetadataKey
  @available(iOS 4.0, *)
  static let id3MetadataKeyUserURL: AVMetadataKey
  @available(iOS 8.0, *)
  static let icyMetadataKeyStreamTitle: AVMetadataKey
  @available(iOS 8.0, *)
  static let icyMetadataKeyStreamURL: AVMetadataKey
}
extension AVMetadataFormat {
  @available(iOS 4.0, *)
  static let quickTimeUserData: AVMetadataFormat
  @available(iOS 7.0, *)
  static let isoUserData: AVMetadataFormat
  @available(iOS 4.0, *)
  static let quickTimeMetadata: AVMetadataFormat
  @available(iOS 4.0, *)
  static let iTunesMetadata: AVMetadataFormat
  @available(iOS 4.0, *)
  static let id3Metadata: AVMetadataFormat
  @available(iOS 8.0, *)
  static let hlsMetadata: AVMetadataFormat
  @available(iOS 11.0, *)
  static let unknown: AVMetadataFormat
}
struct AVMetadataExtraAttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMetadataExtraAttributeKey {
  @available(iOS 8.0, *)
  static let valueURI: AVMetadataExtraAttributeKey
  @available(iOS 8.0, *)
  static let baseURI: AVMetadataExtraAttributeKey
  @available(iOS 9.0, *)
  static let info: AVMetadataExtraAttributeKey
}
