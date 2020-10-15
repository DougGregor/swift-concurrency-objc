
@available(macOS 11.0, *)
class INDateComponentsRange : NSObject, NSCopying, NSSecureCoding {
  convenience init(start startDateComponents: DateComponents?, end endDateComponents: DateComponents?)
  init(start startDateComponents: DateComponents?, end endDateComponents: DateComponents?, recurrenceRule: INRecurrenceRule?)
  var startDateComponents: DateComponents? { get }
  var endDateComponents: DateComponents? { get }
  @NSCopying var recurrenceRule: INRecurrenceRule? { get }
}
