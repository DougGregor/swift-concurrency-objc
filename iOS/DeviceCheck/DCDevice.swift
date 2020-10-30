
@available(iOS 11.0, *)
class DCDevice : NSObject {
  class var current: DCDevice { get }
  var isSupported: Bool { get }
  func generateToken(completionHandler completion: @escaping (Data?, Error?) -> Void)
  func generateToken() async throws -> Data
}
