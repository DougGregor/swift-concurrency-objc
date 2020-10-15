
@available(iOS 12.0, *)
class CPTravelEstimates : NSObject, NSSecureCoding {
  init(distanceRemaining distance: Measurement<UnitLength>, timeRemaining time: TimeInterval)
  var distanceRemaining: Measurement<UnitLength> { get }
  var timeRemaining: TimeInterval { get }
}
