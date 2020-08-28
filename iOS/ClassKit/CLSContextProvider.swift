
@available(iOS 12.2, *)
protocol CLSContextProvider {
  func updateDescendants(of context: CLSContext, completion: @escaping (Error?) -> Void)
  func updateDescendants(of context: CLSContext) async throws
}
