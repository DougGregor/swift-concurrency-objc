
@available(iOS 13.0, *)
class HMNetworkConfigurationProfile : HMAccessoryProfile {
  weak var delegate: @sil_weak HMNetworkConfigurationProfileDelegate?
  var isNetworkAccessRestricted: Bool { get }
}
@available(iOS 13.0, *)
protocol HMNetworkConfigurationProfileDelegate : NSObjectProtocol {
  @asyncHandler optional func profileDidUpdateNetworkAccessMode(_ profile: HMNetworkConfigurationProfile)
}
