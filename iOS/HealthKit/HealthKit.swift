
@available(iOS 14.0, *)
extension HKElectrocardiogramQuery {
  enum Result {
    case measurement(HKElectrocardiogram.VoltageMeasurement)
    case error(Error)
    case done
  }
  convenience init(_ ecg: HKElectrocardiogram, dataHandler: @escaping (HKElectrocardiogramQuery, HKElectrocardiogramQuery.Result) -> Void)
}

