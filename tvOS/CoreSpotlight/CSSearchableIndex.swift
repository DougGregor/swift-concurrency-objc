
extension CSSearchableIndex {
  func beginBatch()
  func endBatch(withClientState clientState: Data, completionHandler: ((Error?) -> Void)? = nil)
  func fetchLastClientState(completionHandler: @escaping (Data?, Error?) -> Void)
}
