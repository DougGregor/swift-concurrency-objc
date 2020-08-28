
@available(tvOS 14.0, *)
protocol GCDevice : NSObjectProtocol {
  @available(tvOS 7.0, *)
  var handlerQueue: DispatchQueue { get set }
  @available(tvOS 7.0, *)
  var vendorName: String? { get }
  @available(tvOS 13.0, *)
  var productCategory: String { get }
  @available(tvOS 14.0, *)
  var physicalInputProfile: GCPhysicalInputProfile { get }
}
