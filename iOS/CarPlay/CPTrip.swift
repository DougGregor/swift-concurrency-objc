
@available(iOS 12.0, *)
class CPRouteChoice : NSObject, NSCopying, NSSecureCoding {
  init(summaryVariants: [String], additionalInformationVariants: [String], selectionSummaryVariants: [String])
  var summaryVariants: [String] { get }
  var selectionSummaryVariants: [String]? { get }
  var additionalInformationVariants: [String]? { get }
  var userInfo: Any?
}
@available(iOS 12.0, *)
class CPTrip : NSObject, NSSecureCoding {
  init(origin: MKMapItem, destination: MKMapItem, routeChoices: [CPRouteChoice])
  var origin: MKMapItem { get }
  var destination: MKMapItem { get }
  var routeChoices: [CPRouteChoice] { get }
  var userInfo: Any?
}
