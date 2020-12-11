
@available(iOS 14.0, *)
class MLModelCollection : NSObject {
  var identifier: String { get }
  var entries: [String : MLModelCollection.Entry] { get }
  var deploymentID: String { get }
  class func __beginAccessingModelCollection(withIdentifier identifier: String, completionHandler: @escaping (MLModelCollection?, Error?) -> Void) -> Progress
  class func __endAccessingModelCollection(withIdentifier identifier: String, completionHandler: @escaping (Bool, Error?) -> Void)
  class func __endAccessingModelCollection(withIdentifier identifier: String) async throws -> Bool
}

@available(macOS 11.0, iOS 14.0, *)
@available(watchOS, unavailable)
@available(tvOS, unavailable)
extension MLModelCollection {
  class func beginAccessing(identifier: String, completionHandler handler: @escaping (Result<MLModelCollection, Error>) -> ()) -> Progress
  class func endAccessing(identifier: String, completionHandler handler: @escaping (Result<Void, Error>) -> ())
}
extension MLModelCollection {
  @available(iOS 14.0, *)
  class let didChangeNotification: NSNotification.Name
}
