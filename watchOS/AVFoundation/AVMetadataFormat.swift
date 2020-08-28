
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
  @available(watchOS 1.0, *)
  static let common: AVMetadataKeySpace
  @available(watchOS 1.0, *)
  static let quickTimeUserData: AVMetadataKeySpace
  @available(watchOS 1.0, *)
  static let isoUserData: AVMetadataKeySpace
  @available(watchOS 1.0, *)
  static let quickTimeMetadata: AVMetadataKeySpace
  @available(watchOS 1.0, *)
  static let iTunes: AVMetadataKeySpace
  @available(watchOS 1.0, *)
  static let id3: AVMetadataKeySpace
  @available(watchOS 1.0, *)
  static let icy: AVMetadataKeySpace
  @available(watchOS 2.3, *)
  static let hlsDateRange: AVMetadataKeySpace
  @available(watchOS 4.0, *)
  static let audioFile: AVMetadataKeySpace
}
extension AVMetadataKey {
  @available(watchOS 1.0, *)
  static let commonKeyTitle: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyCreator: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeySubject: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyPublisher: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyContributor: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyCreationDate: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyLastModifiedDate: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyType: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyFormat: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyIdentifier: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeySource: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyLanguage: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyRelation: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyLocation: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyCopyrights: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyAlbumName: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyAuthor: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyArtist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyArtwork: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyMake: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeyModel: AVMetadataKey
  @available(watchOS 1.0, *)
  static let commonKeySoftware: AVMetadataKey
  @available(watchOS 7.0, *)
  static let commonKeyAccessibilityDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyAlbum: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyArranger: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyArtist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyAuthor: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyChapter: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyComment: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyComposer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyCopyright: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyCreationDate: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyDirector: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyDisclaimer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyEncodedBy: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyFullName: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyGenre: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyHostComputer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyInformation: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyKeywords: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyMake: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyModel: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyOriginalArtist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyOriginalFormat: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyOriginalSource: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyPerformers: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyProducer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyPublisher: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyProduct: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeySoftware: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeySpecialPlaybackRequirements: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyTrack: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyWarning: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyWriter: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyURLLink: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyLocationISO6709: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyTrackName: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyCredits: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyPhonogramRights: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeUserDataKeyTaggedCharacteristic: AVMetadataKey
  @available(watchOS 7.0, *)
  static let quickTimeUserDataKeyAccessibilityDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let isoUserDataKeyCopyright: AVMetadataKey
  @available(watchOS 1.0, *)
  static let isoUserDataKeyTaggedCharacteristic: AVMetadataKey
  @available(watchOS 3.0, *)
  static let isoUserDataKeyDate: AVMetadataKey
  @available(watchOS 7.0, *)
  static let isoUserDataKeyAccessibilityDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyCopyright: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyAuthor: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyPerformer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyGenre: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyRecordingYear: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyLocation: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyTitle: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyCollection: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyUserRating: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyThumbnail: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyAlbumAndTrack: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyKeywordList: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyMediaClassification: AVMetadataKey
  @available(watchOS 1.0, *)
  static let metadata3GPUserDataKeyMediaRating: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyAuthor: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyComment: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyCopyright: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyCreationDate: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyDirector: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyDisplayName: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyInformation: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyKeywords: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyProducer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyPublisher: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyAlbum: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyArtist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyArtwork: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeySoftware: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyYear: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyGenre: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyiXML: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyLocationISO6709: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyMake: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyModel: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyArranger: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyEncodedBy: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyOriginalArtist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyPerformer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyComposer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyCredits: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyPhonogramRights: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyCameraIdentifier: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyCameraFrameReadoutTime: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyTitle: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyCollectionUser: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyRatingUser: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyLocationName: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyLocationBody: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyLocationNote: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyLocationRole: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyLocationDate: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyDirectionFacing: AVMetadataKey
  @available(watchOS 1.0, *)
  static let quickTimeMetadataKeyDirectionMotion: AVMetadataKey
  @available(watchOS 2.0, *)
  static let quickTimeMetadataKeyContentIdentifier: AVMetadataKey
  @available(watchOS 7.0, *)
  static let quickTimeMetadataKeyAccessibilityDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyAlbum: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyArtist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyUserComment: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyCoverArt: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyCopyright: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyReleaseDate: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyEncodedBy: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyPredefinedGenre: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyUserGenre: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeySongName: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyTrackSubTitle: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyEncodingTool: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyComposer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyAlbumArtist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyAccountKind: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyAppleID: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyArtistID: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeySongID: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyDiscCompilation: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyDiscNumber: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyGenreID: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyGrouping: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyPlaylistID: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyContentRating: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyBeatsPerMin: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyTrackNumber: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyArtDirector: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyArranger: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyAuthor: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyLyrics: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyAcknowledgement: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyConductor: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyDirector: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyEQ: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyLinerNotes: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyRecordCompany: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyOriginalArtist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyPhonogramRights: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyProducer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyPerformer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyPublisher: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeySoundEngineer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeySoloist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyCredits: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyThanks: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyOnlineExtras: AVMetadataKey
  @available(watchOS 1.0, *)
  static let iTunesMetadataKeyExecProducer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyAudioEncryption: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyAttachedPicture: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyAudioSeekPointIndex: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyComments: AVMetadataKey
  @available(watchOS 2.0, *)
  static let id3MetadataKeyCommercial: AVMetadataKey
  @available(watchOS, introduced: 1.0, deprecated: 1.0, message: "No longer supported")
  static let id3MetadataKeyCommerical: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyEncryption: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyEqualization: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyEqualization2: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyEventTimingCodes: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyGeneralEncapsulatedObject: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyGroupIdentifier: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyInvolvedPeopleList_v23: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyLink: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyMusicCDIdentifier: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyMPEGLocationLookupTable: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOwnership: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyPrivate: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyPlayCounter: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyPopularimeter: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyPositionSynchronization: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyRecommendedBufferSize: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyRelativeVolumeAdjustment: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyRelativeVolumeAdjustment2: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyReverb: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeySeek: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeySignature: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeySynchronizedLyric: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeySynchronizedTempoCodes: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyAlbumTitle: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyBeatsPerMinute: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyComposer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyContentType: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyCopyright: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyDate: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyEncodingTime: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyPlaylistDelay: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOriginalReleaseTime: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyRecordingTime: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyReleaseTime: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyTaggingTime: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyEncodedBy: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyLyricist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyFileType: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyTime: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyInvolvedPeopleList_v24: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyContentGroupDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyTitleDescription: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeySubTitle: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyInitialKey: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyLanguage: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyLength: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyMusicianCreditsList: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyMediaType: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyMood: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOriginalAlbumTitle: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOriginalFilename: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOriginalLyricist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOriginalArtist: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOriginalReleaseYear: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyFileOwner: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyLeadPerformer: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyBand: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyConductor: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyModifiedBy: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyPartOfASet: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyProducedNotice: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyPublisher: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyTrackNumber: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyRecordingDates: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyInternetRadioStationName: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyInternetRadioStationOwner: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeySize: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyAlbumSortOrder: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyPerformerSortOrder: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyTitleSortOrder: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyInternationalStandardRecordingCode: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyEncodedWith: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeySetSubtitle: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyYear: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyUserText: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyUniqueFileIdentifier: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyTermsOfUse: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyUnsynchronizedLyric: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyCommercialInformation: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyCopyrightInformation: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOfficialAudioFileWebpage: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOfficialArtistWebpage: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOfficialAudioSourceWebpage: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOfficialInternetRadioStationHomepage: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyPayment: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyOfficialPublisherWebpage: AVMetadataKey
  @available(watchOS 1.0, *)
  static let id3MetadataKeyUserURL: AVMetadataKey
  @available(watchOS 1.0, *)
  static let icyMetadataKeyStreamTitle: AVMetadataKey
  @available(watchOS 1.0, *)
  static let icyMetadataKeyStreamURL: AVMetadataKey
}
extension AVMetadataFormat {
  @available(watchOS 1.0, *)
  static let quickTimeUserData: AVMetadataFormat
  @available(watchOS 1.0, *)
  static let isoUserData: AVMetadataFormat
  @available(watchOS 1.0, *)
  static let quickTimeMetadata: AVMetadataFormat
  @available(watchOS 1.0, *)
  static let iTunesMetadata: AVMetadataFormat
  @available(watchOS 1.0, *)
  static let id3Metadata: AVMetadataFormat
  @available(watchOS 1.0, *)
  static let hlsMetadata: AVMetadataFormat
  @available(watchOS 4.0, *)
  static let unknown: AVMetadataFormat
}
struct AVMetadataExtraAttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMetadataExtraAttributeKey {
  @available(watchOS 1.0, *)
  static let valueURI: AVMetadataExtraAttributeKey
  @available(watchOS 1.0, *)
  static let baseURI: AVMetadataExtraAttributeKey
  @available(watchOS 2.0, *)
  static let info: AVMetadataExtraAttributeKey
}
