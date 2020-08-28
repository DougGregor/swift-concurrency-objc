
extension NSCompoundPredicate {
  enum LogicalType : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case not
    case and
    case or
  }
}
@available(macOS 10.4, *)
class NSCompoundPredicate : NSPredicate {
  init(type: NSCompoundPredicate.LogicalType, subpredicates: [NSPredicate])
  var compoundPredicateType: NSCompoundPredicate.LogicalType { get }
  var subpredicates: [Any] { get }
  /*not inherited*/ init(andPredicateWithSubpredicates subpredicates: [NSPredicate])
  /*not inherited*/ init(orPredicateWithSubpredicates subpredicates: [NSPredicate])
  /*not inherited*/ init(notPredicateWithSubpredicate predicate: NSPredicate)
}
