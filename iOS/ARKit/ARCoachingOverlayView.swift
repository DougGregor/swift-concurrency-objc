
extension ARCoachingOverlayView {
  @available(iOS 13.0, *)
  enum Goal : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case tracking
    case horizontalPlane
    case verticalPlane
    case anyPlane
  }
}
@available(iOS 13.0, *)
class ARCoachingOverlayView : UIView {
  @IBOutlet weak var delegate: @sil_weak ARCoachingOverlayViewDelegate?
  @IBOutlet weak var sessionProvider: @sil_weak ARSessionProviding?
  var session: ARSession?
  var goal: ARCoachingOverlayView.Goal
  var activatesAutomatically: Bool
  var isActive: Bool { get }
  func setActive(_ active: Bool, animated: Bool)
}
@available(iOS 13.0, *)
protocol ARCoachingOverlayViewDelegate : NSObjectProtocol {
  optional func coachingOverlayViewDidRequestSessionReset(_ coachingOverlayView: ARCoachingOverlayView)
  optional func coachingOverlayViewWillActivate(_ coachingOverlayView: ARCoachingOverlayView)
  optional func coachingOverlayViewDidDeactivate(_ coachingOverlayView: ARCoachingOverlayView)
}
