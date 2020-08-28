
extension NSNotification.Name {
  static let CLKComplicationServerActiveComplicationsDidChange: NSNotification.Name
}
class CLKComplicationServer : NSObject {
  class func sharedInstance() -> Self
  var activeComplications: [CLKComplication]? { get }
  func reloadTimeline(for complication: CLKComplication)
  func extendTimeline(for complication: CLKComplication)
  func reloadComplicationDescriptors()
  var earliestTimeTravelDate: Date { get }
  var latestTimeTravelDate: Date { get }
}
