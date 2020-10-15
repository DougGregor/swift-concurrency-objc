
@available(iOS 10.0, *)
enum INVocabularyStringType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case contactName
  case contactGroupName
  case photoTag
  case photoAlbumName
  case workoutActivityName
  case carProfileName
  @available(iOS 10.3, *)
  case carName
  @available(iOS 10.3, *)
  case paymentsOrganizationName
  @available(iOS 10.3, *)
  case paymentsAccountNickname
  @available(iOS 11.0, *)
  case notebookItemTitle
  @available(iOS 11.0, *)
  case notebookItemGroupName
  @available(iOS 13.0, *)
  case mediaPlaylistTitle
  @available(iOS 13.0, *)
  case mediaMusicArtistName
  @available(iOS 13.0, *)
  case mediaAudiobookTitle
  @available(iOS 13.0, *)
  case mediaAudiobookAuthorName
  @available(iOS 13.0, *)
  case mediaShowTitle
}
@available(iOS 10.0, *)
class INVocabulary : NSObject {
  class func shared() -> Self
  func setVocabularyStrings(_ vocabulary: NSOrderedSet, of type: INVocabularyStringType)
  @available(iOS 11.0, *)
  func setVocabulary(_ vocabulary: NSOrderedSet, of type: INVocabularyStringType)
  func removeAllVocabularyStrings()
}
