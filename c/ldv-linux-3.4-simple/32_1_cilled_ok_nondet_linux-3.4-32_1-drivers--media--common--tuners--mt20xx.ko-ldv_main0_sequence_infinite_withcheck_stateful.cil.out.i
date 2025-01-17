extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head *head ) ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct pt_regs;
struct pt_regs;
struct pid;
struct pid;
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct device;
struct task_struct;
struct task_struct;
struct lock_class_key {
};
struct sock;
struct sock;
struct kobject;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct task_struct;
struct mm_struct;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField4 ;
   struct __anonstruct____missing_field_name_13 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField6 ;
} __attribute__((__packed__)) ;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_17 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_17 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct page;
struct thread_struct;
struct thread_struct;
struct mm_struct;
struct desc_struct;
struct task_struct;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_21 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_21 __annonCompField7 ;
};
struct task_struct;
struct page;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct pt_regs;
struct cpumask {
   unsigned long bits[((4096UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct static_key;
struct pt_regs;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_28 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_29 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_27 {
   struct __anonstruct____missing_field_name_28 __annonCompField11 ;
   struct __anonstruct____missing_field_name_29 __annonCompField12 ;
};
union __anonunion____missing_field_name_30 {
   u32 padding1[12] ;
   u32 sw_reserved[12] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_27 __annonCompField13 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32] ;
   u32 xmm_space[64] ;
   u32 padding[12] ;
   union __anonunion____missing_field_name_30 __annonCompField14 ;
} __attribute__((__aligned__(16))) ;
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2] ;
   u64 reserved2[5] ;
} __attribute__((__packed__)) ;
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
} __attribute__((__packed__, __aligned__(64))) ;
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct file;
struct vm_area_struct;
struct vm_area_struct;
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct sysfs_dirent;
struct timespec;
struct timespec;
struct task_struct;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_37 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_37 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_39 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_38 {
   s64 lock ;
   struct __anonstruct____missing_field_name_39 __annonCompField18 ;
};
typedef union __anonunion_arch_rwlock_t_38 arch_rwlock_t;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct raw_spinlock raw_spinlock_t;
union __anonunion____missing_field_name_40 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_40 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_41 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct __anonstruct_rwlock_t_41 rwlock_t;
struct kref {
   atomic_t refcount ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct klist_node;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16] ;
};
struct hrtimer;
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct device;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device;
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct module;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
                    size_t count ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device *dev ) ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned int active : 1 ;
};
struct task_struct;
struct kernel_cap_struct {
   __u32 cap[2] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct dentry;
struct user_namespace;
struct user_namespace;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct __anonstruct_nodemask_t_46 {
   unsigned long bits[(((unsigned long )(1 << 10) + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct __anonstruct_nodemask_t_46 nodemask_t;
struct prio_tree_node;
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
};
struct rw_semaphore;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
};
struct __anonstruct_mm_context_t_47 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_47 mm_context_t;
struct address_space;
struct address_space;
union __anonunion____missing_field_name_49 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_53 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_52 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_53 __annonCompField21 ;
};
struct __anonstruct____missing_field_name_51 {
   union __anonunion____missing_field_name_52 __annonCompField22 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_50 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_51 __annonCompField23 ;
};
struct __anonstruct____missing_field_name_48 {
   union __anonunion____missing_field_name_49 __annonCompField20 ;
   union __anonunion____missing_field_name_50 __annonCompField24 ;
};
struct __anonstruct____missing_field_name_55 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_54 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_55 __annonCompField26 ;
};
union __anonunion____missing_field_name_56 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_48 __annonCompField25 ;
   union __anonunion____missing_field_name_54 __annonCompField27 ;
   union __anonunion____missing_field_name_56 __annonCompField28 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_58 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_57 {
   struct __anonstruct_vm_set_58 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_57 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   atomic_long_t count[3] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file *filp , unsigned long addr , unsigned long len ,
                                      unsigned long pgoff , unsigned long flags ) ;
   void (*unmap_area)(struct mm_struct *mm , unsigned long addr ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long reserved_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
};
typedef unsigned long cputime_t;
struct device;
struct vm_area_struct;
struct task_struct;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct siginfo;
struct __anonstruct_sigset_t_151 {
   unsigned long sig[1] ;
};
typedef struct __anonstruct_sigset_t_151 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_153 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_154 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[sizeof(__kernel_uid32_t ) - sizeof(int )] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_155 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_156 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_157 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_158 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_152 {
   int _pad[(128UL - 4UL * sizeof(int )) / sizeof(int )] ;
   struct __anonstruct__kill_153 _kill ;
   struct __anonstruct__timer_154 _timer ;
   struct __anonstruct__rt_155 _rt ;
   struct __anonstruct__sigchld_156 _sigchld ;
   struct __anonstruct__sigfault_157 _sigfault ;
   struct __anonstruct__sigpoll_158 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_152 _sifields ;
};
typedef struct siginfo siginfo_t;
struct siginfo;
struct task_struct;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct timespec;
struct pt_regs;
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3] ;
   struct rcu_head rcu ;
   struct upid numbers[1] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct pid_namespace;
struct page;
struct page;
struct page;
struct __anonstruct_seccomp_t_163 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_163 seccomp_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct plist_head wait_list ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
};
struct rt_mutex_waiter;
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct task_struct;
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct task_struct;
struct latency_record {
   unsigned long backtrace[12] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct completion;
struct nsproxy;
struct nsproxy;
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct key;
struct seq_file;
struct user_struct;
struct signal_struct;
struct signal_struct;
struct cred;
struct cred;
struct key_type;
struct key_type;
struct keyring_list;
struct keyring_list;
struct key_user;
union __anonunion____missing_field_name_220 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_221 {
   struct list_head link ;
   unsigned long x[2] ;
   void *p[2] ;
   int reject_error ;
};
union __anonunion_payload_222 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_220 __annonCompField41 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_221 type_data ;
   union __anonunion_payload_222 payload ;
};
struct audit_context;
struct audit_context;
struct user_struct;
struct cred;
struct inode;
struct inode;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32] ;
   gid_t *blocks[0] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct futex_pi_state;
struct robust_list_head;
struct robust_list_head;
struct bio_list;
struct bio_list;
struct fs_struct;
struct fs_struct;
struct perf_event_context;
struct perf_event_context;
struct blk_plug;
struct blk_plug;
struct seq_file;
struct cfs_rq;
struct cfs_rq;
struct task_struct;
struct nsproxy;
struct user_namespace;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
struct kioctx;
union __anonunion_ki_obj_224 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_224 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct rcu_head rcu_head ;
};
struct mm_struct;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   int oom_adj ;
   int oom_score_adj ;
   int oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   uid_t uid ;
   struct user_namespace *user_ns ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct backing_dev_info;
struct reclaim_state;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct io_context;
struct audit_context;
struct mempolicy;
struct pipe_inode_info;
struct pipe_inode_info;
struct rq;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*dequeue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*yield_task)(struct rq *rq ) ;
   bool (*yield_to_task)(struct rq *rq , struct task_struct *p , bool preempt ) ;
   void (*check_preempt_curr)(struct rq *rq , struct task_struct *p , int flags ) ;
   struct task_struct *(*pick_next_task)(struct rq *rq ) ;
   void (*put_prev_task)(struct rq *rq , struct task_struct *p ) ;
   int (*select_task_rq)(struct task_struct *p , int sd_flag , int flags ) ;
   void (*pre_schedule)(struct rq *this_rq , struct task_struct *task ) ;
   void (*post_schedule)(struct rq *this_rq ) ;
   void (*task_waking)(struct task_struct *task ) ;
   void (*task_woken)(struct rq *this_rq , struct task_struct *task ) ;
   void (*set_cpus_allowed)(struct task_struct *p , struct cpumask const *newmask ) ;
   void (*rq_online)(struct rq *rq ) ;
   void (*rq_offline)(struct rq *rq ) ;
   void (*set_curr_task)(struct rq *rq ) ;
   void (*task_tick)(struct rq *rq , struct task_struct *p , int queued ) ;
   void (*task_fork)(struct task_struct *p ) ;
   void (*switched_from)(struct rq *this_rq , struct task_struct *task ) ;
   void (*switched_to)(struct rq *this_rq , struct task_struct *task ) ;
   void (*prio_changed)(struct rq *this_rq , struct task_struct *task , int oldprio ) ;
   unsigned int (*get_rr_interval)(struct rq *rq , struct task_struct *task ) ;
   void (*task_move_group)(struct task_struct *p , int on_rq ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   int nr_cpus_allowed ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int did_exec : 1 ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   unsigned int irq_thread : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   struct cred *replacement_session_keyring ;
   char comm[16] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void *priv ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
struct pid_namespace;
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct proc_dir_entry;
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg;
struct i2c_msg;
struct i2c_algorithm;
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_adapter;
union i2c_smbus_data;
union i2c_smbus_data;
struct module;
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter *adap , struct i2c_msg *msgs , int num ) ;
   int (*smbus_xfer)(struct i2c_adapter *adap , u16 addr , unsigned short flags ,
                     char read_write , u8 command , int size , union i2c_smbus_data *data ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34] ;
};
struct vm_area_struct;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct tuner_i2c_props {
   u8 addr ;
   struct i2c_adapter *adap ;
   int count ;
   char *name ;
};
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   uid_t uid ;
   gid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct cred;
struct file;
struct task_struct;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct file;
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_248 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_248 __annonCompField52 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
struct tracepoint;
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module;
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t count ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
};
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
typedef enum fe_type fe_type_t;
enum fe_caps {
    FE_IS_STUPID = 0,
    FE_CAN_INVERSION_AUTO = 1,
    FE_CAN_FEC_1_2 = 2,
    FE_CAN_FEC_2_3 = 4,
    FE_CAN_FEC_3_4 = 8,
    FE_CAN_FEC_4_5 = 16,
    FE_CAN_FEC_5_6 = 32,
    FE_CAN_FEC_6_7 = 64,
    FE_CAN_FEC_7_8 = 128,
    FE_CAN_FEC_8_9 = 256,
    FE_CAN_FEC_AUTO = 512,
    FE_CAN_QPSK = 1024,
    FE_CAN_QAM_16 = 2048,
    FE_CAN_QAM_32 = 4096,
    FE_CAN_QAM_64 = 8192,
    FE_CAN_QAM_128 = 16384,
    FE_CAN_QAM_256 = 32768,
    FE_CAN_QAM_AUTO = 65536,
    FE_CAN_TRANSMISSION_MODE_AUTO = 131072,
    FE_CAN_BANDWIDTH_AUTO = 262144,
    FE_CAN_GUARD_INTERVAL_AUTO = 524288,
    FE_CAN_HIERARCHY_AUTO = 1048576,
    FE_CAN_8VSB = 2097152,
    FE_CAN_16VSB = 4194304,
    FE_HAS_EXTENDED_CAPS = 8388608,
    FE_CAN_TURBO_FEC = 134217728,
    FE_CAN_2G_MODULATION = 268435456,
    FE_NEEDS_BENDING = 536870912,
    FE_CAN_RECOVER = 1073741824,
    FE_CAN_MUTE_TS = (-0x7FFFFFFF-1)
} ;
typedef enum fe_caps fe_caps_t;
struct dvb_frontend_info {
   char name[128] ;
   fe_type_t type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   fe_caps_t caps ;
};
struct dvb_diseqc_master_cmd {
   __u8 msg[6] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4] ;
   __u8 msg_len ;
   int timeout ;
};
enum fe_sec_voltage {
    SEC_VOLTAGE_13 = 0,
    SEC_VOLTAGE_18 = 1,
    SEC_VOLTAGE_OFF = 2
} ;
typedef enum fe_sec_voltage fe_sec_voltage_t;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
typedef enum fe_sec_tone_mode fe_sec_tone_mode_t;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
typedef enum fe_sec_mini_cmd fe_sec_mini_cmd_t;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
typedef enum fe_status fe_status_t;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
enum fe_code_rate {
    FEC_NONE = 0,
    FEC_1_2 = 1,
    FEC_2_3 = 2,
    FEC_3_4 = 3,
    FEC_4_5 = 4,
    FEC_5_6 = 5,
    FEC_6_7 = 6,
    FEC_7_8 = 7,
    FEC_8_9 = 8,
    FEC_AUTO = 9,
    FEC_3_5 = 10,
    FEC_9_10 = 11
} ;
typedef enum fe_code_rate fe_code_rate_t;
enum fe_modulation {
    QPSK = 0,
    QAM_16 = 1,
    QAM_32 = 2,
    QAM_64 = 3,
    QAM_128 = 4,
    QAM_256 = 5,
    QAM_AUTO = 6,
    VSB_8 = 7,
    VSB_16 = 8,
    PSK_8 = 9,
    APSK_16 = 10,
    APSK_32 = 11,
    DQPSK = 12
} ;
typedef enum fe_modulation fe_modulation_t;
enum fe_transmit_mode {
    TRANSMISSION_MODE_2K = 0,
    TRANSMISSION_MODE_8K = 1,
    TRANSMISSION_MODE_AUTO = 2,
    TRANSMISSION_MODE_4K = 3,
    TRANSMISSION_MODE_1K = 4,
    TRANSMISSION_MODE_16K = 5,
    TRANSMISSION_MODE_32K = 6
} ;
typedef enum fe_transmit_mode fe_transmit_mode_t;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4,
    GUARD_INTERVAL_1_128 = 5,
    GUARD_INTERVAL_19_128 = 6,
    GUARD_INTERVAL_19_256 = 7
} ;
typedef enum fe_guard_interval fe_guard_interval_t;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
typedef enum fe_hierarchy fe_hierarchy_t;
enum fe_pilot {
    PILOT_ON = 0,
    PILOT_OFF = 1,
    PILOT_AUTO = 2
} ;
typedef enum fe_pilot fe_pilot_t;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
typedef enum fe_rolloff fe_rolloff_t;
enum fe_delivery_system {
    SYS_UNDEFINED = 0,
    SYS_DVBC_ANNEX_A = 1,
    SYS_DVBC_ANNEX_B = 2,
    SYS_DVBT = 3,
    SYS_DSS = 4,
    SYS_DVBS = 5,
    SYS_DVBS2 = 6,
    SYS_DVBH = 7,
    SYS_ISDBT = 8,
    SYS_ISDBS = 9,
    SYS_ISDBC = 10,
    SYS_ATSC = 11,
    SYS_ATSCMH = 12,
    SYS_DMBTH = 13,
    SYS_CMMB = 14,
    SYS_DAB = 15,
    SYS_DVBT2 = 16,
    SYS_TURBO = 17,
    SYS_DVBC_ANNEX_C = 18
} ;
typedef enum fe_delivery_system fe_delivery_system_t;
struct __anonstruct_buffer_251 {
   __u8 data[32] ;
   __u32 len ;
   __u32 reserved1[3] ;
   void *reserved2 ;
};
union __anonunion_u_250 {
   __u32 data ;
   struct __anonstruct_buffer_251 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3] ;
   union __anonunion_u_250 u ;
   int result ;
} __attribute__((__packed__)) ;
struct page;
struct block_device;
struct block_device;
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct nameidata;
struct path;
struct path;
struct vfsmount;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_252 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_252 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
struct dentry;
struct vfsmount;
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control *sc ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct export_operations;
struct export_operations;
struct iovec;
struct nameidata;
struct kiocb;
struct kobject;
struct pipe_inode_info;
struct poll_table_struct;
struct poll_table_struct;
struct kstatfs;
struct kstatfs;
struct vm_area_struct;
struct vfsmount;
struct cred;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct dquot;
struct dquot;
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct super_block;
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block *sb , int type ) ;
   int (*read_file_info)(struct super_block *sb , int type ) ;
   int (*write_file_info)(struct super_block *sb , int type ) ;
   int (*free_file_info)(struct super_block *sb , int type ) ;
   int (*read_dqblk)(struct dquot *dquot ) ;
   int (*commit_dqblk)(struct dquot *dquot ) ;
   int (*release_dqblk)(struct dquot *dquot ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct path;
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2] ;
   struct mem_dqinfo info[2] ;
   struct quota_format_ops const *ops[2] ;
};
struct page;
struct address_space;
struct writeback_control;
struct writeback_control;
union __anonunion_arg_259 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_258 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_259 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_258 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page *page , struct writeback_control *wbc ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page *page ) ;
   int (*readpages)(struct file *filp , struct address_space *mapping , struct list_head *pages ,
                    unsigned int nr_pages ) ;
   int (*write_begin)(struct file * , struct address_space *mapping , loff_t pos ,
                      unsigned int len , unsigned int flags , struct page **pagep ,
                      void **fsdata ) ;
   int (*write_end)(struct file * , struct address_space *mapping , loff_t pos , unsigned int len ,
                    unsigned int copied , struct page *page , void *fsdata ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const *iov , loff_t offset ,
                        unsigned long nr_segs ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct request_queue;
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_260 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_261 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_262 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_260 __annonCompField53 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_261 __annonCompField54 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_262 __annonCompField55 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   uid_t uid ;
   uid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_263 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_263 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_release_private)(struct file_lock * ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_265 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_264 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_265 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_264 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   struct mutex s_lock ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock __attribute__((__aligned__((1) << (6) ))) ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32] ;
   u8 s_uuid[16] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t id ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int datasync ) ;
   int (*aio_fsync)(struct kiocb * , int datasync ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file *file , int mode , loff_t offset , loff_t len ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount *mnt , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 start , u64 len ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
struct seq_file;
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block *sb ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int flags ) ;
   int (*write_inode)(struct inode * , struct writeback_control *wbc ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block *sb , int wait ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct poll_table_struct;
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct dvb_frontend;
struct dvb_frontend;
struct dvb_device;
struct dvb_adapter {
   int num ;
   struct list_head list_head ;
   struct list_head device_list ;
   char const *name ;
   u8 proposed_mac[6] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
   int (*fe_ioctl_override)(struct dvb_frontend *fe , unsigned int cmd , void *parg ,
                            unsigned int stage ) ;
};
struct dvb_device {
   struct list_head list_head ;
   struct file_operations const *fops ;
   struct dvb_adapter *adapter ;
   int type ;
   int minor ;
   u32 id ;
   int readers ;
   int writers ;
   int users ;
   wait_queue_head_t wait_queue ;
   int (*kernel_ioctl)(struct file *file , unsigned int cmd , void *arg ) ;
   void *priv ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_frontend;
struct dvb_tuner_info {
   char name[128] ;
   u32 frequency_min ;
   u32 frequency_max ;
   u32 frequency_step ;
   u32 bandwidth_min ;
   u32 bandwidth_max ;
   u32 bandwidth_step ;
};
struct analog_parameters {
   unsigned int frequency ;
   unsigned int mode ;
   unsigned int audmode ;
   u64 std ;
};
enum tuner_param {
    DVBFE_TUNER_FREQUENCY = 1,
    DVBFE_TUNER_TUNERSTEP = 2,
    DVBFE_TUNER_IFFREQ = 4,
    DVBFE_TUNER_BANDWIDTH = 8,
    DVBFE_TUNER_REFCLOCK = 16,
    DVBFE_TUNER_IQSENSE = 32,
    DVBFE_TUNER_DUMMY = (-0x7FFFFFFF-1)
} ;
enum dvbfe_algo {
    DVBFE_ALGO_HW = 1,
    DVBFE_ALGO_SW = 2,
    DVBFE_ALGO_CUSTOM = 4,
    DVBFE_ALGO_RECOVERY = (-0x7FFFFFFF-1)
} ;
struct tuner_state {
   u32 frequency ;
   u32 tunerstep ;
   u32 ifreq ;
   u32 bandwidth ;
   u32 iqsense ;
   u32 refclock ;
};
enum dvbfe_search {
    DVBFE_ALGO_SEARCH_SUCCESS = 1,
    DVBFE_ALGO_SEARCH_ASLEEP = 2,
    DVBFE_ALGO_SEARCH_FAILED = 4,
    DVBFE_ALGO_SEARCH_INVALID = 8,
    DVBFE_ALGO_SEARCH_AGAIN = 16,
    DVBFE_ALGO_SEARCH_ERROR = (-0x7FFFFFFF-1)
} ;
struct dvb_tuner_ops {
   struct dvb_tuner_info info ;
   int (*release)(struct dvb_frontend *fe ) ;
   int (*init)(struct dvb_frontend *fe ) ;
   int (*sleep)(struct dvb_frontend *fe ) ;
   int (*set_params)(struct dvb_frontend *fe ) ;
   int (*set_analog_params)(struct dvb_frontend *fe , struct analog_parameters *p ) ;
   int (*calc_regs)(struct dvb_frontend *fe , u8 *buf , int buf_len ) ;
   int (*set_config)(struct dvb_frontend *fe , void *priv_cfg ) ;
   int (*get_frequency)(struct dvb_frontend *fe , u32 *frequency ) ;
   int (*get_bandwidth)(struct dvb_frontend *fe , u32 *bandwidth ) ;
   int (*get_if_frequency)(struct dvb_frontend *fe , u32 *frequency ) ;
   int (*get_status)(struct dvb_frontend *fe , u32 *status ) ;
   int (*get_rf_strength)(struct dvb_frontend *fe , u16 *strength ) ;
   int (*set_frequency)(struct dvb_frontend *fe , u32 frequency ) ;
   int (*set_bandwidth)(struct dvb_frontend *fe , u32 bandwidth ) ;
   int (*set_state)(struct dvb_frontend *fe , enum tuner_param param , struct tuner_state *state ) ;
   int (*get_state)(struct dvb_frontend *fe , enum tuner_param param , struct tuner_state *state ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend *fe , struct analog_parameters *params ) ;
   int (*has_signal)(struct dvb_frontend *fe ) ;
   int (*get_afc)(struct dvb_frontend *fe ) ;
   void (*tuner_status)(struct dvb_frontend *fe ) ;
   void (*standby)(struct dvb_frontend *fe ) ;
   void (*release)(struct dvb_frontend *fe ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend *fe , int enable ) ;
   int (*set_config)(struct dvb_frontend *fe , void *priv_cfg ) ;
};
struct dtv_frontend_properties;
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8] ;
   void (*release)(struct dvb_frontend *fe ) ;
   void (*release_sec)(struct dvb_frontend *fe ) ;
   int (*init)(struct dvb_frontend *fe ) ;
   int (*sleep)(struct dvb_frontend *fe ) ;
   int (*write)(struct dvb_frontend *fe , u8 const *buf , int len ) ;
   int (*tune)(struct dvb_frontend *fe , bool re_tune , unsigned int mode_flags ,
               unsigned int *delay , fe_status_t *status ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend *fe ) ;
   int (*set_frontend)(struct dvb_frontend *fe ) ;
   int (*get_tune_settings)(struct dvb_frontend *fe , struct dvb_frontend_tune_settings *settings ) ;
   int (*get_frontend)(struct dvb_frontend *fe ) ;
   int (*read_status)(struct dvb_frontend *fe , fe_status_t *status ) ;
   int (*read_ber)(struct dvb_frontend *fe , u32 *ber ) ;
   int (*read_signal_strength)(struct dvb_frontend *fe , u16 *strength ) ;
   int (*read_snr)(struct dvb_frontend *fe , u16 *snr ) ;
   int (*read_ucblocks)(struct dvb_frontend *fe , u32 *ucblocks ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend *fe ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend *fe , struct dvb_diseqc_master_cmd *cmd ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend *fe , struct dvb_diseqc_slave_reply *reply ) ;
   int (*diseqc_send_burst)(struct dvb_frontend *fe , fe_sec_mini_cmd_t minicmd ) ;
   int (*set_tone)(struct dvb_frontend *fe , fe_sec_tone_mode_t tone ) ;
   int (*set_voltage)(struct dvb_frontend *fe , fe_sec_voltage_t voltage ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend *fe , long arg ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend *fe , unsigned long cmd ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend *fe , int enable ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend *fe , int acquire ) ;
   enum dvbfe_search (*search)(struct dvb_frontend *fe ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend *fe , struct dtv_property *tvp ) ;
   int (*get_property)(struct dvb_frontend *fe , struct dtv_property *tvp ) ;
};
struct __anonstruct_layer_269 {
   u8 segment_count ;
   fe_code_rate_t fec ;
   fe_modulation_t modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   fe_modulation_t modulation ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t sectone ;
   fe_spectral_inversion_t inversion ;
   fe_code_rate_t fec_inner ;
   fe_transmit_mode_t transmission_mode ;
   u32 bandwidth_hz ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy ;
   u32 symbol_rate ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_pilot_t pilot ;
   fe_rolloff_t rolloff ;
   fe_delivery_system_t delivery_system ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_269 layer[3] ;
   u32 isdbs_ts_id ;
   u32 dvbt2_plp_id ;
};
struct dvb_frontend {
   struct dvb_frontend_ops ops ;
   struct dvb_adapter *dvb ;
   void *demodulator_priv ;
   void *tuner_priv ;
   void *frontend_priv ;
   void *sec_priv ;
   void *analog_demod_priv ;
   struct dtv_frontend_properties dtv_property_cache ;
   int (*callback)(void *adapter_priv , int component , int cmd , int arg ) ;
   int id ;
};
struct microtune_priv {
   struct tuner_i2c_props i2c_props ;
   unsigned int xogc ;
   u32 frequency ;
};
struct __anonstruct_278 {
   int : 0 ;
};
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
extern void __const_udelay(unsigned long xloops ) ;
extern void *memcpy(void *to , void const *from , size_t len ) ;
extern void *memset(void *s , int c , size_t n ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern int i2c_transfer(struct i2c_adapter *adap , struct i2c_msg *msgs , int num ) ;
__inline static int i2c_adapter_id(struct i2c_adapter *adap ) __attribute__((__no_instrument_function__)) ;
__inline static int i2c_adapter_id(struct i2c_adapter *adap )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  {
  {
  __cil_tmp2 = (unsigned long )adap;
  __cil_tmp3 = __cil_tmp2 + 896;
  return (*((int *)__cil_tmp3));
  }
}
}
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags )
{ void *tmp___10 ;
  {
  {
  tmp___10 = __kmalloc(size, flags);
  }
  return (tmp___10);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp___7 ;
  unsigned int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = flags | 32768U;
  tmp___7 = kmalloc(size, __cil_tmp4);
  }
  return (tmp___7);
}
}
__inline static int tuner_i2c_xfer_send(struct tuner_i2c_props *props , char *buf ,
                                        int len ) __attribute__((__no_instrument_function__)) ;
