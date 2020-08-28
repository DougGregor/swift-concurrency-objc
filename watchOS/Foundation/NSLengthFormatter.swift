
extension LengthFormatter {
  @available(watchOS 2.0, *)
  enum Unit : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case millimeter
    case centimeter
    case meter
    case kilometer
    case inch
    case foot
    case yard
    case mile
  }
}
@available(watchOS 2.0, *)
class LengthFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: Formatter.UnitStyle
  var isForPersonHeightUse: Bool
  func string(fromValue value: Double, unit: LengthFormatter.Unit) -> String
  func string(fromMeters numberInMeters: Double) -> String
  func unitString(fromValue value: Double, unit: LengthFormatter.Unit) -> String
  func unitString(fromMeters numberInMeters: Double, usedUnit unitp: UnsafeMutablePointer<LengthFormatter.Unit>?) -> String
}
