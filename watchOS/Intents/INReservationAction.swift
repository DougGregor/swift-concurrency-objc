
@available(watchOS 6.0, *)
class INReservationAction : NSObject, NSCopying, NSSecureCoding {
  init(type: INReservationActionType, validDuration: INDateComponentsRange, userActivity: NSUserActivity)
  var type: INReservationActionType { get }
  @NSCopying var validDuration: INDateComponentsRange { get }
  @NSCopying var userActivity: NSUserActivity { get }
}
