
@available(tvOS 11.0, *)
class INTask : NSObject, NSCopying, NSSecureCoding {
  @available(tvOS 13.0, *)
  init(title: INSpeakableString, status: INTaskStatus, taskType: INTaskType, spatialEventTrigger: INSpatialEventTrigger?, temporalEventTrigger: INTemporalEventTrigger?, createdDateComponents: DateComponents?, modifiedDateComponents: DateComponents?, identifier: String?, priority: INTaskPriority)
  convenience init(title: INSpeakableString, status: INTaskStatus, taskType: INTaskType, spatialEventTrigger: INSpatialEventTrigger?, temporalEventTrigger: INTemporalEventTrigger?, createdDateComponents: DateComponents?, modifiedDateComponents: DateComponents?, identifier: String?)
  @NSCopying var title: INSpeakableString { get }
  var status: INTaskStatus { get }
  @NSCopying var spatialEventTrigger: INSpatialEventTrigger? { get }
  @NSCopying var temporalEventTrigger: INTemporalEventTrigger? { get }
  var createdDateComponents: DateComponents? { get }
  var modifiedDateComponents: DateComponents? { get }
  var identifier: String? { get }
  var taskType: INTaskType { get }
  @available(tvOS 13.0, *)
  var priority: INTaskPriority { get }
}
