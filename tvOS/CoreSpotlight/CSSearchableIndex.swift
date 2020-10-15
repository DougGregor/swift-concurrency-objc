
extension CSSearchableIndex {
  func beginBatch()
  func endBatch(withClientState clientState: Data, completionHandler: ((Error?) -> Void)? = nil)
  func endBatch(withClientState clientState: Data) async throws
  func fetchLastClientState(completionHandler: @escaping (Data?, Error?) -> Void)
  func fetchLastClientState() async throws -> Data?
}
