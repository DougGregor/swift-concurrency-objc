
extension CLSProgressReportingCapability {
  @available(macOS 11.0, *)
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
@available(macOS 11.0, *)
class CLSProgressReportingCapability : CLSObject {
  var kind: CLSProgressReportingCapability.Kind { get }
  var details: String? { get }
  init(kind: CLSProgressReportingCapability.Kind, details: String?)
}
