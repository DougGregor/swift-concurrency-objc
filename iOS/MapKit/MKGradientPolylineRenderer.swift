
@available(iOS 14.0, *)
class MKGradientPolylineRenderer : MKPolylineRenderer {
  var __locations: [NSNumber] { get }
  var colors: [UIColor] { get }
  func __setColors(_ colors: [UIColor], atLocations locations: [NSNumber])
}

@available(iOS 14.0, tvOS 14.0, macOS 11.0, *)
extension MKGradientPolylineRenderer {
  var locations: [CGFloat] { get }
  func setColors(_ colors: [UIColor], locations: [CGFloat])
}
