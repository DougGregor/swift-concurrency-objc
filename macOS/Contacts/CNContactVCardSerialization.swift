
@available(macOS 10.11, *)
class CNContactVCardSerialization : NSObject {
  class func descriptorForRequiredKeys() -> CNKeyDescriptor
  class func data(with contacts: [CNContact]) throws -> Data
  class func contacts(with data: Data) throws -> [CNContact]
}
