
@available(watchOS 6.0, *)
class CNChangeHistoryEvent : NSObject, NSCopying, NSSecureCoding {
  func accept(_ visitor: CNChangeHistoryEventVisitor)
}
@available(watchOS 6.0, *)
class CNChangeHistoryDropEverythingEvent : CNChangeHistoryEvent {
}
@available(watchOS 6.0, *)
class CNChangeHistoryAddContactEvent : CNChangeHistoryEvent {
  var contact: CNContact { get }
  var containerIdentifier: String? { get }
}
@available(watchOS 6.0, *)
class CNChangeHistoryUpdateContactEvent : CNChangeHistoryEvent {
  var contact: CNContact { get }
}
@available(watchOS 6.0, *)
class CNChangeHistoryDeleteContactEvent : CNChangeHistoryEvent {
  var contactIdentifier: String { get }
}
@available(watchOS 6.0, *)
class CNChangeHistoryAddGroupEvent : CNChangeHistoryEvent {
  var group: CNGroup { get }
  var containerIdentifier: String { get }
}
@available(watchOS 6.0, *)
class CNChangeHistoryUpdateGroupEvent : CNChangeHistoryEvent {
  var group: CNGroup { get }
}
@available(watchOS 6.0, *)
class CNChangeHistoryDeleteGroupEvent : CNChangeHistoryEvent {
  var groupIdentifier: String { get }
}
@available(watchOS 6.0, *)
class CNChangeHistoryAddMemberToGroupEvent : CNChangeHistoryEvent {
  var member: CNContact { get }
  var group: CNGroup { get }
}
@available(watchOS 6.0, *)
class CNChangeHistoryRemoveMemberFromGroupEvent : CNChangeHistoryEvent {
  var member: CNContact { get }
  var group: CNGroup { get }
}
@available(watchOS 6.0, *)
class CNChangeHistoryAddSubgroupToGroupEvent : CNChangeHistoryEvent {
  var subgroup: CNGroup { get }
  var group: CNGroup { get }
}
@available(watchOS 6.0, *)
class CNChangeHistoryRemoveSubgroupFromGroupEvent : CNChangeHistoryEvent {
  var subgroup: CNGroup { get }
  var group: CNGroup { get }
}
@available(watchOS 6.0, *)
protocol CNChangeHistoryEventVisitor : NSObjectProtocol {
  func visit(_ event: CNChangeHistoryDropEverythingEvent)
  func visit(_ event: CNChangeHistoryAddContactEvent)
  func visit(_ event: CNChangeHistoryUpdateContactEvent)
  func visit(_ event: CNChangeHistoryDeleteContactEvent)
  optional func visit(_ event: CNChangeHistoryAddGroupEvent)
  optional func visit(_ event: CNChangeHistoryUpdateGroupEvent)
  optional func visit(_ event: CNChangeHistoryDeleteGroupEvent)
  optional func visitAddMember(_ event: CNChangeHistoryAddMemberToGroupEvent)
  optional func visitRemoveMember(_ event: CNChangeHistoryRemoveMemberFromGroupEvent)
  optional func visitAddSubgroup(_ event: CNChangeHistoryAddSubgroupToGroupEvent)
  optional func visitRemoveSubgroup(_ event: CNChangeHistoryRemoveSubgroupFromGroupEvent)
}
