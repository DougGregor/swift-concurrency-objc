
extension PKDisbursementRequest {
  enum Schedule : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case oneTime
    case future
  }
}
class PKDisbursementRequest : NSObject {
}
