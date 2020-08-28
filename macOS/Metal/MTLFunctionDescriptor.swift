
@available(macOS 11.0, *)
struct MTLFunctionOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(macOS 11.0, *)
  static var compileToBinary: MTLFunctionOptions { get }
}
@available(macOS 11.0, *)
class MTLFunctionDescriptor : NSObject, NSCopying {
  var name: String?
  var specializedName: String?
  @NSCopying var constantValues: MTLFunctionConstantValues?
  var options: MTLFunctionOptions
}
@available(macOS 11.0, *)
class MTLIntersectionFunctionDescriptor : MTLFunctionDescriptor, NSCopying {
}
