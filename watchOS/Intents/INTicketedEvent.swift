
@available(watchOS 6.0, *)
class INTicketedEvent : NSObject, NSCopying, NSSecureCoding {
  init(category: INTicketedEventCategory, name: String, eventDuration: INDateComponentsRange, location: CLPlacemark?)
  var category: INTicketedEventCategory { get }
  var name: String { get }
  @NSCopying var eventDuration: INDateComponentsRange { get }
  @NSCopying var location: CLPlacemark? { get }
}
