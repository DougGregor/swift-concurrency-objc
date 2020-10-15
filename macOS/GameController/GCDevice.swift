
@available(macOS 11.0, *)
protocol GCDevice : NSObjectProtocol {
  @available(macOS 10.9, *)
  var handlerQueue: DispatchQueue { get set }
  @available(macOS 10.9, *)
  var vendorName: String? { get }
  @available(macOS 10.15, *)
  var productCategory: String { get }
  @available(macOS 11.0, *)
  var physicalInputProfile: GCPhysicalInputProfile { get }
}
