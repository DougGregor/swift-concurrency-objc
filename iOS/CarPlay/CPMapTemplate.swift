
extension CPMapTemplate {
  @available(iOS 12.0, *)
  struct PanDirection : OptionSet {
    init(rawValue: Int)
    let rawValue: Int
    static var left: CPMapTemplate.PanDirection { get }
    static var right: CPMapTemplate.PanDirection { get }
    static var up: CPMapTemplate.PanDirection { get }
    static var down: CPMapTemplate.PanDirection { get }
  }
}
@available(iOS 12.0, *)
struct CPManeuverDisplayStyle : OptionSet {
  init(rawValue: Int)
  let rawValue: Int
  static var leadingSymbol: CPManeuverDisplayStyle { get }
  static var trailingSymbol: CPManeuverDisplayStyle { get }
  static var symbolOnly: CPManeuverDisplayStyle { get }
  static var instructionOnly: CPManeuverDisplayStyle { get }
}
@available(iOS 12.0, *)
enum CPTimeRemainingColor : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case green
  case orange
  case red
}
@available(iOS 12.0, *)
enum CPTripEstimateStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case light
  case dark
}
@available(iOS 12.0, *)
class CPMapTemplate : CPTemplate, CPBarButtonProviding {
  var guidanceBackgroundColor: UIColor
  var tripEstimateStyle: CPTripEstimateStyle
  var mapButtons: [CPMapButton]
  func showTripPreviews(_ tripPreviews: [CPTrip], textConfiguration: CPTripPreviewTextConfiguration?)
  @available(iOS 14.0, *)
  func showTripPreviews(_ tripPreviews: [CPTrip], selectedTrip: CPTrip?, textConfiguration: CPTripPreviewTextConfiguration?)
  func showRouteChoicesPreview(for tripPreview: CPTrip, textConfiguration: CPTripPreviewTextConfiguration?)
  func hideTripPreviews()
  func updateEstimates(_ estimates: CPTravelEstimates, for trip: CPTrip)
  func update(_ estimates: CPTravelEstimates, for trip: CPTrip, with timeRemainingColor: CPTimeRemainingColor)
  func startNavigationSession(for trip: CPTrip) -> CPNavigationSession
  var automaticallyHidesNavigationBar: Bool
  var hidesButtonsWithNavigationBar: Bool
  weak var mapDelegate: @sil_weak CPMapTemplateDelegate?
  func showPanningInterface(animated: Bool)
  func dismissPanningInterface(animated: Bool)
  var isPanningInterfaceVisible: Bool { get }
  var currentNavigationAlert: CPNavigationAlert? { get }
  func present(navigationAlert: CPNavigationAlert, animated: Bool)
  func dismissNavigationAlert(animated: Bool, completion: @escaping (Bool) -> Void)
  func dismissNavigationAlert(animated: Bool) async -> Bool
}
@available(iOS 12.0, *)
protocol CPMapTemplateDelegate : NSObjectProtocol {
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, shouldShowNotificationFor maneuver: CPManeuver) -> Bool
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, shouldUpdateNotificationFor maneuver: CPManeuver, with travelEstimates: CPTravelEstimates) -> Bool
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, shouldShowNotificationFor navigationAlert: CPNavigationAlert) -> Bool
  @asyncHandler optional func mapTemplateDidShowPanningInterface(_ mapTemplate: CPMapTemplate)
  optional func mapTemplateWillDismissPanningInterface(_ mapTemplate: CPMapTemplate)
  @asyncHandler optional func mapTemplateDidDismissPanningInterface(_ mapTemplate: CPMapTemplate)
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, panBeganWith direction: CPMapTemplate.PanDirection)
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, panEndedWith direction: CPMapTemplate.PanDirection)
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, panWith direction: CPMapTemplate.PanDirection)
  @asyncHandler optional func mapTemplateDidBeginPanGesture(_ mapTemplate: CPMapTemplate)
  @asyncHandler optional func mapTemplate(_ mapTemplate: CPMapTemplate, didUpdatePanGestureWithTranslation translation: CGPoint, velocity: CGPoint)
  @asyncHandler optional func mapTemplate(_ mapTemplate: CPMapTemplate, didEndPanGestureWithVelocity velocity: CGPoint)
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, willShow navigationAlert: CPNavigationAlert)
  @asyncHandler optional func mapTemplate(_ mapTemplate: CPMapTemplate, didShow navigationAlert: CPNavigationAlert)
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, willDismiss navigationAlert: CPNavigationAlert, dismissalContext: CPNavigationAlert.DismissalContext)
  @asyncHandler optional func mapTemplate(_ mapTemplate: CPMapTemplate, didDismiss navigationAlert: CPNavigationAlert, dismissalContext: CPNavigationAlert.DismissalContext)
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, selectedPreviewFor trip: CPTrip, using routeChoice: CPRouteChoice)
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, startedTrip trip: CPTrip, using routeChoice: CPRouteChoice)
  @asyncHandler optional func mapTemplateDidCancelNavigation(_ mapTemplate: CPMapTemplate)
  optional func mapTemplate(_ mapTemplate: CPMapTemplate, displayStyleFor maneuver: CPManeuver) -> CPManeuverDisplayStyle
}
