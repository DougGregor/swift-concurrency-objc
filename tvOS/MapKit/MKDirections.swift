
extension MKDirections {
  typealias DirectionsHandler = (MKDirections.Response?, Error?) -> Void
  typealias ETAHandler = (MKDirections.ETAResponse?, Error?) -> Void
}
@available(tvOS 9.2, *)
class MKDirections : NSObject {
  init(request: MKDirections.Request)
  func calculate(completionHandler: @escaping MKDirections.DirectionsHandler)
  func calculate() async throws -> MKDirections.Response?
  func calculateETA(completionHandler: @escaping MKDirections.ETAHandler)
  func calculateETA() async throws -> MKDirections.ETAResponse?
  func cancel()
  var isCalculating: Bool { get }
}
