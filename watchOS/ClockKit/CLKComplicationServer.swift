
extension NSNotification.Name {
  @available(watchOS 2.0, *)
  static let CLKComplicationServerActiveComplicationsDidChange: NSNotification.Name
}
@available(watchOS 2.0, *)
class CLKComplicationServer : NSObject {
  class func sharedInstance() -> Self
  var activeComplications: [CLKComplication]? { get }
  func reloadTimeline(for complication: CLKComplication)
  func extendTimeline(for complication: CLKComplication)
  @available(watchOS 7.0, *)
  func reloadComplicationDescriptors()
  @available(watchOS, introduced: 2.0, deprecated: 7.0, message: "Time Travel is no longer supported.")
  var earliestTimeTravelDate: Date { get }
  @available(watchOS, introduced: 2.0, deprecated: 7.0, message: "Time Travel is no longer supported.")
  var latestTimeTravelDate: Date { get }
}
