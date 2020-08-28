
@available(iOS 14.0, *)
class INObjectSection<ObjectType> : NSObject, NSCopying, NSSecureCoding where ObjectType : AnyObject {
  var title: String? { get }
  var items: [ObjectType] { get }
  init(title: String?, items: [ObjectType])
}
