
@available(watchOS 2.0, *)
class CLKComplicationTimelineEntry : NSObject {
  convenience init(date: Date, complicationTemplate: CLKComplicationTemplate)
  convenience init(date: Date, complicationTemplate: CLKComplicationTemplate, timelineAnimationGroup: String?)
  var date: Date
  @NSCopying var complicationTemplate: CLKComplicationTemplate
  var timelineAnimationGroup: String?
}
