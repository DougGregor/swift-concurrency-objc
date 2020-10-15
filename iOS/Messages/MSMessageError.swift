
@available(iOS 10.0, *)
let MSStickersErrorDomain: String
@available(iOS 10.0, *)
let MSMessagesErrorDomain: String
@available(iOS 10.0, *)
enum MSMessageErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 11.0, *)
  case unknown
  case fileNotFound
  case fileUnreadable
  case improperFileType
  case improperFileURL
  case stickerFileImproperFileAttributes
  case stickerFileImproperFileSize
  case stickerFileImproperFileFormat
  case urlExceedsMaxSize
  @available(iOS 11.0, *)
  case sendWithoutRecentInteraction
  @available(iOS 11.0, *)
  case sendWhileNotVisible
  @available(iOS 12.0, *)
  case apiUnavailableInPresentationContext
}
