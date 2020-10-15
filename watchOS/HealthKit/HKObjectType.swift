
@available(watchOS 2.0, *)
class HKObjectType : NSObject, NSSecureCoding, NSCopying {
  var identifier: String { get }
  class func quantityType(forIdentifier identifier: HKQuantityTypeIdentifier) -> HKQuantityType?
  class func categoryType(forIdentifier identifier: HKCategoryTypeIdentifier) -> HKCategoryType?
  class func characteristicType(forIdentifier identifier: HKCharacteristicTypeIdentifier) -> HKCharacteristicType?
  class func correlationType(forIdentifier identifier: HKCorrelationTypeIdentifier) -> HKCorrelationType?
  @available(watchOS 3.0, *)
  class func documentType(forIdentifier identifier: HKDocumentTypeIdentifier) -> HKDocumentType?
  @available(watchOS 4.0, *)
  class func seriesType(forIdentifier identifier: String) -> HKSeriesType?
  class func workoutType() -> HKWorkoutType
  @available(watchOS 2.2, *)
  class func activitySummaryType() -> HKActivitySummaryType
  @available(watchOS 6.0, *)
  class func audiogramSampleType() -> HKAudiogramSampleType
  @available(watchOS 7.0, *)
  class func electrocardiogramType() -> HKElectrocardiogramType
}
@available(watchOS 2.0, *)
class HKCharacteristicType : HKObjectType {
}
@available(watchOS 2.0, *)
class HKSampleType : HKObjectType {
  @available(watchOS 6.0, *)
  var isMaximumDurationRestricted: Bool { get }
  @available(watchOS 6.0, *)
  var maximumAllowedDuration: TimeInterval { get }
  @available(watchOS 6.0, *)
  var isMinimumDurationRestricted: Bool { get }
  @available(watchOS 6.0, *)
  var minimumAllowedDuration: TimeInterval { get }
}
@available(watchOS 2.0, *)
class HKCategoryType : HKSampleType {
}
@available(watchOS 2.0, *)
class HKCorrelationType : HKSampleType {
}
@available(watchOS 3.0, *)
class HKDocumentType : HKSampleType {
}
@available(watchOS 2.0, *)
class HKQuantityType : HKSampleType {
  var aggregationStyle: HKQuantityAggregationStyle { get }
  func `is`(compatibleWith unit: HKUnit) -> Bool
}
@available(watchOS 2.0, *)
class HKWorkoutType : HKSampleType {
}
@available(watchOS 4.0, *)
class HKSeriesType : HKSampleType {
  class func workoutRoute() -> Self
  @available(watchOS 6.0, *)
  class func heartbeat() -> Self
}
@available(watchOS 2.2, *)
class HKActivitySummaryType : HKObjectType {
}
@available(watchOS 6.0, *)
class HKAudiogramSampleType : HKSampleType {
}
@available(watchOS 7.0, *)
class HKElectrocardiogramType : HKSampleType {
}
