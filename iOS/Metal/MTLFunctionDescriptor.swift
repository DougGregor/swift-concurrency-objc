
@available(iOS 14.0, *)
struct MTLFunctionOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  @available(iOS 14.0, *)
  static var compileToBinary: MTLFunctionOptions { get }
}
@available(iOS 14.0, *)
class MTLFunctionDescriptor : NSObject, NSCopying {
  var name: String?
  var specializedName: String?
  @NSCopying var constantValues: MTLFunctionConstantValues?
  var options: MTLFunctionOptions
}
@available(iOS 14.0, *)
class MTLIntersectionFunctionDescriptor : MTLFunctionDescriptor, NSCopying {
}
