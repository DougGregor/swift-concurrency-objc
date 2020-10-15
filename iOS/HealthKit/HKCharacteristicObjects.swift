
@available(iOS 8.0, *)
class HKBiologicalSexObject : NSObject, NSCopying, NSSecureCoding {
  var biologicalSex: HKBiologicalSex { get }
}
@available(iOS 8.0, *)
class HKBloodTypeObject : NSObject, NSCopying, NSSecureCoding {
  var bloodType: HKBloodType { get }
}
@available(iOS 9.0, *)
class HKFitzpatrickSkinTypeObject : NSObject, NSCopying, NSSecureCoding {
  var skinType: HKFitzpatrickSkinType { get }
}
@available(iOS 10.0, *)
class HKWheelchairUseObject : NSObject, NSCopying, NSSecureCoding {
  var wheelchairUse: HKWheelchairUse { get }
}
@available(iOS 14.0, *)
class HKActivityMoveModeObject : NSObject, NSCopying, NSSecureCoding {
  var activityMoveMode: HKActivityMoveMode { get }
}
