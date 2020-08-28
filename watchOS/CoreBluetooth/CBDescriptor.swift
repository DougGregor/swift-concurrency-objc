
@available(watchOS 2.0, *)
class CBDescriptor : CBAttribute {
  unowned(unsafe) var characteristic: @sil_unmanaged CBCharacteristic { get }
  var value: Any? { get }
}
@available(watchOS 2.0, *)
class CBMutableDescriptor : CBDescriptor {
}
