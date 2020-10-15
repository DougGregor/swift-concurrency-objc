
@available(tvOS 14.0, *)
class INDateComponentsRange : NSObject, NSCopying, NSSecureCoding {
  convenience init(start startDateComponents: DateComponents?, end endDateComponents: DateComponents?)
  @available(tvOS 11.0, *)
  init(start startDateComponents: DateComponents?, end endDateComponents: DateComponents?, recurrenceRule: INRecurrenceRule?)
  var startDateComponents: DateComponents? { get }
  var endDateComponents: DateComponents? { get }
  @available(tvOS 11.0, *)
  @NSCopying var recurrenceRule: INRecurrenceRule? { get }
}
