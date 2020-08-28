
@available(watchOS 6.0, *)
class INFile : NSObject, NSSecureCoding {
  /*not inherited*/ init(data: Data, filename: String, typeIdentifier: String?)
  /*not inherited*/ init(fileURL: URL, filename: String?, typeIdentifier: String?)
  var data: Data { get }
  var filename: String
  var typeIdentifier: String? { get }
  var fileURL: URL? { get }
}
