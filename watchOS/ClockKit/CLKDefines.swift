
@available(watchOS 2.0, *)
enum CLKComplicationFamily : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case modularSmall
  case modularLarge
  case utilitarianSmall
  @available(watchOS 3.0, *)
  case utilitarianSmallFlat
  case utilitarianLarge
  case circularSmall
  @available(watchOS 3.0, *)
  case extraLarge
  @available(watchOS 5.0, *)
  case graphicCorner
  @available(watchOS 5.0, *)
  case graphicBezel
  @available(watchOS 5.0, *)
  case graphicCircular
  @available(watchOS 5.0, *)
  case graphicRectangular
  @available(watchOS 7.0, *)
  case graphicExtraLarge
}

@available(watchOS 7.0, *)
extension CLKComplicationFamily : CaseIterable {
}
@available(watchOS 2.0, *)
struct CLKComplicationTimeTravelDirections : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var forward: CLKComplicationTimeTravelDirections { get }
  static var backward: CLKComplicationTimeTravelDirections { get }
}
@available(watchOS 2.0, *)
enum CLKComplicationPrivacyBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case showOnLockScreen
  case hideOnLockScreen
}
@available(watchOS 2.0, *)
enum CLKComplicationTimelineAnimationBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case never
  case grouped
  case always
}
@available(watchOS 2.0, *)
enum CLKComplicationColumnAlignment : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case leading
  case trailing
  @available(watchOS, introduced: 2.0, deprecated: 2.1, renamed: "CLKComplicationColumnAlignment.leading")
  static var left: CLKComplicationColumnAlignment { get }
  @available(watchOS, introduced: 2.0, deprecated: 2.1, renamed: "CLKComplicationColumnAlignment.trailing")
  static var right: CLKComplicationColumnAlignment { get }
}
@available(watchOS 2.0, *)
enum CLKComplicationRingStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case closed
  case open
}
@available(watchOS 5.0, *)
enum CLKGaugeProviderStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ring
  case fill
}
@available(watchOS 5.0, *)
let CLKSimpleGaugeProviderFillFractionEmpty: Float
@available(watchOS 2.0, *)
let CLKLaunchedTimelineEntryDateKey: String
@available(watchOS 7.0, *)
let CLKLaunchedComplicationIdentifierKey: String
@available(watchOS 7.0, *)
let CLKDefaultComplicationIdentifier: String
@available(watchOS 7.0, *)
func __CLKAllComplicationFamilies() -> [NSNumber]!
