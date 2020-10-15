
var HV_CAP_VCPUMAX: Int { get }
var HV_CAP_ADDRSPACEMAX: Int { get }
typealias hv_capability_t = UInt64
var HV_VM_SPACE_DEFAULT: Int { get }
typealias hv_vm_space_t = UInt32
var HV_VM_DEFAULT: Int { get }
var HV_VM_SPECIFY_MITIGATIONS: Int { get }
var HV_VM_MITIGATION_A_ENABLE: Int { get }
var HV_VM_MITIGATION_B_ENABLE: Int { get }
var HV_VM_MITIGATION_C_ENABLE: Int { get }
var HV_VM_MITIGATION_D_ENABLE: Int { get }
var HV_VM_MITIGATION_E_ENABLE: Int { get }
typealias hv_vm_options_t = UInt64
var HV_VCPU_DEFAULT: Int { get }
var HV_VCPU_ACCEL_RDPMC: Int { get }
typealias hv_vcpu_options_t = UInt64
var HV_MEMORY_READ: Int { get }
var HV_MEMORY_WRITE: Int { get }
var HV_MEMORY_EXEC: Int { get }
typealias hv_memory_flags_t = UInt64
var HV_MSR_NONE: Int { get }
var HV_MSR_READ: Int { get }
var HV_MSR_WRITE: Int { get }
typealias hv_msr_flags_t = UInt32
typealias hv_vcpuid_t = UInt32
typealias hv_uvaddr_t = UnsafeRawPointer
typealias hv_gpaddr_t = UInt64
