
@available(macOS 10.9, *)
class CBATTRequest : NSObject {
  var central: CBCentral { get }
  var characteristic: CBCharacteristic { get }
  var offset: Int { get }
  var value: Data?
}
