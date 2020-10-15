
@available(iOS 14.0, *)
enum INOutgoingMessageType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case outgoingMessageText
  case outgoingMessageAudio
}
