
extension OSLogEntryLog {
  enum Level : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case undefined
    case debug
    case info
    case notice
    case error
    case fault
  }
}
class OSLogEntryLog : OSLogEntry, OSLogEntryFromProcess, OSLogEntryWithPayload {
  var level: OSLogEntryLog.Level { get }
}