__inline static int tuner_i2c_xfer_send(struct tuner_i2c_props *props , char *buf ,
                                        int len )
{ struct i2c_msg msg ;
  int ret ;
  int tmp___7 ;
  int tmp___8 ;
  struct i2c_msg *__cil_tmp8 ;
  u8 __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct i2c_adapter *__cil_tmp15 ;
  {
  {
  __cil_tmp8 = & msg;
  __cil_tmp9 = *((u8 *)props);
  *((__u16 *)__cil_tmp8) = (__u16 )__cil_tmp9;
  __cil_tmp10 = (unsigned long )(& msg) + 2;
  *((__u16 *)__cil_tmp10) = (__u16 )0;
  __cil_tmp11 = (unsigned long )(& msg) + 4;
  *((__u16 *)__cil_tmp11) = (__u16 )len;
  __cil_tmp12 = (unsigned long )(& msg) + 8;
  *((__u8 **)__cil_tmp12) = (__u8 *)buf;
  __cil_tmp13 = (unsigned long )props;
  __cil_tmp14 = __cil_tmp13 + 8;
  __cil_tmp15 = *((struct i2c_adapter **)__cil_tmp14);
  tmp___7 = i2c_transfer(__cil_tmp15, & msg, 1);
  ret = tmp___7;
  }
  if (ret == 1) {
    tmp___8 = len;
  } else {
    tmp___8 = ret;
  }
  return (tmp___8);
}
}
__inline static int tuner_i2c_xfer_recv(struct tuner_i2c_props *props , char *buf ,
                                        int len ) __attribute__((__no_instrument_function__)) ;
__inline static int tuner_i2c_xfer_recv(struct tuner_i2c_props *props , char *buf ,
                                        int len )
{ struct i2c_msg msg ;
  int ret ;
  int tmp___7 ;
  int tmp___8 ;
  struct i2c_msg *__cil_tmp8 ;
  u8 __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct i2c_adapter *__cil_tmp15 ;
  {
  {
  __cil_tmp8 = & msg;
  __cil_tmp9 = *((u8 *)props);
  *((__u16 *)__cil_tmp8) = (__u16 )__cil_tmp9;
  __cil_tmp10 = (unsigned long )(& msg) + 2;
  *((__u16 *)__cil_tmp10) = (__u16 )1;
  __cil_tmp11 = (unsigned long )(& msg) + 4;
  *((__u16 *)__cil_tmp11) = (__u16 )len;
  __cil_tmp12 = (unsigned long )(& msg) + 8;
  *((__u8 **)__cil_tmp12) = (__u8 *)buf;
  __cil_tmp13 = (unsigned long )props;
  __cil_tmp14 = __cil_tmp13 + 8;
  __cil_tmp15 = *((struct i2c_adapter **)__cil_tmp14);
  tmp___7 = i2c_transfer(__cil_tmp15, & msg, 1);
  ret = tmp___7;
  }
  if (ret == 1) {
    tmp___8 = len;
  } else {
    tmp___8 = ret;
  }
  return (tmp___8);
}
}
extern struct kernel_param_ops param_ops_int ;
struct dvb_frontend *microtune_attach(struct dvb_frontend *fe , struct i2c_adapter *i2c_adap ,
                                      u8 i2c_addr ) ;
static int debug ;
static char const __param_str_debug[6] = { (char const )'d', (char const )'e', (char const )'b', (char const )'u',
        (char const )'g', (char const )'\000'};
static struct kernel_param const __param_debug __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_debug, (struct kernel_param_ops const *)(& param_ops_int), (u16 )420,
    (s16 )0, {(void *)(& debug)}};
static char const __mod_debugtype16[19] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'d', (char const )'e', (char const )'b',
        (char const )'u', (char const )'g', (char const )':', (char const )'i',
        (char const )'n', (char const )'t', (char const )'\000'};
static char const __mod_debug17[41] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'=', (char const )'d', (char const )'e', (char const )'b',
        (char const )'u', (char const )'g', (char const )':', (char const )'e',
        (char const )'n', (char const )'a', (char const )'b', (char const )'l',
        (char const )'e', (char const )' ', (char const )'v', (char const )'e',
        (char const )'r', (char const )'b', (char const )'o', (char const )'s',
        (char const )'e', (char const )' ', (char const )'d', (char const )'e',
        (char const )'b', (char const )'u', (char const )'g', (char const )' ',
        (char const )'m', (char const )'e', (char const )'s', (char const )'s',
        (char const )'a', (char const )'g', (char const )'e', (char const )'s',
        (char const )'\000'};
static unsigned int optimize_vco = 1U;
static char const __param_str_optimize_vco[13] =
  { (char const )'o', (char const )'p', (char const )'t', (char const )'i',
        (char const )'m', (char const )'i', (char const )'z', (char const )'e',
        (char const )'_', (char const )'v', (char const )'c', (char const )'o',
        (char const )'\000'};
static struct kernel_param const __param_optimize_vco __attribute__((__used__,
__unused__, __section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_optimize_vco, (struct kernel_param_ops const *)(& param_ops_int),
    (u16 )420, (s16 )0, {(void *)(& optimize_vco)}};
static char const __mod_optimize_vcotype22[26] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'o', (char const )'p', (char const )'t',
        (char const )'i', (char const )'m', (char const )'i', (char const )'z',
        (char const )'e', (char const )'_', (char const )'v', (char const )'c',
        (char const )'o', (char const )':', (char const )'i', (char const )'n',
        (char const )'t', (char const )'\000'};
static unsigned int tv_antenna = 1U;
static char const __param_str_tv_antenna[11] =
  { (char const )'t', (char const )'v', (char const )'_', (char const )'a',
        (char const )'n', (char const )'t', (char const )'e', (char const )'n',
        (char const )'n', (char const )'a', (char const )'\000'};
static struct kernel_param const __param_tv_antenna __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_tv_antenna, (struct kernel_param_ops const *)(& param_ops_int),
    (u16 )420, (s16 )0, {(void *)(& tv_antenna)}};
static char const __mod_tv_antennatype25[24] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'t', (char const )'v', (char const )'_',
        (char const )'a', (char const )'n', (char const )'t', (char const )'e',
        (char const )'n', (char const )'n', (char const )'a', (char const )':',
        (char const )'i', (char const )'n', (char const )'t', (char const )'\000'};
static unsigned int radio_antenna ;
static char const __param_str_radio_antenna[14] =
  { (char const )'r', (char const )'a', (char const )'d', (char const )'i',
        (char const )'o', (char const )'_', (char const )'a', (char const )'n',
        (char const )'t', (char const )'e', (char const )'n', (char const )'n',
        (char const )'a', (char const )'\000'};
static struct kernel_param const __param_radio_antenna __attribute__((__used__,
__unused__, __section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_radio_antenna, (struct kernel_param_ops const *)(& param_ops_int),
    (u16 )420, (s16 )0, {(void *)(& radio_antenna)}};
static char const __mod_radio_antennatype28[27] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'p', (char const )'a', (char const )'r', (char const )'m',
        (char const )'t', (char const )'y', (char const )'p', (char const )'e',
        (char const )'=', (char const )'r', (char const )'a', (char const )'d',
        (char const )'i', (char const )'o', (char const )'_', (char const )'a',
        (char const )'n', (char const )'t', (char const )'e', (char const )'n',
        (char const )'n', (char const )'a', (char const )':', (char const )'i',
        (char const )'n', (char const )'t', (char const )'\000'};
static char *microtune_part[67] =
  { (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)"MT2032", (char *)0, (char *)"MT2030", (char *)"MT2040",
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)0, (char *)0,
        (char *)0, (char *)0, (char *)"MT2050"};
