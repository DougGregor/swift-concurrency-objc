
@available(watchOS 6.0, *)
class HMNetworkConfigurationProfile : HMAccessoryProfile {
  weak var delegate: @sil_weak HMNetworkConfigurationProfileDelegate?
  var isNetworkAccessRestricted: Bool { get }
}
@available(watchOS 6.0, *)
protocol HMNetworkConfigurationProfileDelegate : NSObjectProtocol {
  @asyncHandler optional func profileDidUpdateNetworkAccessMode(_ profile: HMNetworkConfigurationProfile)
}
