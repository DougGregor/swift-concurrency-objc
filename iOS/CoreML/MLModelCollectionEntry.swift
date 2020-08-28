
extension MLModelCollection {
  @available(iOS 14.0, *)
  class Entry : NSObject {
    var modelIdentifier: String { get }
    var modelURL: URL { get }
    func isEqual(to entry: MLModelCollection.Entry) -> Bool
  }
}
