
@available(macOS 11.0, *)
class CXCallController : NSObject {
  init(queue: DispatchQueue)
  var callObserver: CXCallObserver { get }
  func request(_ transaction: CXTransaction, completion: @escaping (Error?) -> Void)
  func request(_ transaction: CXTransaction) async throws
  func requestTransaction(with actions: [CXAction], completion: @escaping (Error?) -> Void)
  func requestTransaction(with actions: [CXAction]) async throws
  func requestTransaction(with action: CXAction, completion: @escaping (Error?) -> Void)
  func requestTransaction(with action: CXAction) async throws
}
