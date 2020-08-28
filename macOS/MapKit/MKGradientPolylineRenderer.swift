
@available(macOS 11.0, *)
class MKGradientPolylineRenderer : MKPolylineRenderer {
  var __locations: [NSNumber] { get }
  var colors: [NSColor] { get }
  func __setColors(_ colors: [NSColor], atLocations locations: [NSNumber])
}

@available(iOS 14.0, tvOS 14.0, macOS 11.0, *)
extension MKGradientPolylineRenderer {
  var locations: [CGFloat] { get }
  func setColors(_ colors: [NSColor], locations: [CGFloat])
}
