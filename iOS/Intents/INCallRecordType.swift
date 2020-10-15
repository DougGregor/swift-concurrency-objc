
@available(iOS 10.0, *)
enum INCallRecordType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case outgoing
  case missed
  case received
  @available(iOS 11.0, *)
  case latest
  @available(iOS 11.0, *)
  case voicemail
}
