
@available(iOS 10.0, *)
enum UITimingCurveType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case builtin
  case cubic
  case spring
  case composed
}
protocol UITimingCurveProvider : NSCoding, NSCopying {
  @available(iOS 10.0, *)
  var timingCurveType: UITimingCurveType { get }
  @available(iOS 10.0, *)
  var cubicTimingParameters: UICubicTimingParameters? { get }
  @available(iOS 10.0, *)
  var springTimingParameters: UISpringTimingParameters? { get }
}
