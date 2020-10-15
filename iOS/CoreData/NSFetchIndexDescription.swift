
@available(iOS 11.0, *)
class NSFetchIndexDescription : NSObject, NSCoding, NSCopying {
  init(name: String, elements: [NSFetchIndexElementDescription]?)
  var name: String
  var elements: [NSFetchIndexElementDescription]
  unowned(unsafe) var entity: @sil_unmanaged NSEntityDescription? { get }
  @NSCopying var partialIndexPredicate: NSPredicate?
}
