
extension NSURLHandle {
  enum Status : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case notLoaded
    case loadSucceeded
    case loadInProgress
    case loadFailed
  }
}
class NSURLHandle : NSObject {
}
