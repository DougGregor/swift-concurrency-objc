
@available(watchOS 7.0, *)
class MKGradientPolylineRenderer : MKPolylineRenderer {
  var __locations: [NSNumber] { get }
  var colors: [UIColor] { get }
  func __setColors(_ colors: [UIColor], atLocations locations: [NSNumber])
}
