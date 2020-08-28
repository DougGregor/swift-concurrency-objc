
@available(tvOS 9.2, *)
class MKDistanceFormatter : Formatter {
  func string(fromDistance distance: CLLocationDistance) -> String
  func distance(from distance: String) -> CLLocationDistance
  var locale: Locale!
  var units: MKDistanceFormatter.Units
  var unitStyle: MKDistanceFormatter.DistanceUnitStyle
}
extension MKDistanceFormatter {
  @available(tvOS 9.2, *)
  enum Units : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case metric
    case imperial
    case imperialWithYards
  }
  @available(tvOS 9.2, *)
  enum DistanceUnitStyle : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case `default`
    case abbreviated
    case full
  }
}
