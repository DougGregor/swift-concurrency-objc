
@available(iOS 10.0, *)
class NSMeasurement : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var unit: Unit { get }
  var doubleValue: Double { get }
  init(doubleValue: Double, unit: Unit)
  func canBeConverted(to unit: Unit) -> Bool
  func converting(to unit: Unit) -> Measurement<Unit>
  func adding(_ measurement: Measurement<Unit>) -> Measurement<Unit>
  func subtracting(_ measurement: Measurement<Unit>) -> Measurement<Unit>
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension NSMeasurement : _HasCustomAnyHashableRepresentation {
}
