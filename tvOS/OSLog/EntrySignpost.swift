
extension OSLogEntrySignpost {
  enum SignpostType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case undefined
    case intervalBegin
    case intervalEnd
    case event
  }
}
class OSLogEntrySignpost : OSLogEntry, OSLogEntryFromProcess, OSLogEntryWithPayload {
  var signpostIdentifier: os_signpost_id_t { get }
  var signpostName: String { get }
  var signpostType: OSLogEntrySignpost.SignpostType { get }
}
