
@available(tvOS 14.0, *)
enum INVocabularyStringType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case contactName
  case contactGroupName
  case photoTag
  case photoAlbumName
  case workoutActivityName
  case carProfileName
  @available(tvOS 10.3, *)
  case carName
  @available(tvOS 10.3, *)
  case paymentsOrganizationName
  @available(tvOS 10.3, *)
  case paymentsAccountNickname
  @available(tvOS 11.0, *)
  case notebookItemTitle
  @available(tvOS 11.0, *)
  case notebookItemGroupName
  @available(tvOS 13.0, *)
  case mediaPlaylistTitle
  @available(tvOS 13.0, *)
  case mediaMusicArtistName
  @available(tvOS 13.0, *)
  case mediaAudiobookTitle
  @available(tvOS 13.0, *)
  case mediaAudiobookAuthorName
  @available(tvOS 13.0, *)
  case mediaShowTitle
}
@available(tvOS 14.0, *)
class INVocabulary : NSObject {
  class func shared() -> Self
  func setVocabularyStrings(_ vocabulary: NSOrderedSet, of type: INVocabularyStringType)
  @available(tvOS 11.0, *)
  func setVocabulary(_ vocabulary: NSOrderedSet, of type: INVocabularyStringType)
  func removeAllVocabularyStrings()
}
