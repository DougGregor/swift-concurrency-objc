
@available(iOS 11.3, *)
class CLSActivity : CLSObject {
  var progress: Double
  var duration: TimeInterval { get }
  var primaryActivityItem: CLSActivityItem?
  func addProgressRange(fromStart start: Double, toEnd end: Double)
  func addAdditionalActivityItem(_ activityItem: CLSActivityItem)
  var additionalActivityItems: [CLSActivityItem] { get }
}
@available(iOS 11.3, *)
extension CLSActivity {
  var isStarted: Bool { get }
  func start()
  func stop()
}
@available(iOS 11.3, *)
extension CLSContext {
  var currentActivity: CLSActivity? { get }
  func createNewActivity() -> CLSActivity
}
