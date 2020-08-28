
class PortMessage : NSObject {
  init(send sendPort: Port?, receive replyPort: Port?, components: [Any]?)
  var components: [Any]? { get }
  var receivePort: Port? { get }
  var sendPort: Port? { get }
  func send(before date: Date) -> Bool
  var msgid: UInt32
}
