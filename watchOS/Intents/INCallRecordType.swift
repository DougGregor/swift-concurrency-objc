
@available(watchOS 3.2, *)
enum INCallRecordType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case outgoing
  case missed
  case received
  @available(watchOS 4.0, *)
  case latest
  @available(watchOS 4.0, *)
  case voicemail
}
