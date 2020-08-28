
@available(macOS 10.13, *)
class MKClusterAnnotation : NSObject, MKAnnotation {
  var memberAnnotations: [MKAnnotation] { get }
  init(memberAnnotations: [MKAnnotation])
}
