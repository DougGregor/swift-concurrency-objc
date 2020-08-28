
@available(watchOS 3.2, *)
enum INRidePhase : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case received
  case confirmed
  case ongoing
  case completed
  case approachingPickup
  case pickup
}
