
@available(watchOS 4.0, *)
class MKClusterAnnotation : NSObject, MKAnnotation {
  var memberAnnotations: [MKAnnotation] { get }
  init(memberAnnotations: [MKAnnotation])
}
