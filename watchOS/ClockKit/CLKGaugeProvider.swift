
@available(watchOS 5.0, *)
class CLKGaugeProvider : NSObject, NSCopying {
  var style: CLKGaugeProviderStyle { get }
  var gaugeColors: [UIColor]? { get }
  var gaugeColorLocations: [NSNumber]? { get }
  var accessibilityLabel: String?
}
@available(watchOS 5.0, *)
class CLKSimpleGaugeProvider : CLKGaugeProvider {
  convenience init(style: CLKGaugeProviderStyle, gaugeColors: [UIColor]?, gaugeColorLocations: [NSNumber]?, fillFraction: Float)
  convenience init(style: CLKGaugeProviderStyle, gaugeColor color: UIColor, fillFraction: Float)
  var fillFraction: Float { get }
}
@available(watchOS 5.0, *)
class CLKTimeIntervalGaugeProvider : CLKGaugeProvider {
  convenience init(style: CLKGaugeProviderStyle, gaugeColors: [UIColor]?, gaugeColorLocations: [NSNumber]?, start startDate: Date, end endDate: Date)
  convenience init(style: CLKGaugeProviderStyle, gaugeColors: [UIColor]?, gaugeColorLocations: [NSNumber]?, start startDate: Date, startFillFraction: Float, end endDate: Date, endFillFraction: Float)
  var startDate: Date { get }
  var endDate: Date { get }
  var startFillFraction: Float { get }
  var endFillFraction: Float { get }
}
