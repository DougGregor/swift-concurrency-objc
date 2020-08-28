
extension OSLogMessageComponent {
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
