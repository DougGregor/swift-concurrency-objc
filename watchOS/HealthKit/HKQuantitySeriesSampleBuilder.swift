
@available(watchOS 5.0, *)
class HKQuantitySeriesSampleBuilder : NSObject {
  init(healthStore: HKHealthStore, quantityType: HKQuantityType, startDate: Date, device: HKDevice?)
  @NSCopying var quantityType: HKQuantityType { get }
  var startDate: Date { get }
  @NSCopying var device: HKDevice? { get }
  @available(watchOS 6.0, *)
  func insert(_ quantity: HKQuantity, for dateInterval: DateInterval) throws
  func insert(_ quantity: HKQuantity, at date: Date) throws
  func finishSeries(metadata: [String : Any]?, endDate: Date?, completion: @escaping ([HKQuantitySample]?, Error?) -> Void)
  func finishSeries(metadata: [String : Any]?, endDate: Date?) async throws -> [HKQuantitySample]
  func finishSeries(metadata: [String : Any]?, completion: @escaping ([HKQuantitySample]?, Error?) -> Void)
  func finishSeries(metadata: [String : Any]?) async throws -> [HKQuantitySample]
  func discard()
}
