
extension OSLogEntry {
  @available(macOS 10.15, *)
  enum StoreCategory : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case undefined
    case metadata
    case shortTerm
    case longTermAuto
    case longTerm1
    case longTerm3
    case longTerm7
    case longTerm14
    case longTerm30
  }
}
@available(macOS 10.15, *)
class OSLogEntry : NSObject {
  var composedMessage: String { get }
  var date: Date { get }
  var storeCategory: OSLogEntry.StoreCategory { get }
}
@available(macOS 10.15, *)
protocol OSLogEntryFromProcess {
  var activityIdentifier: os_activity_id_t { get }
  var process: String { get }
  var processIdentifier: pid_t { get }
  var sender: String { get }
  var threadIdentifier: UInt64 { get }
}
@available(macOS 10.15, *)
protocol OSLogEntryWithPayload {
  var category: String { get }
  var components: [OSLogMessageComponent] { get }
  var formatString: String { get }
  var subsystem: String { get }
}
