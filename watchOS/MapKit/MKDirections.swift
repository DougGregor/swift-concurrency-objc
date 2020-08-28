
extension MKDirections {
  typealias DirectionsHandler = (MKDirections.Response?, Error?) -> Void
  typealias ETAHandler = (MKDirections.ETAResponse?, Error?) -> Void
}
@available(watchOS 2.0, *)
class MKDirections : NSObject {
  init(request: MKDirections.Request)
  func calculate(completionHandler: @escaping MKDirections.DirectionsHandler)
  func calculateETA(completionHandler: @escaping MKDirections.ETAHandler)
  func cancel()
  var isCalculating: Bool { get }
}
