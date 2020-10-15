
@available(macOS 10.15, *)
@available(iOS, unavailable, message: "macOS only")
@available(tvOS, unavailable, message: "macOS only")
@available(watchOS, unavailable, message: "macOS only")
extension OSLogStore {
  func getEntries(with options: OSLogEnumerator.Options = [], at position: OSLogPosition? = nil, matching predicate: NSPredicate? = nil) throws -> AnySequence<OSLogEntry>
}

@available(macOS 10.15, *)
@available(iOS, unavailable, message: "macOS only")
@available(tvOS, unavailable, message: "macOS only")
@available(watchOS, unavailable, message: "macOS only")
extension OSLogMessageComponent {
  enum Argument {
    case undefined
    case data(Data)
    case double(Double)
    case signed(Int64)
    case string(String)
    case unsigned(UInt64)
  }
  var argument: OSLogMessageComponent.Argument { get }
}

