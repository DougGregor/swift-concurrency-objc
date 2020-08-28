
@available(macOS 11.0, *)
protocol NSFileProviderServiceSource {
  var serviceName: NSFileProviderServiceName { get }
  func makeListenerEndpoint() throws -> NSXPCListenerEndpoint
}
extension NSFileProviderExtension {
}
