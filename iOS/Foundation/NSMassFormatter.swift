
extension MassFormatter {
  @available(iOS 8.0, *)
  enum Unit : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case gram
    case kilogram
    case ounce
    case pound
    case stone
  }
}
@available(iOS 8.0, *)
class MassFormatter : Formatter {
  @NSCopying var numberFormatter: NumberFormatter!
  var unitStyle: Formatter.UnitStyle
  var isForPersonMassUse: Bool
  func string(fromValue value: Double, unit: MassFormatter.Unit) -> String
  func string(fromKilograms numberInKilograms: Double) -> String
  func unitString(fromValue value: Double, unit: MassFormatter.Unit) -> String
  func unitString(fromKilograms numberInKilograms: Double, usedUnit unitp: UnsafeMutablePointer<MassFormatter.Unit>?) -> String
}
