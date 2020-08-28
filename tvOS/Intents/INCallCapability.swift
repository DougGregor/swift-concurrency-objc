
@available(tvOS 10.0, *)
enum INCallCapability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case audioCall
  case videoCall
}
