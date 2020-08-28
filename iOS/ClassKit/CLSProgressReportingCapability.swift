
extension CLSProgressReportingCapability {
  @available(iOS 14, *)
  enum Kind : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case duration
    case percent
    case binary
    case quantity
    case score
  }
}
@available(iOS 14, *)
class CLSProgressReportingCapability : CLSObject {
  var kind: CLSProgressReportingCapability.Kind { get }
  var details: String? { get }
  init(kind: CLSProgressReportingCapability.Kind, details: String?)
}
