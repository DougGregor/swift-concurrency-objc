
@available(macOS 10.13, *)
class NSFetchIndexDescription : NSObject, NSCoding, NSCopying {
  init(name: String, elements: [NSFetchIndexElementDescription]?)
  var name: String
  var elements: [NSFetchIndexElementDescription]
  unowned(unsafe) var entity: @sil_unmanaged NSEntityDescription? { get }
  @NSCopying var partialIndexPredicate: NSPredicate?
}
