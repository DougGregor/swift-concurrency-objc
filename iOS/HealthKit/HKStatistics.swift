
@available(iOS 8.0, *)
struct HKStatisticsOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var separateBySource: HKStatisticsOptions { get }
  static var discreteAverage: HKStatisticsOptions { get }
  static var discreteMin: HKStatisticsOptions { get }
  static var discreteMax: HKStatisticsOptions { get }
  static var cumulativeSum: HKStatisticsOptions { get }
  @available(iOS 13.0, *)
  static var mostRecent: HKStatisticsOptions { get }
  @available(iOS, introduced: 12.0, deprecated: 13.0, renamed: "HKStatisticsOptions.mostRecent")
  static var discreteMostRecent: HKStatisticsOptions { get }
  @available(iOS 13.0, *)
  static var duration: HKStatisticsOptions { get }
}
@available(iOS 8.0, *)
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
  @available(iOS 12.0, *)
  func mostRecentQuantity(for source: HKSource) -> HKQuantity?
  @available(iOS 12.0, *)
  func mostRecentQuantity() -> HKQuantity?
  @available(iOS 12.0, *)
  func mostRecentQuantityDateInterval(for source: HKSource) -> DateInterval?
  @available(iOS 12.0, *)
  func mostRecentQuantityDateInterval() -> DateInterval?
  func sumQuantity(for source: HKSource) -> HKQuantity?
  func sumQuantity() -> HKQuantity?
  @available(iOS 13.0, *)
  func duration() -> HKQuantity?
  @available(iOS 13.0, *)
  func duration(for source: HKSource) -> HKQuantity?
}
