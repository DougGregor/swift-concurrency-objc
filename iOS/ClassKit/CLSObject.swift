
@available(iOS 11.3, *)
class CLSObject : NSObject, NSSecureCoding {
  var dateCreated: Date { get }
  var dateLastModified: Date { get }
}
