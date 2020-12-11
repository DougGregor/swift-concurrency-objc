
@available(iOS 14.0, *)
class DCAppAttestService : NSObject {
  class var shared: DCAppAttestService { get }
  var isSupported: Bool { get }
  func generateKey(completionHandler: @escaping (String?, Error?) -> Void)
  func generateKey() async throws -> String
  func attestKey(_ keyId: String, clientDataHash: Data, completionHandler: @escaping (Data?, Error?) -> Void)
  func attestKey(_ keyId: String, clientDataHash: Data) async throws -> Data
  func generateAssertion(_ keyId: String, clientDataHash: Data, completionHandler: @escaping (Data?, Error?) -> Void)
  func generateAssertion(_ keyId: String, clientDataHash: Data) async throws -> Data
}
