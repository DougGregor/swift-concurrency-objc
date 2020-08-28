
extension OSLogMessageComponent {
  @available(macOS 10.15, *)
  enum ArgumentCategory : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case undefined
    case data
    case double
    case int64
    case string
    case uInt64
  }
}
@available(macOS 10.15, *)
class OSLogMessageComponent : NSObject {
  var formatSubstring: String { get }
  var placeholder: String { get }
  var argumentCategory: OSLogMessageComponent.ArgumentCategory { get }
  var argumentDataValue: Data? { get }
  var argumentDoubleValue: Double { get }
  var argumentInt64Value: Int64 { get }
  var argumentNumberValue: NSNumber? { get }
  var argumentStringValue: String? { get }
  var argumentUInt64Value: UInt64 { get }
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
