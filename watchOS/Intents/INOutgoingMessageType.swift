
@available(watchOS 7.0, *)
enum INOutgoingMessageType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case outgoingMessageText
  case outgoingMessageAudio
}
