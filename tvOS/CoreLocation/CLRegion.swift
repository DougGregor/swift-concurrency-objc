
@available(tvOS 7.0, *)
@frozen enum CLRegionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case inside
  case outside
}
@available(tvOS 7.0, *)
enum CLProximity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case immediate
  case near
  case far
}
@available(tvOS 4.0, *)
class CLRegion : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 4.0, *)
  var identifier: String { get }
  @available(tvOS 7.0, *)
  var notifyOnEntry: Bool
  @available(tvOS 7.0, *)
  var notifyOnExit: Bool
}
