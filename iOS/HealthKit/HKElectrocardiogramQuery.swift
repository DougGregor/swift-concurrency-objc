
extension HKElectrocardiogram {
  @available(iOS 14.0, *)
  class VoltageMeasurement : NSObject {
    var timeSinceSampleStart: TimeInterval { get }
    func quantity(for lead: HKElectrocardiogram.Lead) -> HKQuantity?
  }
}
@available(iOS 14.0, *)
class HKElectrocardiogramQuery : HKQuery {
  init(electrocardiogram: HKElectrocardiogram, dataHandler: @escaping (HKElectrocardiogramQuery, HKElectrocardiogram.VoltageMeasurement?, Bool, Error?) -> Void)
}

@available(iOS 14.0, *)
extension HKElectrocardiogramQuery {
  enum Result {
    case measurement(HKElectrocardiogram.VoltageMeasurement)
    case error(Error)
    case done
  }
  convenience init(_ ecg: HKElectrocardiogram, dataHandler: @escaping (HKElectrocardiogramQuery, HKElectrocardiogramQuery.Result) -> Void)
}
