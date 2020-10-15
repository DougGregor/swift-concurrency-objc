
@available(iOS 11.0, *)
class INCancelRideIntent : INIntent {
  init(rideIdentifier: String)
  var rideIdentifier: String { get }
}
@available(iOS 11.0, *)
protocol INCancelRideIntentHandling : NSObjectProtocol {
  func handle(cancelRide intent: INCancelRideIntent, completion: @escaping (INCancelRideIntentResponse) -> Void)
  optional func confirm(cancelRide intent: INCancelRideIntent, completion: @escaping (INCancelRideIntentResponse) -> Void)
}
