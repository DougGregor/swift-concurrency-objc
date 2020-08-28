
@available(iOS 14.0, *)
protocol GCDevice : NSObjectProtocol {
  @available(iOS 7.0, *)
  var handlerQueue: DispatchQueue { get set }
  @available(iOS 7.0, *)
  var vendorName: String? { get }
  @available(iOS 13.0, *)
  var productCategory: String { get }
  @available(iOS 14.0, *)
  var physicalInputProfile: GCPhysicalInputProfile { get }
}
