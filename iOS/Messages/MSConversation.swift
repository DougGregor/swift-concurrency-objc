
@available(iOS 10.0, *)
class MSConversation : NSObject {
  var localParticipantIdentifier: UUID { get }
  var remoteParticipantIdentifiers: [UUID] { get }
  var selectedMessage: MSMessage? { get }
  func insert(_ message: MSMessage, completionHandler: ((Error?) -> Void)? = nil)
  func insert(_ message: MSMessage) async throws
  func insert(_ sticker: MSSticker, completionHandler: ((Error?) -> Void)? = nil)
  func insert(_ sticker: MSSticker) async throws
  func insertText(_ text: String, completionHandler: ((Error?) -> Void)? = nil)
  func insertText(_ text: String) async throws
  func insertAttachment(_ URL: URL, withAlternateFilename filename: String?, completionHandler: ((Error?) -> Void)? = nil)
  func insertAttachment(_ URL: URL, withAlternateFilename filename: String?) async throws
  @available(iOS 11.0, *)
  func send(_ message: MSMessage, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 11.0, *)
  func send(_ message: MSMessage) async throws
  @available(iOS 11.0, *)
  func send(_ sticker: MSSticker, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 11.0, *)
  func send(_ sticker: MSSticker) async throws
  @available(iOS 11.0, *)
  func sendText(_ text: String, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 11.0, *)
  func sendText(_ text: String) async throws
  @available(iOS 11.0, *)
  func sendAttachment(_ URL: URL, withAlternateFilename filename: String?, completionHandler: ((Error?) -> Void)? = nil)
  @available(iOS 11.0, *)
  func sendAttachment(_ URL: URL, withAlternateFilename filename: String?) async throws
}