static int microtune_release(struct dvb_frontend *fe )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  void *__cil_tmp4 ;
  void const *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  {
  {
  __cil_tmp2 = (unsigned long )fe;
  __cil_tmp3 = __cil_tmp2 + 768;
  __cil_tmp4 = *((void **)__cil_tmp3);
  __cil_tmp5 = (void const *)__cil_tmp4;
  kfree(__cil_tmp5);
  __cil_tmp6 = (unsigned long )fe;
  __cil_tmp7 = __cil_tmp6 + 768;
  *((void **)__cil_tmp7) = (void *)0;
  }
  return (0);
}
}
static int microtune_get_frequency(struct dvb_frontend *fe , u32 *frequency )
{ struct microtune_priv *priv ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  {
  __cil_tmp4 = (unsigned long )fe;
  __cil_tmp5 = __cil_tmp4 + 768;
  __cil_tmp6 = *((void **)__cil_tmp5);
  priv = (struct microtune_priv *)__cil_tmp6;
  __cil_tmp7 = (unsigned long )priv;
  __cil_tmp8 = __cil_tmp7 + 36;
  *frequency = *((u32 *)__cil_tmp8);
  return (0);
}
}
static int mt2032_spurcheck(struct dvb_frontend *fe , int f1 , int f2 , int spectrum_from ,
                            int spectrum_to )
{ struct microtune_priv *priv ;
  int n1 ;
  int n2 ;
  int f ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  void *__cil_tmp18 ;
  int *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct i2c_adapter *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  char *__cil_tmp30 ;
  u8 __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  int *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct i2c_adapter *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  char *__cil_tmp45 ;
  u8 __cil_tmp46 ;
  int __cil_tmp47 ;
  int *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  struct i2c_adapter *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  char *__cil_tmp59 ;
  u8 __cil_tmp60 ;
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  {
  __cil_tmp16 = (unsigned long )fe;
  __cil_tmp17 = __cil_tmp16 + 768;
  __cil_tmp18 = *((void **)__cil_tmp17);
  priv = (struct microtune_priv *)__cil_tmp18;
  n1 = 1;
  f1 = f1 / 1000;
  f2 = f2 / 1000;
  spectrum_from = spectrum_from / 1000;
  spectrum_to = spectrum_to / 1000;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp19 = & debug;
    if (*__cil_tmp19) {
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp20 = 0 + 8;
        __cil_tmp21 = (unsigned long )priv;
        __cil_tmp22 = __cil_tmp21 + __cil_tmp20;
        if (*((struct i2c_adapter **)__cil_tmp22)) {
          {
          __cil_tmp23 = 0 + 8;
          __cil_tmp24 = (unsigned long )priv;
          __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
          __cil_tmp26 = *((struct i2c_adapter **)__cil_tmp25);
          tmp___7 = i2c_adapter_id(__cil_tmp26);
          tmp___8 = tmp___7;
          }
        } else {
          tmp___8 = -1;
        }
        }
        {
        __cil_tmp27 = 0 + 24;
        __cil_tmp28 = (unsigned long )priv;
        __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
        __cil_tmp30 = *((char **)__cil_tmp29);
        __cil_tmp31 = *((u8 *)priv);
        __cil_tmp32 = (int )__cil_tmp31;
        printk("<7>%s %d-%04x: spurcheck f1=%d f2=%d  from=%d to=%d\n", __cil_tmp30,
               tmp___8, __cil_tmp32, f1, f2, spectrum_from, spectrum_to);
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  while (1) {
    while_continue___1: ;
    n2 = - n1;
    __cil_tmp33 = f1 - f2;
    f = n1 * __cil_tmp33;
    {
    while (1) {
      while_continue___2: ;
      n2 = n2 - 1;
      f = f - f2;
      {
      while (1) {
        while_continue___3: ;
        {
        __cil_tmp34 = & debug;
        if (*__cil_tmp34) {
          {
          while (1) {
            while_continue___4: ;
            {
            __cil_tmp35 = 0 + 8;
            __cil_tmp36 = (unsigned long )priv;
            __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
            if (*((struct i2c_adapter **)__cil_tmp37)) {
              {
              __cil_tmp38 = 0 + 8;
              __cil_tmp39 = (unsigned long )priv;
              __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
              __cil_tmp41 = *((struct i2c_adapter **)__cil_tmp40);
              tmp___9 = i2c_adapter_id(__cil_tmp41);
              tmp___10 = tmp___9;
              }
            } else {
              tmp___10 = -1;
            }
            }
            {
            __cil_tmp42 = 0 + 24;
            __cil_tmp43 = (unsigned long )priv;
            __cil_tmp44 = __cil_tmp43 + __cil_tmp42;
            __cil_tmp45 = *((char **)__cil_tmp44);
            __cil_tmp46 = *((u8 *)priv);
            __cil_tmp47 = (int )__cil_tmp46;
            printk("<7>%s %d-%04x: spurtest n1=%d n2=%d ftest=%d\n", __cil_tmp45,
                   tmp___10, __cil_tmp47, n1, n2, f);
            }
            goto while_break___4;
          }
          while_break___4: ;
          }
        } else {
        }
        }
        goto while_break___3;
      }
      while_break___3: ;
      }
      if (f > spectrum_from) {
        if (f < spectrum_to) {
          {
          while (1) {
            while_continue___5: ;
            {
            __cil_tmp48 = & debug;
            if (*__cil_tmp48) {
              {
              while (1) {
                while_continue___6: ;
                {
                __cil_tmp49 = 0 + 8;
                __cil_tmp50 = (unsigned long )priv;
                __cil_tmp51 = __cil_tmp50 + __cil_tmp49;
                if (*((struct i2c_adapter **)__cil_tmp51)) {
                  {
                  __cil_tmp52 = 0 + 8;
                  __cil_tmp53 = (unsigned long )priv;
                  __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
                  __cil_tmp55 = *((struct i2c_adapter **)__cil_tmp54);
                  tmp___11 = i2c_adapter_id(__cil_tmp55);
                  tmp___12 = tmp___11;
                  }
                } else {
                  tmp___12 = -1;
                }
                }
                {
                __cil_tmp56 = 0 + 24;
                __cil_tmp57 = (unsigned long )priv;
                __cil_tmp58 = __cil_tmp57 + __cil_tmp56;
                __cil_tmp59 = *((char **)__cil_tmp58);
                __cil_tmp60 = *((u8 *)priv);
                __cil_tmp61 = (int )__cil_tmp60;
                printk("<7>%s %d-%04x: mt2032 spurcheck triggered: %d\n", __cil_tmp59,
                       tmp___12, __cil_tmp61, n1);
                }
                goto while_break___6;
              }
              while_break___6: ;
              }
            } else {
            }
            }
            goto while_break___5;
          }
          while_break___5: ;
          }
        } else {
        }
      } else {
      }
      {
      __cil_tmp62 = f2 - spectrum_to;
      if (f > __cil_tmp62) {
      } else
      if (n2 > -5) {
      } else {
        goto while_break___2;
      }
      }
    }
    while_break___2: ;
    }
    n1 = n1 + 1;
    if (n1 < 5) {
    } else {
      goto while_break___1;
    }
  }
  while_break___1: ;
  }
  return (1);
}
}
static int mt2032_compute_freq(struct dvb_frontend *fe , unsigned int rfin , unsigned int if1 ,
                               unsigned int if2 , unsigned int spectrum_from , unsigned int spectrum_to ,
                               unsigned char *buf , int *ret_sel , unsigned int xogc )
{ struct microtune_priv *priv ;
  unsigned int fref ;
  unsigned int lo1 ;
  unsigned int lo1n ;
  unsigned int lo1a ;
  unsigned int s ;
  unsigned int sel ;
  unsigned int lo1freq ;
  unsigned int desired_lo1 ;
  unsigned int desired_lo2 ;
  unsigned int lo2 ;
  unsigned int lo2n ;
  unsigned int lo2a ;
  unsigned int lo2num ;
  unsigned int lo2freq ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  void *__cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  unsigned int __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  unsigned int __cil_tmp42 ;
  unsigned int *__cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  int *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  struct i2c_adapter *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  char *__cil_tmp57 ;
  u8 __cil_tmp58 ;
  int __cil_tmp59 ;
  unsigned int __cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  unsigned int __cil_tmp64 ;
  unsigned int __cil_tmp65 ;
  unsigned int __cil_tmp66 ;
  unsigned int __cil_tmp67 ;
  unsigned int __cil_tmp68 ;
  unsigned int __cil_tmp69 ;
  unsigned int __cil_tmp70 ;
  unsigned int __cil_tmp71 ;
  unsigned int __cil_tmp72 ;
  unsigned int __cil_tmp73 ;
  int *__cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  struct i2c_adapter *__cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  char *__cil_tmp85 ;
  u8 __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  struct i2c_adapter *__cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  char *__cil_tmp98 ;
  u8 __cil_tmp99 ;
  int __cil_tmp100 ;
  int __cil_tmp101 ;
  int __cil_tmp102 ;
  int __cil_tmp103 ;
  int __cil_tmp104 ;
  unsigned char *__cil_tmp105 ;
  unsigned int __cil_tmp106 ;
  unsigned char *__cil_tmp107 ;
  unsigned int __cil_tmp108 ;
  unsigned int __cil_tmp109 ;
  unsigned char *__cil_tmp110 ;
  unsigned char *__cil_tmp111 ;
  unsigned char *__cil_tmp112 ;
  unsigned char *__cil_tmp113 ;
  unsigned int __cil_tmp114 ;
  unsigned int __cil_tmp115 ;
  unsigned int __cil_tmp116 ;
  unsigned char *__cil_tmp117 ;
  unsigned char *__cil_tmp118 ;
  unsigned char *__cil_tmp119 ;
  unsigned int __cil_tmp120 ;
  unsigned char *__cil_tmp121 ;
  unsigned char *__cil_tmp122 ;
  unsigned char *__cil_tmp123 ;
  unsigned char *__cil_tmp124 ;
  unsigned int __cil_tmp125 ;
  unsigned char *__cil_tmp126 ;
  unsigned int __cil_tmp127 ;
  unsigned int __cil_tmp128 ;
  {
  __cil_tmp31 = (unsigned long )fe;
  __cil_tmp32 = __cil_tmp31 + 768;
  __cil_tmp33 = *((void **)__cil_tmp32);
  priv = (struct microtune_priv *)__cil_tmp33;
  fref = 5250000U;
  desired_lo1 = rfin + if1;
  __cil_tmp34 = 2U * fref;
  __cil_tmp35 = __cil_tmp34 / 1000U;
  __cil_tmp36 = fref / 1000U;
  __cil_tmp37 = desired_lo1 / 1000U;
  __cil_tmp38 = 2U * __cil_tmp37;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp36;
  lo1 = __cil_tmp39 / __cil_tmp35;
  lo1n = lo1 / 8U;
  __cil_tmp40 = lo1n * 8U;
  lo1a = lo1 - __cil_tmp40;
  __cil_tmp41 = rfin / 1000U;
  __cil_tmp42 = __cil_tmp41 / 1000U;
  s = __cil_tmp42 + 1090U;
  {
  __cil_tmp43 = & optimize_vco;
  if (*__cil_tmp43) {
    if (s > 1890U) {
      sel = 0U;
    } else
    if (s > 1720U) {
      sel = 1U;
    } else
    if (s > 1530U) {
      sel = 2U;
    } else
    if (s > 1370U) {
      sel = 3U;
    } else {
      sel = 4U;
    }
  } else
  if (s > 1790U) {
    sel = 0U;
  } else
  if (s > 1617U) {
    sel = 1U;
  } else
  if (s > 1449U) {
    sel = 2U;
  } else
  if (s > 1291U) {
    sel = 3U;
  } else {
    sel = 4U;
  }
  }
  *ret_sel = (int )sel;
  __cil_tmp44 = 8U * lo1n;
  __cil_tmp45 = lo1a + __cil_tmp44;
  lo1freq = __cil_tmp45 * fref;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp46 = & debug;
    if (*__cil_tmp46) {
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp47 = 0 + 8;
        __cil_tmp48 = (unsigned long )priv;
        __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
        if (*((struct i2c_adapter **)__cil_tmp49)) {
          {
          __cil_tmp50 = 0 + 8;
          __cil_tmp51 = (unsigned long )priv;
          __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
          __cil_tmp53 = *((struct i2c_adapter **)__cil_tmp52);
          tmp___7 = i2c_adapter_id(__cil_tmp53);
          tmp___8 = tmp___7;
          }
        } else {
          tmp___8 = -1;
        }
        }
        {
        __cil_tmp54 = 0 + 24;
        __cil_tmp55 = (unsigned long )priv;
        __cil_tmp56 = __cil_tmp55 + __cil_tmp54;
        __cil_tmp57 = *((char **)__cil_tmp56);
        __cil_tmp58 = *((u8 *)priv);
        __cil_tmp59 = (int )__cil_tmp58;
        printk("<7>%s %d-%04x: mt2032: rfin=%d lo1=%d lo1n=%d lo1a=%d sel=%d, lo1freq=%d\n",
               __cil_tmp57, tmp___8, __cil_tmp59, rfin, lo1, lo1n, lo1a, sel, lo1freq);
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  __cil_tmp60 = lo1freq - rfin;
  desired_lo2 = __cil_tmp60 - if2;
  lo2 = desired_lo2 / fref;
  lo2n = lo2 / 8U;
  __cil_tmp61 = lo2n * 8U;
  lo2a = lo2 - __cil_tmp61;
  __cil_tmp62 = fref / 1000U;
  __cil_tmp63 = fref / 1000U;
  __cil_tmp64 = desired_lo2 / 1000U;
  __cil_tmp65 = __cil_tmp64 % __cil_tmp63;
  __cil_tmp66 = __cil_tmp65 * 3780U;
  lo2num = __cil_tmp66 / __cil_tmp62;
  __cil_tmp67 = fref / 1000U;
  __cil_tmp68 = lo2num * __cil_tmp67;
  __cil_tmp69 = __cil_tmp68 / 3780U;
  __cil_tmp70 = __cil_tmp69 * 1000U;
  __cil_tmp71 = 8U * lo2n;
  __cil_tmp72 = lo2a + __cil_tmp71;
  __cil_tmp73 = __cil_tmp72 * fref;
  lo2freq = __cil_tmp73 + __cil_tmp70;
  {
  while (1) {
    while_continue___1: ;
    {
    __cil_tmp74 = & debug;
    if (*__cil_tmp74) {
      {
      while (1) {
        while_continue___2: ;
        {
        __cil_tmp75 = 0 + 8;
        __cil_tmp76 = (unsigned long )priv;
        __cil_tmp77 = __cil_tmp76 + __cil_tmp75;
        if (*((struct i2c_adapter **)__cil_tmp77)) {
          {
          __cil_tmp78 = 0 + 8;
          __cil_tmp79 = (unsigned long )priv;
          __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
          __cil_tmp81 = *((struct i2c_adapter **)__cil_tmp80);
          tmp___9 = i2c_adapter_id(__cil_tmp81);
          tmp___10 = tmp___9;
          }
        } else {
          tmp___10 = -1;
        }
        }
        {
        __cil_tmp82 = 0 + 24;
        __cil_tmp83 = (unsigned long )priv;
        __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
        __cil_tmp85 = *((char **)__cil_tmp84);
        __cil_tmp86 = *((u8 *)priv);
        __cil_tmp87 = (int )__cil_tmp86;
        printk("<7>%s %d-%04x: mt2032: rfin=%d lo2=%d lo2n=%d lo2a=%d num=%d lo2freq=%d\n",
               __cil_tmp85, tmp___10, __cil_tmp87, rfin, lo2, lo2n, lo2a, lo2num,
               lo2freq);
        }
        goto while_break___2;
      }
      while_break___2: ;
      }
    } else {
    }
    }
    goto while_break___1;
  }
  while_break___1: ;
  }
  if (lo1a > 7U) {
    goto _L;
  } else
  if (lo1n < 17U) {
    goto _L;
  } else
  if (lo1n > 48U) {
    goto _L;
  } else
  if (lo2a > 7U) {
    goto _L;
  } else
  if (lo2n < 17U) {
    goto _L;
  } else
  if (lo2n > 30U) {
    _L:
    {
    while (1) {
      while_continue___3: ;
      {
      while (1) {
        while_continue___4: ;
        {
        __cil_tmp88 = 0 + 8;
        __cil_tmp89 = (unsigned long )priv;
        __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
        if (*((struct i2c_adapter **)__cil_tmp90)) {
          {
          __cil_tmp91 = 0 + 8;
          __cil_tmp92 = (unsigned long )priv;
          __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
          __cil_tmp94 = *((struct i2c_adapter **)__cil_tmp93);
          tmp___11 = i2c_adapter_id(__cil_tmp94);
          tmp___12 = tmp___11;
          }
        } else {
          tmp___12 = -1;
        }
        }
        {
        __cil_tmp95 = 0 + 24;
        __cil_tmp96 = (unsigned long )priv;
        __cil_tmp97 = __cil_tmp96 + __cil_tmp95;
        __cil_tmp98 = *((char **)__cil_tmp97);
        __cil_tmp99 = *((u8 *)priv);
        __cil_tmp100 = (int )__cil_tmp99;
        printk("<6>%s %d-%04x: mt2032: frequency parameters out of range: %d %d %d %d\n",
               __cil_tmp98, tmp___12, __cil_tmp100, lo1a, lo1n, lo2a, lo2n);
        }
        goto while_break___4;
      }
      while_break___4: ;
      }
      goto while_break___3;
    }
    while_break___3: ;
    }
    return (-1);
  } else {
  }
  {
  __cil_tmp101 = (int )lo1freq;
  __cil_tmp102 = (int )desired_lo2;
  __cil_tmp103 = (int )spectrum_from;
  __cil_tmp104 = (int )spectrum_to;
  mt2032_spurcheck(fe, __cil_tmp101, __cil_tmp102, __cil_tmp103, __cil_tmp104);
  __cil_tmp105 = buf + 0;
  __cil_tmp106 = lo1n - 1U;
  *__cil_tmp105 = (unsigned char )__cil_tmp106;
  __cil_tmp107 = buf + 1;
  __cil_tmp108 = sel << 4;
  __cil_tmp109 = lo1a | __cil_tmp108;
  *__cil_tmp107 = (unsigned char )__cil_tmp109;
  __cil_tmp110 = buf + 2;
  *__cil_tmp110 = (unsigned char)134;
  __cil_tmp111 = buf + 3;
  *__cil_tmp111 = (unsigned char)15;
  __cil_tmp112 = buf + 4;
  *__cil_tmp112 = (unsigned char)31;
  __cil_tmp113 = buf + 5;
  __cil_tmp114 = lo2a << 5;
  __cil_tmp115 = lo2n - 1U;
  __cil_tmp116 = __cil_tmp115 | __cil_tmp114;
  *__cil_tmp113 = (unsigned char )__cil_tmp116;
  }
  if (rfin > 400000000U) {
    __cil_tmp117 = buf + 6;
    *__cil_tmp117 = (unsigned char)228;
  } else {
    __cil_tmp118 = buf + 6;
    *__cil_tmp118 = (unsigned char)244;
  }
  __cil_tmp119 = buf + 7;
  __cil_tmp120 = 8U + xogc;
  *__cil_tmp119 = (unsigned char )__cil_tmp120;
  __cil_tmp121 = buf + 8;
  *__cil_tmp121 = (unsigned char)195;
  __cil_tmp122 = buf + 9;
  *__cil_tmp122 = (unsigned char)78;
  __cil_tmp123 = buf + 10;
  *__cil_tmp123 = (unsigned char)236;
  __cil_tmp124 = buf + 11;
  __cil_tmp125 = lo2num & 255U;
  *__cil_tmp124 = (unsigned char )__cil_tmp125;
  __cil_tmp126 = buf + 12;
  __cil_tmp127 = lo2num >> 8;
  __cil_tmp128 = __cil_tmp127 | 128U;
  *__cil_tmp126 = (unsigned char )__cil_tmp128;
  return (0);
}
}
static int mt2032_check_lo_lock(struct dvb_frontend *fe )
{ struct microtune_priv *priv ;
  int try ;
  int lock ;
  unsigned char buf[2] ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct tuner_i2c_props *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  char *__cil_tmp19 ;
  struct tuner_i2c_props *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned char *__cil_tmp23 ;
  char *__cil_tmp24 ;
  int *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct i2c_adapter *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  char *__cil_tmp36 ;
  u8 __cil_tmp37 ;
  int __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned char __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned char __cil_tmp45 ;
  int __cil_tmp46 ;
  int *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  struct i2c_adapter *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  char *__cil_tmp58 ;
  u8 __cil_tmp59 ;
  int __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned char __cil_tmp63 ;
  int __cil_tmp64 ;
  {
  __cil_tmp10 = (unsigned long )fe;
  __cil_tmp11 = __cil_tmp10 + 768;
  __cil_tmp12 = *((void **)__cil_tmp11);
  priv = (struct microtune_priv *)__cil_tmp12;
  lock = 0;
  try = 0;
  {
  while (1) {
    while_continue: ;
    if (try < 10) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp13 = 0 * 1UL;
    __cil_tmp14 = (unsigned long )(buf) + __cil_tmp13;
    *((unsigned char *)__cil_tmp14) = (unsigned char)14;
    __cil_tmp15 = (struct tuner_i2c_props *)priv;
    __cil_tmp16 = 0 * 1UL;
    __cil_tmp17 = (unsigned long )(buf) + __cil_tmp16;
    __cil_tmp18 = (unsigned char *)__cil_tmp17;
    __cil_tmp19 = (char *)__cil_tmp18;
    tuner_i2c_xfer_send(__cil_tmp15, __cil_tmp19, 1);
    __cil_tmp20 = (struct tuner_i2c_props *)priv;
    __cil_tmp21 = 0 * 1UL;
    __cil_tmp22 = (unsigned long )(buf) + __cil_tmp21;
    __cil_tmp23 = (unsigned char *)__cil_tmp22;
    __cil_tmp24 = (char *)__cil_tmp23;
    tuner_i2c_xfer_recv(__cil_tmp20, __cil_tmp24, 1);
    }
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp25 = & debug;
      if (*__cil_tmp25) {
        {
        while (1) {
          while_continue___1: ;
          {
          __cil_tmp26 = 0 + 8;
          __cil_tmp27 = (unsigned long )priv;
          __cil_tmp28 = __cil_tmp27 + __cil_tmp26;
          if (*((struct i2c_adapter **)__cil_tmp28)) {
            {
            __cil_tmp29 = 0 + 8;
            __cil_tmp30 = (unsigned long )priv;
            __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
            __cil_tmp32 = *((struct i2c_adapter **)__cil_tmp31);
            tmp___7 = i2c_adapter_id(__cil_tmp32);
            tmp___8 = tmp___7;
            }
          } else {
            tmp___8 = -1;
          }
          }
          {
          __cil_tmp33 = 0 + 24;
          __cil_tmp34 = (unsigned long )priv;
          __cil_tmp35 = __cil_tmp34 + __cil_tmp33;
          __cil_tmp36 = *((char **)__cil_tmp35);
          __cil_tmp37 = *((u8 *)priv);
          __cil_tmp38 = (int )__cil_tmp37;
          __cil_tmp39 = 0 * 1UL;
          __cil_tmp40 = (unsigned long )(buf) + __cil_tmp39;
          __cil_tmp41 = *((unsigned char *)__cil_tmp40);
          __cil_tmp42 = (int )__cil_tmp41;
          printk("<7>%s %d-%04x: mt2032 Reg.E=0x%02x\n", __cil_tmp36, tmp___8, __cil_tmp38,
                 __cil_tmp42);
          }
          goto while_break___1;
        }
        while_break___1: ;
        }
      } else {
      }
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    __cil_tmp43 = 0 * 1UL;
    __cil_tmp44 = (unsigned long )(buf) + __cil_tmp43;
    __cil_tmp45 = *((unsigned char *)__cil_tmp44);
    __cil_tmp46 = (int )__cil_tmp45;
    lock = __cil_tmp46 & 6;
    if (lock == 6) {
      goto while_break;
    } else {
    }
    {
    while (1) {
      while_continue___2: ;
      {
      __cil_tmp47 = & debug;
      if (*__cil_tmp47) {
        {
        while (1) {
          while_continue___3: ;
          {
          __cil_tmp48 = 0 + 8;
          __cil_tmp49 = (unsigned long )priv;
          __cil_tmp50 = __cil_tmp49 + __cil_tmp48;
          if (*((struct i2c_adapter **)__cil_tmp50)) {
            {
            __cil_tmp51 = 0 + 8;
            __cil_tmp52 = (unsigned long )priv;
            __cil_tmp53 = __cil_tmp52 + __cil_tmp51;
            __cil_tmp54 = *((struct i2c_adapter **)__cil_tmp53);
            tmp___9 = i2c_adapter_id(__cil_tmp54);
            tmp___10 = tmp___9;
            }
          } else {
            tmp___10 = -1;
          }
          }
          {
          __cil_tmp55 = 0 + 24;
          __cil_tmp56 = (unsigned long )priv;
          __cil_tmp57 = __cil_tmp56 + __cil_tmp55;
          __cil_tmp58 = *((char **)__cil_tmp57);
          __cil_tmp59 = *((u8 *)priv);
          __cil_tmp60 = (int )__cil_tmp59;
          __cil_tmp61 = 0 * 1UL;
          __cil_tmp62 = (unsigned long )(buf) + __cil_tmp61;
          __cil_tmp63 = *((unsigned char *)__cil_tmp62);
          __cil_tmp64 = (int )__cil_tmp63;
          printk("<7>%s %d-%04x: mt2032: pll wait 1ms for lock (0x%2x)\n", __cil_tmp58,
                 tmp___10, __cil_tmp60, __cil_tmp64);
          }
          goto while_break___3;
        }
        while_break___3: ;
        }
      } else {
      }
      }
      goto while_break___2;
    }
    while_break___2: ;
    }
    {
    __const_udelay(4295000UL);
    try = try + 1;
    }
  }
  while_break: ;
  }
  return (lock);
}
}
static int mt2032_optimize_vco(struct dvb_frontend *fe , int sel , int lock )
{ struct microtune_priv *priv ;
  unsigned char buf[2] ;
  int tad1 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct tuner_i2c_props *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  char *__cil_tmp20 ;
  struct tuner_i2c_props *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned char *__cil_tmp24 ;
  char *__cil_tmp25 ;
  int *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct i2c_adapter *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  char *__cil_tmp37 ;
  u8 __cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned char __cil_tmp42 ;
  int __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned char __cil_tmp46 ;
  int __cil_tmp47 ;
  int *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  struct i2c_adapter *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  char *__cil_tmp59 ;
  u8 __cil_tmp60 ;
  int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  struct tuner_i2c_props *__cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned char *__cil_tmp69 ;
  char *__cil_tmp70 ;
  {
  {
  __cil_tmp11 = (unsigned long )fe;
  __cil_tmp12 = __cil_tmp11 + 768;
  __cil_tmp13 = *((void **)__cil_tmp12);
  priv = (struct microtune_priv *)__cil_tmp13;
  __cil_tmp14 = 0 * 1UL;
  __cil_tmp15 = (unsigned long )(buf) + __cil_tmp14;
  *((unsigned char *)__cil_tmp15) = (unsigned char)15;
  __cil_tmp16 = (struct tuner_i2c_props *)priv;
  __cil_tmp17 = 0 * 1UL;
  __cil_tmp18 = (unsigned long )(buf) + __cil_tmp17;
  __cil_tmp19 = (unsigned char *)__cil_tmp18;
  __cil_tmp20 = (char *)__cil_tmp19;
  tuner_i2c_xfer_send(__cil_tmp16, __cil_tmp20, 1);
  __cil_tmp21 = (struct tuner_i2c_props *)priv;
  __cil_tmp22 = 0 * 1UL;
  __cil_tmp23 = (unsigned long )(buf) + __cil_tmp22;
  __cil_tmp24 = (unsigned char *)__cil_tmp23;
  __cil_tmp25 = (char *)__cil_tmp24;
  tuner_i2c_xfer_recv(__cil_tmp21, __cil_tmp25, 1);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp26 = & debug;
    if (*__cil_tmp26) {
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp27 = 0 + 8;
        __cil_tmp28 = (unsigned long )priv;
        __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
        if (*((struct i2c_adapter **)__cil_tmp29)) {
          {
          __cil_tmp30 = 0 + 8;
          __cil_tmp31 = (unsigned long )priv;
          __cil_tmp32 = __cil_tmp31 + __cil_tmp30;
          __cil_tmp33 = *((struct i2c_adapter **)__cil_tmp32);
          tmp___7 = i2c_adapter_id(__cil_tmp33);
          tmp___8 = tmp___7;
          }
        } else {
          tmp___8 = -1;
        }
        }
        {
        __cil_tmp34 = 0 + 24;
        __cil_tmp35 = (unsigned long )priv;
        __cil_tmp36 = __cil_tmp35 + __cil_tmp34;
        __cil_tmp37 = *((char **)__cil_tmp36);
        __cil_tmp38 = *((u8 *)priv);
        __cil_tmp39 = (int )__cil_tmp38;
        __cil_tmp40 = 0 * 1UL;
        __cil_tmp41 = (unsigned long )(buf) + __cil_tmp40;
        __cil_tmp42 = *((unsigned char *)__cil_tmp41);
        __cil_tmp43 = (int )__cil_tmp42;
        printk("<7>%s %d-%04x: mt2032 Reg.F=0x%02x\n", __cil_tmp37, tmp___8, __cil_tmp39,
               __cil_tmp43);
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  __cil_tmp44 = 0 * 1UL;
  __cil_tmp45 = (unsigned long )(buf) + __cil_tmp44;
  __cil_tmp46 = *((unsigned char *)__cil_tmp45);
  __cil_tmp47 = (int )__cil_tmp46;
  tad1 = __cil_tmp47 & 7;
  if (tad1 == 0) {
    return (lock);
  } else {
  }
  if (tad1 == 1) {
    return (lock);
  } else {
  }
  if (tad1 == 2) {
    if (sel == 0) {
      return (lock);
    } else {
      sel = sel - 1;
    }
  } else
  if (sel < 4) {
    sel = sel + 1;
  } else {
    return (lock);
  }
  {
  while (1) {
    while_continue___1: ;
    {
    __cil_tmp48 = & debug;
    if (*__cil_tmp48) {
      {
      while (1) {
        while_continue___2: ;
        {
        __cil_tmp49 = 0 + 8;
        __cil_tmp50 = (unsigned long )priv;
        __cil_tmp51 = __cil_tmp50 + __cil_tmp49;
        if (*((struct i2c_adapter **)__cil_tmp51)) {
          {
          __cil_tmp52 = 0 + 8;
          __cil_tmp53 = (unsigned long )priv;
          __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
          __cil_tmp55 = *((struct i2c_adapter **)__cil_tmp54);
          tmp___9 = i2c_adapter_id(__cil_tmp55);
          tmp___10 = tmp___9;
          }
        } else {
          tmp___10 = -1;
        }
        }
        {
        __cil_tmp56 = 0 + 24;
        __cil_tmp57 = (unsigned long )priv;
        __cil_tmp58 = __cil_tmp57 + __cil_tmp56;
        __cil_tmp59 = *((char **)__cil_tmp58);
        __cil_tmp60 = *((u8 *)priv);
        __cil_tmp61 = (int )__cil_tmp60;
        printk("<7>%s %d-%04x: mt2032 optimize_vco: sel=%d\n", __cil_tmp59, tmp___10,
               __cil_tmp61, sel);
        }
        goto while_break___2;
      }
      while_break___2: ;
      }
    } else {
    }
    }
    goto while_break___1;
  }
  while_break___1: ;
  }
  {
  __cil_tmp62 = 0 * 1UL;
  __cil_tmp63 = (unsigned long )(buf) + __cil_tmp62;
  *((unsigned char *)__cil_tmp63) = (unsigned char)15;
  __cil_tmp64 = 1 * 1UL;
  __cil_tmp65 = (unsigned long )(buf) + __cil_tmp64;
  *((unsigned char *)__cil_tmp65) = (unsigned char )sel;
  __cil_tmp66 = (struct tuner_i2c_props *)priv;
  __cil_tmp67 = 0 * 1UL;
  __cil_tmp68 = (unsigned long )(buf) + __cil_tmp67;
  __cil_tmp69 = (unsigned char *)__cil_tmp68;
  __cil_tmp70 = (char *)__cil_tmp69;
  tuner_i2c_xfer_send(__cil_tmp66, __cil_tmp70, 2);
  lock = mt2032_check_lo_lock(fe);
  }
  return (lock);
}
}
static void mt2032_set_if_freq(struct dvb_frontend *fe , unsigned int rfin , unsigned int if1 ,
                               unsigned int if2 , unsigned int from , unsigned int to )
{ unsigned char buf[21] ;
  int lint_try ;
  int ret ;
  int sel ;
  int lock ;
  struct microtune_priv *priv ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  unsigned long __ms ;
  unsigned long tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  void *__cil_tmp27 ;
  int *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct i2c_adapter *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  char *__cil_tmp39 ;
  u8 __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct tuner_i2c_props *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned char *__cil_tmp47 ;
  char *__cil_tmp48 ;
  struct tuner_i2c_props *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned char *__cil_tmp52 ;
  char *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned char *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  struct tuner_i2c_props *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned char *__cil_tmp67 ;
  char *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct tuner_i2c_props *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned char *__cil_tmp74 ;
  unsigned char *__cil_tmp75 ;
  char *__cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  struct tuner_i2c_props *__cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned char *__cil_tmp82 ;
  unsigned char *__cil_tmp83 ;
  char *__cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  struct i2c_adapter *__cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  char *__cil_tmp95 ;
  u8 __cil_tmp96 ;
  int __cil_tmp97 ;
  unsigned int *__cil_tmp98 ;
  int *__cil_tmp99 ;
  int __cil_tmp100 ;
  int *__cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  struct i2c_adapter *__cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  char *__cil_tmp112 ;
  u8 __cil_tmp113 ;
  int __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned int __cil_tmp121 ;
  unsigned int __cil_tmp122 ;
  struct tuner_i2c_props *__cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned char *__cil_tmp126 ;
  char *__cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned int __cil_tmp132 ;
  unsigned int __cil_tmp133 ;
  struct tuner_i2c_props *__cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned char *__cil_tmp137 ;
  char *__cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  struct i2c_adapter *__cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  char *__cil_tmp149 ;
  u8 __cil_tmp150 ;
  int __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  struct tuner_i2c_props *__cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned char *__cil_tmp159 ;
  char *__cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  struct i2c_adapter *__cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  char *__cil_tmp171 ;
  u8 __cil_tmp172 ;
  int __cil_tmp173 ;
  {
  lock = 0;
  __cil_tmp25 = (unsigned long )fe;
  __cil_tmp26 = __cil_tmp25 + 768;
  __cil_tmp27 = *((void **)__cil_tmp26);
  priv = (struct microtune_priv *)__cil_tmp27;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp28 = & debug;
    if (*__cil_tmp28) {
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp29 = 0 + 8;
        __cil_tmp30 = (unsigned long )priv;
        __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
        if (*((struct i2c_adapter **)__cil_tmp31)) {
          {
          __cil_tmp32 = 0 + 8;
          __cil_tmp33 = (unsigned long )priv;
          __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
          __cil_tmp35 = *((struct i2c_adapter **)__cil_tmp34);
          tmp___7 = i2c_adapter_id(__cil_tmp35);
          tmp___8 = tmp___7;
          }
        } else {
          tmp___8 = -1;
        }
        }
        {
        __cil_tmp36 = 0 + 24;
        __cil_tmp37 = (unsigned long )priv;
        __cil_tmp38 = __cil_tmp37 + __cil_tmp36;
        __cil_tmp39 = *((char **)__cil_tmp38);
        __cil_tmp40 = *((u8 *)priv);
        __cil_tmp41 = (int )__cil_tmp40;
        printk("<7>%s %d-%04x: mt2032_set_if_freq rfin=%d if1=%d if2=%d from=%d to=%d\n",
               __cil_tmp39, tmp___8, __cil_tmp41, rfin, if1, if2, from, to);
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp42 = 0 * 1UL;
  __cil_tmp43 = (unsigned long )(buf) + __cil_tmp42;
  *((unsigned char *)__cil_tmp43) = (unsigned char)0;
  __cil_tmp44 = (struct tuner_i2c_props *)priv;
  __cil_tmp45 = 0 * 1UL;
  __cil_tmp46 = (unsigned long )(buf) + __cil_tmp45;
  __cil_tmp47 = (unsigned char *)__cil_tmp46;
  __cil_tmp48 = (char *)__cil_tmp47;
  ret = tuner_i2c_xfer_send(__cil_tmp44, __cil_tmp48, 1);
  __cil_tmp49 = (struct tuner_i2c_props *)priv;
  __cil_tmp50 = 0 * 1UL;
  __cil_tmp51 = (unsigned long )(buf) + __cil_tmp50;
  __cil_tmp52 = (unsigned char *)__cil_tmp51;
  __cil_tmp53 = (char *)__cil_tmp52;
  tuner_i2c_xfer_recv(__cil_tmp49, __cil_tmp53, 21);
  __cil_tmp54 = 0 * 1UL;
  __cil_tmp55 = (unsigned long )(buf) + __cil_tmp54;
  *((unsigned char *)__cil_tmp55) = (unsigned char)0;
  __cil_tmp56 = 1 * 1UL;
  __cil_tmp57 = (unsigned long )(buf) + __cil_tmp56;
  __cil_tmp58 = (unsigned char *)__cil_tmp57;
  __cil_tmp59 = (unsigned long )priv;
  __cil_tmp60 = __cil_tmp59 + 32;
  __cil_tmp61 = *((unsigned int *)__cil_tmp60);
  ret = mt2032_compute_freq(fe, rfin, if1, if2, from, to, __cil_tmp58, & sel, __cil_tmp61);
  }
  if (ret < 0) {
    return;
  } else {
  }
  {
  __cil_tmp62 = 0 * 1UL;
  __cil_tmp63 = (unsigned long )(buf) + __cil_tmp62;
  *((unsigned char *)__cil_tmp63) = (unsigned char)0;
  __cil_tmp64 = (struct tuner_i2c_props *)priv;
  __cil_tmp65 = 0 * 1UL;
  __cil_tmp66 = (unsigned long )(buf) + __cil_tmp65;
  __cil_tmp67 = (unsigned char *)__cil_tmp66;
  __cil_tmp68 = (char *)__cil_tmp67;
  ret = tuner_i2c_xfer_send(__cil_tmp64, __cil_tmp68, 4);
  __cil_tmp69 = 5 * 1UL;
  __cil_tmp70 = (unsigned long )(buf) + __cil_tmp69;
  *((unsigned char *)__cil_tmp70) = (unsigned char)5;
  __cil_tmp71 = (struct tuner_i2c_props *)priv;
  __cil_tmp72 = 0 * 1UL;
  __cil_tmp73 = (unsigned long )(buf) + __cil_tmp72;
  __cil_tmp74 = (unsigned char *)__cil_tmp73;
  __cil_tmp75 = __cil_tmp74 + 5;
  __cil_tmp76 = (char *)__cil_tmp75;
  ret = tuner_i2c_xfer_send(__cil_tmp71, __cil_tmp76, 4);
  __cil_tmp77 = 11 * 1UL;
  __cil_tmp78 = (unsigned long )(buf) + __cil_tmp77;
  *((unsigned char *)__cil_tmp78) = (unsigned char)11;
  __cil_tmp79 = (struct tuner_i2c_props *)priv;
  __cil_tmp80 = 0 * 1UL;
  __cil_tmp81 = (unsigned long )(buf) + __cil_tmp80;
  __cil_tmp82 = (unsigned char *)__cil_tmp81;
  __cil_tmp83 = __cil_tmp82 + 11;
  __cil_tmp84 = (char *)__cil_tmp83;
  ret = tuner_i2c_xfer_send(__cil_tmp79, __cil_tmp84, 3);
  }
  if (ret != 3) {
    {
    while (1) {
      while_continue___1: ;
      {
      while (1) {
        while_continue___2: ;
        {
        __cil_tmp85 = 0 + 8;
        __cil_tmp86 = (unsigned long )priv;
        __cil_tmp87 = __cil_tmp86 + __cil_tmp85;
        if (*((struct i2c_adapter **)__cil_tmp87)) {
          {
          __cil_tmp88 = 0 + 8;
          __cil_tmp89 = (unsigned long )priv;
          __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
          __cil_tmp91 = *((struct i2c_adapter **)__cil_tmp90);
          tmp___9 = i2c_adapter_id(__cil_tmp91);
          tmp___10 = tmp___9;
          }
        } else {
          tmp___10 = -1;
        }
        }
        {
        __cil_tmp92 = 0 + 24;
        __cil_tmp93 = (unsigned long )priv;
        __cil_tmp94 = __cil_tmp93 + __cil_tmp92;
        __cil_tmp95 = *((char **)__cil_tmp94);
        __cil_tmp96 = *((u8 *)priv);
        __cil_tmp97 = (int )__cil_tmp96;
        printk("<4>%s %d-%04x: i2c i/o error: rc == %d (should be 3)\n", __cil_tmp95,
               tmp___10, __cil_tmp97, ret);
        }
        goto while_break___2;
      }
      while_break___2: ;
      }
      goto while_break___1;
    }
    while_break___1: ;
    }
  } else {
  }
  lint_try = 0;
  {
  while (1) {
    while_continue___3: ;
    if (lint_try < 2) {
    } else {
      goto while_break___3;
    }
    {
    lock = mt2032_check_lo_lock(fe);
    }
    {
    __cil_tmp98 = & optimize_vco;
    if (*__cil_tmp98) {
      {
      __cil_tmp99 = & sel;
      __cil_tmp100 = *__cil_tmp99;
      lock = mt2032_optimize_vco(fe, __cil_tmp100, lock);
      }
    } else {
    }
    }
    if (lock == 6) {
      goto while_break___3;
    } else {
    }
    {
    while (1) {
      while_continue___4: ;
      {
      __cil_tmp101 = & debug;
      if (*__cil_tmp101) {
        {
        while (1) {
          while_continue___5: ;
          {
          __cil_tmp102 = 0 + 8;
          __cil_tmp103 = (unsigned long )priv;
          __cil_tmp104 = __cil_tmp103 + __cil_tmp102;
          if (*((struct i2c_adapter **)__cil_tmp104)) {
            {
            __cil_tmp105 = 0 + 8;
            __cil_tmp106 = (unsigned long )priv;
            __cil_tmp107 = __cil_tmp106 + __cil_tmp105;
            __cil_tmp108 = *((struct i2c_adapter **)__cil_tmp107);
            tmp___11 = i2c_adapter_id(__cil_tmp108);
            tmp___12 = tmp___11;
            }
          } else {
            tmp___12 = -1;
          }
          }
          {
          __cil_tmp109 = 0 + 24;
          __cil_tmp110 = (unsigned long )priv;
          __cil_tmp111 = __cil_tmp110 + __cil_tmp109;
          __cil_tmp112 = *((char **)__cil_tmp111);
          __cil_tmp113 = *((u8 *)priv);
          __cil_tmp114 = (int )__cil_tmp113;
          printk("<7>%s %d-%04x: mt2032: re-init PLLs by LINT\n", __cil_tmp112, tmp___12,
                 __cil_tmp114);
          }
          goto while_break___5;
        }
        while_break___5: ;
        }
      } else {
      }
      }
      goto while_break___4;
    }
    while_break___4: ;
    }
    {
    __cil_tmp115 = 0 * 1UL;
    __cil_tmp116 = (unsigned long )(buf) + __cil_tmp115;
    *((unsigned char *)__cil_tmp116) = (unsigned char)7;
    __cil_tmp117 = 1 * 1UL;
    __cil_tmp118 = (unsigned long )(buf) + __cil_tmp117;
    __cil_tmp119 = (unsigned long )priv;
    __cil_tmp120 = __cil_tmp119 + 32;
    __cil_tmp121 = *((unsigned int *)__cil_tmp120);
    __cil_tmp122 = 136U + __cil_tmp121;
    *((unsigned char *)__cil_tmp118) = (unsigned char )__cil_tmp122;
    __cil_tmp123 = (struct tuner_i2c_props *)priv;
    __cil_tmp124 = 0 * 1UL;
    __cil_tmp125 = (unsigned long )(buf) + __cil_tmp124;
    __cil_tmp126 = (unsigned char *)__cil_tmp125;
    __cil_tmp127 = (char *)__cil_tmp126;
    tuner_i2c_xfer_send(__cil_tmp123, __cil_tmp127, 2);
    __ms = 10UL;
    }
    {
    while (1) {
      while_continue___6: ;
      tmp___13 = __ms;
      __ms = __ms - 1UL;
      if (tmp___13) {
      } else {
        goto while_break___6;
      }
      {
      __const_udelay(4295000UL);
      }
    }
    while_break___6: ;
    }
    {
    __cil_tmp128 = 1 * 1UL;
    __cil_tmp129 = (unsigned long )(buf) + __cil_tmp128;
    __cil_tmp130 = (unsigned long )priv;
    __cil_tmp131 = __cil_tmp130 + 32;
    __cil_tmp132 = *((unsigned int *)__cil_tmp131);
    __cil_tmp133 = 8U + __cil_tmp132;
    *((unsigned char *)__cil_tmp129) = (unsigned char )__cil_tmp133;
    __cil_tmp134 = (struct tuner_i2c_props *)priv;
    __cil_tmp135 = 0 * 1UL;
    __cil_tmp136 = (unsigned long )(buf) + __cil_tmp135;
    __cil_tmp137 = (unsigned char *)__cil_tmp136;
    __cil_tmp138 = (char *)__cil_tmp137;
    tuner_i2c_xfer_send(__cil_tmp134, __cil_tmp138, 2);
    lint_try = lint_try + 1;
    }
  }
  while_break___3: ;
  }
  if (lock != 6) {
    {
    while (1) {
      while_continue___7: ;
      {
      while (1) {
        while_continue___8: ;
        {
        __cil_tmp139 = 0 + 8;
        __cil_tmp140 = (unsigned long )priv;
        __cil_tmp141 = __cil_tmp140 + __cil_tmp139;
        if (*((struct i2c_adapter **)__cil_tmp141)) {
          {
          __cil_tmp142 = 0 + 8;
          __cil_tmp143 = (unsigned long )priv;
          __cil_tmp144 = __cil_tmp143 + __cil_tmp142;
          __cil_tmp145 = *((struct i2c_adapter **)__cil_tmp144);
          tmp___14 = i2c_adapter_id(__cil_tmp145);
          tmp___15 = tmp___14;
          }
        } else {
          tmp___15 = -1;
        }
        }
        {
        __cil_tmp146 = 0 + 24;
        __cil_tmp147 = (unsigned long )priv;
        __cil_tmp148 = __cil_tmp147 + __cil_tmp146;
        __cil_tmp149 = *((char **)__cil_tmp148);
        __cil_tmp150 = *((u8 *)priv);
        __cil_tmp151 = (int )__cil_tmp150;
        printk("<4>%s %d-%04x: MT2032 Fatal Error: PLLs didn\'t lock.\n", __cil_tmp149,
               tmp___15, __cil_tmp151);
        }
        goto while_break___8;
      }
      while_break___8: ;
      }
      goto while_break___7;
    }
    while_break___7: ;
    }
  } else {
  }
  {
  __cil_tmp152 = 0 * 1UL;
  __cil_tmp153 = (unsigned long )(buf) + __cil_tmp152;
  *((unsigned char *)__cil_tmp153) = (unsigned char)2;
  __cil_tmp154 = 1 * 1UL;
  __cil_tmp155 = (unsigned long )(buf) + __cil_tmp154;
  *((unsigned char *)__cil_tmp155) = (unsigned char)32;
  __cil_tmp156 = (struct tuner_i2c_props *)priv;
  __cil_tmp157 = 0 * 1UL;
  __cil_tmp158 = (unsigned long )(buf) + __cil_tmp157;
  __cil_tmp159 = (unsigned char *)__cil_tmp158;
  __cil_tmp160 = (char *)__cil_tmp159;
  ret = tuner_i2c_xfer_send(__cil_tmp156, __cil_tmp160, 2);
  }
  if (ret != 2) {
    {
    while (1) {
      while_continue___9: ;
      {
      while (1) {
        while_continue___10: ;
        {
        __cil_tmp161 = 0 + 8;
        __cil_tmp162 = (unsigned long )priv;
        __cil_tmp163 = __cil_tmp162 + __cil_tmp161;
        if (*((struct i2c_adapter **)__cil_tmp163)) {
          {
          __cil_tmp164 = 0 + 8;
          __cil_tmp165 = (unsigned long )priv;
          __cil_tmp166 = __cil_tmp165 + __cil_tmp164;
          __cil_tmp167 = *((struct i2c_adapter **)__cil_tmp166);
          tmp___16 = i2c_adapter_id(__cil_tmp167);
          tmp___17 = tmp___16;
          }
        } else {
          tmp___17 = -1;
        }
        }
        {
        __cil_tmp168 = 0 + 24;
        __cil_tmp169 = (unsigned long )priv;
        __cil_tmp170 = __cil_tmp169 + __cil_tmp168;
        __cil_tmp171 = *((char **)__cil_tmp170);
        __cil_tmp172 = *((u8 *)priv);
        __cil_tmp173 = (int )__cil_tmp172;
        printk("<4>%s %d-%04x: i2c i/o error: rc == %d (should be 2)\n", __cil_tmp171,
               tmp___17, __cil_tmp173, ret);
        }
        goto while_break___10;
      }
      while_break___10: ;
      }
      goto while_break___9;
    }
    while_break___9: ;
    }
  } else {
  }
  return;
}
}
static int mt2032_set_tv_freq(struct dvb_frontend *fe , struct analog_parameters *params )
{ int if2 ;
  int from ;
  int to ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  u64 __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  {
  {
  __cil_tmp6 = (unsigned long )params;
  __cil_tmp7 = __cil_tmp6 + 16;
  __cil_tmp8 = *((u64 *)__cil_tmp7);
  if (__cil_tmp8 & 63744ULL) {
    from = 40750000;
    to = 46750000;
    if2 = 45750000;
  } else {
    from = 32900000;
    to = 39900000;
    if2 = 38900000;
  }
  }
  {
  __cil_tmp9 = *((unsigned int *)params);
  __cil_tmp10 = __cil_tmp9 * 62500U;
  __cil_tmp11 = (unsigned int )if2;
  __cil_tmp12 = (unsigned int )from;
  __cil_tmp13 = (unsigned int )to;
  mt2032_set_if_freq(fe, __cil_tmp10, 1090000000U, __cil_tmp11, __cil_tmp12, __cil_tmp13);
  }
  return (0);
}
}
static int mt2032_set_radio_freq(struct dvb_frontend *fe , struct analog_parameters *params )
{ struct microtune_priv *priv ;
  int if2 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  u64 __cil_tmp14 ;
  int *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct i2c_adapter *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  char *__cil_tmp26 ;
  u8 __cil_tmp27 ;
  int __cil_tmp28 ;
  int *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct i2c_adapter *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  char *__cil_tmp40 ;
  u8 __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  {
  __cil_tmp9 = (unsigned long )fe;
  __cil_tmp10 = __cil_tmp9 + 768;
  __cil_tmp11 = *((void **)__cil_tmp10);
  priv = (struct microtune_priv *)__cil_tmp11;
  {
  __cil_tmp12 = (unsigned long )params;
  __cil_tmp13 = __cil_tmp12 + 16;
  __cil_tmp14 = *((u64 *)__cil_tmp13);
  if (__cil_tmp14 & 63744ULL) {
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp15 = & debug;
      if (*__cil_tmp15) {
        {
        while (1) {
          while_continue___0: ;
          {
          __cil_tmp16 = 0 + 8;
          __cil_tmp17 = (unsigned long )priv;
          __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
          if (*((struct i2c_adapter **)__cil_tmp18)) {
            {
            __cil_tmp19 = 0 + 8;
            __cil_tmp20 = (unsigned long )priv;
            __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
            __cil_tmp22 = *((struct i2c_adapter **)__cil_tmp21);
            tmp___7 = i2c_adapter_id(__cil_tmp22);
            tmp___8 = tmp___7;
            }
          } else {
            tmp___8 = -1;
          }
          }
          {
          __cil_tmp23 = 0 + 24;
          __cil_tmp24 = (unsigned long )priv;
          __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
          __cil_tmp26 = *((char **)__cil_tmp25);
          __cil_tmp27 = *((u8 *)priv);
          __cil_tmp28 = (int )__cil_tmp27;
          printk("<7>%s %d-%04x: pinnacle ntsc\n", __cil_tmp26, tmp___8, __cil_tmp28);
          }
          goto while_break___0;
        }
        while_break___0: ;
        }
      } else {
      }
      }
      goto while_break;
    }
    while_break: ;
    }
    if2 = 41300000;
  } else {
    {
    while (1) {
      while_continue___1: ;
      {
      __cil_tmp29 = & debug;
      if (*__cil_tmp29) {
        {
        while (1) {
          while_continue___2: ;
          {
          __cil_tmp30 = 0 + 8;
          __cil_tmp31 = (unsigned long )priv;
          __cil_tmp32 = __cil_tmp31 + __cil_tmp30;
          if (*((struct i2c_adapter **)__cil_tmp32)) {
            {
            __cil_tmp33 = 0 + 8;
            __cil_tmp34 = (unsigned long )priv;
            __cil_tmp35 = __cil_tmp34 + __cil_tmp33;
            __cil_tmp36 = *((struct i2c_adapter **)__cil_tmp35);
            tmp___9 = i2c_adapter_id(__cil_tmp36);
            tmp___10 = tmp___9;
            }
          } else {
            tmp___10 = -1;
          }
          }
          {
          __cil_tmp37 = 0 + 24;
          __cil_tmp38 = (unsigned long )priv;
          __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
          __cil_tmp40 = *((char **)__cil_tmp39);
          __cil_tmp41 = *((u8 *)priv);
          __cil_tmp42 = (int )__cil_tmp41;
          printk("<7>%s %d-%04x: pinnacle pal\n", __cil_tmp40, tmp___10, __cil_tmp42);
          }
          goto while_break___2;
        }
        while_break___2: ;
        }
      } else {
      }
      }
      goto while_break___1;
    }
    while_break___1: ;
    }
    if2 = 33300000;
  }
  }
  {
  __cil_tmp43 = *((unsigned int *)params);
  __cil_tmp44 = __cil_tmp43 * 125U;
  __cil_tmp45 = __cil_tmp44 / 2U;
  __cil_tmp46 = (unsigned int )if2;
  __cil_tmp47 = (unsigned int )if2;
  __cil_tmp48 = (unsigned int )if2;
  mt2032_set_if_freq(fe, __cil_tmp45, 1085000000U, __cil_tmp46, __cil_tmp47, __cil_tmp48);
  }
  return (0);
}
}
static int mt2032_set_params(struct dvb_frontend *fe , struct analog_parameters *params )
{ struct microtune_priv *priv ;
  int ret ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  void *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  {
  __cil_tmp5 = (unsigned long )fe;
  __cil_tmp6 = __cil_tmp5 + 768;
  __cil_tmp7 = *((void **)__cil_tmp6);
  priv = (struct microtune_priv *)__cil_tmp7;
  ret = -22;
  {
  __cil_tmp8 = (unsigned long )params;
  __cil_tmp9 = __cil_tmp8 + 4;
  __cil_tmp10 = *((unsigned int *)__cil_tmp9);
  if ((int )__cil_tmp10 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp10 == 2) {
    goto case_2;
  } else
  if ((int )__cil_tmp10 == 3) {
    goto case_2;
  } else
  if (0) {
    case_1:
    {
    ret = mt2032_set_radio_freq(fe, params);
    __cil_tmp11 = (unsigned long )priv;
    __cil_tmp12 = __cil_tmp11 + 36;
    __cil_tmp13 = *((unsigned int *)params);
    __cil_tmp14 = __cil_tmp13 * 125U;
    *((u32 *)__cil_tmp12) = __cil_tmp14 / 2U;
    }
    goto switch_break;
    case_2:
    case_3:
    {
    ret = mt2032_set_tv_freq(fe, params);
    __cil_tmp15 = (unsigned long )priv;
    __cil_tmp16 = __cil_tmp15 + 36;
    __cil_tmp17 = *((unsigned int *)params);
    *((u32 *)__cil_tmp16) = __cil_tmp17 * 62500U;
    }
    goto switch_break;
  } else {
    switch_break: ;
  }
  }
  return (ret);
}
}
static struct dvb_tuner_ops mt2032_tuner_ops =
     {{{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0}, 0U, 0U, 0U, 0U, 0U, 0U}, & microtune_release, (int (*)(struct dvb_frontend *fe ))0,
    (int (*)(struct dvb_frontend *fe ))0, (int (*)(struct dvb_frontend *fe ))0, & mt2032_set_params,
    (int (*)(struct dvb_frontend *fe , u8 *buf , int buf_len ))0, (int (*)(struct dvb_frontend *fe ,
                                                                           void *priv_cfg ))0,
    & microtune_get_frequency, (int (*)(struct dvb_frontend *fe , u32 *bandwidth ))0,
    (int (*)(struct dvb_frontend *fe , u32 *frequency ))0, (int (*)(struct dvb_frontend *fe ,
                                                                    u32 *status ))0,
    (int (*)(struct dvb_frontend *fe , u16 *strength ))0, (int (*)(struct dvb_frontend *fe ,
                                                                   u32 frequency ))0,
    (int (*)(struct dvb_frontend *fe , u32 bandwidth ))0, (int (*)(struct dvb_frontend *fe ,
                                                                   enum tuner_param param ,
                                                                   struct tuner_state *state ))0,
    (int (*)(struct dvb_frontend *fe , enum tuner_param param , struct tuner_state *state ))0};
