
@available(macOS 11.0, *)
class CLSActivity : CLSObject {
  var progress: Double
  var duration: TimeInterval { get }
  var primaryActivityItem: CLSActivityItem?
  func addProgressRange(fromStart start: Double, toEnd end: Double)
  func addAdditionalActivityItem(_ activityItem: CLSActivityItem)
  var additionalActivityItems: [CLSActivityItem] { get }
}
@available(macOS 11.0, *)
extension CLSActivity {
  var isStarted: Bool { get }
  func start()
  func stop()
}
@available(macOS 11.0, *)
extension CLSContext {
  var currentActivity: CLSActivity? { get }
  func createNewActivity() -> CLSActivity
}
