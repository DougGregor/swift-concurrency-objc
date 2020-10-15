
@available(macOS 11.0, *)
class CLSObject : NSObject, NSSecureCoding {
  var dateCreated: Date { get }
  var dateLastModified: Date { get }
}
