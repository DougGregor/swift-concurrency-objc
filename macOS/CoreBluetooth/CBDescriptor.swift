
@available(macOS 10.7, *)
class CBDescriptor : CBAttribute {
  unowned(unsafe) var characteristic: @sil_unmanaged CBCharacteristic { get }
  var value: Any? { get }
}
@available(macOS 10.9, *)
class CBMutableDescriptor : CBDescriptor {
  init(type UUID: CBUUID, value: Any?)
}
