
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
  @available(macOS 10.7, *)
  static let common: AVMetadataKeySpace
  @available(macOS 10.7, *)
  static let quickTimeUserData: AVMetadataKeySpace
  @available(macOS 10.9, *)
  static let isoUserData: AVMetadataKeySpace
  @available(macOS 10.7, *)
  static let quickTimeMetadata: AVMetadataKeySpace
  @available(macOS 10.7, *)
  static let iTunes: AVMetadataKeySpace
  @available(macOS 10.7, *)
  static let id3: AVMetadataKeySpace
  @available(macOS 10.10, *)
  static let icy: AVMetadataKeySpace
  @available(macOS 10.11.3, *)
  static let hlsDateRange: AVMetadataKeySpace
  @available(macOS 10.13, *)
  static let audioFile: AVMetadataKeySpace
}
extension AVMetadataKey {
  @available(macOS 10.7, *)
  static let commonKeyTitle: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyCreator: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeySubject: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyPublisher: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyContributor: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyCreationDate: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyLastModifiedDate: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyType: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyFormat: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyIdentifier: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeySource: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyLanguage: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyRelation: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyLocation: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyCopyrights: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyAlbumName: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyAuthor: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyArtist: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyArtwork: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyMake: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeyModel: AVMetadataKey
  @available(macOS 10.7, *)
  static let commonKeySoftware: AVMetadataKey
  @available(macOS 11.0, *)
  static let commonKeyAccessibilityDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyAlbum: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyArranger: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyArtist: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyAuthor: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyChapter: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyComment: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyComposer: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyCopyright: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyCreationDate: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyDirector: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyDisclaimer: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyEncodedBy: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyFullName: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyGenre: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyHostComputer: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyInformation: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyKeywords: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyMake: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyModel: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyOriginalArtist: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyOriginalFormat: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyOriginalSource: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyPerformers: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyProducer: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyPublisher: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyProduct: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeySoftware: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeySpecialPlaybackRequirements: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyTrack: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyWarning: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyWriter: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyURLLink: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyLocationISO6709: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyTrackName: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyCredits: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeUserDataKeyPhonogramRights: AVMetadataKey
  @available(macOS 10.8, *)
  static let quickTimeUserDataKeyTaggedCharacteristic: AVMetadataKey
  @available(macOS 11.0, *)
  static let quickTimeUserDataKeyAccessibilityDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let isoUserDataKeyCopyright: AVMetadataKey
  @available(macOS 10.10, *)
  static let isoUserDataKeyTaggedCharacteristic: AVMetadataKey
  @available(macOS 10.12, *)
  static let isoUserDataKeyDate: AVMetadataKey
  @available(macOS 11.0, *)
  static let isoUserDataKeyAccessibilityDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let metadata3GPUserDataKeyCopyright: AVMetadataKey
  @available(macOS 10.7, *)
  static let metadata3GPUserDataKeyAuthor: AVMetadataKey
  @available(macOS 10.7, *)
  static let metadata3GPUserDataKeyPerformer: AVMetadataKey
  @available(macOS 10.7, *)
  static let metadata3GPUserDataKeyGenre: AVMetadataKey
  @available(macOS 10.7, *)
  static let metadata3GPUserDataKeyRecordingYear: AVMetadataKey
  @available(macOS 10.7, *)
  static let metadata3GPUserDataKeyLocation: AVMetadataKey
  @available(macOS 10.7, *)
  static let metadata3GPUserDataKeyTitle: AVMetadataKey
  @available(macOS 10.7, *)
  static let metadata3GPUserDataKeyDescription: AVMetadataKey
  @available(macOS 10.9, *)
  static let metadata3GPUserDataKeyCollection: AVMetadataKey
  @available(macOS 10.9, *)
  static let metadata3GPUserDataKeyUserRating: AVMetadataKey
  @available(macOS 10.9, *)
  static let metadata3GPUserDataKeyThumbnail: AVMetadataKey
  @available(macOS 10.9, *)
  static let metadata3GPUserDataKeyAlbumAndTrack: AVMetadataKey
  @available(macOS 10.9, *)
  static let metadata3GPUserDataKeyKeywordList: AVMetadataKey
  @available(macOS 10.9, *)
  static let metadata3GPUserDataKeyMediaClassification: AVMetadataKey
  @available(macOS 10.9, *)
  static let metadata3GPUserDataKeyMediaRating: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyAuthor: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyComment: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyCopyright: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyCreationDate: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyDirector: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyDisplayName: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyInformation: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyKeywords: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyProducer: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyPublisher: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyAlbum: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyArtist: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyArtwork: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeySoftware: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyYear: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyGenre: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyiXML: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyLocationISO6709: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyMake: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyModel: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyArranger: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyEncodedBy: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyOriginalArtist: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyPerformer: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyComposer: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyCredits: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyPhonogramRights: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyCameraIdentifier: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyCameraFrameReadoutTime: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyTitle: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyCollectionUser: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyRatingUser: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyLocationName: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyLocationBody: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyLocationNote: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyLocationRole: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyLocationDate: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyDirectionFacing: AVMetadataKey
  @available(macOS 10.7, *)
  static let quickTimeMetadataKeyDirectionMotion: AVMetadataKey
  @available(macOS 10.11, *)
  static let quickTimeMetadataKeyContentIdentifier: AVMetadataKey
  @available(macOS 11.0, *)
  static let quickTimeMetadataKeyAccessibilityDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyAlbum: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyArtist: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyUserComment: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyCoverArt: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyCopyright: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyReleaseDate: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyEncodedBy: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyPredefinedGenre: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyUserGenre: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeySongName: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyTrackSubTitle: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyEncodingTool: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyComposer: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyAlbumArtist: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyAccountKind: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyAppleID: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyArtistID: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeySongID: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyDiscCompilation: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyDiscNumber: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyGenreID: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyGrouping: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyPlaylistID: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyContentRating: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyBeatsPerMin: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyTrackNumber: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyArtDirector: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyArranger: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyAuthor: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyLyrics: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyAcknowledgement: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyConductor: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyDirector: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyEQ: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyLinerNotes: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyRecordCompany: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyOriginalArtist: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyPhonogramRights: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyProducer: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyPerformer: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyPublisher: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeySoundEngineer: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeySoloist: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyCredits: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyThanks: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyOnlineExtras: AVMetadataKey
  @available(macOS 10.7, *)
  static let iTunesMetadataKeyExecProducer: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyAudioEncryption: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyAttachedPicture: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyAudioSeekPointIndex: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyComments: AVMetadataKey
  @available(macOS 10.11, *)
  static let id3MetadataKeyCommercial: AVMetadataKey
  @available(macOS, introduced: 10.7, deprecated: 10.11, message: "No longer supported")
  static let id3MetadataKeyCommerical: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyEncryption: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyEqualization: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyEqualization2: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyEventTimingCodes: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyGeneralEncapsulatedObject: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyGroupIdentifier: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyInvolvedPeopleList_v23: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyLink: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyMusicCDIdentifier: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyMPEGLocationLookupTable: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOwnership: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyPrivate: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyPlayCounter: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyPopularimeter: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyPositionSynchronization: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyRecommendedBufferSize: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyRelativeVolumeAdjustment: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyRelativeVolumeAdjustment2: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyReverb: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeySeek: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeySignature: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeySynchronizedLyric: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeySynchronizedTempoCodes: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyAlbumTitle: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyBeatsPerMinute: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyComposer: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyContentType: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyCopyright: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyDate: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyEncodingTime: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyPlaylistDelay: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOriginalReleaseTime: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyRecordingTime: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyReleaseTime: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyTaggingTime: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyEncodedBy: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyLyricist: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyFileType: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyTime: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyInvolvedPeopleList_v24: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyContentGroupDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyTitleDescription: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeySubTitle: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyInitialKey: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyLanguage: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyLength: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyMusicianCreditsList: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyMediaType: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyMood: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOriginalAlbumTitle: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOriginalFilename: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOriginalLyricist: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOriginalArtist: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOriginalReleaseYear: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyFileOwner: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyLeadPerformer: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyBand: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyConductor: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyModifiedBy: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyPartOfASet: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyProducedNotice: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyPublisher: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyTrackNumber: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyRecordingDates: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyInternetRadioStationName: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyInternetRadioStationOwner: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeySize: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyAlbumSortOrder: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyPerformerSortOrder: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyTitleSortOrder: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyInternationalStandardRecordingCode: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyEncodedWith: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeySetSubtitle: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyYear: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyUserText: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyUniqueFileIdentifier: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyTermsOfUse: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyUnsynchronizedLyric: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyCommercialInformation: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyCopyrightInformation: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOfficialAudioFileWebpage: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOfficialArtistWebpage: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOfficialAudioSourceWebpage: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOfficialInternetRadioStationHomepage: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyPayment: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyOfficialPublisherWebpage: AVMetadataKey
  @available(macOS 10.7, *)
  static let id3MetadataKeyUserURL: AVMetadataKey
  @available(macOS 10.10, *)
  static let icyMetadataKeyStreamTitle: AVMetadataKey
  @available(macOS 10.10, *)
  static let icyMetadataKeyStreamURL: AVMetadataKey
}
extension AVMetadataFormat {
  @available(macOS 10.7, *)
  static let quickTimeUserData: AVMetadataFormat
  @available(macOS 10.9, *)
  static let isoUserData: AVMetadataFormat
  @available(macOS 10.7, *)
  static let quickTimeMetadata: AVMetadataFormat
  @available(macOS 10.7, *)
  static let iTunesMetadata: AVMetadataFormat
  @available(macOS 10.7, *)
  static let id3Metadata: AVMetadataFormat
  @available(macOS 10.10, *)
  static let hlsMetadata: AVMetadataFormat
  @available(macOS 10.13, *)
  static let unknown: AVMetadataFormat
}
struct AVMetadataExtraAttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMetadataExtraAttributeKey {
  @available(macOS 10.10, *)
  static let valueURI: AVMetadataExtraAttributeKey
  @available(macOS 10.10, *)
  static let baseURI: AVMetadataExtraAttributeKey
  @available(macOS 10.11, *)
  static let info: AVMetadataExtraAttributeKey
}
