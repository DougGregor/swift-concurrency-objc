
@available(watchOS 2.0, *)
class HKCorrelation : HKSample {
  var correlationType: HKCorrelationType { get }
  var objects: Set<HKSample> { get }
  convenience init(type correlationType: HKCorrelationType, start startDate: Date, end endDate: Date, objects: Set<HKSample>)
  convenience init(type correlationType: HKCorrelationType, start startDate: Date, end endDate: Date, objects: Set<HKSample>, metadata: [String : Any]?)
  @available(watchOS 2.0, *)
  convenience init(type correlationType: HKCorrelationType, start startDate: Date, end endDate: Date, objects: Set<HKSample>, device: HKDevice?, metadata: [String : Any]?)
  func objects(for objectType: HKObjectType) -> Set<HKSample>
}
