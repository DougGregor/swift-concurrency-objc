
protocol CLKComplicationDataSource : NSObjectProtocol {
  optional func getTimelineEndDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void)
  optional func getPrivacyBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationPrivacyBehavior) -> Void)
  optional func getTimelineAnimationBehavior(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineAnimationBehavior) -> Void)
  optional func getAlwaysOnTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void)
  func getCurrentTimelineEntry(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimelineEntry?) -> Void)
  optional func getTimelineEntries(for complication: CLKComplication, after date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getLocalizableSampleTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void)
  optional func getComplicationDescriptors(handler: @escaping ([CLKComplicationDescriptor]) -> Void)
  optional func handleSharedComplicationDescriptors(_ complicationDescriptors: [CLKComplicationDescriptor])
  optional func getPlaceholderTemplate(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTemplate?) -> Void)
  optional func getSupportedTimeTravelDirections(for complication: CLKComplication, withHandler handler: @escaping (CLKComplicationTimeTravelDirections) -> Void)
  optional func getTimelineStartDate(for complication: CLKComplication, withHandler handler: @escaping (Date?) -> Void)
  optional func getTimelineEntries(for complication: CLKComplication, before date: Date, limit: Int, withHandler handler: @escaping ([CLKComplicationTimelineEntry]?) -> Void)
  optional func getNextRequestedUpdateDate(handler: @escaping (Date?) -> Void)
  optional func requestedUpdateDidBegin()
  optional func requestedUpdateBudgetExhausted()
}
