
@available(iOS 9.0, *)
class CNContactProperty : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var contact: CNContact { get }
  var key: String { get }
  var value: Any? { get }
  var identifier: String? { get }
  var label: String? { get }
}
