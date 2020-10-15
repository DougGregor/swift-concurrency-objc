
@available(macOS 10.15, *)
class OSLogEntryActivity : OSLogEntry, OSLogEntryFromProcess {
  var parentActivityIdentifier: os_activity_id_t { get }
}
