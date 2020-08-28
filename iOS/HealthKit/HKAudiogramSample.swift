
@available(iOS 13.0, *)
class HKAudiogramSample : HKSample {
  var sensitivityPoints: [HKAudiogramSensitivityPoint] { get }
  convenience init(sensitivityPoints: [HKAudiogramSensitivityPoint], start startDate: Date, end endDate: Date, metadata: [String : Any]?)
}
@available(iOS 13.0, *)
class HKAudiogramSensitivityPoint : NSObject {
  @NSCopying var frequency: HKQuantity { get }
  @NSCopying var leftEarSensitivity: HKQuantity? { get }
  @NSCopying var rightEarSensitivity: HKQuantity? { get }
  convenience init(frequency: HKQuantity, leftEarSensitivity: HKQuantity?, rightEarSensitivity: HKQuantity?) throws
}
