
extension ByteCountFormatter {
  struct Units : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var useBytes: ByteCountFormatter.Units { get }
    static var useKB: ByteCountFormatter.Units { get }
    static var useMB: ByteCountFormatter.Units { get }
    static var useGB: ByteCountFormatter.Units { get }
    static var useTB: ByteCountFormatter.Units { get }
    static var usePB: ByteCountFormatter.Units { get }
    static var useEB: ByteCountFormatter.Units { get }
    static var useZB: ByteCountFormatter.Units { get }
    static var useYBOrHigher: ByteCountFormatter.Units { get }
    static var useAll: ByteCountFormatter.Units { get }
  }
  enum CountStyle : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case file
    case memory
    case decimal
    case binary
  }
}
@available(watchOS 2.0, *)
class ByteCountFormatter : Formatter {
  class func string(fromByteCount byteCount: Int64, countStyle: ByteCountFormatter.CountStyle) -> String
  func string(fromByteCount byteCount: Int64) -> String
  @available(watchOS 6.0, *)
  class func string(from measurement: Measurement<UnitInformationStorage>, countStyle: ByteCountFormatter.CountStyle) -> String
  @available(watchOS 6.0, *)
  func string(from measurement: Measurement<UnitInformationStorage>) -> String
  var allowedUnits: ByteCountFormatter.Units
  var countStyle: ByteCountFormatter.CountStyle
  var allowsNonnumericFormatting: Bool
  var includesUnit: Bool
  var includesCount: Bool
  var includesActualByteCount: Bool
  var isAdaptive: Bool
  var zeroPadsFractionDigits: Bool
  @available(watchOS 2.0, *)
  var formattingContext: Formatter.Context
}
