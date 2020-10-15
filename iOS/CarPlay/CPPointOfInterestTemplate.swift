
@available(iOS 14.0, *)
protocol CPPointOfInterestTemplateDelegate : NSObjectProtocol {
  @asyncHandler func pointOfInterestTemplate(_ pointOfInterestTemplate: CPPointOfInterestTemplate, didChangeMapRegion region: MKCoordinateRegion)
  @asyncHandler optional func pointOfInterestTemplate(_ pointOfInterestTemplate: CPPointOfInterestTemplate, didSelectPointOfInterest pointOfInterest: CPPointOfInterest)
}
@available(iOS 14.0, *)
class CPPointOfInterestTemplate : CPTemplate {
  init(title: String, pointsOfInterest: [CPPointOfInterest], selectedIndex: Int)
  var title: String
  func setPointsOfInterest(_ pointsOfInterest: [CPPointOfInterest], selectedIndex: Int)
  var pointsOfInterest: [CPPointOfInterest] { get }
  var selectedIndex: Int
  weak var pointOfInterestDelegate: @sil_weak CPPointOfInterestTemplateDelegate?
}
