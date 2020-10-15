
@available(iOS 14.0, *)
class CPPointOfInterest : NSObject, NSSecureCoding {
  init(location: MKMapItem, title: String, subtitle: String?, summary: String?, detailTitle: String?, detailSubtitle: String?, detailSummary: String?, pinImage: UIImage?)
  var location: MKMapItem
  var title: String
  var subtitle: String?
  var summary: String?
  var detailTitle: String?
  var detailSubtitle: String?
  var detailSummary: String?
  var pinImage: UIImage?
  var primaryButton: CPTextButton?
  var secondaryButton: CPTextButton?
  var userInfo: Any?
}
