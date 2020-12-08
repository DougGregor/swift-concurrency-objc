
@available(macOS 11.0, *)
protocol CLSDataStoreDelegate : NSObjectProtocol {
  func createContext(forIdentifier identifier: String, parentContext: CLSContext, parentIdentifierPath: [String]) -> CLSContext?
}
@available(macOS 11.0, *)
class CLSDataStore : NSObject {
  class var shared: CLSDataStore { get }
  var mainAppContext: CLSContext { get }
  var activeContext: CLSContext? { get }
  var runningActivity: CLSActivity? { get }
  weak var delegate: @sil_weak CLSDataStoreDelegate?
  func save(completion: ((Error?) -> Void)? = nil)
  func save() async throws
  @available(macOS 11.0, *)
  func completeAllAssignedActivities(matching contextPath: [String])
}
@available(macOS 11.0, *)
extension CLSDataStore {
  func contexts(matching predicate: NSPredicate, completion: @escaping ([CLSContext], Error?) -> Void)
  func contexts(matching predicate: NSPredicate) async throws -> [CLSContext]
  func contexts(matchingIdentifierPath identifierPath: [String], completion: @escaping ([CLSContext], Error?) -> Void)
  func contexts(matchingIdentifierPath identifierPath: [String]) async throws -> [CLSContext]
  func remove(_ context: CLSContext)
}
