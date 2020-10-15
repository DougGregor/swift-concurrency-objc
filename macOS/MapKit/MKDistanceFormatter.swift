
@available(macOS 10.9, *)
class MKDistanceFormatter : Formatter {
  func string(fromDistance distance: CLLocationDistance) -> String
  func distance(from distance: String) -> CLLocationDistance
  var locale: Locale!
  var units: MKDistanceFormatter.Units
  var unitStyle: MKDistanceFormatter.DistanceUnitStyle
}
extension MKDistanceFormatter {
  @available(macOS 10.9, *)
  enum Units : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case metric
    case imperial
    case imperialWithYards
  }
  @available(macOS 10.9, *)
  enum DistanceUnitStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case abbreviated
    case full
  }
}