static int mt2032_init(struct dvb_frontend *fe )
{ struct microtune_priv *priv ;
  unsigned char buf[21] ;
  int ret ;
  int xogc ;
  int xok ;
  int tmp___7 ;
  int tmp___8 ;
  unsigned long __ms ;
  unsigned long tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  size_t __len ;
  void *__ret ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  void *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct tuner_i2c_props *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned char *__cil_tmp33 ;
  unsigned char *__cil_tmp34 ;
  char *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct tuner_i2c_props *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned char *__cil_tmp51 ;
  unsigned char *__cil_tmp52 ;
  char *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  struct tuner_i2c_props *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned char *__cil_tmp61 ;
  unsigned char *__cil_tmp62 ;
  char *__cil_tmp63 ;
  int *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct i2c_adapter *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  char *__cil_tmp75 ;
  u8 __cil_tmp76 ;
  int __cil_tmp77 ;
  int __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  struct tuner_i2c_props *__cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned char *__cil_tmp84 ;
  char *__cil_tmp85 ;
  struct tuner_i2c_props *__cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned char *__cil_tmp89 ;
  char *__cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned char __cil_tmp93 ;
  int __cil_tmp94 ;
  int *__cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  struct i2c_adapter *__cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  char *__cil_tmp106 ;
  u8 __cil_tmp107 ;
  int __cil_tmp108 ;
  int *__cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  struct i2c_adapter *__cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  char *__cil_tmp120 ;
  u8 __cil_tmp121 ;
  int __cil_tmp122 ;
  int __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  int __cil_tmp128 ;
  struct tuner_i2c_props *__cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned char *__cil_tmp132 ;
  char *__cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  struct i2c_adapter *__cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  char *__cil_tmp144 ;
  u8 __cil_tmp145 ;
  int __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  struct dvb_tuner_ops *__cil_tmp152 ;
  void *__cil_tmp153 ;
  void const *__cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  struct dvb_tuner_ops *__cil_tmp158 ;
  void *__cil_tmp159 ;
  void const *__cil_tmp160 ;
  {
  {
  __cil_tmp19 = (unsigned long )fe;
  __cil_tmp20 = __cil_tmp19 + 768;
  __cil_tmp21 = *((void **)__cil_tmp20);
  priv = (struct microtune_priv *)__cil_tmp21;
  xok = 0;
  __cil_tmp22 = 1 * 1UL;
  __cil_tmp23 = (unsigned long )(buf) + __cil_tmp22;
  *((unsigned char *)__cil_tmp23) = (unsigned char)2;
  __cil_tmp24 = 2 * 1UL;
  __cil_tmp25 = (unsigned long )(buf) + __cil_tmp24;
  *((unsigned char *)__cil_tmp25) = (unsigned char)255;
  __cil_tmp26 = 3 * 1UL;
  __cil_tmp27 = (unsigned long )(buf) + __cil_tmp26;
  *((unsigned char *)__cil_tmp27) = (unsigned char)15;
  __cil_tmp28 = 4 * 1UL;
  __cil_tmp29 = (unsigned long )(buf) + __cil_tmp28;
  *((unsigned char *)__cil_tmp29) = (unsigned char)31;
  __cil_tmp30 = (struct tuner_i2c_props *)priv;
  __cil_tmp31 = 0 * 1UL;
  __cil_tmp32 = (unsigned long )(buf) + __cil_tmp31;
  __cil_tmp33 = (unsigned char *)__cil_tmp32;
  __cil_tmp34 = __cil_tmp33 + 1;
  __cil_tmp35 = (char *)__cil_tmp34;
  ret = tuner_i2c_xfer_send(__cil_tmp30, __cil_tmp35, 4);
  __cil_tmp36 = 5 * 1UL;
  __cil_tmp37 = (unsigned long )(buf) + __cil_tmp36;
  *((unsigned char *)__cil_tmp37) = (unsigned char)6;
  __cil_tmp38 = 6 * 1UL;
  __cil_tmp39 = (unsigned long )(buf) + __cil_tmp38;
  *((unsigned char *)__cil_tmp39) = (unsigned char)228;
  __cil_tmp40 = 7 * 1UL;
  __cil_tmp41 = (unsigned long )(buf) + __cil_tmp40;
  *((unsigned char *)__cil_tmp41) = (unsigned char)143;
  __cil_tmp42 = 8 * 1UL;
  __cil_tmp43 = (unsigned long )(buf) + __cil_tmp42;
  *((unsigned char *)__cil_tmp43) = (unsigned char)195;
  __cil_tmp44 = 9 * 1UL;
  __cil_tmp45 = (unsigned long )(buf) + __cil_tmp44;
  *((unsigned char *)__cil_tmp45) = (unsigned char)78;
  __cil_tmp46 = 10 * 1UL;
  __cil_tmp47 = (unsigned long )(buf) + __cil_tmp46;
  *((unsigned char *)__cil_tmp47) = (unsigned char)236;
  __cil_tmp48 = (struct tuner_i2c_props *)priv;
  __cil_tmp49 = 0 * 1UL;
  __cil_tmp50 = (unsigned long )(buf) + __cil_tmp49;
  __cil_tmp51 = (unsigned char *)__cil_tmp50;
  __cil_tmp52 = __cil_tmp51 + 5;
  __cil_tmp53 = (char *)__cil_tmp52;
  ret = tuner_i2c_xfer_send(__cil_tmp48, __cil_tmp53, 6);
  __cil_tmp54 = 12 * 1UL;
  __cil_tmp55 = (unsigned long )(buf) + __cil_tmp54;
  *((unsigned char *)__cil_tmp55) = (unsigned char)13;
  __cil_tmp56 = 13 * 1UL;
  __cil_tmp57 = (unsigned long )(buf) + __cil_tmp56;
  *((unsigned char *)__cil_tmp57) = (unsigned char)50;
  __cil_tmp58 = (struct tuner_i2c_props *)priv;
  __cil_tmp59 = 0 * 1UL;
  __cil_tmp60 = (unsigned long )(buf) + __cil_tmp59;
  __cil_tmp61 = (unsigned char *)__cil_tmp60;
  __cil_tmp62 = __cil_tmp61 + 12;
  __cil_tmp63 = (char *)__cil_tmp62;
  ret = tuner_i2c_xfer_send(__cil_tmp58, __cil_tmp63, 2);
  xogc = 7;
  }
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp64 = & debug;
      if (*__cil_tmp64) {
        {
        while (1) {
          while_continue___1: ;
          {
          __cil_tmp65 = 0 + 8;
          __cil_tmp66 = (unsigned long )priv;
          __cil_tmp67 = __cil_tmp66 + __cil_tmp65;
          if (*((struct i2c_adapter **)__cil_tmp67)) {
            {
            __cil_tmp68 = 0 + 8;
            __cil_tmp69 = (unsigned long )priv;
            __cil_tmp70 = __cil_tmp69 + __cil_tmp68;
            __cil_tmp71 = *((struct i2c_adapter **)__cil_tmp70);
            tmp___7 = i2c_adapter_id(__cil_tmp71);
            tmp___8 = tmp___7;
            }
          } else {
            tmp___8 = -1;
          }
          }
          {
          __cil_tmp72 = 0 + 24;
          __cil_tmp73 = (unsigned long )priv;
          __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
          __cil_tmp75 = *((char **)__cil_tmp74);
          __cil_tmp76 = *((u8 *)priv);
          __cil_tmp77 = (int )__cil_tmp76;
          __cil_tmp78 = xogc & 7;
          printk("<7>%s %d-%04x: mt2032: xogc = 0x%02x\n", __cil_tmp75, tmp___8, __cil_tmp77,
                 __cil_tmp78);
          }
          goto while_break___1;
        }
        while_break___1: ;
        }
      } else {
      }
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    __ms = 10UL;
    {
    while (1) {
      while_continue___2: ;
      tmp___9 = __ms;
      __ms = __ms - 1UL;
      if (tmp___9) {
      } else {
        goto while_break___2;
      }
      {
      __const_udelay(4295000UL);
      }
    }
    while_break___2: ;
    }
    {
    __cil_tmp79 = 0 * 1UL;
    __cil_tmp80 = (unsigned long )(buf) + __cil_tmp79;
    *((unsigned char *)__cil_tmp80) = (unsigned char)14;
    __cil_tmp81 = (struct tuner_i2c_props *)priv;
    __cil_tmp82 = 0 * 1UL;
    __cil_tmp83 = (unsigned long )(buf) + __cil_tmp82;
    __cil_tmp84 = (unsigned char *)__cil_tmp83;
    __cil_tmp85 = (char *)__cil_tmp84;
    tuner_i2c_xfer_send(__cil_tmp81, __cil_tmp85, 1);
    __cil_tmp86 = (struct tuner_i2c_props *)priv;
    __cil_tmp87 = 0 * 1UL;
    __cil_tmp88 = (unsigned long )(buf) + __cil_tmp87;
    __cil_tmp89 = (unsigned char *)__cil_tmp88;
    __cil_tmp90 = (char *)__cil_tmp89;
    tuner_i2c_xfer_recv(__cil_tmp86, __cil_tmp90, 1);
    __cil_tmp91 = 0 * 1UL;
    __cil_tmp92 = (unsigned long )(buf) + __cil_tmp91;
    __cil_tmp93 = *((unsigned char *)__cil_tmp92);
    __cil_tmp94 = (int )__cil_tmp93;
    xok = __cil_tmp94 & 1;
    }
    {
    while (1) {
      while_continue___3: ;
      {
      __cil_tmp95 = & debug;
      if (*__cil_tmp95) {
        {
        while (1) {
          while_continue___4: ;
          {
          __cil_tmp96 = 0 + 8;
          __cil_tmp97 = (unsigned long )priv;
          __cil_tmp98 = __cil_tmp97 + __cil_tmp96;
          if (*((struct i2c_adapter **)__cil_tmp98)) {
            {
            __cil_tmp99 = 0 + 8;
            __cil_tmp100 = (unsigned long )priv;
            __cil_tmp101 = __cil_tmp100 + __cil_tmp99;
            __cil_tmp102 = *((struct i2c_adapter **)__cil_tmp101);
            tmp___10 = i2c_adapter_id(__cil_tmp102);
            tmp___11 = tmp___10;
            }
          } else {
            tmp___11 = -1;
          }
          }
          {
          __cil_tmp103 = 0 + 24;
          __cil_tmp104 = (unsigned long )priv;
          __cil_tmp105 = __cil_tmp104 + __cil_tmp103;
          __cil_tmp106 = *((char **)__cil_tmp105);
          __cil_tmp107 = *((u8 *)priv);
          __cil_tmp108 = (int )__cil_tmp107;
          printk("<7>%s %d-%04x: mt2032: xok = 0x%02x\n", __cil_tmp106, tmp___11,
                 __cil_tmp108, xok);
          }
          goto while_break___4;
        }
        while_break___4: ;
        }
      } else {
      }
      }
      goto while_break___3;
    }
    while_break___3: ;
    }
    if (xok == 1) {
      goto while_break;
    } else {
    }
    xogc = xogc - 1;
    {
    while (1) {
      while_continue___5: ;
      {
      __cil_tmp109 = & debug;
      if (*__cil_tmp109) {
        {
        while (1) {
          while_continue___6: ;
          {
          __cil_tmp110 = 0 + 8;
          __cil_tmp111 = (unsigned long )priv;
          __cil_tmp112 = __cil_tmp111 + __cil_tmp110;
          if (*((struct i2c_adapter **)__cil_tmp112)) {
            {
            __cil_tmp113 = 0 + 8;
            __cil_tmp114 = (unsigned long )priv;
            __cil_tmp115 = __cil_tmp114 + __cil_tmp113;
            __cil_tmp116 = *((struct i2c_adapter **)__cil_tmp115);
            tmp___12 = i2c_adapter_id(__cil_tmp116);
            tmp___13 = tmp___12;
            }
          } else {
            tmp___13 = -1;
          }
          }
          {
          __cil_tmp117 = 0 + 24;
          __cil_tmp118 = (unsigned long )priv;
          __cil_tmp119 = __cil_tmp118 + __cil_tmp117;
          __cil_tmp120 = *((char **)__cil_tmp119);
          __cil_tmp121 = *((u8 *)priv);
          __cil_tmp122 = (int )__cil_tmp121;
          __cil_tmp123 = xogc & 7;
          printk("<7>%s %d-%04x: mt2032: xogc = 0x%02x\n", __cil_tmp120, tmp___13,
                 __cil_tmp122, __cil_tmp123);
          }
          goto while_break___6;
        }
        while_break___6: ;
        }
      } else {
      }
      }
      goto while_break___5;
    }
    while_break___5: ;
    }
    if (xogc == 3) {
      xogc = 4;
      goto while_break;
    } else {
    }
    {
    __cil_tmp124 = 0 * 1UL;
    __cil_tmp125 = (unsigned long )(buf) + __cil_tmp124;
    *((unsigned char *)__cil_tmp125) = (unsigned char)7;
    __cil_tmp126 = 1 * 1UL;
    __cil_tmp127 = (unsigned long )(buf) + __cil_tmp126;
    __cil_tmp128 = 136 + xogc;
    *((unsigned char *)__cil_tmp127) = (unsigned char )__cil_tmp128;
    __cil_tmp129 = (struct tuner_i2c_props *)priv;
    __cil_tmp130 = 0 * 1UL;
    __cil_tmp131 = (unsigned long )(buf) + __cil_tmp130;
    __cil_tmp132 = (unsigned char *)__cil_tmp131;
    __cil_tmp133 = (char *)__cil_tmp132;
    ret = tuner_i2c_xfer_send(__cil_tmp129, __cil_tmp133, 2);
    }
    if (ret != 2) {
      {
      while (1) {
        while_continue___7: ;
        {
        while (1) {
          while_continue___8: ;
          {
          __cil_tmp134 = 0 + 8;
          __cil_tmp135 = (unsigned long )priv;
          __cil_tmp136 = __cil_tmp135 + __cil_tmp134;
          if (*((struct i2c_adapter **)__cil_tmp136)) {
            {
            __cil_tmp137 = 0 + 8;
            __cil_tmp138 = (unsigned long )priv;
            __cil_tmp139 = __cil_tmp138 + __cil_tmp137;
            __cil_tmp140 = *((struct i2c_adapter **)__cil_tmp139);
            tmp___14 = i2c_adapter_id(__cil_tmp140);
            tmp___15 = tmp___14;
            }
          } else {
            tmp___15 = -1;
          }
          }
          {
          __cil_tmp141 = 0 + 24;
          __cil_tmp142 = (unsigned long )priv;
          __cil_tmp143 = __cil_tmp142 + __cil_tmp141;
          __cil_tmp144 = *((char **)__cil_tmp143);
          __cil_tmp145 = *((u8 *)priv);
          __cil_tmp146 = (int )__cil_tmp145;
          printk("<4>%s %d-%04x: i2c i/o error: rc == %d (should be 2)\n", __cil_tmp144,
                 tmp___15, __cil_tmp146, ret);
          }
          goto while_break___8;
        }
        while_break___8: ;
        }
        goto while_break___7;
      }
      while_break___7: ;
      }
    } else {
    }
    if (xok != 1) {
    } else {
      goto while_break;
    }
  }
  while_break: ;
  }
  __cil_tmp147 = (unsigned long )priv;
  __cil_tmp148 = __cil_tmp147 + 32;
  *((unsigned int *)__cil_tmp148) = (unsigned int )xogc;
  __len = 280UL;
  if (__len >= 64UL) {
    {
    __cil_tmp149 = 0 + 384;
    __cil_tmp150 = (unsigned long )fe;
    __cil_tmp151 = __cil_tmp150 + __cil_tmp149;
    __cil_tmp152 = (struct dvb_tuner_ops *)__cil_tmp151;
    __cil_tmp153 = (void *)__cil_tmp152;
    __cil_tmp154 = (void const *)(& mt2032_tuner_ops);
    __ret = memcpy(__cil_tmp153, __cil_tmp154, __len);
    }
  } else {
    {
    __cil_tmp155 = 0 + 384;
    __cil_tmp156 = (unsigned long )fe;
    __cil_tmp157 = __cil_tmp156 + __cil_tmp155;
    __cil_tmp158 = (struct dvb_tuner_ops *)__cil_tmp157;
    __cil_tmp159 = (void *)__cil_tmp158;
    __cil_tmp160 = (void const *)(& mt2032_tuner_ops);
    __ret = memcpy(__cil_tmp159, __cil_tmp160, __len);
    }
  }
  return (1);
}
}
static void mt2050_set_antenna(struct dvb_frontend *fe , unsigned char antenna )
{ struct microtune_priv *priv ;
  unsigned char buf[2] ;
  int tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  void *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct tuner_i2c_props *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned char *__cil_tmp19 ;
  char *__cil_tmp20 ;
  int *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct i2c_adapter *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  char *__cil_tmp32 ;
  u8 __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  {
  __cil_tmp7 = (unsigned long )fe;
  __cil_tmp8 = __cil_tmp7 + 768;
  __cil_tmp9 = *((void **)__cil_tmp8);
  priv = (struct microtune_priv *)__cil_tmp9;
  __cil_tmp10 = 0 * 1UL;
  __cil_tmp11 = (unsigned long )(buf) + __cil_tmp10;
  *((unsigned char *)__cil_tmp11) = (unsigned char)6;
  if (antenna) {
    __cil_tmp12 = 1 * 1UL;
    __cil_tmp13 = (unsigned long )(buf) + __cil_tmp12;
    *((unsigned char *)__cil_tmp13) = (unsigned char)17;
  } else {
    __cil_tmp14 = 1 * 1UL;
    __cil_tmp15 = (unsigned long )(buf) + __cil_tmp14;
    *((unsigned char *)__cil_tmp15) = (unsigned char)16;
  }
  {
  __cil_tmp16 = (struct tuner_i2c_props *)priv;
  __cil_tmp17 = 0 * 1UL;
  __cil_tmp18 = (unsigned long )(buf) + __cil_tmp17;
  __cil_tmp19 = (unsigned char *)__cil_tmp18;
  __cil_tmp20 = (char *)__cil_tmp19;
  tuner_i2c_xfer_send(__cil_tmp16, __cil_tmp20, 2);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp21 = & debug;
    if (*__cil_tmp21) {
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp22 = 0 + 8;
        __cil_tmp23 = (unsigned long )priv;
        __cil_tmp24 = __cil_tmp23 + __cil_tmp22;
        if (*((struct i2c_adapter **)__cil_tmp24)) {
          {
          __cil_tmp25 = 0 + 8;
          __cil_tmp26 = (unsigned long )priv;
          __cil_tmp27 = __cil_tmp26 + __cil_tmp25;
          __cil_tmp28 = *((struct i2c_adapter **)__cil_tmp27);
          tmp___7 = i2c_adapter_id(__cil_tmp28);
          tmp___8 = tmp___7;
          }
        } else {
          tmp___8 = -1;
        }
        }
        {
        __cil_tmp29 = 0 + 24;
        __cil_tmp30 = (unsigned long )priv;
        __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
        __cil_tmp32 = *((char **)__cil_tmp31);
        __cil_tmp33 = *((u8 *)priv);
        __cil_tmp34 = (int )__cil_tmp33;
        __cil_tmp35 = (int )antenna;
        printk("<7>%s %d-%04x: mt2050: enabled antenna connector %d\n", __cil_tmp32,
               tmp___8, __cil_tmp34, __cil_tmp35);
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  return;
}
}
static void mt2050_set_if_freq(struct dvb_frontend *fe , unsigned int freq , unsigned int if2 )
{ struct microtune_priv *priv ;
  unsigned int if1 ;
  unsigned int f_lo1 ;
  unsigned int f_lo2 ;
  unsigned int lo1 ;
  unsigned int lo2 ;
  unsigned int f_lo1_modulo ;
  unsigned int f_lo2_modulo ;
  unsigned int num1 ;
  unsigned int num2 ;
  unsigned int div1a ;
  unsigned int div1b ;
  unsigned int div2a ;
  unsigned int div2b ;
  int ret ;
  unsigned char buf[6] ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int i ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  void *__cil_tmp33 ;
  int *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct i2c_adapter *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  char *__cil_tmp45 ;
  u8 __cil_tmp46 ;
  int __cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  unsigned int __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned int __cil_tmp52 ;
  unsigned int __cil_tmp53 ;
  unsigned int __cil_tmp54 ;
  unsigned int __cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  unsigned int __cil_tmp57 ;
  unsigned int __cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  unsigned int __cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  int *__cil_tmp62 ;
  int __cil_tmp63 ;
  int *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct i2c_adapter *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  char *__cil_tmp75 ;
  u8 __cil_tmp76 ;
  int __cil_tmp77 ;
  int *__cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  struct i2c_adapter *__cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  char *__cil_tmp89 ;
  u8 __cil_tmp90 ;
  int __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned int __cil_tmp96 ;
  unsigned int __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned char __cil_tmp102 ;
  int __cil_tmp103 ;
  int __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned int __cil_tmp109 ;
  unsigned int __cil_tmp110 ;
  unsigned int __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned int __cil_tmp114 ;
  unsigned int __cil_tmp115 ;
  unsigned int __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned char __cil_tmp123 ;
  int __cil_tmp124 ;
  int __cil_tmp125 ;
  int *__cil_tmp126 ;
  int __cil_tmp127 ;
  int *__cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  struct i2c_adapter *__cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  char *__cil_tmp139 ;
  u8 __cil_tmp140 ;
  int __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned char __cil_tmp144 ;
  int __cil_tmp145 ;
  struct tuner_i2c_props *__cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned char *__cil_tmp149 ;
  char *__cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  struct i2c_adapter *__cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  char *__cil_tmp161 ;
  u8 __cil_tmp162 ;
  int __cil_tmp163 ;
  {
  __cil_tmp31 = (unsigned long )fe;
  __cil_tmp32 = __cil_tmp31 + 768;
  __cil_tmp33 = *((void **)__cil_tmp32);
  priv = (struct microtune_priv *)__cil_tmp33;
  if1 = 1218000000U;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp34 = & debug;
    if (*__cil_tmp34) {
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp35 = 0 + 8;
        __cil_tmp36 = (unsigned long )priv;
        __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
        if (*((struct i2c_adapter **)__cil_tmp37)) {
          {
          __cil_tmp38 = 0 + 8;
          __cil_tmp39 = (unsigned long )priv;
          __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
          __cil_tmp41 = *((struct i2c_adapter **)__cil_tmp40);
          tmp___7 = i2c_adapter_id(__cil_tmp41);
          tmp___8 = tmp___7;
          }
        } else {
          tmp___8 = -1;
        }
        }
        {
        __cil_tmp42 = 0 + 24;
        __cil_tmp43 = (unsigned long )priv;
        __cil_tmp44 = __cil_tmp43 + __cil_tmp42;
        __cil_tmp45 = *((char **)__cil_tmp44);
        __cil_tmp46 = *((u8 *)priv);
        __cil_tmp47 = (int )__cil_tmp46;
        printk("<7>%s %d-%04x: mt2050_set_if_freq freq=%d if1=%d if2=%d\n", __cil_tmp45,
               tmp___8, __cil_tmp47, freq, if1, if2);
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  f_lo1 = freq + if1;
  __cil_tmp48 = f_lo1 / 1000000U;
  f_lo1 = __cil_tmp48 * 1000000U;
  __cil_tmp49 = f_lo1 - freq;
  f_lo2 = __cil_tmp49 - if2;
  __cil_tmp50 = f_lo2 / 50000U;
  f_lo2 = __cil_tmp50 * 50000U;
  lo1 = f_lo1 / 4000000U;
  lo2 = f_lo2 / 4000000U;
  __cil_tmp51 = lo1 * 4000000U;
  f_lo1_modulo = f_lo1 - __cil_tmp51;
  __cil_tmp52 = lo2 * 4000000U;
  f_lo2_modulo = f_lo2 - __cil_tmp52;
  __cil_tmp53 = 4U * f_lo1_modulo;
  num1 = __cil_tmp53 / 4000000U;
  __cil_tmp54 = f_lo2_modulo / 1000U;
  __cil_tmp55 = 4096U * __cil_tmp54;
  num2 = __cil_tmp55 / 4000U;
  __cil_tmp56 = lo1 / 12U;
  div1a = __cil_tmp56 - 1U;
  __cil_tmp57 = div1a + 1U;
  __cil_tmp58 = __cil_tmp57 * 12U;
  div1b = lo1 - __cil_tmp58;
  __cil_tmp59 = lo2 / 8U;
  div2a = __cil_tmp59 - 1U;
  __cil_tmp60 = div2a + 1U;
  __cil_tmp61 = __cil_tmp60 * 8U;
  div2b = lo2 - __cil_tmp61;
  {
  __cil_tmp62 = & debug;
  __cil_tmp63 = *__cil_tmp62;
  if (__cil_tmp63 > 1) {
    {
    while (1) {
      while_continue___1: ;
      {
      __cil_tmp64 = & debug;
      if (*__cil_tmp64) {
        {
        while (1) {
          while_continue___2: ;
          {
          __cil_tmp65 = 0 + 8;
          __cil_tmp66 = (unsigned long )priv;
          __cil_tmp67 = __cil_tmp66 + __cil_tmp65;
          if (*((struct i2c_adapter **)__cil_tmp67)) {
            {
            __cil_tmp68 = 0 + 8;
            __cil_tmp69 = (unsigned long )priv;
            __cil_tmp70 = __cil_tmp69 + __cil_tmp68;
            __cil_tmp71 = *((struct i2c_adapter **)__cil_tmp70);
            tmp___9 = i2c_adapter_id(__cil_tmp71);
            tmp___10 = tmp___9;
            }
          } else {
            tmp___10 = -1;
          }
          }
          {
          __cil_tmp72 = 0 + 24;
          __cil_tmp73 = (unsigned long )priv;
          __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
          __cil_tmp75 = *((char **)__cil_tmp74);
          __cil_tmp76 = *((u8 *)priv);
          __cil_tmp77 = (int )__cil_tmp76;
          printk("<7>%s %d-%04x: lo1 lo2 = %d %d\n", __cil_tmp75, tmp___10, __cil_tmp77,
                 lo1, lo2);
          }
          goto while_break___2;
        }
        while_break___2: ;
        }
      } else {
      }
      }
      goto while_break___1;
    }
    while_break___1: ;
    }
    {
    while (1) {
      while_continue___3: ;
      {
      __cil_tmp78 = & debug;
      if (*__cil_tmp78) {
        {
        while (1) {
          while_continue___4: ;
          {
          __cil_tmp79 = 0 + 8;
          __cil_tmp80 = (unsigned long )priv;
          __cil_tmp81 = __cil_tmp80 + __cil_tmp79;
          if (*((struct i2c_adapter **)__cil_tmp81)) {
            {
            __cil_tmp82 = 0 + 8;
            __cil_tmp83 = (unsigned long )priv;
            __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
            __cil_tmp85 = *((struct i2c_adapter **)__cil_tmp84);
            tmp___11 = i2c_adapter_id(__cil_tmp85);
            tmp___12 = tmp___11;
            }
          } else {
            tmp___12 = -1;
          }
          }
          {
          __cil_tmp86 = 0 + 24;
          __cil_tmp87 = (unsigned long )priv;
          __cil_tmp88 = __cil_tmp87 + __cil_tmp86;
          __cil_tmp89 = *((char **)__cil_tmp88);
          __cil_tmp90 = *((u8 *)priv);
          __cil_tmp91 = (int )__cil_tmp90;
          printk("<7>%s %d-%04x: num1 num2 div1a div1b div2a div2b= %x %x %x %x %x %x\n",
                 __cil_tmp89, tmp___12, __cil_tmp91, num1, num2, div1a, div1b, div2a,
                 div2b);
          }
          goto while_break___4;
        }
        while_break___4: ;
        }
      } else {
      }
      }
      goto while_break___3;
    }
    while_break___3: ;
    }
  } else {
  }
  }
  __cil_tmp92 = 0 * 1UL;
  __cil_tmp93 = (unsigned long )(buf) + __cil_tmp92;
  *((unsigned char *)__cil_tmp93) = (unsigned char)1;
  __cil_tmp94 = 1 * 1UL;
  __cil_tmp95 = (unsigned long )(buf) + __cil_tmp94;
  __cil_tmp96 = 4U * div1b;
  __cil_tmp97 = __cil_tmp96 + num1;
  *((unsigned char *)__cil_tmp95) = (unsigned char )__cil_tmp97;
  if (freq < 275000000U) {
    __cil_tmp98 = 1 * 1UL;
    __cil_tmp99 = (unsigned long )(buf) + __cil_tmp98;
    __cil_tmp100 = 1 * 1UL;
    __cil_tmp101 = (unsigned long )(buf) + __cil_tmp100;
    __cil_tmp102 = *((unsigned char *)__cil_tmp101);
    __cil_tmp103 = (int )__cil_tmp102;
    __cil_tmp104 = __cil_tmp103 | 128;
    *((unsigned char *)__cil_tmp99) = (unsigned char )__cil_tmp104;
  } else {
  }
  __cil_tmp105 = 2 * 1UL;
  __cil_tmp106 = (unsigned long )(buf) + __cil_tmp105;
  *((unsigned char *)__cil_tmp106) = (unsigned char )div1a;
  __cil_tmp107 = 3 * 1UL;
  __cil_tmp108 = (unsigned long )(buf) + __cil_tmp107;
  __cil_tmp109 = num2 / 256U;
  __cil_tmp110 = 32U * div2b;
  __cil_tmp111 = __cil_tmp110 + __cil_tmp109;
  *((unsigned char *)__cil_tmp108) = (unsigned char )__cil_tmp111;
  __cil_tmp112 = 4 * 1UL;
  __cil_tmp113 = (unsigned long )(buf) + __cil_tmp112;
  __cil_tmp114 = num2 / 256U;
  __cil_tmp115 = __cil_tmp114 * 256U;
  __cil_tmp116 = num2 - __cil_tmp115;
  *((unsigned char *)__cil_tmp113) = (unsigned char )__cil_tmp116;
  __cil_tmp117 = 5 * 1UL;
  __cil_tmp118 = (unsigned long )(buf) + __cil_tmp117;
  *((unsigned char *)__cil_tmp118) = (unsigned char )div2a;
  if (num2 != 0U) {
    __cil_tmp119 = 5 * 1UL;
    __cil_tmp120 = (unsigned long )(buf) + __cil_tmp119;
    __cil_tmp121 = 5 * 1UL;
    __cil_tmp122 = (unsigned long )(buf) + __cil_tmp121;
    __cil_tmp123 = *((unsigned char *)__cil_tmp122);
    __cil_tmp124 = (int )__cil_tmp123;
    __cil_tmp125 = __cil_tmp124 | 64;
    *((unsigned char *)__cil_tmp120) = (unsigned char )__cil_tmp125;
  } else {
  }
  {
  __cil_tmp126 = & debug;
  __cil_tmp127 = *__cil_tmp126;
  if (__cil_tmp127 > 1) {
    {
    while (1) {
      while_continue___5: ;
      {
      __cil_tmp128 = & debug;
      if (*__cil_tmp128) {
        {
        while (1) {
          while_continue___6: ;
          {
          __cil_tmp129 = 0 + 8;
          __cil_tmp130 = (unsigned long )priv;
          __cil_tmp131 = __cil_tmp130 + __cil_tmp129;
          if (*((struct i2c_adapter **)__cil_tmp131)) {
            {
            __cil_tmp132 = 0 + 8;
            __cil_tmp133 = (unsigned long )priv;
            __cil_tmp134 = __cil_tmp133 + __cil_tmp132;
            __cil_tmp135 = *((struct i2c_adapter **)__cil_tmp134);
            tmp___13 = i2c_adapter_id(__cil_tmp135);
            tmp___14 = tmp___13;
            }
          } else {
            tmp___14 = -1;
          }
          }
          {
          __cil_tmp136 = 0 + 24;
          __cil_tmp137 = (unsigned long )priv;
          __cil_tmp138 = __cil_tmp137 + __cil_tmp136;
          __cil_tmp139 = *((char **)__cil_tmp138);
          __cil_tmp140 = *((u8 *)priv);
          __cil_tmp141 = (int )__cil_tmp140;
          printk("<7>%s %d-%04x: bufs is: ", __cil_tmp139, tmp___14, __cil_tmp141);
          }
          goto while_break___6;
        }
        while_break___6: ;
        }
      } else {
      }
      }
      goto while_break___5;
    }
    while_break___5: ;
    }
    i = 0;
    {
    while (1) {
      while_continue___7: ;
      if (i < 6) {
      } else {
        goto while_break___7;
      }
      {
      __cil_tmp142 = i * 1UL;
      __cil_tmp143 = (unsigned long )(buf) + __cil_tmp142;
      __cil_tmp144 = *((unsigned char *)__cil_tmp143);
      __cil_tmp145 = (int )__cil_tmp144;
      printk("%x ", __cil_tmp145);
      i = i + 1;
      }
    }
    while_break___7: ;
    }
    {
    printk("\n");
    }
  } else {
  }
  }
  {
  __cil_tmp146 = (struct tuner_i2c_props *)priv;
  __cil_tmp147 = 0 * 1UL;
  __cil_tmp148 = (unsigned long )(buf) + __cil_tmp147;
  __cil_tmp149 = (unsigned char *)__cil_tmp148;
  __cil_tmp150 = (char *)__cil_tmp149;
  ret = tuner_i2c_xfer_send(__cil_tmp146, __cil_tmp150, 6);
  }
  if (ret != 6) {
    {
    while (1) {
      while_continue___8: ;
      {
      while (1) {
        while_continue___9: ;
        {
        __cil_tmp151 = 0 + 8;
        __cil_tmp152 = (unsigned long )priv;
        __cil_tmp153 = __cil_tmp152 + __cil_tmp151;
        if (*((struct i2c_adapter **)__cil_tmp153)) {
          {
          __cil_tmp154 = 0 + 8;
          __cil_tmp155 = (unsigned long )priv;
          __cil_tmp156 = __cil_tmp155 + __cil_tmp154;
          __cil_tmp157 = *((struct i2c_adapter **)__cil_tmp156);
          tmp___15 = i2c_adapter_id(__cil_tmp157);
          tmp___16 = tmp___15;
          }
        } else {
          tmp___16 = -1;
        }
        }
        {
        __cil_tmp158 = 0 + 24;
        __cil_tmp159 = (unsigned long )priv;
        __cil_tmp160 = __cil_tmp159 + __cil_tmp158;
        __cil_tmp161 = *((char **)__cil_tmp160);
        __cil_tmp162 = *((u8 *)priv);
        __cil_tmp163 = (int )__cil_tmp162;
        printk("<4>%s %d-%04x: i2c i/o error: rc == %d (should be 6)\n", __cil_tmp161,
               tmp___16, __cil_tmp163, ret);
        }
        goto while_break___9;
      }
      while_break___9: ;
      }
      goto while_break___8;
    }
    while_break___8: ;
    }
  } else {
  }
  return;
}
}
static int mt2050_set_tv_freq(struct dvb_frontend *fe , struct analog_parameters *params )
{ unsigned int if2 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  u64 __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned int *__cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  unsigned char __cil_tmp14 ;
  {
  {
  __cil_tmp4 = (unsigned long )params;
  __cil_tmp5 = __cil_tmp4 + 16;
  __cil_tmp6 = *((u64 *)__cil_tmp5);
  if (__cil_tmp6 & 63744ULL) {
    if2 = 45750000U;
  } else {
    if2 = 38900000U;
  }
  }
  {
  __cil_tmp7 = (unsigned long )params;
  __cil_tmp8 = __cil_tmp7 + 4;
  __cil_tmp9 = *((unsigned int *)__cil_tmp8);
  if (3U == __cil_tmp9) {
    if2 = 36150000U;
  } else {
  }
  }
  {
  __cil_tmp10 = *((unsigned int *)params);
  __cil_tmp11 = __cil_tmp10 * 62500U;
  mt2050_set_if_freq(fe, __cil_tmp11, if2);
  __cil_tmp12 = & tv_antenna;
  __cil_tmp13 = *__cil_tmp12;
  __cil_tmp14 = (unsigned char )__cil_tmp13;
  mt2050_set_antenna(fe, __cil_tmp14);
  }
  return (0);
}
}
static int mt2050_set_radio_freq(struct dvb_frontend *fe , struct analog_parameters *params )
{ struct microtune_priv *priv ;
  int if2 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  u64 __cil_tmp14 ;
  int *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct i2c_adapter *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  char *__cil_tmp26 ;
  u8 __cil_tmp27 ;
  int __cil_tmp28 ;
  int *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct i2c_adapter *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  char *__cil_tmp40 ;
  u8 __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  unsigned int *__cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  unsigned char __cil_tmp49 ;
  {
  __cil_tmp9 = (unsigned long )fe;
  __cil_tmp10 = __cil_tmp9 + 768;
  __cil_tmp11 = *((void **)__cil_tmp10);
  priv = (struct microtune_priv *)__cil_tmp11;
  {
  __cil_tmp12 = (unsigned long )params;
  __cil_tmp13 = __cil_tmp12 + 16;
  __cil_tmp14 = *((u64 *)__cil_tmp13);
  if (__cil_tmp14 & 63744ULL) {
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp15 = & debug;
      if (*__cil_tmp15) {
        {
        while (1) {
          while_continue___0: ;
          {
          __cil_tmp16 = 0 + 8;
          __cil_tmp17 = (unsigned long )priv;
          __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
          if (*((struct i2c_adapter **)__cil_tmp18)) {
            {
            __cil_tmp19 = 0 + 8;
            __cil_tmp20 = (unsigned long )priv;
            __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
            __cil_tmp22 = *((struct i2c_adapter **)__cil_tmp21);
            tmp___7 = i2c_adapter_id(__cil_tmp22);
            tmp___8 = tmp___7;
            }
          } else {
            tmp___8 = -1;
          }
          }
          {
          __cil_tmp23 = 0 + 24;
          __cil_tmp24 = (unsigned long )priv;
          __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
          __cil_tmp26 = *((char **)__cil_tmp25);
          __cil_tmp27 = *((u8 *)priv);
          __cil_tmp28 = (int )__cil_tmp27;
          printk("<7>%s %d-%04x: pinnacle ntsc\n", __cil_tmp26, tmp___8, __cil_tmp28);
          }
          goto while_break___0;
        }
        while_break___0: ;
        }
      } else {
      }
      }
      goto while_break;
    }
    while_break: ;
    }
    if2 = 41300000;
  } else {
    {
    while (1) {
      while_continue___1: ;
      {
      __cil_tmp29 = & debug;
      if (*__cil_tmp29) {
        {
        while (1) {
          while_continue___2: ;
          {
          __cil_tmp30 = 0 + 8;
          __cil_tmp31 = (unsigned long )priv;
          __cil_tmp32 = __cil_tmp31 + __cil_tmp30;
          if (*((struct i2c_adapter **)__cil_tmp32)) {
            {
            __cil_tmp33 = 0 + 8;
            __cil_tmp34 = (unsigned long )priv;
            __cil_tmp35 = __cil_tmp34 + __cil_tmp33;
            __cil_tmp36 = *((struct i2c_adapter **)__cil_tmp35);
            tmp___9 = i2c_adapter_id(__cil_tmp36);
            tmp___10 = tmp___9;
            }
          } else {
            tmp___10 = -1;
          }
          }
          {
          __cil_tmp37 = 0 + 24;
          __cil_tmp38 = (unsigned long )priv;
          __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
          __cil_tmp40 = *((char **)__cil_tmp39);
          __cil_tmp41 = *((u8 *)priv);
          __cil_tmp42 = (int )__cil_tmp41;
          printk("<7>%s %d-%04x: pinnacle pal\n", __cil_tmp40, tmp___10, __cil_tmp42);
          }
          goto while_break___2;
        }
        while_break___2: ;
        }
      } else {
      }
      }
      goto while_break___1;
    }
    while_break___1: ;
    }
    if2 = 33300000;
  }
  }
  {
  __cil_tmp43 = *((unsigned int *)params);
  __cil_tmp44 = __cil_tmp43 * 125U;
  __cil_tmp45 = __cil_tmp44 / 2U;
  __cil_tmp46 = (unsigned int )if2;
  mt2050_set_if_freq(fe, __cil_tmp45, __cil_tmp46);
  __cil_tmp47 = & radio_antenna;
  __cil_tmp48 = *__cil_tmp47;
  __cil_tmp49 = (unsigned char )__cil_tmp48;
  mt2050_set_antenna(fe, __cil_tmp49);
  }
  return (0);
}
}
static int mt2050_set_params(struct dvb_frontend *fe , struct analog_parameters *params )
{ struct microtune_priv *priv ;
  int ret ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  void *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  {
  __cil_tmp5 = (unsigned long )fe;
  __cil_tmp6 = __cil_tmp5 + 768;
  __cil_tmp7 = *((void **)__cil_tmp6);
  priv = (struct microtune_priv *)__cil_tmp7;
  ret = -22;
  {
  __cil_tmp8 = (unsigned long )params;
  __cil_tmp9 = __cil_tmp8 + 4;
  __cil_tmp10 = *((unsigned int *)__cil_tmp9);
  if ((int )__cil_tmp10 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp10 == 2) {
    goto case_2;
  } else
  if ((int )__cil_tmp10 == 3) {
    goto case_2;
  } else
  if (0) {
    case_1:
    {
    ret = mt2050_set_radio_freq(fe, params);
    __cil_tmp11 = (unsigned long )priv;
    __cil_tmp12 = __cil_tmp11 + 36;
    __cil_tmp13 = *((unsigned int *)params);
    __cil_tmp14 = __cil_tmp13 * 125U;
    *((u32 *)__cil_tmp12) = __cil_tmp14 / 2U;
    }
    goto switch_break;
    case_2:
    case_3:
    {
    ret = mt2050_set_tv_freq(fe, params);
    __cil_tmp15 = (unsigned long )priv;
    __cil_tmp16 = __cil_tmp15 + 36;
    __cil_tmp17 = *((unsigned int *)params);
    *((u32 *)__cil_tmp16) = __cil_tmp17 * 62500U;
    }
    goto switch_break;
  } else {
    switch_break: ;
  }
  }
  return (ret);
}
}
static struct dvb_tuner_ops mt2050_tuner_ops =
     {{{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
      (char)0, (char)0}, 0U, 0U, 0U, 0U, 0U, 0U}, & microtune_release, (int (*)(struct dvb_frontend *fe ))0,
    (int (*)(struct dvb_frontend *fe ))0, (int (*)(struct dvb_frontend *fe ))0, & mt2050_set_params,
    (int (*)(struct dvb_frontend *fe , u8 *buf , int buf_len ))0, (int (*)(struct dvb_frontend *fe ,
                                                                           void *priv_cfg ))0,
    & microtune_get_frequency, (int (*)(struct dvb_frontend *fe , u32 *bandwidth ))0,
    (int (*)(struct dvb_frontend *fe , u32 *frequency ))0, (int (*)(struct dvb_frontend *fe ,
                                                                    u32 *status ))0,
    (int (*)(struct dvb_frontend *fe , u16 *strength ))0, (int (*)(struct dvb_frontend *fe ,
                                                                   u32 frequency ))0,
    (int (*)(struct dvb_frontend *fe , u32 bandwidth ))0, (int (*)(struct dvb_frontend *fe ,
                                                                   enum tuner_param param ,
                                                                   struct tuner_state *state ))0,
    (int (*)(struct dvb_frontend *fe , enum tuner_param param , struct tuner_state *state ))0};
