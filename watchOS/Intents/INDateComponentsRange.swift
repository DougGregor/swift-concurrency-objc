
@available(watchOS 3.2, *)
class INDateComponentsRange : NSObject, NSCopying, NSSecureCoding {
  convenience init(start startDateComponents: DateComponents?, end endDateComponents: DateComponents?)
  @available(watchOS 4.0, *)
  init(start startDateComponents: DateComponents?, end endDateComponents: DateComponents?, recurrenceRule: INRecurrenceRule?)
  var startDateComponents: DateComponents? { get }
  var endDateComponents: DateComponents? { get }
  @available(watchOS 4.0, *)
  @NSCopying var recurrenceRule: INRecurrenceRule? { get }
}
