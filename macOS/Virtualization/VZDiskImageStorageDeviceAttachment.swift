
@available(macOS 11.0, *)
class VZDiskImageStorageDeviceAttachment : VZStorageDeviceAttachment {
  init(url: URL, readOnly: Bool) throws
  var url: URL { get }
  var isReadOnly: Bool { get }
}
