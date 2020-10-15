
@available(watchOS 2.0, *)
struct HKStatisticsOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var separateBySource: HKStatisticsOptions { get }
  static var discreteAverage: HKStatisticsOptions { get }
  static var discreteMin: HKStatisticsOptions { get }
  static var discreteMax: HKStatisticsOptions { get }
  static var cumulativeSum: HKStatisticsOptions { get }
  @available(watchOS 6.0, *)
  static var mostRecent: HKStatisticsOptions { get }
  @available(watchOS, introduced: 5.0, deprecated: 6.0, renamed: "HKStatisticsOptions.mostRecent")
  static var discreteMostRecent: HKStatisticsOptions { get }
  @available(watchOS 6.0, *)
  static var duration: HKStatisticsOptions { get }
}
@available(watchOS 2.0, *)
class HKStatistics : NSObject, NSSecureCoding, NSCopying {
  var quantityType: HKQuantityType { get }
  var startDate: Date { get }
  var endDate: Date { get }
  var sources: [HKSource]? { get }
  func averageQuantity(for source: HKSource) -> HKQuantity?
  func averageQuantity() -> HKQuantity?
  func minimumQuantity(for source: HKSource) -> HKQuantity?
  func minimumQuantity() -> HKQuantity?
  func maximumQuantity(for source: HKSource) -> HKQuantity?
  func maximumQuantity() -> HKQuantity?
  @available(watchOS 5.0, *)
  func mostRecentQuantity(for source: HKSource) -> HKQuantity?
  @available(watchOS 5.0, *)
  func mostRecentQuantity() -> HKQuantity?
  @available(watchOS 5.0, *)
  func mostRecentQuantityDateInterval(for source: HKSource) -> DateInterval?
  @available(watchOS 5.0, *)
  func mostRecentQuantityDateInterval() -> DateInterval?
  func sumQuantity(for source: HKSource) -> HKQuantity?
  func sumQuantity() -> HKQuantity?
  @available(watchOS 6.0, *)
  func duration() -> HKQuantity?
  @available(watchOS 6.0, *)
  func duration(for source: HKSource) -> HKQuantity?
}
