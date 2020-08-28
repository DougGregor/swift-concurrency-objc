
@available(macOS 10.10, *)
func hv_vmx_vcpu_read_vmcs(_ vcpu: hv_vcpuid_t, _ field: UInt32, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t
@available(macOS 10.10, *)
func hv_vmx_vcpu_write_vmcs(_ vcpu: hv_vcpuid_t, _ field: UInt32, _ value: UInt64) -> hv_return_t
@available(macOS 11.0, *)
func hv_vmx_vcpu_get_cap_write_vmcs(_ vcpu: hv_vcpuid_t, _ field: UInt32, _ allowed_0: UnsafeMutablePointer<UInt64>, _ allowed_1: UnsafeMutablePointer<UInt64>) -> hv_return_t
@available(macOS 10.15, *)
func hv_vmx_vcpu_read_shadow_vmcs(_ vcpu: hv_vcpuid_t, _ field: UInt32, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t
@available(macOS 10.15, *)
func hv_vmx_vcpu_write_shadow_vmcs(_ vcpu: hv_vcpuid_t, _ field: UInt32, _ value: UInt64) -> hv_return_t
var HV_SHADOW_VMCS_NONE: Int { get }
var HV_SHADOW_VMCS_READ: Int { get }
var HV_SHADOW_VMCS_WRITE: Int { get }
typealias hv_shadow_flags_t = UInt64
@available(macOS 10.15, *)
func hv_vmx_vcpu_set_shadow_access(_ vcpu: hv_vcpuid_t, _ field: UInt32, _ flags: hv_shadow_flags_t) -> hv_return_t
struct hv_vmx_capability_t : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var HV_VMX_CAP_PINBASED: hv_vmx_capability_t { get }
var HV_VMX_CAP_PROCBASED: hv_vmx_capability_t { get }
var HV_VMX_CAP_PROCBASED2: hv_vmx_capability_t { get }
var HV_VMX_CAP_ENTRY: hv_vmx_capability_t { get }
var HV_VMX_CAP_EXIT: hv_vmx_capability_t { get }
var HV_VMX_CAP_BASIC: hv_vmx_capability_t { get }
var HV_VMX_CAP_TRUE_PINBASED: hv_vmx_capability_t { get }
var HV_VMX_CAP_TRUE_PROCBASED: hv_vmx_capability_t { get }
var HV_VMX_CAP_TRUE_ENTRY: hv_vmx_capability_t { get }
var HV_VMX_CAP_TRUE_EXIT: hv_vmx_capability_t { get }
var HV_VMX_CAP_MISC: hv_vmx_capability_t { get }
var HV_VMX_CAP_CR0_FIXED0: hv_vmx_capability_t { get }
var HV_VMX_CAP_CR0_FIXED1: hv_vmx_capability_t { get }
var HV_VMX_CAP_CR4_FIXED0: hv_vmx_capability_t { get }
var HV_VMX_CAP_CR4_FIXED1: hv_vmx_capability_t { get }
var HV_VMX_CAP_VMCS_ENUM: hv_vmx_capability_t { get }
var HV_VMX_CAP_EPT_VPID_CAP: hv_vmx_capability_t { get }
var HV_VMX_CAP_PREEMPTION_TIMER: hv_vmx_capability_t { get }
@available(macOS 10.10, *)
func hv_vmx_read_capability(_ field: hv_vmx_capability_t, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t
var HV_VMX_INFO_MSR_IA32_ARCH_CAPABILITIES: Int { get }
var HV_VMX_INFO_MSR_IA32_PERF_CAPABILITIES: Int { get }
var HV_VMX_VALID_MSR_IA32_PERFEVNTSEL: Int { get }
var HV_VMX_VALID_MSR_IA32_FIXED_CTR_CTRL: Int { get }
var HV_VMX_VALID_MSR_IA32_PERF_GLOBAL_CTRL: Int { get }
var HV_VMX_VALID_MSR_IA32_PERF_GLOBAL_STATUS: Int { get }
var HV_VMX_VALID_MSR_IA32_DEBUGCTL: Int { get }
var HV_VMX_VALID_MSR_IA32_SPEC_CTRL: Int { get }
var HV_VMX_NEED_MSR_IA32_SPEC_CTRL: Int { get }
typealias hv_vmx_msr_info_t = UInt64
@available(macOS 11.0, *)
func hv_vmx_get_msr_info(_ field: hv_vmx_msr_info_t, _ value: UnsafeMutablePointer<UInt64>) -> hv_return_t
@available(macOS 10.10, *)
func hv_vmx_vcpu_set_apic_address(_ vcpu: hv_vcpuid_t, _ gpa: hv_gpaddr_t) -> hv_return_t
