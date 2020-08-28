
@available(watchOS 3.2, *)
enum INCallCapability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case audioCall
  case videoCall
}
