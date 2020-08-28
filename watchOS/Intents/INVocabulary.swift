
@available(watchOS 6.0, *)
enum INVocabularyStringType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case contactName
  case contactGroupName
  case photoTag
  case photoAlbumName
  case workoutActivityName
  case carProfileName
  @available(watchOS 6.0, *)
  case carName
  @available(watchOS 6.0, *)
  case paymentsOrganizationName
  @available(watchOS 6.0, *)
  case paymentsAccountNickname
  @available(watchOS 6.0, *)
  case notebookItemTitle
  @available(watchOS 6.0, *)
  case notebookItemGroupName
  @available(watchOS 6.0, *)
  case mediaPlaylistTitle
  @available(watchOS 6.0, *)
  case mediaMusicArtistName
  @available(watchOS 6.0, *)
  case mediaAudiobookTitle
  @available(watchOS 6.0, *)
  case mediaAudiobookAuthorName
  @available(watchOS 6.0, *)
  case mediaShowTitle
}
@available(watchOS 6.0, *)
class INVocabulary : NSObject {
  class func shared() -> Self
  func setVocabularyStrings(_ vocabulary: NSOrderedSet, of type: INVocabularyStringType)
  @available(watchOS 6.0, *)
  func setVocabulary(_ vocabulary: NSOrderedSet, of type: INVocabularyStringType)
  func removeAllVocabularyStrings()
}
