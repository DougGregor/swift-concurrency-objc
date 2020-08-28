
class OSLogEntryActivity : OSLogEntry, OSLogEntryFromProcess {
  var parentActivityIdentifier: os_activity_id_t { get }
}
