
extension CPNavigationSession {
  @available(iOS 12.0, *)
  enum PauseReason : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case arrived
    case loading
    case locating
    case rerouting
    case proceedToRoute
  }
}
@available(iOS 12.0, *)
class CPNavigationSession : NSObject {
  func pauseTrip(for reason: CPNavigationSession.PauseReason, description: String?)
  func finishTrip()
  func cancelTrip()
  var upcomingManeuvers: [CPManeuver]
  var trip: CPTrip { get }
  func updateEstimates(_ estimates: CPTravelEstimates, for maneuver: CPManeuver)
}
