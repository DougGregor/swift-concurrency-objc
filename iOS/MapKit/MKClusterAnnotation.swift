
@available(iOS 11.0, *)
class MKClusterAnnotation : NSObject, MKAnnotation {
  var memberAnnotations: [MKAnnotation] { get }
  init(memberAnnotations: [MKAnnotation])
}
