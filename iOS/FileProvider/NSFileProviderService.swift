
@available(iOS 11.0, *)
protocol NSFileProviderServiceSource {
  var serviceName: NSFileProviderServiceName { get }
  func makeListenerEndpoint() throws -> NSXPCListenerEndpoint
}
extension NSFileProviderExtension {
  @available(iOS 11.0, *)
  func supportedServiceSources(for itemIdentifier: NSFileProviderItemIdentifier) throws -> [NSFileProviderServiceSource]
}
