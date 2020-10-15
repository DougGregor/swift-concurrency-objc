
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
  @available(tvOS 9.0, *)
  static let common: AVMetadataKeySpace
  @available(tvOS 9.0, *)
  static let quickTimeUserData: AVMetadataKeySpace
  @available(tvOS 9.0, *)
  static let isoUserData: AVMetadataKeySpace
  @available(tvOS 9.0, *)
  static let quickTimeMetadata: AVMetadataKeySpace
  @available(tvOS 9.0, *)
  static let iTunes: AVMetadataKeySpace
  @available(tvOS 9.0, *)
  static let id3: AVMetadataKeySpace
  @available(tvOS 9.0, *)
  static let icy: AVMetadataKeySpace
  @available(tvOS 9.3, *)
  static let hlsDateRange: AVMetadataKeySpace
  @available(tvOS 11.0, *)
  static let audioFile: AVMetadataKeySpace
}
extension AVMetadataKey {
  @available(tvOS 9.0, *)
  static let commonKeyTitle: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyCreator: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeySubject: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyPublisher: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyContributor: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyCreationDate: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyLastModifiedDate: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyType: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyFormat: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyIdentifier: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeySource: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyLanguage: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyRelation: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyLocation: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyCopyrights: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyAlbumName: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyAuthor: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyArtist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyArtwork: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyMake: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeyModel: AVMetadataKey
  @available(tvOS 9.0, *)
  static let commonKeySoftware: AVMetadataKey
  @available(tvOS 14.0, *)
  static let commonKeyAccessibilityDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyAlbum: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyArranger: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyArtist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyAuthor: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyChapter: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyComment: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyComposer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyCopyright: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyCreationDate: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyDirector: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyDisclaimer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyEncodedBy: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyFullName: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyGenre: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyHostComputer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyInformation: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyKeywords: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyMake: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyModel: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyOriginalArtist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyOriginalFormat: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyOriginalSource: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyPerformers: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyProducer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyPublisher: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyProduct: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeySoftware: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeySpecialPlaybackRequirements: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyTrack: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyWarning: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyWriter: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyURLLink: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyLocationISO6709: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyTrackName: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyCredits: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyPhonogramRights: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeUserDataKeyTaggedCharacteristic: AVMetadataKey
  @available(tvOS 14.0, *)
  static let quickTimeUserDataKeyAccessibilityDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let isoUserDataKeyCopyright: AVMetadataKey
  @available(tvOS 9.0, *)
  static let isoUserDataKeyTaggedCharacteristic: AVMetadataKey
  @available(tvOS 10.0, *)
  static let isoUserDataKeyDate: AVMetadataKey
  @available(tvOS 14.0, *)
  static let isoUserDataKeyAccessibilityDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyCopyright: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyAuthor: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyPerformer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyGenre: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyRecordingYear: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyLocation: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyTitle: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyCollection: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyUserRating: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyThumbnail: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyAlbumAndTrack: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyKeywordList: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyMediaClassification: AVMetadataKey
  @available(tvOS 9.0, *)
  static let metadata3GPUserDataKeyMediaRating: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyAuthor: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyComment: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyCopyright: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyCreationDate: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyDirector: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyDisplayName: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyInformation: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyKeywords: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyProducer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyPublisher: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyAlbum: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyArtist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyArtwork: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeySoftware: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyYear: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyGenre: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyiXML: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyLocationISO6709: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyMake: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyModel: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyArranger: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyEncodedBy: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyOriginalArtist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyPerformer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyComposer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyCredits: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyPhonogramRights: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyCameraIdentifier: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyCameraFrameReadoutTime: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyTitle: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyCollectionUser: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyRatingUser: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyLocationName: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyLocationBody: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyLocationNote: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyLocationRole: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyLocationDate: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyDirectionFacing: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyDirectionMotion: AVMetadataKey
  @available(tvOS 9.0, *)
  static let quickTimeMetadataKeyContentIdentifier: AVMetadataKey
  @available(tvOS 14.0, *)
  static let quickTimeMetadataKeyAccessibilityDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyAlbum: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyArtist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyUserComment: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyCoverArt: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyCopyright: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyReleaseDate: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyEncodedBy: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyPredefinedGenre: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyUserGenre: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeySongName: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyTrackSubTitle: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyEncodingTool: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyComposer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyAlbumArtist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyAccountKind: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyAppleID: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyArtistID: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeySongID: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyDiscCompilation: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyDiscNumber: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyGenreID: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyGrouping: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyPlaylistID: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyContentRating: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyBeatsPerMin: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyTrackNumber: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyArtDirector: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyArranger: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyAuthor: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyLyrics: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyAcknowledgement: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyConductor: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyDirector: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyEQ: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyLinerNotes: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyRecordCompany: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyOriginalArtist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyPhonogramRights: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyProducer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyPerformer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyPublisher: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeySoundEngineer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeySoloist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyCredits: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyThanks: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyOnlineExtras: AVMetadataKey
  @available(tvOS 9.0, *)
  static let iTunesMetadataKeyExecProducer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyAudioEncryption: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyAttachedPicture: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyAudioSeekPointIndex: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyComments: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyCommercial: AVMetadataKey
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "No longer supported")
  static let id3MetadataKeyCommerical: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyEncryption: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyEqualization: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyEqualization2: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyEventTimingCodes: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyGeneralEncapsulatedObject: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyGroupIdentifier: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyInvolvedPeopleList_v23: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyLink: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyMusicCDIdentifier: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyMPEGLocationLookupTable: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOwnership: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyPrivate: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyPlayCounter: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyPopularimeter: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyPositionSynchronization: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyRecommendedBufferSize: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyRelativeVolumeAdjustment: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyRelativeVolumeAdjustment2: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyReverb: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeySeek: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeySignature: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeySynchronizedLyric: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeySynchronizedTempoCodes: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyAlbumTitle: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyBeatsPerMinute: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyComposer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyContentType: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyCopyright: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyDate: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyEncodingTime: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyPlaylistDelay: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOriginalReleaseTime: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyRecordingTime: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyReleaseTime: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyTaggingTime: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyEncodedBy: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyLyricist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyFileType: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyTime: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyInvolvedPeopleList_v24: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyContentGroupDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyTitleDescription: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeySubTitle: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyInitialKey: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyLanguage: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyLength: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyMusicianCreditsList: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyMediaType: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyMood: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOriginalAlbumTitle: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOriginalFilename: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOriginalLyricist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOriginalArtist: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOriginalReleaseYear: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyFileOwner: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyLeadPerformer: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyBand: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyConductor: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyModifiedBy: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyPartOfASet: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyProducedNotice: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyPublisher: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyTrackNumber: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyRecordingDates: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyInternetRadioStationName: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyInternetRadioStationOwner: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeySize: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyAlbumSortOrder: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyPerformerSortOrder: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyTitleSortOrder: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyInternationalStandardRecordingCode: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyEncodedWith: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeySetSubtitle: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyYear: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyUserText: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyUniqueFileIdentifier: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyTermsOfUse: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyUnsynchronizedLyric: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyCommercialInformation: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyCopyrightInformation: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOfficialAudioFileWebpage: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOfficialArtistWebpage: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOfficialAudioSourceWebpage: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOfficialInternetRadioStationHomepage: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyPayment: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyOfficialPublisherWebpage: AVMetadataKey
  @available(tvOS 9.0, *)
  static let id3MetadataKeyUserURL: AVMetadataKey
  @available(tvOS 9.0, *)
  static let icyMetadataKeyStreamTitle: AVMetadataKey
  @available(tvOS 9.0, *)
  static let icyMetadataKeyStreamURL: AVMetadataKey
}
extension AVMetadataFormat {
  @available(tvOS 9.0, *)
  static let quickTimeUserData: AVMetadataFormat
  @available(tvOS 9.0, *)
  static let isoUserData: AVMetadataFormat
  @available(tvOS 9.0, *)
  static let quickTimeMetadata: AVMetadataFormat
  @available(tvOS 9.0, *)
  static let iTunesMetadata: AVMetadataFormat
  @available(tvOS 9.0, *)
  static let id3Metadata: AVMetadataFormat
  @available(tvOS 9.0, *)
  static let hlsMetadata: AVMetadataFormat
  @available(tvOS 11.0, *)
  static let unknown: AVMetadataFormat
}
struct AVMetadataExtraAttributeKey : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(_ rawValue: String)
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension AVMetadataExtraAttributeKey {
  @available(tvOS 9.0, *)
  static let valueURI: AVMetadataExtraAttributeKey
  @available(tvOS 9.0, *)
  static let baseURI: AVMetadataExtraAttributeKey
  @available(tvOS 9.0, *)
  static let info: AVMetadataExtraAttributeKey
}
