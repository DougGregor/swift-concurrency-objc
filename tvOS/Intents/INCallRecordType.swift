
@available(tvOS 10.0, *)
enum INCallRecordType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case outgoing
  case missed
  case received
  @available(tvOS 11.0, *)
  case latest
  @available(tvOS 11.0, *)
  case voicemail
  case ringing
  case inProgress
  case onHold
}
