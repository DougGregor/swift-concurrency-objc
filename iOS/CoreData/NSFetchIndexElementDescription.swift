
@available(iOS 11.0, *)
enum NSFetchIndexElementType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case binary
  case rTree
}
@available(iOS 11.0, *)
class NSFetchIndexElementDescription : NSObject, NSCoding, NSCopying {
  init(property: NSPropertyDescription, collationType: NSFetchIndexElementType)
  var property: NSPropertyDescription? { get }
  var propertyName: String? { get }
  var collationType: NSFetchIndexElementType
  var isAscending: Bool
  unowned(unsafe) var indexDescription: @sil_unmanaged NSFetchIndexDescription? { get }
}
