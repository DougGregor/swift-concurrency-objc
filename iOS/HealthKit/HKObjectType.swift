
@available(iOS 8.0, *)
class HKObjectType : NSObject, NSSecureCoding, NSCopying {
  var identifier: String { get }
  class func quantityType(forIdentifier identifier: HKQuantityTypeIdentifier) -> HKQuantityType?
  class func categoryType(forIdentifier identifier: HKCategoryTypeIdentifier) -> HKCategoryType?
  class func characteristicType(forIdentifier identifier: HKCharacteristicTypeIdentifier) -> HKCharacteristicType?
  class func correlationType(forIdentifier identifier: HKCorrelationTypeIdentifier) -> HKCorrelationType?
  @available(iOS 10.0, *)
  class func documentType(forIdentifier identifier: HKDocumentTypeIdentifier) -> HKDocumentType?
  @available(iOS 11.0, *)
  class func seriesType(forIdentifier identifier: String) -> HKSeriesType?
  class func workoutType() -> HKWorkoutType
  @available(iOS 9.3, *)
  class func activitySummaryType() -> HKActivitySummaryType
  @available(iOS 13.0, *)
  class func audiogramSampleType() -> HKAudiogramSampleType
  @available(iOS 14.0, *)
  class func electrocardiogramType() -> HKElectrocardiogramType
}
@available(iOS 8.0, *)
class HKCharacteristicType : HKObjectType {
}
@available(iOS 8.0, *)
class HKSampleType : HKObjectType {
  @available(iOS 13.0, *)
  var isMaximumDurationRestricted: Bool { get }
  @available(iOS 13.0, *)
  var maximumAllowedDuration: TimeInterval { get }
  @available(iOS 13.0, *)
  var isMinimumDurationRestricted: Bool { get }
  @available(iOS 13.0, *)
  var minimumAllowedDuration: TimeInterval { get }
}
@available(iOS 8.0, *)
class HKCategoryType : HKSampleType {
}
@available(iOS 8.0, *)
class HKCorrelationType : HKSampleType {
}
@available(iOS 10.0, *)
class HKDocumentType : HKSampleType {
}
@available(iOS 8.0, *)
class HKQuantityType : HKSampleType {
  var aggregationStyle: HKQuantityAggregationStyle { get }
  func `is`(compatibleWith unit: HKUnit) -> Bool
}
@available(iOS 8.0, *)
class HKWorkoutType : HKSampleType {
}
@available(iOS 11.0, *)
class HKSeriesType : HKSampleType {
  class func workoutRoute() -> Self
  @available(iOS 13.0, *)
  class func heartbeat() -> Self
}
@available(iOS 9.3, *)
class HKActivitySummaryType : HKObjectType {
}
@available(iOS 13.0, *)
class HKAudiogramSampleType : HKSampleType {
}
@available(iOS 14.0, *)
class HKElectrocardiogramType : HKSampleType {
}
