
@available(tvOS 10.0, *)
enum UITimingCurveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case builtin
  case cubic
  case spring
  case composed
}
protocol UITimingCurveProvider : NSCoding, NSCopying {
  @available(tvOS 10.0, *)
  var timingCurveType: UITimingCurveType { get }
  @available(tvOS 10.0, *)
  var cubicTimingParameters: UICubicTimingParameters? { get }
  @available(tvOS 10.0, *)
  var springTimingParameters: UISpringTimingParameters? { get }
}
