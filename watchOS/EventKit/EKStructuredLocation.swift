
@available(watchOS 2.0, *)
class EKStructuredLocation : EKObject, NSCopying {
  convenience init(title: String)
  var title: String?
  var geoLocation: CLLocation?
  var radius: Double
}
