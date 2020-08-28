
enum CLKComplicationFamily : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case modularSmall
  case modularLarge
  case utilitarianSmall
  case utilitarianSmallFlat
  case utilitarianLarge
  case circularSmall
  case extraLarge
  case graphicCorner
  case graphicBezel
  case graphicCircular
  case graphicRectangular
  case graphicExtraLarge
}
struct CLKComplicationTimeTravelDirections : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var forward: CLKComplicationTimeTravelDirections { get }
  static var backward: CLKComplicationTimeTravelDirections { get }
}
enum CLKComplicationPrivacyBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case showOnLockScreen
  case hideOnLockScreen
}
enum CLKComplicationTimelineAnimationBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case never
  case grouped
  case always
}
enum CLKComplicationColumnAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leading
  case trailing
  static var left: CLKComplicationColumnAlignment { get }
  static var right: CLKComplicationColumnAlignment { get }
}
enum CLKComplicationRingStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case closed
  case open
}
enum CLKGaugeProviderStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ring
  case fill
}
let CLKSimpleGaugeProviderFillFractionEmpty: Float
let CLKLaunchedTimelineEntryDateKey: String
let CLKLaunchedComplicationIdentifierKey: String
let CLKDefaultComplicationIdentifier: String
func __CLKAllComplicationFamilies() -> [NSNumber]!