static int mt2050_init(struct dvb_frontend *fe )
{ struct microtune_priv *priv ;
  unsigned char buf[2] ;
  int tmp___7 ;
  int tmp___8 ;
  size_t __len ;
  void *__ret ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct tuner_i2c_props *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned char *__cil_tmp18 ;
  char *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct tuner_i2c_props *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned char *__cil_tmp27 ;
  char *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct tuner_i2c_props *__cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned char *__cil_tmp34 ;
  char *__cil_tmp35 ;
  struct tuner_i2c_props *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned char *__cil_tmp39 ;
  char *__cil_tmp40 ;
  int *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct i2c_adapter *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  char *__cil_tmp52 ;
  u8 __cil_tmp53 ;
  int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned char __cil_tmp57 ;
  int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  struct dvb_tuner_ops *__cil_tmp62 ;
  void *__cil_tmp63 ;
  void const *__cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct dvb_tuner_ops *__cil_tmp68 ;
  void *__cil_tmp69 ;
  void const *__cil_tmp70 ;
  {
  {
  __cil_tmp8 = (unsigned long )fe;
  __cil_tmp9 = __cil_tmp8 + 768;
  __cil_tmp10 = *((void **)__cil_tmp9);
  priv = (struct microtune_priv *)__cil_tmp10;
  __cil_tmp11 = 0 * 1UL;
  __cil_tmp12 = (unsigned long )(buf) + __cil_tmp11;
  *((unsigned char *)__cil_tmp12) = (unsigned char)6;
  __cil_tmp13 = 1 * 1UL;
  __cil_tmp14 = (unsigned long )(buf) + __cil_tmp13;
  *((unsigned char *)__cil_tmp14) = (unsigned char)16;
  __cil_tmp15 = (struct tuner_i2c_props *)priv;
  __cil_tmp16 = 0 * 1UL;
  __cil_tmp17 = (unsigned long )(buf) + __cil_tmp16;
  __cil_tmp18 = (unsigned char *)__cil_tmp17;
  __cil_tmp19 = (char *)__cil_tmp18;
  tuner_i2c_xfer_send(__cil_tmp15, __cil_tmp19, 2);
  __cil_tmp20 = 0 * 1UL;
  __cil_tmp21 = (unsigned long )(buf) + __cil_tmp20;
  *((unsigned char *)__cil_tmp21) = (unsigned char)15;
  __cil_tmp22 = 1 * 1UL;
  __cil_tmp23 = (unsigned long )(buf) + __cil_tmp22;
  *((unsigned char *)__cil_tmp23) = (unsigned char)15;
  __cil_tmp24 = (struct tuner_i2c_props *)priv;
  __cil_tmp25 = 0 * 1UL;
  __cil_tmp26 = (unsigned long )(buf) + __cil_tmp25;
  __cil_tmp27 = (unsigned char *)__cil_tmp26;
  __cil_tmp28 = (char *)__cil_tmp27;
  tuner_i2c_xfer_send(__cil_tmp24, __cil_tmp28, 2);
  __cil_tmp29 = 0 * 1UL;
  __cil_tmp30 = (unsigned long )(buf) + __cil_tmp29;
  *((unsigned char *)__cil_tmp30) = (unsigned char)13;
  __cil_tmp31 = (struct tuner_i2c_props *)priv;
  __cil_tmp32 = 0 * 1UL;
  __cil_tmp33 = (unsigned long )(buf) + __cil_tmp32;
  __cil_tmp34 = (unsigned char *)__cil_tmp33;
  __cil_tmp35 = (char *)__cil_tmp34;
  tuner_i2c_xfer_send(__cil_tmp31, __cil_tmp35, 1);
  __cil_tmp36 = (struct tuner_i2c_props *)priv;
  __cil_tmp37 = 0 * 1UL;
  __cil_tmp38 = (unsigned long )(buf) + __cil_tmp37;
  __cil_tmp39 = (unsigned char *)__cil_tmp38;
  __cil_tmp40 = (char *)__cil_tmp39;
  tuner_i2c_xfer_recv(__cil_tmp36, __cil_tmp40, 1);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp41 = & debug;
    if (*__cil_tmp41) {
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp42 = 0 + 8;
        __cil_tmp43 = (unsigned long )priv;
        __cil_tmp44 = __cil_tmp43 + __cil_tmp42;
        if (*((struct i2c_adapter **)__cil_tmp44)) {
          {
          __cil_tmp45 = 0 + 8;
          __cil_tmp46 = (unsigned long )priv;
          __cil_tmp47 = __cil_tmp46 + __cil_tmp45;
          __cil_tmp48 = *((struct i2c_adapter **)__cil_tmp47);
          tmp___7 = i2c_adapter_id(__cil_tmp48);
          tmp___8 = tmp___7;
          }
        } else {
          tmp___8 = -1;
        }
        }
        {
        __cil_tmp49 = 0 + 24;
        __cil_tmp50 = (unsigned long )priv;
        __cil_tmp51 = __cil_tmp50 + __cil_tmp49;
        __cil_tmp52 = *((char **)__cil_tmp51);
        __cil_tmp53 = *((u8 *)priv);
        __cil_tmp54 = (int )__cil_tmp53;
        __cil_tmp55 = 0 * 1UL;
        __cil_tmp56 = (unsigned long )(buf) + __cil_tmp55;
        __cil_tmp57 = *((unsigned char *)__cil_tmp56);
        __cil_tmp58 = (int )__cil_tmp57;
        printk("<7>%s %d-%04x: mt2050: sro is %x\n", __cil_tmp52, tmp___8, __cil_tmp54,
               __cil_tmp58);
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  __len = 280UL;
  if (__len >= 64UL) {
    {
    __cil_tmp59 = 0 + 384;
    __cil_tmp60 = (unsigned long )fe;
    __cil_tmp61 = __cil_tmp60 + __cil_tmp59;
    __cil_tmp62 = (struct dvb_tuner_ops *)__cil_tmp61;
    __cil_tmp63 = (void *)__cil_tmp62;
    __cil_tmp64 = (void const *)(& mt2050_tuner_ops);
    __ret = memcpy(__cil_tmp63, __cil_tmp64, __len);
    }
  } else {
    {
    __cil_tmp65 = 0 + 384;
    __cil_tmp66 = (unsigned long )fe;
    __cil_tmp67 = __cil_tmp66 + __cil_tmp65;
    __cil_tmp68 = (struct dvb_tuner_ops *)__cil_tmp67;
    __cil_tmp69 = (void *)__cil_tmp68;
    __cil_tmp70 = (void const *)(& mt2050_tuner_ops);
    __ret = memcpy(__cil_tmp69, __cil_tmp70, __len);
    }
  }
  return (0);
}
}
struct dvb_frontend *microtune_attach(struct dvb_frontend *fe , struct i2c_adapter *i2c_adap ,
                                      u8 i2c_addr )
{ struct microtune_priv *priv ;
  char *name ;
  unsigned char buf[21] ;
  int company_code ;
  void *tmp___7 ;
  int i ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  void *__cil_tmp18 ;
  void *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  void *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned char *__cil_tmp33 ;
  void *__cil_tmp34 ;
  struct tuner_i2c_props *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned char *__cil_tmp38 ;
  char *__cil_tmp39 ;
  struct tuner_i2c_props *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned char *__cil_tmp43 ;
  char *__cil_tmp44 ;
  int *__cil_tmp45 ;
  int *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  struct i2c_adapter *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  char *__cil_tmp57 ;
  u8 __cil_tmp58 ;
  int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned char __cil_tmp62 ;
  int __cil_tmp63 ;
  int __cil_tmp64 ;
  int __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned char __cil_tmp68 ;
  int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned char __cil_tmp72 ;
  int __cil_tmp73 ;
  int __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  struct i2c_adapter *__cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  char *__cil_tmp85 ;
  u8 __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned char __cil_tmp90 ;
  int __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned char __cil_tmp94 ;
  int __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned char __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned char __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  char *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  void *__cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned char __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned char __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  struct i2c_adapter *__cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  char *__cil_tmp129 ;
  u8 __cil_tmp130 ;
  int __cil_tmp131 ;
  void *__cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  char *__cil_tmp140 ;
  char const *__cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  struct i2c_adapter *__cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  char *__cil_tmp152 ;
  u8 __cil_tmp153 ;
  int __cil_tmp154 ;
  {
  {
  __cil_tmp18 = (void *)0;
  priv = (struct microtune_priv *)__cil_tmp18;
  tmp___7 = kzalloc(40UL, 208U);
  priv = (struct microtune_priv *)tmp___7;
  }
  {
  __cil_tmp19 = (void *)0;
  __cil_tmp20 = (unsigned long )__cil_tmp19;
  __cil_tmp21 = (unsigned long )priv;
  if (__cil_tmp21 == __cil_tmp20) {
    {
    __cil_tmp22 = (void *)0;
    return ((struct dvb_frontend *)__cil_tmp22);
    }
  } else {
  }
  }
  {
  __cil_tmp23 = (unsigned long )fe;
  __cil_tmp24 = __cil_tmp23 + 768;
  *((void **)__cil_tmp24) = (void *)priv;
  *((u8 *)priv) = i2c_addr;
  __cil_tmp25 = 0 + 8;
  __cil_tmp26 = (unsigned long )priv;
  __cil_tmp27 = __cil_tmp26 + __cil_tmp25;
  *((struct i2c_adapter **)__cil_tmp27) = i2c_adap;
  __cil_tmp28 = 0 + 24;
  __cil_tmp29 = (unsigned long )priv;
  __cil_tmp30 = __cil_tmp29 + __cil_tmp28;
  *((char **)__cil_tmp30) = (char *)"mt20xx";
  __cil_tmp31 = 0 * 1UL;
  __cil_tmp32 = (unsigned long )(buf) + __cil_tmp31;
  __cil_tmp33 = (unsigned char *)__cil_tmp32;
  __cil_tmp34 = (void *)__cil_tmp33;
  memset(__cil_tmp34, 0, 21UL);
  name = (char *)"unknown";
  __cil_tmp35 = (struct tuner_i2c_props *)priv;
  __cil_tmp36 = 0 * 1UL;
  __cil_tmp37 = (unsigned long )(buf) + __cil_tmp36;
  __cil_tmp38 = (unsigned char *)__cil_tmp37;
  __cil_tmp39 = (char *)__cil_tmp38;
  tuner_i2c_xfer_send(__cil_tmp35, __cil_tmp39, 1);
  __cil_tmp40 = (struct tuner_i2c_props *)priv;
  __cil_tmp41 = 0 * 1UL;
  __cil_tmp42 = (unsigned long )(buf) + __cil_tmp41;
  __cil_tmp43 = (unsigned char *)__cil_tmp42;
  __cil_tmp44 = (char *)__cil_tmp43;
  tuner_i2c_xfer_recv(__cil_tmp40, __cil_tmp44, 21);
  }
  {
  __cil_tmp45 = & debug;
  if (*__cil_tmp45) {
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp46 = & debug;
      if (*__cil_tmp46) {
        {
        while (1) {
          while_continue___0: ;
          {
          __cil_tmp47 = 0 + 8;
          __cil_tmp48 = (unsigned long )priv;
          __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
          if (*((struct i2c_adapter **)__cil_tmp49)) {
            {
            __cil_tmp50 = 0 + 8;
            __cil_tmp51 = (unsigned long )priv;
            __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
            __cil_tmp53 = *((struct i2c_adapter **)__cil_tmp52);
            tmp___8 = i2c_adapter_id(__cil_tmp53);
            tmp___9 = tmp___8;
            }
          } else {
            tmp___9 = -1;
          }
          }
          {
          __cil_tmp54 = 0 + 24;
          __cil_tmp55 = (unsigned long )priv;
          __cil_tmp56 = __cil_tmp55 + __cil_tmp54;
          __cil_tmp57 = *((char **)__cil_tmp56);
          __cil_tmp58 = *((u8 *)priv);
          __cil_tmp59 = (int )__cil_tmp58;
          printk("<7>%s %d-%04x: MT20xx hexdump:", __cil_tmp57, tmp___9, __cil_tmp59);
          }
          goto while_break___0;
        }
        while_break___0: ;
        }
      } else {
      }
      }
      goto while_break;
    }
    while_break: ;
    }
    i = 0;
    {
    while (1) {
      while_continue___1: ;
      if (i < 21) {
      } else {
        goto while_break___1;
      }
      {
      __cil_tmp60 = i * 1UL;
      __cil_tmp61 = (unsigned long )(buf) + __cil_tmp60;
      __cil_tmp62 = *((unsigned char *)__cil_tmp61);
      __cil_tmp63 = (int )__cil_tmp62;
      printk(" %02x", __cil_tmp63);
      }
      {
      __cil_tmp64 = i + 1;
      __cil_tmp65 = __cil_tmp64 % 8;
      if (__cil_tmp65 == 0) {
        {
        printk(" ");
        }
      } else {
      }
      }
      i = i + 1;
    }
    while_break___1: ;
    }
    {
    printk("\n");
    }
  } else {
  }
  }
  __cil_tmp66 = 18 * 1UL;
  __cil_tmp67 = (unsigned long )(buf) + __cil_tmp66;
  __cil_tmp68 = *((unsigned char *)__cil_tmp67);
  __cil_tmp69 = (int )__cil_tmp68;
  __cil_tmp70 = 17 * 1UL;
  __cil_tmp71 = (unsigned long )(buf) + __cil_tmp70;
  __cil_tmp72 = *((unsigned char *)__cil_tmp71);
  __cil_tmp73 = (int )__cil_tmp72;
  __cil_tmp74 = __cil_tmp73 << 8;
  company_code = __cil_tmp74 | __cil_tmp69;
  {
  while (1) {
    while_continue___2: ;
    {
    while (1) {
      while_continue___3: ;
      {
      __cil_tmp75 = 0 + 8;
      __cil_tmp76 = (unsigned long )priv;
      __cil_tmp77 = __cil_tmp76 + __cil_tmp75;
      if (*((struct i2c_adapter **)__cil_tmp77)) {
        {
        __cil_tmp78 = 0 + 8;
        __cil_tmp79 = (unsigned long )priv;
        __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
        __cil_tmp81 = *((struct i2c_adapter **)__cil_tmp80);
        tmp___10 = i2c_adapter_id(__cil_tmp81);
        tmp___11 = tmp___10;
        }
      } else {
        tmp___11 = -1;
      }
      }
      {
      __cil_tmp82 = 0 + 24;
      __cil_tmp83 = (unsigned long )priv;
      __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
      __cil_tmp85 = *((char **)__cil_tmp84);
      __cil_tmp86 = *((u8 *)priv);
      __cil_tmp87 = (int )__cil_tmp86;
      __cil_tmp88 = 19 * 1UL;
      __cil_tmp89 = (unsigned long )(buf) + __cil_tmp88;
      __cil_tmp90 = *((unsigned char *)__cil_tmp89);
      __cil_tmp91 = (int )__cil_tmp90;
      __cil_tmp92 = 20 * 1UL;
      __cil_tmp93 = (unsigned long )(buf) + __cil_tmp92;
      __cil_tmp94 = *((unsigned char *)__cil_tmp93);
      __cil_tmp95 = (int )__cil_tmp94;
      printk("<6>%s %d-%04x: microtune: companycode=%04x part=%02x rev=%02x\n", __cil_tmp85,
             tmp___11, __cil_tmp87, company_code, __cil_tmp91, __cil_tmp95);
      }
      goto while_break___3;
    }
    while_break___3: ;
    }
    goto while_break___2;
  }
  while_break___2: ;
  }
  {
  __cil_tmp96 = 536UL / 8UL;
  __cil_tmp97 = __cil_tmp96 + 0UL;
  __cil_tmp98 = 19 * 1UL;
  __cil_tmp99 = (unsigned long )(buf) + __cil_tmp98;
  __cil_tmp100 = *((unsigned char *)__cil_tmp99);
  __cil_tmp101 = (unsigned long )__cil_tmp100;
  if (__cil_tmp101 < __cil_tmp97) {
    {
    __cil_tmp102 = 19 * 1UL;
    __cil_tmp103 = (unsigned long )(buf) + __cil_tmp102;
    __cil_tmp104 = *((unsigned char *)__cil_tmp103);
    __cil_tmp105 = __cil_tmp104 * 8UL;
    __cil_tmp106 = (unsigned long )(microtune_part) + __cil_tmp105;
    __cil_tmp107 = *((char **)__cil_tmp106);
    __cil_tmp108 = (unsigned long )__cil_tmp107;
    __cil_tmp109 = (void *)0;
    __cil_tmp110 = (unsigned long )__cil_tmp109;
    if (__cil_tmp110 != __cil_tmp108) {
      __cil_tmp111 = 19 * 1UL;
      __cil_tmp112 = (unsigned long )(buf) + __cil_tmp111;
      __cil_tmp113 = *((unsigned char *)__cil_tmp112);
      __cil_tmp114 = __cil_tmp113 * 8UL;
      __cil_tmp115 = (unsigned long )(microtune_part) + __cil_tmp114;
      name = *((char **)__cil_tmp115);
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp116 = 19 * 1UL;
  __cil_tmp117 = (unsigned long )(buf) + __cil_tmp116;
  __cil_tmp118 = *((unsigned char *)__cil_tmp117);
  if ((int )__cil_tmp118 == 4) {
    goto case_4;
  } else
  if ((int )__cil_tmp118 == 66) {
    goto case_66;
  } else {
    {
    goto switch_default;
    if (0) {
      case_4:
      {
      mt2032_init(fe);
      }
      goto switch_break;
      case_66:
      {
      mt2050_init(fe);
      }
      goto switch_break;
      switch_default:
      {
      while (1) {
        while_continue___4: ;
        {
        while (1) {
          while_continue___5: ;
          {
          __cil_tmp119 = 0 + 8;
          __cil_tmp120 = (unsigned long )priv;
          __cil_tmp121 = __cil_tmp120 + __cil_tmp119;
          if (*((struct i2c_adapter **)__cil_tmp121)) {
            {
            __cil_tmp122 = 0 + 8;
            __cil_tmp123 = (unsigned long )priv;
            __cil_tmp124 = __cil_tmp123 + __cil_tmp122;
            __cil_tmp125 = *((struct i2c_adapter **)__cil_tmp124);
            tmp___12 = i2c_adapter_id(__cil_tmp125);
            tmp___13 = tmp___12;
            }
          } else {
            tmp___13 = -1;
          }
          }
          {
          __cil_tmp126 = 0 + 24;
          __cil_tmp127 = (unsigned long )priv;
          __cil_tmp128 = __cil_tmp127 + __cil_tmp126;
          __cil_tmp129 = *((char **)__cil_tmp128);
          __cil_tmp130 = *((u8 *)priv);
          __cil_tmp131 = (int )__cil_tmp130;
          printk("<6>%s %d-%04x: microtune %s found, not (yet?) supported, sorry :-/\n",
                 __cil_tmp129, tmp___13, __cil_tmp131, name);
          }
          goto while_break___5;
        }
        while_break___5: ;
        }
        goto while_break___4;
      }
      while_break___4: ;
      }
      {
      __cil_tmp132 = (void *)0;
      return ((struct dvb_frontend *)__cil_tmp132);
      }
    } else {
      switch_break: ;
    }
    }
  }
  }
  {
  __cil_tmp133 = 0 * 1UL;
  __cil_tmp134 = 0 + __cil_tmp133;
  __cil_tmp135 = 0 + __cil_tmp134;
  __cil_tmp136 = 384 + __cil_tmp135;
  __cil_tmp137 = 0 + __cil_tmp136;
  __cil_tmp138 = (unsigned long )fe;
  __cil_tmp139 = __cil_tmp138 + __cil_tmp137;
  __cil_tmp140 = (char *)__cil_tmp139;
  __cil_tmp141 = (char const *)name;
  strlcpy(__cil_tmp140, __cil_tmp141, 128UL);
  }
  {
  while (1) {
    while_continue___6: ;
    {
    while (1) {
      while_continue___7: ;
      {
      __cil_tmp142 = 0 + 8;
      __cil_tmp143 = (unsigned long )priv;
      __cil_tmp144 = __cil_tmp143 + __cil_tmp142;
      if (*((struct i2c_adapter **)__cil_tmp144)) {
        {
        __cil_tmp145 = 0 + 8;
        __cil_tmp146 = (unsigned long )priv;
        __cil_tmp147 = __cil_tmp146 + __cil_tmp145;
        __cil_tmp148 = *((struct i2c_adapter **)__cil_tmp147);
        tmp___14 = i2c_adapter_id(__cil_tmp148);
        tmp___15 = tmp___14;
        }
      } else {
        tmp___15 = -1;
      }
      }
      {
      __cil_tmp149 = 0 + 24;
      __cil_tmp150 = (unsigned long )priv;
      __cil_tmp151 = __cil_tmp150 + __cil_tmp149;
      __cil_tmp152 = *((char **)__cil_tmp151);
      __cil_tmp153 = *((u8 *)priv);
      __cil_tmp154 = (int )__cil_tmp153;
      printk("<6>%s %d-%04x: microtune %s found, OK\n", __cil_tmp152, tmp___15, __cil_tmp154,
             name);
      }
      goto while_break___7;
    }
    while_break___7: ;
    }
    goto while_break___6;
  }
  while_break___6: ;
  }
  return (fe);
}
}
extern void *__crc_microtune_attach __attribute__((__weak__)) ;
static unsigned long const __kcrctab_microtune_attach __attribute__((__used__,
__unused__, __section__("___kcrctab_gpl+microtune_attach"))) = (unsigned long const )((unsigned long )(& __crc_microtune_attach));
static char const __kstrtab_microtune_attach[17] __attribute__((__section__("__ksymtab_strings"),
__aligned__(1))) =
  { (char const )'m', (char const )'i', (char const )'c', (char const )'r',
        (char const )'o', (char const )'t', (char const )'u', (char const )'n',
        (char const )'e', (char const )'_', (char const )'a', (char const )'t',
        (char const )'t', (char const )'a', (char const )'c', (char const )'h',
        (char const )'\000'};
static struct kernel_symbol const __ksymtab_microtune_attach __attribute__((__used__,
__unused__, __section__("___ksymtab_gpl+microtune_attach"))) = {(unsigned long )(& microtune_attach), __kstrtab_microtune_attach};
static char const __mod_description661[35] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'M', (char const )'i', (char const )'c', (char const )'r',
        (char const )'o', (char const )'t', (char const )'u', (char const )'n',
        (char const )'e', (char const )' ', (char const )'t', (char const )'u',
        (char const )'n', (char const )'e', (char const )'r', (char const )' ',
        (char const )'d', (char const )'r', (char const )'i', (char const )'v',
        (char const )'e', (char const )'r', (char const )'\000'};
static char const __mod_author662[48] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'R',
        (char const )'a', (char const )'l', (char const )'p', (char const )'h',
        (char const )' ', (char const )'M', (char const )'e', (char const )'t',
        (char const )'z', (char const )'l', (char const )'e', (char const )'r',
        (char const )',', (char const )' ', (char const )'G', (char const )'e',
        (char const )'r', (char const )'d', (char const )' ', (char const )'K',
        (char const )'n', (char const )'o', (char const )'r', (char const )'r',
        (char const )',', (char const )' ', (char const )'G', (char const )'u',
        (char const )'n', (char const )'t', (char const )'h', (char const )'e',
        (char const )'r', (char const )' ', (char const )'M', (char const )'a',
        (char const )'y', (char const )'e', (char const )'r', (char const )'\000'};
