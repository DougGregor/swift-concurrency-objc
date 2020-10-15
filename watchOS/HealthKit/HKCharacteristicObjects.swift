
@available(watchOS 2.0, *)
class HKBiologicalSexObject : NSObject, NSCopying, NSSecureCoding {
  var biologicalSex: HKBiologicalSex { get }
}
@available(watchOS 2.0, *)
class HKBloodTypeObject : NSObject, NSCopying, NSSecureCoding {
  var bloodType: HKBloodType { get }
}
@available(watchOS 2.0, *)
class HKFitzpatrickSkinTypeObject : NSObject, NSCopying, NSSecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
}
@available(watchOS 3.0, *)
class HKWheelchairUseObject : NSObject, NSCopying, NSSecureCoding {
  var wheelchairUse: HKWheelchairUse { get }
}
@available(watchOS 7.0, *)
class HKActivityMoveModeObject : NSObject, NSCopying, NSSecureCoding {
  var activityMoveMode: HKActivityMoveMode { get }
}