static char const __mod_license663[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct dvb_frontend *var_group1 ;
  struct analog_parameters *var_group2 ;
  u32 *var_microtune_get_frequency_1_p1 ;
  int ldv_s_mt2032_tuner_ops_dvb_tuner_ops ;
  int ldv_s_mt2050_tuner_ops_dvb_tuner_ops ;
  int tmp___7 ;
  int tmp___8 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_s_mt2032_tuner_ops_dvb_tuner_ops = 0;
  ldv_s_mt2050_tuner_ops_dvb_tuner_ops = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___8 = __VERIFIER_nondet_int();
    }
    if (tmp___8) {
    } else {
      {
      __cil_tmp8 = ldv_s_mt2032_tuner_ops_dvb_tuner_ops == 0;
      if (! __cil_tmp8) {
      } else {
        {
        __cil_tmp9 = ldv_s_mt2050_tuner_ops_dvb_tuner_ops == 0;
        if (! __cil_tmp9) {
        } else {
          goto while_break;
        }
        }
      }
      }
    }
    {
    tmp___7 = __VERIFIER_nondet_int();
    }
    if (tmp___7 == 0) {
      goto case_0;
    } else
    if (tmp___7 == 1) {
      goto case_1;
    } else
    if (tmp___7 == 2) {
      goto case_2;
    } else
    if (tmp___7 == 3) {
      goto case_3;
    } else
    if (tmp___7 == 4) {
      goto case_4;
    } else
    if (tmp___7 == 5) {
      goto case_5;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_mt2032_tuner_ops_dvb_tuner_ops == 0) {
          {
          microtune_release(var_group1);
          ldv_s_mt2032_tuner_ops_dvb_tuner_ops = 0;
          }
        } else {
        }
        goto switch_break;
        case_1:
        {
        mt2032_set_params(var_group1, var_group2);
        }
        goto switch_break;
        case_2:
        {
        microtune_get_frequency(var_group1, var_microtune_get_frequency_1_p1);
        }
        goto switch_break;
        case_3:
        if (ldv_s_mt2050_tuner_ops_dvb_tuner_ops == 0) {
          {
          microtune_release(var_group1);
          ldv_s_mt2050_tuner_ops_dvb_tuner_ops = 0;
          }
        } else {
        }
        goto switch_break;
        case_4:
        {
        mt2050_set_params(var_group1, var_group2);
        }
        goto switch_break;
        case_5:
        {
        microtune_get_frequency(var_group1, var_microtune_get_frequency_1_p1);
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
