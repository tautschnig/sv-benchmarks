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
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_off_t off_t;
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
typedef u64 dma_addr_t;
typedef __u16 __le16;
typedef __u32 __le32;
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
struct task_struct;
struct kernel_cap_struct {
   __u32 cap[2] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct user_namespace;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct completion;
struct pt_regs;
struct pid;
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_12 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_13 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_14 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_11 {
   struct __anonstruct_futex_12 futex ;
   struct __anonstruct_nanosleep_13 nanosleep ;
   struct __anonstruct_poll_14 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_11 __annonCompField4 ;
};
struct page;
struct exec_domain;
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
struct __anonstruct____missing_field_name_16 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_17 {
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
union __anonunion____missing_field_name_15 {
   struct __anonstruct____missing_field_name_16 __annonCompField5 ;
   struct __anonstruct____missing_field_name_17 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_15 __annonCompField7 ;
} __attribute__((__packed__)) ;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_21 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_21 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
struct arch_spinlock;
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
union __anonunion____missing_field_name_25 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_25 __annonCompField8 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[((4096UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct map_segment;
struct exec_domain {
   char *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
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
struct __anonstruct____missing_field_name_32 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_33 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_31 {
   struct __anonstruct____missing_field_name_32 __annonCompField12 ;
   struct __anonstruct____missing_field_name_33 __annonCompField13 ;
};
union __anonunion____missing_field_name_34 {
   u32 padding1[12] ;
   u32 sw_reserved[12] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_31 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32] ;
   u32 xmm_space[64] ;
   u32 padding[12] ;
   union __anonunion____missing_field_name_34 __annonCompField15 ;
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
struct __anonstruct_mm_segment_t_36 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_36 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned int sig_on_uaccess_error : 1 ;
   unsigned int uaccess_err : 1 ;
};
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
struct lock_class_key {
};
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
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct __anonstruct_nodemask_t_43 {
   unsigned long bits[(((unsigned long )(1 << 10) + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct __anonstruct_nodemask_t_43 nodemask_t;
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
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t *wait , unsigned int mode , int flags , void *key ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char *name ;
   void *magic ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct __anonstruct_mm_context_t_44 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_44 mm_context_t;
struct address_space;
union __anonunion____missing_field_name_46 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_50 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_49 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_50 __annonCompField21 ;
};
struct __anonstruct____missing_field_name_48 {
   union __anonunion____missing_field_name_49 __annonCompField22 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_47 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_48 __annonCompField23 ;
};
struct __anonstruct____missing_field_name_45 {
   union __anonunion____missing_field_name_46 __annonCompField20 ;
   union __anonunion____missing_field_name_47 __annonCompField24 ;
};
struct __anonstruct____missing_field_name_52 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_51 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_52 __annonCompField26 ;
};
union __anonunion____missing_field_name_53 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_45 __annonCompField25 ;
   union __anonunion____missing_field_name_51 __annonCompField27 ;
   union __anonunion____missing_field_name_53 __annonCompField28 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_55 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_54 {
   struct __anonstruct_vm_set_55 vm_set ;
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
   union __anonunion_shared_54 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct *vm_ops ;
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
struct call_single_data {
   struct list_head list ;
   void (*func)(void *info ) ;
   void *info ;
   u16 flags ;
   u16 priv ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
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
enum hrtimer_restart;
struct workqueue_struct;
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
struct execute_work {
   struct work_struct work ;
};
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
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_raints;
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
   struct pm_qos_raints *raints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct bio_vec;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_150 {
   unsigned long sig[1] ;
};
typedef struct __anonstruct_sigset_t_150 sigset_t;
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
struct __anonstruct__kill_152 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_153 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[sizeof(__kernel_uid32_t ) - sizeof(int )] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_154 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_155 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_156 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_157 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_151 {
   int _pad[(128UL - 4UL * sizeof(int )) / sizeof(int )] ;
   struct __anonstruct__kill_152 _kill ;
   struct __anonstruct__timer_153 _timer ;
   struct __anonstruct__rt_154 _rt ;
   struct __anonstruct__sigchld_155 _sigchld ;
   struct __anonstruct__sigfault_156 _sigfault ;
   struct __anonstruct__sigpoll_157 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_151 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct prop_local_percpu {
   struct percpu_counter events ;
   int shift ;
   unsigned long period ;
   raw_spinlock_t lock ;
};
struct __anonstruct_seccomp_t_162 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_162 seccomp_t;
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
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
struct latency_record {
   unsigned long backtrace[12] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct nsproxy;
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_list;
struct key_user;
union __anonunion____missing_field_name_219 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_220 {
   struct list_head link ;
   unsigned long x[2] ;
   void *p[2] ;
   int reject_error ;
};
union __anonunion_payload_221 {
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
   union __anonunion____missing_field_name_219 __annonCompField41 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_220 type_data ;
   union __anonunion_payload_221 payload ;
};
struct audit_context;
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
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
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
union __anonunion_ki_obj_223 {
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
   union __anonunion_ki_obj_223 ki_obj ;
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
struct pipe_inode_info;
struct uts_namespace;
struct rq;
struct sched_class {
   struct sched_class *next ;
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
   void (*set_cpus_allowed)(struct task_struct *p , struct cpumask *newmask ) ;
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
   struct sched_class *sched_class ;
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
   struct cred *real_cred ;
   struct cred *cred ;
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
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void *(*netlink_ns)(struct sock *sk ) ;
   void *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
enum kobj_ns_type;
struct attribute {
   char *name ;
   umode_t mode ;
};
struct attribute_group {
   char *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
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
   ssize_t (*store)(struct kobject * , struct attribute * , char * , size_t ) ;
   void *(*namespace)(struct kobject * , struct attribute * ) ;
};
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char *name ;
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
   struct sysfs_ops *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations *(*child_ns_type)(struct kobject *kobj ) ;
   void *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* filter)(struct kset *kset , struct kobject *kobj ) ;
   char *(* name)(struct kset *kset , struct kobject *kobj ) ;
   int (* uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char *val , struct kernel_param *kp ) ;
   int (*get)(char *buffer , struct kernel_param *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_229 {
   void *arg ;
   struct kparam_string *str ;
   struct kparam_array *arr ;
};
struct kernel_param {
   char *name ;
   struct kernel_param_ops *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_229 __annonCompField43 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops *ops ;
   void *elem ;
};
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char *name ;
};
struct mod_arch_specific {
};
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
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char * ,
                    size_t count ) ;
   void (*setup)(struct module * , char * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
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
   char *version ;
   char *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol *syms ;
   unsigned long *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol *gpl_syms ;
   unsigned long *gpl_crcs ;
   struct kernel_symbol *unused_syms ;
   unsigned long *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol *unused_gpl_syms ;
   unsigned long *unused_gpl_crcs ;
   struct kernel_symbol *gpl_future_syms ;
   unsigned long *gpl_future_crcs ;
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
   struct tracepoint * *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char **trace_bprintk_fmt_start ;
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
   char *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct new_utsname {
   char sysname[65] ;
   char nodename[65] ;
   char release[65] ;
   char version[65] ;
   char machine[65] ;
   char domainname[65] ;
};
struct mnt_namespace;
struct ipc_namespace;
struct net;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns ;
   struct net *net_ns ;
};
struct uts_namespace {
   struct kref kref ;
   struct new_utsname name ;
   struct user_namespace *user_ns ;
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
struct file_ra_state;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct *area ) ;
   void (*close)(struct vm_area_struct *area ) ;
   int (*fault)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*page_mkwrite)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*access)(struct vm_area_struct *vma , unsigned long addr , void *buf , int len ,
                 int write ) ;
   int (*set_policy)(struct vm_area_struct *vma , struct mempolicy *new ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct *vma , unsigned long addr ) ;
   int (*migrate)(struct vm_area_struct *vma , nodemask_t *from , nodemask_t *to ,
                  unsigned long flags ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct scsi_cmnd;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char *buf , size_t count ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char *name ;
   char *dev_name ;
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
   struct dev_pm_ops *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group **groups ;
   struct dev_pm_ops *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char *name ;
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
   struct kobj_ns_type_operations *ns_type ;
   void *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char *buf ,
                    size_t count ) ;
   void *(*namespace)(struct class *class , struct class_attribute *attr ) ;
};
struct device_type {
   char *name ;
   struct attribute_group **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char *buf ,
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
   char *init_name ;
   struct device_type *type ;
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
   struct attribute_group **groups ;
   void (*release)(struct device *dev ) ;
};
struct wakeup_source {
   char *name ;
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
struct dma_attrs {
   unsigned long flags[((4UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device *dev , size_t size , dma_addr_t *dma_handle , gfp_t gfp ,
                  struct dma_attrs *attrs ) ;
   void (*free)(struct device *dev , size_t size , void *vaddr , dma_addr_t dma_handle ,
                struct dma_attrs *attrs ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs *attrs ) ;
   dma_addr_t (*map_page)(struct device *dev , struct page *page , unsigned long offset ,
                          size_t size , enum dma_data_direction dir , struct dma_attrs *attrs ) ;
   void (*unmap_page)(struct device *dev , dma_addr_t dma_handle , size_t size , enum dma_data_direction dir ,
                      struct dma_attrs *attrs ) ;
   int (*map_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                 struct dma_attrs *attrs ) ;
   void (*unmap_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                    struct dma_attrs *attrs ) ;
   void (*sync_single_for_cpu)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                               enum dma_data_direction dir ) ;
   void (*sync_single_for_device)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                                  enum dma_data_direction dir ) ;
   void (*sync_sg_for_cpu)(struct device *dev , struct scatterlist *sg , int nents ,
                           enum dma_data_direction dir ) ;
   void (*sync_sg_for_device)(struct device *dev , struct scatterlist *sg , int nents ,
                              enum dma_data_direction dir ) ;
   int (*mapping_error)(struct device *dev , dma_addr_t dma_addr ) ;
   int (*dma_supported)(struct device *dev , u64 mask ) ;
   int (*set_dma_mask)(struct device *dev , u64 mask ) ;
   int is_phys ;
};
struct bio;
struct bio_integrity_payload;
struct block_device;
typedef void bio_end_io_t(struct bio * , int );
typedef void bio_destructor_t(struct bio * );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bio {
   sector_t bi_sector ;
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   unsigned short bi_vcnt ;
   unsigned short bi_idx ;
   unsigned int bi_phys_segments ;
   unsigned int bi_size ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   unsigned int bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct bio_integrity_payload *bi_integrity ;
   bio_destructor_t *bi_destructor ;
   struct bio_vec bi_inline_vecs[0] ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_232 {
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
   struct dentry_operations *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_232 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry * , struct inode * , struct qstr * ) ;
   int (*d_compare)(struct dentry * , struct inode * , struct dentry const * ,
                    struct inode * , unsigned int , char * , struct qstr const * ) ;
   int (*d_delete)(struct dentry * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct export_operations;
struct hd_geometry;
struct poll_table_struct;
struct kstatfs;
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
   struct quota_format_ops *qf_ops ;
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
   struct quota_format_ops *ops[2] ;
};
union __anonunion_arg_239 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_238 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_239 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_238 read_descriptor_t;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec *iov , loff_t offset ,
                        unsigned long nr_segs ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
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
   struct address_space_operations *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
} __attribute__((__aligned__(sizeof(long )))) ;
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
struct inode_operations;
union __anonunion____missing_field_name_240 {
   unsigned int i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_241 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_242 {
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
   struct inode_operations *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_240 __annonCompField44 ;
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
   union __anonunion____missing_field_name_241 __annonCompField45 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_242 __annonCompField46 ;
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
union __anonunion_f_u_243 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_243 f_u ;
   struct path f_path ;
   struct file_operations *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred *f_cred ;
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
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_245 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_244 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_245 afs ;
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
   struct file_lock_operations *fl_ops ;
   struct lock_manager_operations *fl_lmops ;
   union __anonunion_fl_u_244 fl_u ;
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
   struct super_operations *s_op ;
   struct dquot_operations *dq_op ;
   struct quotactl_ops *s_qcop ;
   struct export_operations *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   struct mutex s_lock ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler **s_xattr ;
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
   struct dentry_operations *s_d_op ;
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
struct block_device_operations;
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char * , int ,
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
   int (*symlink)(struct inode * , struct dentry * , char * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount *mnt , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char * , void * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 start , u64 len ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
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
   ssize_t (*quota_write)(struct super_block * , int , char * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char * , void * ) ;
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
struct disk_stats {
   unsigned long sectors[2] ;
   unsigned long ios[2] ;
   unsigned long merges[2] ;
   unsigned long ticks[2] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   u8 uuid[16] ;
   u8 volname[64] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct rcu_head rcu_head ;
};
struct disk_part_tbl {
   struct rcu_head rcu_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32] ;
   char *(*devnode)(struct gendisk *gd , umode_t *mode ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct proc_dir_entry;
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   enum writeback_sync_modes sync_mode ;
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   unsigned int for_kupdate : 1 ;
   unsigned int for_background : 1 ;
   unsigned int tagged_writepages : 1 ;
   unsigned int for_reclaim : 1 ;
   unsigned int range_cyclic : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   unsigned long last_active ;
   struct task_struct *task ;
   struct timer_list wakeup_timer ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct prop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t gfp_mask , void *pool_data );
typedef void mempool_free_t(void *element , void *pool_data );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion____missing_field_name_256 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_257 {
   struct hlist_node ioc_node ;
   struct rcu_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_256 __annonCompField47 ;
   union __anonunion____missing_field_name_257 __annonCompField48 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   sector_t bip_sector ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned int bip_size ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_idx ;
   struct work_struct bip_work ;
   struct bio_vec bip_vec[0] ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct elevator_queue;
struct request;
struct bsg_job;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   int count[2] ;
   int starved[2] ;
   int elvpriv ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2] ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion____missing_field_name_260 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_262 {
   struct io_cq *icq ;
   void *priv[2] ;
};
struct __anonstruct_flush_263 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_261 {
   struct __anonstruct_elv_262 elv ;
   struct __anonstruct_flush_263 flush ;
};
struct request {
   struct list_head queuelist ;
   struct call_single_data csd ;
   struct request_queue *q ;
   unsigned int cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   struct hlist_node hash ;
   union __anonunion____missing_field_name_260 __annonCompField49 ;
   union __anonunion____missing_field_name_261 __annonCompField50 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   int ref_count ;
   void *special ;
   char *buffer ;
   int tag ;
   int errors ;
   unsigned char __cmd[16] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef void *elevator_init_fn(struct request_queue * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16] ;
   struct module *elevator_owner ;
   char icq_cache_name[21] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   struct hlist_head *hash ;
   unsigned int registered : 1 ;
};
typedef void request_fn_proc(struct request_queue *q );
typedef void make_request_fn(struct request_queue *q , struct bio *bio );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue *q );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
};
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   struct request_list rq ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2] ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   unsigned int flush_flags ;
   unsigned int flush_not_queueable : 1 ;
   unsigned int flush_queue_delayed : 1 ;
   unsigned int flush_pending_idx : 1 ;
   unsigned int flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2] ;
   struct list_head flush_data_in_flight ;
   struct request flush_rq ;
   struct mutex sysfs_lock ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
};
struct blk_plug {
   unsigned long magic ;
   struct list_head list ;
   struct list_head cb_list ;
   unsigned int should_sort ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   int (*release)(struct gendisk * , fmode_t ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk *disk , unsigned int clearing ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct Scsi_Host;
struct scsi_device;
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   unsigned char tag ;
};
struct scsi_sense_hdr;
enum scsi_device_state {
    SDEV_CREATED = 1,
    SDEV_RUNNING = 2,
    SDEV_CANCEL = 3,
    SDEV_DEL = 4,
    SDEV_QUIESCE = 5,
    SDEV_OFFLINE = 6,
    SDEV_BLOCK = 7,
    SDEV_CREATED_BLOCK = 8
} ;
struct scsi_target;
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   unsigned int device_busy ;
   spinlock_t list_lock ;
   struct list_head cmd_list ;
   struct list_head starved_entry ;
   struct scsi_cmnd *current_cmnd ;
   unsigned short queue_depth ;
   unsigned short max_queue_depth ;
   unsigned short last_queue_full_depth ;
   unsigned short last_queue_full_count ;
   unsigned long last_queue_full_time ;
   unsigned long queue_ramp_up_period ;
   unsigned long last_queue_ramp_up ;
   unsigned int id ;
   unsigned int lun ;
   unsigned int channel ;
   unsigned int manufacturer ;
   unsigned int sector_size ;
   void *hostdata ;
   char type ;
   char scsi_level ;
   char inq_periph_qual ;
   unsigned char inquiry_len ;
   unsigned char *inquiry ;
   char *vendor ;
   char *model ;
   char *rev ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned int writeable : 1 ;
   unsigned int removable : 1 ;
   unsigned int changed : 1 ;
   unsigned int busy : 1 ;
   unsigned int lockable : 1 ;
   unsigned int locked : 1 ;
   unsigned int borken : 1 ;
   unsigned int disconnect : 1 ;
   unsigned int soft_reset : 1 ;
   unsigned int sdtr : 1 ;
   unsigned int wdtr : 1 ;
   unsigned int ppr : 1 ;
   unsigned int tagged_supported : 1 ;
   unsigned int simple_tags : 1 ;
   unsigned int ordered_tags : 1 ;
   unsigned int was_reset : 1 ;
   unsigned int expecting_cc_ua : 1 ;
   unsigned int use_10_for_rw : 1 ;
   unsigned int use_10_for_ms : 1 ;
   unsigned int skip_ms_page_8 : 1 ;
   unsigned int skip_ms_page_3f : 1 ;
   unsigned int skip_vpd_pages : 1 ;
   unsigned int use_192_bytes_for_3f : 1 ;
   unsigned int no_start_on_add : 1 ;
   unsigned int allow_restart : 1 ;
   unsigned int manage_start_stop : 1 ;
   unsigned int start_stop_pwr_cond : 1 ;
   unsigned int no_uld_attach : 1 ;
   unsigned int select_no_atn : 1 ;
   unsigned int fix_capacity : 1 ;
   unsigned int guess_capacity : 1 ;
   unsigned int retry_hwerror : 1 ;
   unsigned int last_sector_bug : 1 ;
   unsigned int no_read_disc_info : 1 ;
   unsigned int no_read_capacity_16 : 1 ;
   unsigned int is_visible : 1 ;
   unsigned long supported_events[((2UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
   struct list_head event_list ;
   struct work_struct event_work ;
   unsigned int device_blocked ;
   unsigned int max_device_blocked ;
   atomic_t iorequest_cnt ;
   atomic_t iodone_cnt ;
   atomic_t ioerr_cnt ;
   struct device sdev_gendev ;
   struct device sdev_dev ;
   struct execute_work ew ;
   struct work_struct requeue_work ;
   struct scsi_dh_data *scsi_dh_data ;
   enum scsi_device_state sdev_state ;
   unsigned long sdev_data[0] ;
} __attribute__((__aligned__(sizeof(unsigned long )))) ;
struct scsi_dh_devlist {
   char *vendor ;
   char *model ;
};
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char *name ;
   struct scsi_dh_devlist *devlist ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   int (*attach)(struct scsi_device * ) ;
   void (*detach)(struct scsi_device * ) ;
   int (*activate)(struct scsi_device * , void (*)(void * , int ) , void * ) ;
   int (*prep_fn)(struct scsi_device * , struct request * ) ;
   int (*set_params)(struct scsi_device * , char * ) ;
   bool (*match)(struct scsi_device * ) ;
};
struct scsi_dh_data {
   struct scsi_device_handler *scsi_dh ;
   struct scsi_device *sdev ;
   struct kref kref ;
   char buf[0] ;
};
enum scsi_target_state {
    STARGET_CREATED = 1,
    STARGET_RUNNING = 2,
    STARGET_DEL = 3
} ;
struct scsi_target {
   struct scsi_device *starget_sdev_user ;
   struct list_head siblings ;
   struct list_head devices ;
   struct device dev ;
   unsigned int reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned int create : 1 ;
   unsigned int single_lun : 1 ;
   unsigned int pdt_1f_for_no_lun : 1 ;
   unsigned int no_report_luns : 1 ;
   unsigned int target_busy ;
   unsigned int can_queue ;
   unsigned int target_blocked ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   struct execute_work ew ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0] ;
} __attribute__((__aligned__(sizeof(unsigned long )))) ;
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   kernel_ulong_t driver_info ;
};
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
} __attribute__((__packed__)) ;
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
} __attribute__((__packed__)) ;
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
} __attribute__((__packed__)) ;
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
} __attribute__((__packed__)) ;
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
} __attribute__((__packed__)) ;
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
} __attribute__((__packed__)) ;
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
} __attribute__((__packed__)) ;
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
} __attribute__((__packed__)) ;
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
} __attribute__((__packed__)) ;
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
} __attribute__((__packed__)) ;
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16] ;
} __attribute__((__packed__)) ;
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
   unsigned char *extra ;
   int extralen ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned int sysfs_files_created : 1 ;
   unsigned int ep_devs_created : 1 ;
   unsigned int unregistering : 1 ;
   unsigned int needs_remote_wakeup : 1 ;
   unsigned int needs_altsetting0 : 1 ;
   unsigned int needs_binding : 1 ;
   unsigned int reset_running : 1 ;
   unsigned int resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16] ;
   struct usb_interface *interface[32] ;
   struct usb_interface_cache *intf_cache[32] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[128UL / (8UL * sizeof(unsigned long ))] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned int is_b_host : 1 ;
   unsigned int b_hnp_enable : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   struct dentry *usbfs_dentry ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb_device {
   int devnum ;
   char devpath[16] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16] ;
   struct usb_host_endpoint *ep_out[16] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned int can_submit : 1 ;
   unsigned int persist_enabled : 1 ;
   unsigned int have_langid : 1 ;
   unsigned int authorized : 1 ;
   unsigned int authenticated : 1 ;
   unsigned int wusb : 1 ;
   unsigned int lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_capable : 1 ;
   unsigned int usb2_hw_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   struct device *usb_classdev ;
   struct dentry *usbfs_dentry ;
   int maxchild ;
   struct usb_device **children ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned int do_remote_wakeup : 1 ;
   unsigned int reset_resume : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char *name ;
   int (*probe)(struct usb_interface *intf , struct usb_device_id *id ) ;
   void (*disconnect)(struct usb_interface *intf ) ;
   int (*unlocked_ioctl)(struct usb_interface *intf , unsigned int code , void *buf ) ;
   int (*suspend)(struct usb_interface *intf , pm_message_t message ) ;
   int (*resume)(struct usb_interface *intf ) ;
   int (*reset_resume)(struct usb_interface *intf ) ;
   int (*pre_reset)(struct usb_interface *intf ) ;
   int (*post_reset)(struct usb_interface *intf ) ;
   struct usb_device_id *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned int no_dynamic_id : 1 ;
   unsigned int supports_autosuspend : 1 ;
   unsigned int soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   unsigned int poisoned : 1 ;
};
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0] ;
};
struct usb_sg_request {
   int status ;
   size_t bytes ;
   spinlock_t lock ;
   struct usb_device *dev ;
   int pipe ;
   int entries ;
   struct urb **urbs ;
   int count ;
   struct completion complete ;
};
struct scsi_host_cmd_pool;
struct scsi_transport_template;
struct scsi_host_template {
   struct module *module ;
   char *name ;
   int (*detect)(struct scsi_host_template * ) ;
   int (*release)(struct Scsi_Host * ) ;
   char *(*info)(struct Scsi_Host * ) ;
   int (*ioctl)(struct scsi_device *dev , int cmd , void *arg ) ;
   int (*compat_ioctl)(struct scsi_device *dev , int cmd , void *arg ) ;
   int (*queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
   int (*transfer_response)(struct scsi_cmnd * , void (*done)(struct scsi_cmnd * ) ) ;
   int (*eh_abort_handler)(struct scsi_cmnd * ) ;
   int (*eh_device_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_target_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_bus_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_host_reset_handler)(struct scsi_cmnd * ) ;
   int (*slave_alloc)(struct scsi_device * ) ;
   int (*slave_configure)(struct scsi_device * ) ;
   void (*slave_destroy)(struct scsi_device * ) ;
   int (*target_alloc)(struct scsi_target * ) ;
   void (*target_destroy)(struct scsi_target * ) ;
   int (*scan_finished)(struct Scsi_Host * , unsigned long ) ;
   void (*scan_start)(struct Scsi_Host * ) ;
   int (*change_queue_depth)(struct scsi_device * , int , int ) ;
   int (*change_queue_type)(struct scsi_device * , int ) ;
   int (*bios_param)(struct scsi_device * , struct block_device * , sector_t , int * ) ;
   void (*unlock_native_capacity)(struct scsi_device * ) ;
   int (*proc_info)(struct Scsi_Host * , char * , char ** , off_t , int , int ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*host_reset)(struct Scsi_Host *shost , int reset_type ) ;
   char *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned short max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   unsigned int supported_mode : 2 ;
   unsigned int unchecked_isa_dma : 1 ;
   unsigned int use_clustering : 1 ;
   unsigned int emulated : 1 ;
   unsigned int skip_settle_delay : 1 ;
   unsigned int ordered_tag : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
};
enum scsi_host_state {
    SHOST_CREATED = 1,
    SHOST_RUNNING = 2,
    SHOST_CANCEL = 3,
    SHOST_DEL = 4,
    SHOST_RECOVERY = 5,
    SHOST_CANCEL_RECOVERY = 6,
    SHOST_DEL_RECOVERY = 7
} ;
struct Scsi_Host {
   struct list_head __devices ;
   struct list_head __targets ;
   struct scsi_host_cmd_pool *cmd_pool ;
   spinlock_t free_list_lock ;
   struct list_head free_list ;
   struct list_head starved_list ;
   spinlock_t default_lock ;
   spinlock_t *host_lock ;
   struct mutex scan_mutex ;
   struct list_head eh_cmd_q ;
   struct task_struct *ehandler ;
   struct completion *eh_action ;
   wait_queue_head_t host_wait ;
   struct scsi_host_template *hostt ;
   struct scsi_transport_template *transportt ;
   struct blk_queue_tag *bqt ;
   unsigned int host_busy ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int resetting ;
   unsigned long last_reset ;
   unsigned int max_id ;
   unsigned int max_lun ;
   unsigned int max_channel ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned short max_sectors ;
   unsigned long dma_boundary ;
   unsigned long cmd_serial_number ;
   unsigned int active_mode : 2 ;
   unsigned int unchecked_isa_dma : 1 ;
   unsigned int use_clustering : 1 ;
   unsigned int use_blk_tcq : 1 ;
   unsigned int host_self_blocked : 1 ;
   unsigned int reverse_ordering : 1 ;
   unsigned int ordered_tag : 1 ;
   unsigned int tmf_in_progress : 1 ;
   unsigned int async_scan : 1 ;
   unsigned int eh_noresume : 1 ;
   char work_q_name[20] ;
   struct workqueue_struct *work_q ;
   unsigned int host_blocked ;
   unsigned int max_host_blocked ;
   unsigned int prot_capabilities ;
   unsigned char prot_guard_type ;
   struct request_queue *uspace_req_q ;
   unsigned long base ;
   unsigned long io_port ;
   unsigned char n_io_port ;
   unsigned char dma_channel ;
   unsigned int irq ;
   enum scsi_host_state shost_state ;
   struct device shost_gendev ;
   struct device shost_dev ;
   struct list_head sht_legacy_list ;
   void *shost_data ;
   struct device *dma_dev ;
   unsigned long hostdata[0] __attribute__((__aligned__(sizeof(unsigned long )))) ;
};
typedef u8 BOOLEAN;
typedef u8 BYTE;
typedef u8 *PBYTE;
typedef u16 WORD;
typedef u32 DWORD;
struct us_data;
struct us_unusual_dev {
   char *vendorName ;
   char *productName ;
   __u8 useProtocol ;
   __u8 useTransport ;
   int (*initFunction)(struct us_data * ) ;
};
struct _SD_STATUS {
   BYTE Insert : 1 ;
   BYTE Ready : 1 ;
   BYTE MediaChange : 1 ;
   BYTE IsMMC : 1 ;
   BYTE HiCapacity : 1 ;
   BYTE HiSpeed : 1 ;
   BYTE WtP : 1 ;
   BYTE Reserved : 1 ;
};
typedef struct _SD_STATUS SD_STATUS;
struct _MS_STATUS {
   BYTE Insert : 1 ;
   BYTE Ready : 1 ;
   BYTE MediaChange : 1 ;
   BYTE IsMSPro : 1 ;
   BYTE IsMSPHG : 1 ;
   BYTE Reserved1 : 1 ;
   BYTE WtP : 1 ;
   BYTE Reserved2 : 1 ;
};
typedef struct _MS_STATUS MS_STATUS;
struct _SM_STATUS {
   BYTE Insert : 1 ;
   BYTE Ready : 1 ;
   BYTE MediaChange : 1 ;
   BYTE Reserved : 3 ;
   BYTE WtP : 1 ;
   BYTE IsMS : 1 ;
};
typedef struct _SM_STATUS SM_STATUS;
typedef struct _SM_STATUS *PSM_STATUS;
struct us_data {
   struct mutex dev_mutex ;
   struct usb_device *pusb_dev ;
   struct usb_interface *pusb_intf ;
   struct us_unusual_dev *unusual_dev ;
   unsigned long fflags ;
   unsigned long dflags ;
   unsigned int send_bulk_pipe ;
   unsigned int recv_bulk_pipe ;
   unsigned int send_ctrl_pipe ;
   unsigned int recv_ctrl_pipe ;
   unsigned int recv_intr_pipe ;
   char *transport_name ;
   char *protocol_name ;
   __le32 bcs_signature ;
   u8 subclass ;
   u8 protocol ;
   u8 max_lun ;
   u8 ifnum ;
   u8 ep_bInterval ;
   int (*transport)(struct scsi_cmnd * , struct us_data * ) ;
   int (*transport_reset)(struct us_data * ) ;
   void (*proto_handler)(struct scsi_cmnd * , struct us_data * ) ;
   struct scsi_cmnd *srb ;
   unsigned int tag ;
   struct urb *current_urb ;
   struct usb_ctrlrequest *cr ;
   struct usb_sg_request current_sg ;
   unsigned char *iobuf ;
   unsigned char *sensebuf ;
   dma_addr_t cr_dma ;
   dma_addr_t iobuf_dma ;
   struct task_struct *ctl_thread ;
   struct completion cmnd_ready ;
   struct completion notify ;
   wait_queue_head_t delay_wait ;
   struct completion scanning_done ;
   void *extra ;
   void (*extra_destructor)(void * ) ;
   void (*suspend_resume_hook)(struct us_data * , int ) ;
   SD_STATUS SD_Status ;
   MS_STATUS MS_Status ;
   SM_STATUS SM_Status ;
   WORD SD_Block_Mult ;
   BYTE SD_READ_BL_LEN ;
   WORD SD_C_SIZE ;
   BYTE SD_C_SIZE_MULT ;
   BYTE SD_SPEC_VER ;
   BYTE SD_CSD_VER ;
   BYTE SD20_HIGH_CAPACITY ;
   DWORD HC_C_SIZE ;
   BYTE MMC_SPEC_VER ;
   BYTE MMC_BusWidth ;
   BYTE MMC_HIGH_CAPACITY ;
   BOOLEAN MS_SWWP ;
   DWORD MSP_TotalBlock ;
   BOOLEAN MS_IsRWPage ;
   WORD MS_Model ;
   BYTE SM_DeviceID ;
   BYTE SM_CardID ;
   PBYTE testbuf ;
   BYTE BIN_FLAG ;
   DWORD bl_num ;
   int SrbStatus ;
   BOOLEAN Power_IsResum ;
};
typedef u64 phys_addr_t;
enum hrtimer_restart;
enum kobj_ns_type;
struct scsi_sense_hdr {
   u8 response_code ;
   u8 sense_key ;
   u8 asc ;
   u8 ascq ;
   u8 byte4 ;
   u8 byte5 ;
   u8 byte6 ;
   u8 additional_length ;
};
enum xfer_buf_dir {
    TO_XFER_BUF = 0,
    FROM_XFER_BUF = 1
} ;
enum hrtimer_restart;
enum kobj_ns_type;
struct scsi_eh_save {
   int result ;
   enum dma_data_direction data_direction ;
   unsigned int underflow ;
   unsigned char cmd_len ;
   unsigned char prot_op ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct request *next_rq ;
   unsigned char eh_cmnd[16] ;
   struct scatterlist sense_sgl ;
};
struct bulk_cb_wrap {
   __le32 Signature ;
   __u32 Tag ;
   __le32 DataTransferLength ;
   __u8 Flags ;
   __u8 Lun ;
   __u8 Length ;
   __u8 CDB[16] ;
};
struct bulk_cs_wrap {
   __le32 Signature ;
   __u32 Tag ;
   __le32 Residue ;
   __u8 Status ;
};
enum hrtimer_restart;
enum kobj_ns_type;
enum hrtimer_restart;
enum kobj_ns_type;
struct SSFDCTYPE {
   BYTE Model ;
   BYTE Attribute ;
   BYTE MaxZones ;
   BYTE MaxSectors ;
   WORD MaxBlocks ;
   WORD MaxLogBlocks ;
};
enum hrtimer_restart;
enum kobj_ns_type;
struct ADDRESS {
   BYTE Zone ;
   BYTE Sector ;
   WORD PhyBlock ;
   WORD LogBlock ;
};
struct CIS_AREA {
   BYTE Sector ;
   WORD PhyBlock ;
};
enum hrtimer_restart;
enum kobj_ns_type;
long ldv__builtin_expect(long val , long res ) ;
__inline static void ( __attribute__((__always_inline__)) set_bit)(unsigned int nr ,
                                                                   unsigned long volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static void ( __attribute__((__always_inline__)) set_bit)(unsigned int nr ,
                                                                   unsigned long volatile *addr )
{ long volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n"
                       ".balign 4\n"
                       ".long 671f - .\n"
                       ".previous\n"
                       "671:"
                       "\n\tlock; "
                       "bts %1,%0": "+m" (*__cil_tmp3): "Ir" (nr): "memory");
  return;
}
}
__inline static void ( __attribute__((__always_inline__)) clear_bit)(int nr , unsigned long volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static void ( __attribute__((__always_inline__)) clear_bit)(int nr , unsigned long volatile *addr )
{ long volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n"
                       ".balign 4\n"
                       ".long 671f - .\n"
                       ".previous\n"
                       "671:"
                       "\n\tlock; "
                       "btr %1,%0": "+m" (*__cil_tmp3): "Ir" (nr));
  return;
}
}
__inline static int ( __attribute__((__always_inline__)) ant_test_bit)(unsigned int nr ,
                                                                            unsigned long volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static int ( __attribute__((__always_inline__)) ant_test_bit)(unsigned int nr ,
                                                                            unsigned long volatile *addr )
{ unsigned int __cil_tmp3 ;
  unsigned long volatile *__cil_tmp4 ;
  unsigned long volatile __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  {
  {
  __cil_tmp3 = nr / 64U;
  __cil_tmp4 = addr + __cil_tmp3;
  __cil_tmp5 = *__cil_tmp4;
  __cil_tmp6 = (unsigned long )__cil_tmp5;
  __cil_tmp7 = nr % 64U;
  __cil_tmp8 = 1UL << __cil_tmp7;
  __cil_tmp9 = __cil_tmp8 & __cil_tmp6;
  return (__cil_tmp9 != 0UL);
  }
}
}
__inline static int variable_test_bit(int nr , unsigned long volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static int variable_test_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  unsigned long *__cil_tmp4 ;
  {
  __cil_tmp4 = (unsigned long *)addr;
  __asm__ volatile ("bt %2,%1\n\t"
                       "sbb %0,%0": "=r" (oldbit): "m" (*__cil_tmp4), "Ir" (nr));
  return (oldbit);
}
}
extern int ( printk)(char *fmt , ...) ;
extern void __might_sleep(char *file , int line , int preempt_offset ) ;
extern __attribute__((__noreturn__)) void complete_and_exit(struct completion * ,
                                                             long ) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task __attribute__((__section__(".data..percpu"))) ;
__inline static struct task_struct *( __attribute__((__always_inline__)) get_current)(void) __attribute__((__no_instrument_function__)) ;
__inline static struct task_struct *( __attribute__((__always_inline__)) get_current)(void)
{ struct task_struct *pfo_ret__ ;
  {
  if ((int )8UL == 1) {
    goto case_1;
  } else
  if ((int )8UL == 2) {
    goto case_2;
  } else
  if ((int )8UL == 4) {
    goto case_4;
  } else
  if ((int )8UL == 8) {
    goto case_8;
  } else {
    {
    goto switch_default;
    if (0) {
      case_1:
      __asm__ ("mov"
                "b "
                "%%"
                "gs"
                ":"
                "%P"
                "1"
                ",%0": "=q" (pfo_ret__): "p" (& current_task));
      goto switch_break;
      case_2:
      __asm__ ("mov"
                "w "
                "%%"
                "gs"
                ":"
                "%P"
                "1"
                ",%0": "=r" (pfo_ret__): "p" (& current_task));
      goto switch_break;
      case_4:
      __asm__ ("mov"
                "l "
                "%%"
                "gs"
                ":"
                "%P"
                "1"
                ",%0": "=r" (pfo_ret__): "p" (& current_task));
      goto switch_break;
      case_8:
      __asm__ ("mov"
                "q "
                "%%"
                "gs"
                ":"
                "%P"
                "1"
                ",%0": "=r" (pfo_ret__): "p" (& current_task));
      goto switch_break;
      switch_default:
      {
      __bad_percpu_size();
      }
    } else {
      switch_break: ;
    }
    }
  }
  return (pfo_ret__);
}
}
extern void *memset(void *s , int c , size_t n ) ;
extern unsigned long strlen(char *s ) ;
__inline static long __attribute__((__warn_unused_result__)) PTR_ERR(void *ptr ) __attribute__((__no_instrument_function__)) ;
__inline static long __attribute__((__warn_unused_result__)) PTR_ERR(void *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long __attribute__((__warn_unused_result__)) IS_ERR(void *ptr ) __attribute__((__no_instrument_function__)) ;
__inline static long __attribute__((__warn_unused_result__)) IS_ERR(void *ptr )
{ long tmp ;
  unsigned long __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  long __cil_tmp7 ;
  {
  {
  __cil_tmp3 = (unsigned long )ptr;
  __cil_tmp4 = __cil_tmp3 >= 0xfffffffffffff001UL;
  __cil_tmp5 = ! __cil_tmp4;
  __cil_tmp6 = ! __cil_tmp5;
  __cil_tmp7 = (long )__cil_tmp6;
  tmp = ldv__builtin_expect(__cil_tmp7, 0L);
  }
  return (tmp);
}
}
extern void __xchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t *v ) __attribute__((__no_instrument_function__)) ;
__inline static int atomic_read(atomic_t *v )
{ int *__cil_tmp2 ;
  int volatile *__cil_tmp3 ;
  int volatile __cil_tmp4 ;
  {
  {
  __cil_tmp2 = (int *)v;
  __cil_tmp3 = (int volatile *)__cil_tmp2;
  __cil_tmp4 = *__cil_tmp3;
  return ((int )__cil_tmp4);
  }
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag ) __attribute__((__no_instrument_function__)) ;
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{ int tmp___0 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  __u32 *__cil_tmp7 ;
  unsigned long *__cil_tmp8 ;
  unsigned long volatile *__cil_tmp9 ;
  {
  {
  __cil_tmp5 = (unsigned long )ti;
  __cil_tmp6 = __cil_tmp5 + 16;
  __cil_tmp7 = (__u32 *)__cil_tmp6;
  __cil_tmp8 = (unsigned long *)__cil_tmp7;
  __cil_tmp9 = (unsigned long volatile *)__cil_tmp8;
  tmp___0 = variable_test_bit(flag, __cil_tmp9);
  }
  return (tmp___0);
}
}
extern void _raw_spin_lock_irq(raw_spinlock_t *lock ) __attribute__((__section__(".spinlock.text"))) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t *lock ) __attribute__((__section__(".spinlock.text"))) ;
__inline static void spin_lock_irq(spinlock_t *lock ) __attribute__((__no_instrument_function__)) ;
__inline static void spin_lock_irq(spinlock_t *lock )
{ struct raw_spinlock *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = (struct raw_spinlock *)lock;
  _raw_spin_lock_irq(__cil_tmp2);
  }
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) __attribute__((__no_instrument_function__)) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{ struct raw_spinlock *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = (struct raw_spinlock *)lock;
  _raw_spin_unlock_irq(__cil_tmp2);
  }
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t *q , char *name , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t *q , unsigned int mode , int nr , void *key ) ;
extern void prepare_to_wait(wait_queue_head_t *q , wait_queue_t *wait , int state ) ;
extern void finish_wait(wait_queue_head_t *q , wait_queue_t *wait ) ;
extern int autoremove_wake_function(wait_queue_t *wait , unsigned int mode , int sync ,
                                    void *key ) ;
static struct lock_class_key __key ;
__inline static void init_completion(struct completion *x ) __attribute__((__no_instrument_function__)) ;
__inline static void init_completion(struct completion *x )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  wait_queue_head_t *__cil_tmp4 ;
  {
  *((unsigned int *)x) = 0U;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp2 = (unsigned long )x;
    __cil_tmp3 = __cil_tmp2 + 8;
    __cil_tmp4 = (wait_queue_head_t *)__cil_tmp3;
    __init_waitqueue_head(__cil_tmp4, "&x->wait", & __key);
    }
    goto while_break;
  }
  while_break: ;
  }
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern int wait_for_completion_interruptible(struct completion *x ) ;
extern void complete(struct completion * ) ;
extern void __mutex_init(struct mutex *lock , char *name , struct lock_class_key *key ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern long schedule_timeout(long timeout ) ;
extern void schedule(void) ;
extern int wake_up_process(struct task_struct *tsk ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag ) __attribute__((__no_instrument_function__)) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{ int tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void *__cil_tmp6 ;
  struct thread_info *__cil_tmp7 ;
  {
  {
  __cil_tmp4 = (unsigned long )tsk;
  __cil_tmp5 = __cil_tmp4 + 8;
  __cil_tmp6 = *((void **)__cil_tmp5);
  __cil_tmp7 = (struct thread_info *)__cil_tmp6;
  tmp___7 = test_ti_thread_flag(__cil_tmp7, flag);
  }
  return (tmp___7);
}
}
__inline static int signal_pending(struct task_struct *p ) __attribute__((__no_instrument_function__)) ;
__inline static int signal_pending(struct task_struct *p )
{ int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long __cil_tmp5 ;
  {
  {
  tmp___7 = test_tsk_thread_flag(p, 2);
  }
  if (tmp___7) {
    tmp___8 = 1;
  } else {
    tmp___8 = 0;
  }
  {
  __cil_tmp5 = (long )tmp___8;
  tmp___9 = ldv__builtin_expect(__cil_tmp5, 0L);
  }
  return ((int )tmp___9);
}
}
extern atomic_t system_freezing_cnt ;
extern bool freezing_slow_path(struct task_struct *p ) ;
__inline static bool freezing(struct task_struct *p ) __attribute__((__no_instrument_function__)) ;
__inline static bool freezing(struct task_struct *p )
{ int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  bool tmp___10 ;
  atomic_t *__cil_tmp6 ;
  long __cil_tmp7 ;
  {
  {
  __cil_tmp6 = (atomic_t *)(& system_freezing_cnt);
  tmp___7 = atomic_read(__cil_tmp6);
  }
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  {
  __cil_tmp7 = (long )tmp___8;
  tmp___9 = ldv__builtin_expect(__cil_tmp7, 1L);
  }
  if (tmp___9) {
    return ((bool )0);
  } else {
  }
  {
  tmp___10 = freezing_slow_path(p);
  }
  return (tmp___10);
}
}
extern bool __refrigerator(bool check_kthr_stop ) ;
__inline static bool try_to_freeze(void) __attribute__((__no_instrument_function__)) ;
__inline static bool try_to_freeze(void)
{ struct task_struct *tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  bool tmp___11 ;
  long __cil_tmp6 ;
  bool __cil_tmp7 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __might_sleep("include/linux/freezer.h", 46, 0);
    }
    {
    while (1) {
      while_continue___0: ;
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  tmp___7 = get_current();
  tmp___8 = freezing(tmp___7);
  }
  if (tmp___8) {
    tmp___9 = 0;
  } else {
    tmp___9 = 1;
  }
  {
  __cil_tmp6 = (long )tmp___9;
  tmp___10 = ldv__builtin_expect(__cil_tmp6, 1L);
  }
  if (tmp___10) {
    return ((bool )0);
  } else {
  }
  {
  __cil_tmp7 = (bool )0;
  tmp___11 = __refrigerator(__cil_tmp7);
  }
  return (tmp___11);
}
}
extern bool set_freezable(void) ;
extern struct module __this_module ;
int init_module(void) ;
void cleanup_module(void) ;
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
extern struct task_struct *( kthread_create_on_node)(int (*threadfn)(void *data ) ,
                                                                             void *data ,
                                                                             int node ,
                                                                             char *namefmt
                                                                             , ...) ;
extern int kthread_stop(struct task_struct *k ) ;
extern int kthread_should_stop(void) ;
extern void *dev_get_drvdata(struct device *dev ) ;
extern int dev_set_drvdata(struct device *dev , void *data ) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor *epd ) __attribute__((__no_instrument_function__)) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor *epd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  __u8 __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  {
  {
  __cil_tmp2 = (unsigned long )epd;
  __cil_tmp3 = __cil_tmp2 + 2;
  __cil_tmp4 = *((__u8 *)__cil_tmp3);
  __cil_tmp5 = (int )__cil_tmp4;
  __cil_tmp6 = __cil_tmp5 & 128;
  return (__cil_tmp6 == 128);
  }
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor *epd ) __attribute__((__no_instrument_function__)) ;
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor *epd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  __u8 __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  {
  {
  __cil_tmp2 = (unsigned long )epd;
  __cil_tmp3 = __cil_tmp2 + 3;
  __cil_tmp4 = *((__u8 *)__cil_tmp3);
  __cil_tmp5 = (int )__cil_tmp4;
  __cil_tmp6 = __cil_tmp5 & 3;
  return (__cil_tmp6 == 2);
  }
}
}
__inline static int usb_endpoint_xfer_int(struct usb_endpoint_descriptor *epd ) __attribute__((__no_instrument_function__)) ;
__inline static int usb_endpoint_xfer_int(struct usb_endpoint_descriptor *epd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  __u8 __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  {
  {
  __cil_tmp2 = (unsigned long )epd;
  __cil_tmp3 = __cil_tmp2 + 3;
  __cil_tmp4 = *((__u8 *)__cil_tmp3);
  __cil_tmp5 = (int )__cil_tmp4;
  __cil_tmp6 = __cil_tmp5 & 3;
  return (__cil_tmp6 == 3);
  }
}
}
__inline static int usb_endpoint_is_int_in(struct usb_endpoint_descriptor *epd ) __attribute__((__no_instrument_function__)) ;
__inline static int usb_endpoint_is_int_in(struct usb_endpoint_descriptor *epd )
{ int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  {
  tmp___7 = usb_endpoint_xfer_int(epd);
  }
  if (tmp___7) {
    {
    tmp___8 = usb_endpoint_dir_in(epd);
    }
    if (tmp___8) {
      tmp___9 = 1;
    } else {
      tmp___9 = 0;
    }
  } else {
    tmp___9 = 0;
  }
  return (tmp___9);
}
}
__inline static void *usb_get_intfdata(struct usb_interface *intf ) __attribute__((__no_instrument_function__)) ;
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{ void *tmp___7 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct device *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )intf;
  __cil_tmp4 = __cil_tmp3 + 48;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  __cil_tmp6 = (struct device *)__cil_tmp5;
  tmp___7 = dev_get_drvdata(__cil_tmp6);
  }
  return (tmp___7);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data ) __attribute__((__no_instrument_function__)) ;
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )intf;
  __cil_tmp4 = __cil_tmp3 + 48;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf ) __attribute__((__no_instrument_function__)) ;
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{ struct device *__mptr ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct usb_device *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct device *__cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  char *__cil_tmp11 ;
  char *__cil_tmp12 ;
  {
  __cil_tmp3 = (unsigned long )intf;
  __cil_tmp4 = __cil_tmp3 + 48;
  __cil_tmp5 = *((struct device **)__cil_tmp4);
  __mptr = (struct device *)__cil_tmp5;
  {
  __cil_tmp6 = (struct usb_device *)0;
  __cil_tmp7 = (unsigned long )__cil_tmp6;
  __cil_tmp8 = __cil_tmp7 + 136;
  __cil_tmp9 = (struct device *)__cil_tmp8;
  __cil_tmp10 = (unsigned int )__cil_tmp9;
  __cil_tmp11 = (char *)__mptr;
  __cil_tmp12 = __cil_tmp11 - __cil_tmp10;
  return ((struct usb_device *)__cil_tmp12);
  }
}
}
extern int usb_register_driver(struct usb_driver * , struct module * , char * ) ;
extern void usb_deregister(struct usb_driver * ) ;
extern struct urb *usb_alloc_urb(int iso_packets , gfp_t mem_flags ) ;
extern void usb_free_urb(struct urb *urb ) ;
extern void *usb_alloc_coherent(struct usb_device *dev , size_t size , gfp_t mem_flags ,
                                dma_addr_t *dma ) ;
extern void usb_free_coherent(struct usb_device *dev , size_t size , void *addr ,
                              dma_addr_t dma ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{ unsigned int __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  {
  {
  __cil_tmp3 = endpoint << 15;
  __cil_tmp4 = *((int *)dev);
  __cil_tmp5 = __cil_tmp4 << 8;
  __cil_tmp6 = (unsigned int )__cil_tmp5;
  return (__cil_tmp6 | __cil_tmp3);
  }
}
}
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
extern int __attribute__((__warn_unused_result__)) scsi_add_host_with_dma(struct Scsi_Host * ,
                                                                           struct device * ,
                                                                           struct device * ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
extern void scsi_host_put(struct Scsi_Host *t ) ;
__inline static int __attribute__((__warn_unused_result__)) scsi_add_host(struct Scsi_Host *host ,
                                                                           struct device *dev ) __attribute__((__no_instrument_function__)) ;
__inline static int __attribute__((__warn_unused_result__)) scsi_add_host(struct Scsi_Host *host ,
                                                                           struct device *dev )
{ int tmp___7 ;
  {
  {
  tmp___7 = (int )scsi_add_host_with_dma(host, dev, dev);
  }
  return (tmp___7);
}
}
__inline static struct Scsi_Host *us_to_host(struct us_data *us ) __attribute__((__no_instrument_function__)) ;
__inline static struct Scsi_Host *us_to_host(struct us_data *us )
{ unsigned long ( (*__mptr))[0] ;
  void *__cil_tmp3 ;
  struct Scsi_Host *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long (*__cil_tmp7)[0] ;
  unsigned int __cil_tmp8 ;
  char *__cil_tmp9 ;
  char *__cil_tmp10 ;
  {
  __cil_tmp3 = (void *)us;
  __mptr = (unsigned long ( (*))[0])__cil_tmp3;
  {
  __cil_tmp4 = (struct Scsi_Host *)0;
  __cil_tmp5 = (unsigned long )__cil_tmp4;
  __cil_tmp6 = __cil_tmp5 + 2040;
  __cil_tmp7 = (unsigned long (*)[0])__cil_tmp6;
  __cil_tmp8 = (unsigned int )__cil_tmp7;
  __cil_tmp9 = (char *)__mptr;
  __cil_tmp10 = __cil_tmp9 - __cil_tmp8;
  return ((struct Scsi_Host *)__cil_tmp10);
  }
}
}
__inline static struct us_data *host_to_us(struct Scsi_Host *host ) __attribute__((__no_instrument_function__)) ;
__inline static struct us_data *host_to_us(struct Scsi_Host *host )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long *__cil_tmp6 ;
  {
  {
  __cil_tmp2 = 0 * 8UL;
  __cil_tmp3 = 2040 + __cil_tmp2;
  __cil_tmp4 = (unsigned long )host;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  __cil_tmp6 = (unsigned long *)__cil_tmp5;
  return ((struct us_data *)__cil_tmp6);
  }
}
}
void fill_inquiry_response(struct us_data *us , unsigned char *data , unsigned int data_len ) ;
void usb_stor_report_bus_reset(struct us_data *us ) ;
struct scsi_host_template usb_stor_host_template ;
int SM_FreeMem(void) ;
int usb_stor_Bulk_transport(struct scsi_cmnd *srb , struct us_data *us ) ;
int usb_stor_Bulk_max_lun(struct us_data *us ) ;
int usb_stor_Bulk_reset(struct us_data *us ) ;
void usb_stor_invoke_transport(struct scsi_cmnd *srb , struct us_data *us ) ;
void usb_stor_set_xfer_buf(struct us_data *us , unsigned char *buffer , unsigned int buflen ,
                           struct scsi_cmnd *srb , unsigned int dir ) ;
void ENE_stor_invoke_transport(struct scsi_cmnd *srb , struct us_data *us ) ;
int ENE_Read_BYTE(struct us_data *us , WORD index , void *buf ) ;
static char __mod_author22[13] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'a', (char )'u', (char const )'t', (char const )'h',
        (char )'o', (char )'r', (char const )'=', (char const )'D',
        (char )'o', (char )'m', (char const )'a', (char const )'o',
        (char )'\000'};
static char __mod_description23[50] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char )'d', (char )'e', (char const )'s', (char const )'c',
        (char )'r', (char )'i', (char const )'p', (char const )'t',
        (char )'i', (char )'o', (char const )'n', (char const )'=',
        (char )'E', (char )'N', (char const )'E', (char const )' ',
        (char )'U', (char )'S', (char const )'B', (char const )' ',
        (char )'M', (char )'a', (char const )'s', (char const )'s',
        (char )' ', (char )'S', (char const )'t', (char const )'o',
        (char )'r', (char )'a', (char const )'g', (char const )'e',
        (char )' ', (char )'d', (char const )'r', (char const )'i',
        (char )'v', (char )'e', (char const )'r', (char const )' ',
        (char )'f', (char )'o', (char const )'r', (char const )' ',
        (char )'L', (char )'i', (char const )'n', (char const )'u',
        (char )'x', (char )'\000'};
static char __mod_license24[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'l', (char )'i', (char const )'c', (char const )'e',
        (char )'n', (char )'s', (char const )'e', (char const )'=',
        (char )'G', (char )'P', (char const )'L', (char const )'\000'};
static unsigned int delay_use = 1U;
static struct usb_device_id eucr_usb_ids[3] = { {(__u16 )3, (__u16 )1423, (__u16 )25446, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )3314, (__u16 )25136, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {(__u16 )3, (__u16 )3314, (__u16 )25168, (unsigned short)0, (unsigned short)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL}};
extern struct usb_device_id __mod_usb_device_table __attribute__((__unused__,
__alias__("eucr_usb_ids"))) ;
static int eucr_suspend(struct usb_interface *iface , int message_event12 )
{ struct us_data *us ;
  void *tmp___7 ;
  struct mutex *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void (*__cil_tmp10)(struct us_data * , int ) ;
  struct mutex *__cil_tmp11 ;
  {
  {
  tmp___7 = usb_get_intfdata(iface);
  us = (struct us_data *)tmp___7;
  printk("<6>--- eucr_suspend ---\n");
  __cil_tmp5 = (struct mutex *)us;
  mutex_lock(__cil_tmp5);
  }
  {
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 584;
  if (*((void (**)(struct us_data * , int ))__cil_tmp7)) {
    {
    __cil_tmp8 = (unsigned long )us;
    __cil_tmp9 = __cil_tmp8 + 584;
    __cil_tmp10 = *((void (**)(struct us_data * , int ))__cil_tmp9);
    (*__cil_tmp10)(us, 0);
    }
  } else {
  }
  }
  {
  __cil_tmp11 = (struct mutex *)us;
  mutex_unlock(__cil_tmp11);
  }
  return (0);
}
}
static int eucr_resume(struct usb_interface *iface )
{ BYTE tmp___7 ;
  struct us_data *us ;
  void *tmp___8 ;
  BYTE *__cil_tmp5 ;
  struct mutex *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void (*__cil_tmp11)(struct us_data * , int ) ;
  struct mutex *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  PSM_STATUS __cil_tmp17 ;
  {
  {
  __cil_tmp5 = & tmp___7;
  *__cil_tmp5 = (BYTE )0;
  tmp___8 = usb_get_intfdata(iface);
  us = (struct us_data *)tmp___8;
  printk("<6>--- eucr_resume---\n");
  __cil_tmp6 = (struct mutex *)us;
  mutex_lock(__cil_tmp6);
  }
  {
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 584;
  if (*((void (**)(struct us_data * , int ))__cil_tmp8)) {
    {
    __cil_tmp9 = (unsigned long )us;
    __cil_tmp10 = __cil_tmp9 + 584;
    __cil_tmp11 = *((void (**)(struct us_data * , int ))__cil_tmp10);
    (*__cil_tmp11)(us, 1);
    }
  } else {
  }
  }
  {
  __cil_tmp12 = (struct mutex *)us;
  mutex_unlock(__cil_tmp12);
  __cil_tmp13 = (unsigned long )us;
  __cil_tmp14 = __cil_tmp13 + 652;
  *((BOOLEAN *)__cil_tmp14) = (BOOLEAN )1;
  __cil_tmp15 = (unsigned long )us;
  __cil_tmp16 = __cil_tmp15 + 594;
  __cil_tmp17 = (PSM_STATUS )(& tmp___7);
  *((SM_STATUS *)__cil_tmp16) = *__cil_tmp17;
  }
  return (0);
}
}
static int eucr_reset_resume(struct usb_interface *iface )
{ BYTE tmp___7 ;
  struct us_data *us ;
  void *tmp___8 ;
  BYTE *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  PSM_STATUS __cil_tmp10 ;
  {
  {
  __cil_tmp5 = & tmp___7;
  *__cil_tmp5 = (BYTE )0;
  tmp___8 = usb_get_intfdata(iface);
  us = (struct us_data *)tmp___8;
  printk("<6>--- eucr_reset_resume---\n");
  usb_stor_report_bus_reset(us);
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 652;
  *((BOOLEAN *)__cil_tmp7) = (BOOLEAN )1;
  __cil_tmp8 = (unsigned long )us;
  __cil_tmp9 = __cil_tmp8 + 594;
  __cil_tmp10 = (PSM_STATUS )(& tmp___7);
  *((SM_STATUS *)__cil_tmp9) = *__cil_tmp10;
  }
  return (0);
}
}
static int eucr_pre_reset(struct usb_interface *iface )
{ struct us_data *us ;
  void *tmp___7 ;
  struct mutex *__cil_tmp4 ;
  {
  {
  tmp___7 = usb_get_intfdata(iface);
  us = (struct us_data *)tmp___7;
  printk("<6>usb --- eucr_pre_reset\n");
  __cil_tmp4 = (struct mutex *)us;
  mutex_lock(__cil_tmp4);
  }
  return (0);
}
}
static int eucr_post_reset(struct usb_interface *iface )
{ struct us_data *us ;
  void *tmp___7 ;
  struct mutex *__cil_tmp4 ;
  {
  {
  tmp___7 = usb_get_intfdata(iface);
  us = (struct us_data *)tmp___7;
  printk("<6>usb --- eucr_post_reset\n");
  usb_stor_report_bus_reset(us);
  __cil_tmp4 = (struct mutex *)us;
  mutex_unlock(__cil_tmp4);
  }
  return (0);
}
}
void fill_inquiry_response(struct us_data *us , unsigned char *data , unsigned int data_len )
{ u16 bcdDevice ;
  size_t __len ;
  unsigned long tmp___8 ;
  unsigned long tmp___9 ;
  unsigned long tmp___10 ;
  void *__ret ;
  size_t __len___0 ;
  unsigned long tmp___16 ;
  unsigned long tmp___17 ;
  unsigned long tmp___18 ;
  void *__ret___0 ;
  unsigned char *__cil_tmp25 ;
  unsigned char __cil_tmp26 ;
  int __cil_tmp27 ;
  unsigned char *__cil_tmp28 ;
  void *__cil_tmp29 ;
  size_t __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  struct usb_device *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  struct us_unusual_dev *__cil_tmp39 ;
  char *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  struct us_unusual_dev *__cil_tmp43 ;
  char *__cil_tmp44 ;
  unsigned char *__cil_tmp45 ;
  void *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  struct us_unusual_dev *__cil_tmp49 ;
  char *__cil_tmp50 ;
  void *__cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  struct us_unusual_dev *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  char *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  struct us_unusual_dev *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  char *__cil_tmp63 ;
  unsigned char *__cil_tmp64 ;
  void *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct us_unusual_dev *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  char *__cil_tmp71 ;
  void *__cil_tmp72 ;
  unsigned char *__cil_tmp73 ;
  int __cil_tmp74 ;
  int __cil_tmp75 ;
  int __cil_tmp76 ;
  int __cil_tmp77 ;
  unsigned char *__cil_tmp78 ;
  int __cil_tmp79 ;
  int __cil_tmp80 ;
  int __cil_tmp81 ;
  int __cil_tmp82 ;
  unsigned char *__cil_tmp83 ;
  int __cil_tmp84 ;
  int __cil_tmp85 ;
  int __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned char *__cil_tmp88 ;
  int __cil_tmp89 ;
  int __cil_tmp90 ;
  int __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  struct scsi_cmnd *__cil_tmp94 ;
  {
  {
  printk("<6>usb --- fill_inquiry_response\n");
  }
  if (data_len < 36U) {
    return;
  } else {
  }
  {
  __cil_tmp25 = data + 0;
  __cil_tmp26 = *__cil_tmp25;
  __cil_tmp27 = (int )__cil_tmp26;
  if (__cil_tmp27 & 32) {
    {
    __cil_tmp28 = data + 8;
    __cil_tmp29 = (void *)__cil_tmp28;
    __cil_tmp30 = (size_t )28;
    memset(__cil_tmp29, 0, __cil_tmp30);
    }
  } else {
    {
    __cil_tmp31 = 904 + 12;
    __cil_tmp32 = (unsigned long )us;
    __cil_tmp33 = __cil_tmp32 + 72;
    __cil_tmp34 = *((struct usb_device **)__cil_tmp33);
    __cil_tmp35 = (unsigned long )__cil_tmp34;
    __cil_tmp36 = __cil_tmp35 + __cil_tmp31;
    bcdDevice = *((__le16 *)__cil_tmp36);
    __cil_tmp37 = (unsigned long )us;
    __cil_tmp38 = __cil_tmp37 + 88;
    __cil_tmp39 = *((struct us_unusual_dev **)__cil_tmp38);
    __cil_tmp40 = *((char **)__cil_tmp39);
    tmp___10 = strlen(__cil_tmp40);
    }
    if (tmp___10 > 8UL) {
      tmp___9 = 8UL;
    } else {
      {
      __cil_tmp41 = (unsigned long )us;
      __cil_tmp42 = __cil_tmp41 + 88;
      __cil_tmp43 = *((struct us_unusual_dev **)__cil_tmp42);
      __cil_tmp44 = *((char **)__cil_tmp43);
      tmp___8 = strlen(__cil_tmp44);
      tmp___9 = tmp___8;
      }
    }
    {
    __len = tmp___9;
    __cil_tmp45 = data + 8;
    __cil_tmp46 = (void *)__cil_tmp45;
    __cil_tmp47 = (unsigned long )us;
    __cil_tmp48 = __cil_tmp47 + 88;
    __cil_tmp49 = *((struct us_unusual_dev **)__cil_tmp48);
    __cil_tmp50 = *((char **)__cil_tmp49);
    __cil_tmp51 = (void *)__cil_tmp50;
    __ret = memcpy(__cil_tmp46, __cil_tmp51, __len);
    __cil_tmp52 = (unsigned long )us;
    __cil_tmp53 = __cil_tmp52 + 88;
    __cil_tmp54 = *((struct us_unusual_dev **)__cil_tmp53);
    __cil_tmp55 = (unsigned long )__cil_tmp54;
    __cil_tmp56 = __cil_tmp55 + 8;
    __cil_tmp57 = *((char **)__cil_tmp56);
    tmp___18 = strlen(__cil_tmp57);
    }
    if (tmp___18 > 16UL) {
      tmp___17 = 16UL;
    } else {
      {
      __cil_tmp58 = (unsigned long )us;
      __cil_tmp59 = __cil_tmp58 + 88;
      __cil_tmp60 = *((struct us_unusual_dev **)__cil_tmp59);
      __cil_tmp61 = (unsigned long )__cil_tmp60;
      __cil_tmp62 = __cil_tmp61 + 8;
      __cil_tmp63 = *((char **)__cil_tmp62);
      tmp___16 = strlen(__cil_tmp63);
      tmp___17 = tmp___16;
      }
    }
    {
    __len___0 = tmp___17;
    __cil_tmp64 = data + 16;
    __cil_tmp65 = (void *)__cil_tmp64;
    __cil_tmp66 = (unsigned long )us;
    __cil_tmp67 = __cil_tmp66 + 88;
    __cil_tmp68 = *((struct us_unusual_dev **)__cil_tmp67);
    __cil_tmp69 = (unsigned long )__cil_tmp68;
    __cil_tmp70 = __cil_tmp69 + 8;
    __cil_tmp71 = *((char **)__cil_tmp70);
    __cil_tmp72 = (void *)__cil_tmp71;
    __ret___0 = memcpy(__cil_tmp65, __cil_tmp72, __len___0);
    __cil_tmp73 = data + 32;
    __cil_tmp74 = (int )bcdDevice;
    __cil_tmp75 = __cil_tmp74 >> 12;
    __cil_tmp76 = __cil_tmp75 & 15;
    __cil_tmp77 = 48 + __cil_tmp76;
    *__cil_tmp73 = (unsigned char )__cil_tmp77;
    __cil_tmp78 = data + 33;
    __cil_tmp79 = (int )bcdDevice;
    __cil_tmp80 = __cil_tmp79 >> 8;
    __cil_tmp81 = __cil_tmp80 & 15;
    __cil_tmp82 = 48 + __cil_tmp81;
    *__cil_tmp78 = (unsigned char )__cil_tmp82;
    __cil_tmp83 = data + 34;
    __cil_tmp84 = (int )bcdDevice;
    __cil_tmp85 = __cil_tmp84 >> 4;
    __cil_tmp86 = __cil_tmp85 & 15;
    __cil_tmp87 = 48 + __cil_tmp86;
    *__cil_tmp83 = (unsigned char )__cil_tmp87;
    __cil_tmp88 = data + 35;
    __cil_tmp89 = (int )bcdDevice;
    __cil_tmp90 = __cil_tmp89 & 15;
    __cil_tmp91 = 48 + __cil_tmp90;
    *__cil_tmp88 = (unsigned char )__cil_tmp91;
    }
  }
  }
  {
  __cil_tmp92 = (unsigned long )us;
  __cil_tmp93 = __cil_tmp92 + 192;
  __cil_tmp94 = *((struct scsi_cmnd **)__cil_tmp93);
  usb_stor_set_xfer_buf(us, data, data_len, __cil_tmp94, 0U);
  }
  return;
}
}
static int usb_stor_control_thread(void *__us )
{ struct us_data *us ;
  struct Scsi_Host *host ;
  struct Scsi_Host *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___11 ;
  unsigned char data_ptr[36] ;
  int tmp___13 ;
  long volatile __ret ;
  struct task_struct *tmp___16 ;
  struct task_struct *tmp___17 ;
  struct task_struct *tmp___18 ;
  struct task_struct *tmp___19 ;
  struct task_struct *tmp___20 ;
  int tmp___21 ;
  struct task_struct *tmp___22 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct completion *__cil_tmp24 ;
  struct mutex *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long *__cil_tmp28 ;
  unsigned long volatile *__cil_tmp29 ;
  struct mutex *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  spinlock_t *__cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct scsi_cmnd *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  spinlock_t *__cil_tmp42 ;
  struct mutex *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long *__cil_tmp46 ;
  unsigned long volatile *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  struct scsi_cmnd *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  spinlock_t *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  struct scsi_cmnd *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  enum dma_data_direction __cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  struct scsi_cmnd *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  struct scsi_cmnd *__cil_tmp70 ;
  struct scsi_device *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  struct scsi_cmnd *__cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  u8 __cil_tmp85 ;
  unsigned int __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  struct scsi_cmnd *__cil_tmp89 ;
  struct scsi_device *__cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned int __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  struct scsi_cmnd *__cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  struct scsi_cmnd *__cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned char *__cil_tmp104 ;
  unsigned char *__cil_tmp105 ;
  unsigned char __cil_tmp106 ;
  int __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned char *__cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  struct scsi_cmnd *__cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  void (*__cil_tmp137)(struct scsi_cmnd * , struct us_data * ) ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  struct scsi_cmnd *__cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  void (*__cil_tmp143)(struct scsi_cmnd * , struct us_data * ) ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  struct scsi_cmnd *__cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  spinlock_t *__cil_tmp149 ;
  int __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  struct scsi_cmnd *__cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  int __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  struct scsi_cmnd *__cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  void (*__cil_tmp162)(struct scsi_cmnd * ) ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  struct scsi_cmnd *__cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long *__cil_tmp168 ;
  unsigned long volatile *__cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  struct completion *__cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long *__cil_tmp175 ;
  unsigned long volatile *__cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long *__cil_tmp179 ;
  unsigned long volatile *__cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  void *__cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  spinlock_t *__cil_tmp186 ;
  struct mutex *__cil_tmp187 ;
  {
  {
  us = (struct us_data *)__us;
  tmp___7 = us_to_host(us);
  host = tmp___7;
  printk("<6>usb --- usb_stor_control_thread\n");
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp22 = (unsigned long )us;
    __cil_tmp23 = __cil_tmp22 + 384;
    __cil_tmp24 = (struct completion *)__cil_tmp23;
    tmp___8 = wait_for_completion_interruptible(__cil_tmp24);
    }
    if (tmp___8) {
      goto while_break;
    } else {
    }
    {
    __cil_tmp25 = (struct mutex *)us;
    mutex_lock(__cil_tmp25);
    __cil_tmp26 = (unsigned long )us;
    __cil_tmp27 = __cil_tmp26 + 104;
    __cil_tmp28 = (unsigned long *)__cil_tmp27;
    __cil_tmp29 = (unsigned long volatile *)__cil_tmp28;
    tmp___9 = ant_test_bit(3U, __cil_tmp29);
    }
    if (tmp___9) {
      {
      __cil_tmp30 = (struct mutex *)us;
      mutex_unlock(__cil_tmp30);
      }
      goto while_break;
    } else {
    }
    {
    __cil_tmp31 = (unsigned long )host;
    __cil_tmp32 = __cil_tmp31 + 120;
    __cil_tmp33 = *((spinlock_t **)__cil_tmp32);
    spin_lock_irq(__cil_tmp33);
    }
    {
    __cil_tmp34 = (void *)0;
    __cil_tmp35 = (unsigned long )__cil_tmp34;
    __cil_tmp36 = (unsigned long )us;
    __cil_tmp37 = __cil_tmp36 + 192;
    __cil_tmp38 = *((struct scsi_cmnd **)__cil_tmp37);
    __cil_tmp39 = (unsigned long )__cil_tmp38;
    if (__cil_tmp39 == __cil_tmp35) {
      {
      __cil_tmp40 = (unsigned long )host;
      __cil_tmp41 = __cil_tmp40 + 120;
      __cil_tmp42 = *((spinlock_t **)__cil_tmp41);
      spin_unlock_irq(__cil_tmp42);
      __cil_tmp43 = (struct mutex *)us;
      mutex_unlock(__cil_tmp43);
      }
      goto while_break;
    } else {
    }
    }
    {
    __cil_tmp44 = (unsigned long )us;
    __cil_tmp45 = __cil_tmp44 + 104;
    __cil_tmp46 = (unsigned long *)__cil_tmp45;
    __cil_tmp47 = (unsigned long volatile *)__cil_tmp46;
    tmp___11 = ant_test_bit(5U, __cil_tmp47);
    }
    if (tmp___11) {
      __cil_tmp48 = (unsigned long )us;
      __cil_tmp49 = __cil_tmp48 + 192;
      __cil_tmp50 = *((struct scsi_cmnd **)__cil_tmp49);
      __cil_tmp51 = (unsigned long )__cil_tmp50;
      __cil_tmp52 = __cil_tmp51 + 224;
      *((int *)__cil_tmp52) = 5 << 16;
      goto SkipForAbort;
    } else {
    }
    {
    __cil_tmp53 = (unsigned long )host;
    __cil_tmp54 = __cil_tmp53 + 120;
    __cil_tmp55 = *((spinlock_t **)__cil_tmp54);
    spin_unlock_irq(__cil_tmp55);
    }
    {
    __cil_tmp56 = (unsigned long )us;
    __cil_tmp57 = __cil_tmp56 + 192;
    __cil_tmp58 = *((struct scsi_cmnd **)__cil_tmp57);
    __cil_tmp59 = (unsigned long )__cil_tmp58;
    __cil_tmp60 = __cil_tmp59 + 76;
    __cil_tmp61 = *((enum dma_data_direction *)__cil_tmp60);
    __cil_tmp62 = (unsigned int )__cil_tmp61;
    if (__cil_tmp62 == 0U) {
      __cil_tmp63 = (unsigned long )us;
      __cil_tmp64 = __cil_tmp63 + 192;
      __cil_tmp65 = *((struct scsi_cmnd **)__cil_tmp64);
      __cil_tmp66 = (unsigned long )__cil_tmp65;
      __cil_tmp67 = __cil_tmp66 + 224;
      *((int *)__cil_tmp67) = 7 << 16;
    } else {
      {
      __cil_tmp68 = (unsigned long )us;
      __cil_tmp69 = __cil_tmp68 + 192;
      __cil_tmp70 = *((struct scsi_cmnd **)__cil_tmp69);
      __cil_tmp71 = *((struct scsi_device **)__cil_tmp70);
      __cil_tmp72 = (unsigned long )__cil_tmp71;
      __cil_tmp73 = __cil_tmp72 + 152;
      if (*((unsigned int *)__cil_tmp73)) {
        {
        __cil_tmp74 = (unsigned long )us;
        __cil_tmp75 = __cil_tmp74 + 96;
        __cil_tmp76 = *((unsigned long *)__cil_tmp75);
        __cil_tmp77 = __cil_tmp76 & 4UL;
        if (! __cil_tmp77) {
          __cil_tmp78 = (unsigned long )us;
          __cil_tmp79 = __cil_tmp78 + 192;
          __cil_tmp80 = *((struct scsi_cmnd **)__cil_tmp79);
          __cil_tmp81 = (unsigned long )__cil_tmp80;
          __cil_tmp82 = __cil_tmp81 + 224;
          *((int *)__cil_tmp82) = 4 << 16;
        } else {
          goto _L;
        }
        }
      } else {
        _L:
        {
        __cil_tmp83 = (unsigned long )us;
        __cil_tmp84 = __cil_tmp83 + 158;
        __cil_tmp85 = *((u8 *)__cil_tmp84);
        __cil_tmp86 = (unsigned int )__cil_tmp85;
        __cil_tmp87 = (unsigned long )us;
        __cil_tmp88 = __cil_tmp87 + 192;
        __cil_tmp89 = *((struct scsi_cmnd **)__cil_tmp88);
        __cil_tmp90 = *((struct scsi_device **)__cil_tmp89);
        __cil_tmp91 = (unsigned long )__cil_tmp90;
        __cil_tmp92 = __cil_tmp91 + 156;
        __cil_tmp93 = *((unsigned int *)__cil_tmp92);
        if (__cil_tmp93 > __cil_tmp86) {
          __cil_tmp94 = (unsigned long )us;
          __cil_tmp95 = __cil_tmp94 + 192;
          __cil_tmp96 = *((struct scsi_cmnd **)__cil_tmp95);
          __cil_tmp97 = (unsigned long )__cil_tmp96;
          __cil_tmp98 = __cil_tmp97 + 224;
          *((int *)__cil_tmp98) = 4 << 16;
        } else {
          {
          __cil_tmp99 = (unsigned long )us;
          __cil_tmp100 = __cil_tmp99 + 192;
          __cil_tmp101 = *((struct scsi_cmnd **)__cil_tmp100);
          __cil_tmp102 = (unsigned long )__cil_tmp101;
          __cil_tmp103 = __cil_tmp102 + 80;
          __cil_tmp104 = *((unsigned char **)__cil_tmp103);
          __cil_tmp105 = __cil_tmp104 + 0;
          __cil_tmp106 = *__cil_tmp105;
          __cil_tmp107 = (int )__cil_tmp106;
          if (__cil_tmp107 == 18) {
            {
            __cil_tmp108 = (unsigned long )us;
            __cil_tmp109 = __cil_tmp108 + 96;
            __cil_tmp110 = *((unsigned long *)__cil_tmp109);
            if (__cil_tmp110 & 8UL) {
              {
              __cil_tmp111 = 0 * 1UL;
              __cil_tmp112 = (unsigned long )(data_ptr) + __cil_tmp111;
              *((unsigned char *)__cil_tmp112) = (unsigned char)0;
              __cil_tmp113 = 1 * 1UL;
              __cil_tmp114 = (unsigned long )(data_ptr) + __cil_tmp113;
              *((unsigned char *)__cil_tmp114) = (unsigned char)128;
              __cil_tmp115 = 2 * 1UL;
              __cil_tmp116 = (unsigned long )(data_ptr) + __cil_tmp115;
              *((unsigned char *)__cil_tmp116) = (unsigned char)2;
              __cil_tmp117 = 3 * 1UL;
              __cil_tmp118 = (unsigned long )(data_ptr) + __cil_tmp117;
              *((unsigned char *)__cil_tmp118) = (unsigned char)2;
              __cil_tmp119 = 4 * 1UL;
              __cil_tmp120 = (unsigned long )(data_ptr) + __cil_tmp119;
              *((unsigned char *)__cil_tmp120) = (unsigned char)31;
              __cil_tmp121 = 5 * 1UL;
              __cil_tmp122 = (unsigned long )(data_ptr) + __cil_tmp121;
              *((unsigned char *)__cil_tmp122) = (unsigned char)0;
              __cil_tmp123 = 6 * 1UL;
              __cil_tmp124 = (unsigned long )(data_ptr) + __cil_tmp123;
              *((unsigned char *)__cil_tmp124) = (unsigned char)0;
              __cil_tmp125 = 7 * 1UL;
              __cil_tmp126 = (unsigned long )(data_ptr) + __cil_tmp125;
              *((unsigned char *)__cil_tmp126) = (unsigned char)0;
              __cil_tmp127 = 0 * 1UL;
              __cil_tmp128 = (unsigned long )(data_ptr) + __cil_tmp127;
              __cil_tmp129 = (unsigned char *)__cil_tmp128;
              fill_inquiry_response(us, __cil_tmp129, 36U);
              __cil_tmp130 = (unsigned long )us;
              __cil_tmp131 = __cil_tmp130 + 192;
              __cil_tmp132 = *((struct scsi_cmnd **)__cil_tmp131);
              __cil_tmp133 = (unsigned long )__cil_tmp132;
              __cil_tmp134 = __cil_tmp133 + 224;
              *((int *)__cil_tmp134) = 0;
              }
            } else {
              {
              __cil_tmp135 = (unsigned long )us;
              __cil_tmp136 = __cil_tmp135 + 184;
              __cil_tmp137 = *((void (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp136);
              __cil_tmp138 = (unsigned long )us;
              __cil_tmp139 = __cil_tmp138 + 192;
              __cil_tmp140 = *((struct scsi_cmnd **)__cil_tmp139);
              (*__cil_tmp137)(__cil_tmp140, us);
              }
            }
            }
          } else {
            {
            __cil_tmp141 = (unsigned long )us;
            __cil_tmp142 = __cil_tmp141 + 184;
            __cil_tmp143 = *((void (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp142);
            __cil_tmp144 = (unsigned long )us;
            __cil_tmp145 = __cil_tmp144 + 192;
            __cil_tmp146 = *((struct scsi_cmnd **)__cil_tmp145);
            (*__cil_tmp143)(__cil_tmp146, us);
            }
          }
          }
        }
        }
      }
      }
    }
    }
    {
    __cil_tmp147 = (unsigned long )host;
    __cil_tmp148 = __cil_tmp147 + 120;
    __cil_tmp149 = *((spinlock_t **)__cil_tmp148);
    spin_lock_irq(__cil_tmp149);
    }
    {
    __cil_tmp150 = 5 << 16;
    __cil_tmp151 = (unsigned long )us;
    __cil_tmp152 = __cil_tmp151 + 192;
    __cil_tmp153 = *((struct scsi_cmnd **)__cil_tmp152);
    __cil_tmp154 = (unsigned long )__cil_tmp153;
    __cil_tmp155 = __cil_tmp154 + 224;
    __cil_tmp156 = *((int *)__cil_tmp155);
    if (__cil_tmp156 != __cil_tmp150) {
      {
      __cil_tmp157 = (unsigned long )us;
      __cil_tmp158 = __cil_tmp157 + 192;
      __cil_tmp159 = *((struct scsi_cmnd **)__cil_tmp158);
      __cil_tmp160 = (unsigned long )__cil_tmp159;
      __cil_tmp161 = __cil_tmp160 + 144;
      __cil_tmp162 = *((void (**)(struct scsi_cmnd * ))__cil_tmp161);
      __cil_tmp163 = (unsigned long )us;
      __cil_tmp164 = __cil_tmp163 + 192;
      __cil_tmp165 = *((struct scsi_cmnd **)__cil_tmp164);
      (*__cil_tmp162)(__cil_tmp165);
      }
    } else {
      SkipForAbort:
      {
      printk("<6>scsi command aborted\n");
      }
    }
    }
    {
    __cil_tmp166 = (unsigned long )us;
    __cil_tmp167 = __cil_tmp166 + 104;
    __cil_tmp168 = (unsigned long *)__cil_tmp167;
    __cil_tmp169 = (unsigned long volatile *)__cil_tmp168;
    tmp___13 = ant_test_bit(5U, __cil_tmp169);
    }
    if (tmp___13) {
      {
      __cil_tmp170 = (unsigned long )us;
      __cil_tmp171 = __cil_tmp170 + 432;
      __cil_tmp172 = (struct completion *)__cil_tmp171;
      complete(__cil_tmp172);
      __cil_tmp173 = (unsigned long )us;
      __cil_tmp174 = __cil_tmp173 + 104;
      __cil_tmp175 = (unsigned long *)__cil_tmp174;
      __cil_tmp176 = (unsigned long volatile *)__cil_tmp175;
      clear_bit(2, __cil_tmp176);
      __cil_tmp177 = (unsigned long )us;
      __cil_tmp178 = __cil_tmp177 + 104;
      __cil_tmp179 = (unsigned long *)__cil_tmp178;
      __cil_tmp180 = (unsigned long volatile *)__cil_tmp179;
      clear_bit(5, __cil_tmp180);
      }
    } else {
    }
    {
    __cil_tmp181 = (unsigned long )us;
    __cil_tmp182 = __cil_tmp181 + 192;
    __cil_tmp183 = (void *)0;
    *((struct scsi_cmnd **)__cil_tmp182) = (struct scsi_cmnd *)__cil_tmp183;
    __cil_tmp184 = (unsigned long )host;
    __cil_tmp185 = __cil_tmp184 + 120;
    __cil_tmp186 = *((spinlock_t **)__cil_tmp185);
    spin_unlock_irq(__cil_tmp186);
    __cil_tmp187 = (struct mutex *)us;
    mutex_unlock(__cil_tmp187);
    }
  }
  while_break: ;
  }
  {
  while (1) {
    while_continue___0: ;
    {
    while (1) {
      while_continue___1: ;
      __ret = (long volatile )1;
      if ((int )8UL == 1) {
        goto case_1;
      } else
      if ((int )8UL == 2) {
        goto case_2;
      } else
      if ((int )8UL == 4) {
        goto case_4;
      } else
      if ((int )8UL == 8) {
        goto case_8;
      } else {
        {
        goto switch_default;
        if (0) {
          case_1:
          {
          tmp___17 = get_current();
          __asm__ volatile (""
                               "xchg"
                               "b %b0, %1\n": "+q" (__ret), "+m" (*((long volatile *)tmp___17)): : "memory",
                               "cc");
          }
          goto switch_break;
          case_2:
          {
          tmp___18 = get_current();
          __asm__ volatile (""
                               "xchg"
                               "w %w0, %1\n": "+r" (__ret), "+m" (*((long volatile *)tmp___18)): : "memory",
                               "cc");
          }
          goto switch_break;
          case_4:
          {
          tmp___19 = get_current();
          __asm__ volatile (""
                               "xchg"
                               "l %0, %1\n": "+r" (__ret), "+m" (*((long volatile *)tmp___19)): : "memory",
                               "cc");
          }
          goto switch_break;
          case_8:
          {
          tmp___20 = get_current();
          __asm__ volatile (""
                               "xchg"
                               "q %q0, %1\n": "+r" (__ret), "+m" (*((long volatile *)tmp___20)): : "memory",
                               "cc");
          }
          goto switch_break;
          switch_default:
          {
          __xchg_wrong_size();
          }
        } else {
          switch_break: ;
        }
        }
      }
      goto while_break___1;
    }
    while_break___1: ;
    }
    {
    tmp___21 = kthread_should_stop();
    }
    if (tmp___21) {
      goto while_break___0;
    } else {
    }
    {
    schedule();
    }
  }
  while_break___0: ;
  }
  {
  while (1) {
    while_continue___2: ;
    {
    tmp___22 = get_current();
    *((long volatile *)tmp___22) = (long volatile )0;
    }
    goto while_break___2;
  }
  while_break___2: ;
  }
  return (0);
}
}
static int associate_dev(struct us_data *us , struct usb_interface *intf )
{ void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  struct usb_host_interface *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  void *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct usb_device *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  dma_addr_t *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct usb_ctrlrequest *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct usb_device *__cil_tmp32 ;
  size_t __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  dma_addr_t *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned char *__cil_tmp41 ;
  size_t __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned char *__cil_tmp47 ;
  {
  {
  printk("<6>usb --- associate_dev\n");
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 72;
  *((struct usb_device **)__cil_tmp7) = interface_to_usbdev(intf);
  __cil_tmp8 = (unsigned long )us;
  __cil_tmp9 = __cil_tmp8 + 80;
  *((struct usb_interface **)__cil_tmp9) = intf;
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 159;
  __cil_tmp12 = 0 + 2;
  __cil_tmp13 = (unsigned long )intf;
  __cil_tmp14 = __cil_tmp13 + 8;
  __cil_tmp15 = *((struct usb_host_interface **)__cil_tmp14);
  __cil_tmp16 = (unsigned long )__cil_tmp15;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp12;
  *((u8 *)__cil_tmp11) = *((__u8 *)__cil_tmp17);
  __cil_tmp18 = (void *)us;
  usb_set_intfdata(intf, __cil_tmp18);
  __cil_tmp19 = (unsigned long )us;
  __cil_tmp20 = __cil_tmp19 + 72;
  __cil_tmp21 = *((struct usb_device **)__cil_tmp20);
  __cil_tmp22 = (unsigned long )us;
  __cil_tmp23 = __cil_tmp22 + 360;
  __cil_tmp24 = (dma_addr_t *)__cil_tmp23;
  tmp___7 = usb_alloc_coherent(__cil_tmp21, 8UL, 208U, __cil_tmp24);
  __cil_tmp25 = (unsigned long )us;
  __cil_tmp26 = __cil_tmp25 + 216;
  *((struct usb_ctrlrequest **)__cil_tmp26) = (struct usb_ctrlrequest *)tmp___7;
  }
  {
  __cil_tmp27 = (unsigned long )us;
  __cil_tmp28 = __cil_tmp27 + 216;
  __cil_tmp29 = *((struct usb_ctrlrequest **)__cil_tmp28);
  if (! __cil_tmp29) {
    {
    printk("<6>usb_ctrlrequest allocation failed\n");
    }
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp30 = (unsigned long )us;
  __cil_tmp31 = __cil_tmp30 + 72;
  __cil_tmp32 = *((struct usb_device **)__cil_tmp31);
  __cil_tmp33 = (size_t )64;
  __cil_tmp34 = (unsigned long )us;
  __cil_tmp35 = __cil_tmp34 + 368;
  __cil_tmp36 = (dma_addr_t *)__cil_tmp35;
  tmp___8 = usb_alloc_coherent(__cil_tmp32, __cil_tmp33, 208U, __cil_tmp36);
  __cil_tmp37 = (unsigned long )us;
  __cil_tmp38 = __cil_tmp37 + 344;
  *((unsigned char **)__cil_tmp38) = (unsigned char *)tmp___8;
  }
  {
  __cil_tmp39 = (unsigned long )us;
  __cil_tmp40 = __cil_tmp39 + 344;
  __cil_tmp41 = *((unsigned char **)__cil_tmp40);
  if (! __cil_tmp41) {
    {
    printk("<6>I/O buffer allocation failed\n");
    }
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp42 = (size_t )18;
  tmp___9 = kmalloc(__cil_tmp42, 208U);
  __cil_tmp43 = (unsigned long )us;
  __cil_tmp44 = __cil_tmp43 + 352;
  *((unsigned char **)__cil_tmp44) = (unsigned char *)tmp___9;
  }
  {
  __cil_tmp45 = (unsigned long )us;
  __cil_tmp46 = __cil_tmp45 + 352;
  __cil_tmp47 = *((unsigned char **)__cil_tmp46);
  if (! __cil_tmp47) {
    {
    printk("<6>Sense buffer allocation failed\n");
    }
    return (-12);
  } else {
  }
  }
  return (0);
}
}
static int get_device_info(struct us_data *us , struct usb_device_id *id )
{ struct usb_device *dev ;
  struct usb_interface_descriptor *idesc ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct usb_interface *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct usb_host_interface *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  kernel_ulong_t __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  enum usb_device_speed __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  {
  {
  __cil_tmp5 = (unsigned long )us;
  __cil_tmp6 = __cil_tmp5 + 72;
  dev = *((struct usb_device **)__cil_tmp6);
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 80;
  __cil_tmp9 = *((struct usb_interface **)__cil_tmp8);
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = __cil_tmp10 + 8;
  __cil_tmp12 = *((struct usb_host_interface **)__cil_tmp11);
  idesc = (struct usb_interface_descriptor *)__cil_tmp12;
  printk("<6>usb --- get_device_info\n");
  __cil_tmp13 = (unsigned long )us;
  __cil_tmp14 = __cil_tmp13 + 156;
  __cil_tmp15 = (unsigned long )idesc;
  __cil_tmp16 = __cil_tmp15 + 6;
  *((u8 *)__cil_tmp14) = *((__u8 *)__cil_tmp16);
  __cil_tmp17 = (unsigned long )us;
  __cil_tmp18 = __cil_tmp17 + 157;
  __cil_tmp19 = (unsigned long )idesc;
  __cil_tmp20 = __cil_tmp19 + 7;
  *((u8 *)__cil_tmp18) = *((__u8 *)__cil_tmp20);
  __cil_tmp21 = (unsigned long )us;
  __cil_tmp22 = __cil_tmp21 + 96;
  __cil_tmp23 = (unsigned long )id;
  __cil_tmp24 = __cil_tmp23 + 16;
  __cil_tmp25 = *((kernel_ulong_t *)__cil_tmp24);
  __cil_tmp26 = __cil_tmp25 & 16777215UL;
  *((unsigned long *)__cil_tmp22) = (unsigned long )__cil_tmp26;
  __cil_tmp27 = (unsigned long )us;
  __cil_tmp28 = __cil_tmp27 + 652;
  *((BOOLEAN *)__cil_tmp28) = (BOOLEAN )0;
  }
  {
  __cil_tmp29 = (unsigned long )us;
  __cil_tmp30 = __cil_tmp29 + 96;
  __cil_tmp31 = *((unsigned long *)__cil_tmp30);
  if (__cil_tmp31 & 2048UL) {
    {
    printk("<6>device ignored\n");
    }
    return (-19);
  } else {
  }
  }
  {
  __cil_tmp32 = (unsigned long )dev;
  __cil_tmp33 = __cil_tmp32 + 28;
  __cil_tmp34 = *((enum usb_device_speed *)__cil_tmp33);
  __cil_tmp35 = (unsigned int )__cil_tmp34;
  if (__cil_tmp35 != 3U) {
    __cil_tmp36 = (unsigned long )us;
    __cil_tmp37 = __cil_tmp36 + 96;
    __cil_tmp38 = (unsigned long )us;
    __cil_tmp39 = __cil_tmp38 + 96;
    __cil_tmp40 = *((unsigned long *)__cil_tmp39);
    *((unsigned long *)__cil_tmp37) = __cil_tmp40 & 0xfffffffffffffeffUL;
  } else {
  }
  }
  return (0);
}
}
static int get_transport(struct us_data *us )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  u8 __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  {
  {
  printk("<6>usb --- get_transport\n");
  }
  {
  __cil_tmp2 = (unsigned long )us;
  __cil_tmp3 = __cil_tmp2 + 157;
  __cil_tmp4 = *((u8 *)__cil_tmp3);
  if ((int )__cil_tmp4 == 80) {
    goto case_80;
  } else {
    {
    goto switch_default;
    if (0) {
      case_80:
      __cil_tmp5 = (unsigned long )us;
      __cil_tmp6 = __cil_tmp5 + 136;
      *((char **)__cil_tmp6) = (char *)"Bulk";
      __cil_tmp7 = (unsigned long )us;
      __cil_tmp8 = __cil_tmp7 + 168;
      *((int (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp8) = & usb_stor_Bulk_transport;
      __cil_tmp9 = (unsigned long )us;
      __cil_tmp10 = __cil_tmp9 + 176;
      *((int (**)(struct us_data * ))__cil_tmp10) = & usb_stor_Bulk_reset;
      goto switch_break;
      switch_default:
      return (-5);
    } else {
      switch_break: ;
    }
    }
  }
  }
  {
  __cil_tmp11 = (unsigned long )us;
  __cil_tmp12 = __cil_tmp11 + 96;
  __cil_tmp13 = *((unsigned long *)__cil_tmp12);
  if (__cil_tmp13 & 1UL) {
    __cil_tmp14 = (unsigned long )us;
    __cil_tmp15 = __cil_tmp14 + 158;
    *((u8 *)__cil_tmp15) = (u8 )0;
  } else {
  }
  }
  return (0);
}
}
static int get_protocol(struct us_data *us )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct usb_device *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  __le16 __cil_tmp8 ;
  int __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct usb_device *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  __le16 __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  u8 __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct usb_device *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  __le16 __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  struct usb_device *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  __le16 __cil_tmp37 ;
  int __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  {
  {
  printk("<6>usb --- get_protocol\n");
  __cil_tmp2 = 904 + 8;
  __cil_tmp3 = (unsigned long )us;
  __cil_tmp4 = __cil_tmp3 + 72;
  __cil_tmp5 = *((struct usb_device **)__cil_tmp4);
  __cil_tmp6 = (unsigned long )__cil_tmp5;
  __cil_tmp7 = __cil_tmp6 + __cil_tmp2;
  __cil_tmp8 = *((__le16 *)__cil_tmp7);
  __cil_tmp9 = (int )__cil_tmp8;
  printk("<6>us->pusb_dev->descriptor.idVendor = %x\n", __cil_tmp9);
  __cil_tmp10 = 904 + 10;
  __cil_tmp11 = (unsigned long )us;
  __cil_tmp12 = __cil_tmp11 + 72;
  __cil_tmp13 = *((struct usb_device **)__cil_tmp12);
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 + __cil_tmp10;
  __cil_tmp16 = *((__le16 *)__cil_tmp15);
  __cil_tmp17 = (int )__cil_tmp16;
  printk("<6>us->pusb_dev->descriptor.idProduct = %x\n", __cil_tmp17);
  }
  {
  __cil_tmp18 = (unsigned long )us;
  __cil_tmp19 = __cil_tmp18 + 156;
  __cil_tmp20 = *((u8 *)__cil_tmp19);
  if ((int )__cil_tmp20 == 6) {
    goto case_6;
  } else {
    {
    goto switch_default;
    if (0) {
      case_6:
      __cil_tmp21 = (unsigned long )us;
      __cil_tmp22 = __cil_tmp21 + 144;
      *((char **)__cil_tmp22) = (char *)"Transparent SCSI";
      {
      __cil_tmp23 = 904 + 8;
      __cil_tmp24 = (unsigned long )us;
      __cil_tmp25 = __cil_tmp24 + 72;
      __cil_tmp26 = *((struct usb_device **)__cil_tmp25);
      __cil_tmp27 = (unsigned long )__cil_tmp26;
      __cil_tmp28 = __cil_tmp27 + __cil_tmp23;
      __cil_tmp29 = *((__le16 *)__cil_tmp28);
      __cil_tmp30 = (int )__cil_tmp29;
      if (__cil_tmp30 == 3314) {
        {
        __cil_tmp31 = 904 + 10;
        __cil_tmp32 = (unsigned long )us;
        __cil_tmp33 = __cil_tmp32 + 72;
        __cil_tmp34 = *((struct usb_device **)__cil_tmp33);
        __cil_tmp35 = (unsigned long )__cil_tmp34;
        __cil_tmp36 = __cil_tmp35 + __cil_tmp31;
        __cil_tmp37 = *((__le16 *)__cil_tmp36);
        __cil_tmp38 = (int )__cil_tmp37;
        if (__cil_tmp38 == 25168) {
          __cil_tmp39 = (unsigned long )us;
          __cil_tmp40 = __cil_tmp39 + 184;
          *((void (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp40) = & ENE_stor_invoke_transport;
        } else {
          __cil_tmp41 = (unsigned long )us;
          __cil_tmp42 = __cil_tmp41 + 184;
          *((void (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp42) = & usb_stor_invoke_transport;
        }
        }
      } else {
        __cil_tmp43 = (unsigned long )us;
        __cil_tmp44 = __cil_tmp43 + 184;
        *((void (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp44) = & usb_stor_invoke_transport;
      }
      }
      goto switch_break;
      switch_default:
      return (-5);
    } else {
      switch_break: ;
    }
    }
  }
  }
  return (0);
}
}
static int get_pipes(struct us_data *us )
{ struct usb_host_interface *altsetting ;
  int i ;
  struct usb_endpoint_descriptor *ep ;
  struct usb_endpoint_descriptor *ep_in ;
  struct usb_endpoint_descriptor *ep_out ;
  struct usb_endpoint_descriptor *ep_int ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned int tmp___10 ;
  unsigned int tmp___11 ;
  unsigned int tmp___12 ;
  unsigned int tmp___13 ;
  unsigned int tmp___14 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct usb_interface *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  void *__cil_tmp21 ;
  void *__cil_tmp22 ;
  void *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  __u8 __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct usb_host_endpoint *__cil_tmp31 ;
  struct usb_host_endpoint *__cil_tmp32 ;
  struct usb_endpoint_descriptor *__cil_tmp33 ;
  struct usb_endpoint_descriptor *__cil_tmp34 ;
  struct usb_endpoint_descriptor *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  u8 __cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  struct usb_device *__cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  struct usb_device *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned int __cil_tmp53 ;
  unsigned int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  struct usb_device *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  __u8 __cil_tmp60 ;
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  int __cil_tmp66 ;
  unsigned int __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  struct usb_device *__cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  __u8 __cil_tmp73 ;
  int __cil_tmp74 ;
  int __cil_tmp75 ;
  unsigned int __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  int __cil_tmp79 ;
  unsigned int __cil_tmp80 ;
  unsigned int __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  struct usb_device *__cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  __u8 __cil_tmp87 ;
  int __cil_tmp88 ;
  int __cil_tmp89 ;
  unsigned int __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  int __cil_tmp93 ;
  unsigned int __cil_tmp94 ;
  unsigned int __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  {
  {
  __cil_tmp16 = (unsigned long )us;
  __cil_tmp17 = __cil_tmp16 + 80;
  __cil_tmp18 = *((struct usb_interface **)__cil_tmp17);
  __cil_tmp19 = (unsigned long )__cil_tmp18;
  __cil_tmp20 = __cil_tmp19 + 8;
  altsetting = *((struct usb_host_interface **)__cil_tmp20);
  __cil_tmp21 = (void *)0;
  ep_in = (struct usb_endpoint_descriptor *)__cil_tmp21;
  __cil_tmp22 = (void *)0;
  ep_out = (struct usb_endpoint_descriptor *)__cil_tmp22;
  __cil_tmp23 = (void *)0;
  ep_int = (struct usb_endpoint_descriptor *)__cil_tmp23;
  printk("<6>usb --- get_pipes\n");
  i = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp24 = 0 + 4;
    __cil_tmp25 = (unsigned long )altsetting;
    __cil_tmp26 = __cil_tmp25 + __cil_tmp24;
    __cil_tmp27 = *((__u8 *)__cil_tmp26);
    __cil_tmp28 = (int )__cil_tmp27;
    if (i < __cil_tmp28) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp29 = (unsigned long )altsetting;
    __cil_tmp30 = __cil_tmp29 + 16;
    __cil_tmp31 = *((struct usb_host_endpoint **)__cil_tmp30);
    __cil_tmp32 = __cil_tmp31 + i;
    ep = (struct usb_endpoint_descriptor *)__cil_tmp32;
    __cil_tmp33 = (struct usb_endpoint_descriptor *)ep;
    tmp___9 = usb_endpoint_xfer_bulk(__cil_tmp33);
    }
    if (tmp___9) {
      {
      __cil_tmp34 = (struct usb_endpoint_descriptor *)ep;
      tmp___7 = usb_endpoint_dir_in(__cil_tmp34);
      }
      if (tmp___7) {
        if (! ep_in) {
          ep_in = ep;
        } else {
        }
      } else
      if (! ep_out) {
        ep_out = ep;
      } else {
      }
    } else {
      {
      __cil_tmp35 = (struct usb_endpoint_descriptor *)ep;
      tmp___8 = usb_endpoint_is_int_in(__cil_tmp35);
      }
      if (tmp___8) {
        if (! ep_int) {
          ep_int = ep;
        } else {
        }
      } else {
      }
    }
    i = i + 1;
  }
  while_break: ;
  }
  if (! ep_in) {
    {
    printk("<6>Endpoint sanity check failed! Rejecting dev.\n");
    }
    return (-5);
  } else
  if (! ep_out) {
    {
    printk("<6>Endpoint sanity check failed! Rejecting dev.\n");
    }
    return (-5);
  } else {
    {
    __cil_tmp36 = (unsigned long )us;
    __cil_tmp37 = __cil_tmp36 + 157;
    __cil_tmp38 = *((u8 *)__cil_tmp37);
    __cil_tmp39 = (int )__cil_tmp38;
    if (__cil_tmp39 == 0) {
      if (! ep_int) {
        {
        printk("<6>Endpoint sanity check failed! Rejecting dev.\n");
        }
        return (-5);
      } else {
      }
    } else {
    }
    }
  }
  {
  __cil_tmp40 = (unsigned long )us;
  __cil_tmp41 = __cil_tmp40 + 72;
  __cil_tmp42 = *((struct usb_device **)__cil_tmp41);
  tmp___10 = __create_pipe(__cil_tmp42, 0U);
  __cil_tmp43 = (unsigned long )us;
  __cil_tmp44 = __cil_tmp43 + 120;
  __cil_tmp45 = 2 << 30;
  __cil_tmp46 = (unsigned int )__cil_tmp45;
  *((unsigned int *)__cil_tmp44) = __cil_tmp46 | tmp___10;
  __cil_tmp47 = (unsigned long )us;
  __cil_tmp48 = __cil_tmp47 + 72;
  __cil_tmp49 = *((struct usb_device **)__cil_tmp48);
  tmp___11 = __create_pipe(__cil_tmp49, 0U);
  __cil_tmp50 = (unsigned long )us;
  __cil_tmp51 = __cil_tmp50 + 124;
  __cil_tmp52 = 2 << 30;
  __cil_tmp53 = (unsigned int )__cil_tmp52;
  __cil_tmp54 = __cil_tmp53 | tmp___11;
  *((unsigned int *)__cil_tmp51) = __cil_tmp54 | 128U;
  __cil_tmp55 = (unsigned long )us;
  __cil_tmp56 = __cil_tmp55 + 72;
  __cil_tmp57 = *((struct usb_device **)__cil_tmp56);
  __cil_tmp58 = (unsigned long )ep_out;
  __cil_tmp59 = __cil_tmp58 + 2;
  __cil_tmp60 = *((__u8 *)__cil_tmp59);
  __cil_tmp61 = (int )__cil_tmp60;
  __cil_tmp62 = __cil_tmp61 & 15;
  __cil_tmp63 = (unsigned int )__cil_tmp62;
  tmp___12 = __create_pipe(__cil_tmp57, __cil_tmp63);
  __cil_tmp64 = (unsigned long )us;
  __cil_tmp65 = __cil_tmp64 + 112;
  __cil_tmp66 = 3 << 30;
  __cil_tmp67 = (unsigned int )__cil_tmp66;
  *((unsigned int *)__cil_tmp65) = __cil_tmp67 | tmp___12;
  __cil_tmp68 = (unsigned long )us;
  __cil_tmp69 = __cil_tmp68 + 72;
  __cil_tmp70 = *((struct usb_device **)__cil_tmp69);
  __cil_tmp71 = (unsigned long )ep_in;
  __cil_tmp72 = __cil_tmp71 + 2;
  __cil_tmp73 = *((__u8 *)__cil_tmp72);
  __cil_tmp74 = (int )__cil_tmp73;
  __cil_tmp75 = __cil_tmp74 & 15;
  __cil_tmp76 = (unsigned int )__cil_tmp75;
  tmp___13 = __create_pipe(__cil_tmp70, __cil_tmp76);
  __cil_tmp77 = (unsigned long )us;
  __cil_tmp78 = __cil_tmp77 + 116;
  __cil_tmp79 = 3 << 30;
  __cil_tmp80 = (unsigned int )__cil_tmp79;
  __cil_tmp81 = __cil_tmp80 | tmp___13;
  *((unsigned int *)__cil_tmp78) = __cil_tmp81 | 128U;
  }
  if (ep_int) {
    {
    __cil_tmp82 = (unsigned long )us;
    __cil_tmp83 = __cil_tmp82 + 72;
    __cil_tmp84 = *((struct usb_device **)__cil_tmp83);
    __cil_tmp85 = (unsigned long )ep_int;
    __cil_tmp86 = __cil_tmp85 + 2;
    __cil_tmp87 = *((__u8 *)__cil_tmp86);
    __cil_tmp88 = (int )__cil_tmp87;
    __cil_tmp89 = __cil_tmp88 & 15;
    __cil_tmp90 = (unsigned int )__cil_tmp89;
    tmp___14 = __create_pipe(__cil_tmp84, __cil_tmp90);
    __cil_tmp91 = (unsigned long )us;
    __cil_tmp92 = __cil_tmp91 + 128;
    __cil_tmp93 = 1 << 30;
    __cil_tmp94 = (unsigned int )__cil_tmp93;
    __cil_tmp95 = __cil_tmp94 | tmp___14;
    *((unsigned int *)__cil_tmp92) = __cil_tmp95 | 128U;
    __cil_tmp96 = (unsigned long )us;
    __cil_tmp97 = __cil_tmp96 + 160;
    __cil_tmp98 = (unsigned long )ep_int;
    __cil_tmp99 = __cil_tmp98 + 6;
    *((u8 *)__cil_tmp97) = *((__u8 *)__cil_tmp99);
    }
  } else {
  }
  return (0);
}
}
static int usb_stor_acquire_resources(struct us_data *us )
{ struct task_struct *th ;
  struct task_struct *__k ;
  struct task_struct *tmp___7 ;
  long tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct urb *__cil_tmp12 ;
  void *__cil_tmp13 ;
  void *__cil_tmp14 ;
  void *__cil_tmp15 ;
  void *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  {
  {
  printk("<6>usb --- usb_stor_acquire_resources\n");
  __cil_tmp8 = (unsigned long )us;
  __cil_tmp9 = __cil_tmp8 + 208;
  *((struct urb **)__cil_tmp9) = usb_alloc_urb(0, 208U);
  }
  {
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 208;
  __cil_tmp12 = *((struct urb **)__cil_tmp11);
  if (! __cil_tmp12) {
    {
    printk("<6>URB allocation failed\n");
    }
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp13 = (void *)us;
  tmp___7 = kthread_create_on_node(& usb_stor_control_thread, __cil_tmp13, -1, "eucr-storage");
  __k = tmp___7;
  __cil_tmp14 = (void *)__k;
  tmp___8 = (long )IS_ERR(__cil_tmp14);
  }
  if (tmp___8) {
  } else {
    {
    wake_up_process(__k);
    }
  }
  {
  th = __k;
  __cil_tmp15 = (void *)th;
  tmp___10 = (long )IS_ERR(__cil_tmp15);
  }
  if (tmp___10) {
    {
    printk("<6>Unable to start control thread\n");
    __cil_tmp16 = (void *)th;
    tmp___9 = (long )PTR_ERR(__cil_tmp16);
    }
    return ((int )tmp___9);
  } else {
  }
  __cil_tmp17 = (unsigned long )us;
  __cil_tmp18 = __cil_tmp17 + 376;
  *((struct task_struct **)__cil_tmp18) = th;
  return (0);
}
}
static void usb_stor_release_resources(struct us_data *us )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct completion *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct task_struct *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void (*__cil_tmp14)(void * ) ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  void *__cil_tmp20 ;
  void *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct urb *__cil_tmp24 ;
  {
  {
  printk("<6>usb --- usb_stor_release_resources\n");
  SM_FreeMem();
  __cil_tmp2 = (unsigned long )us;
  __cil_tmp3 = __cil_tmp2 + 384;
  __cil_tmp4 = (struct completion *)__cil_tmp3;
  complete(__cil_tmp4);
  }
  {
  __cil_tmp5 = (unsigned long )us;
  __cil_tmp6 = __cil_tmp5 + 376;
  if (*((struct task_struct **)__cil_tmp6)) {
    {
    __cil_tmp7 = (unsigned long )us;
    __cil_tmp8 = __cil_tmp7 + 376;
    __cil_tmp9 = *((struct task_struct **)__cil_tmp8);
    kthread_stop(__cil_tmp9);
    }
  } else {
  }
  }
  {
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 576;
  if (*((void (**)(void * ))__cil_tmp11)) {
    {
    printk("<6>-- calling extra_destructor()\n");
    __cil_tmp12 = (unsigned long )us;
    __cil_tmp13 = __cil_tmp12 + 576;
    __cil_tmp14 = *((void (**)(void * ))__cil_tmp13);
    __cil_tmp15 = (unsigned long )us;
    __cil_tmp16 = __cil_tmp15 + 568;
    __cil_tmp17 = *((void **)__cil_tmp16);
    (*__cil_tmp14)(__cil_tmp17);
    }
  } else {
  }
  }
  {
  __cil_tmp18 = (unsigned long )us;
  __cil_tmp19 = __cil_tmp18 + 568;
  __cil_tmp20 = *((void **)__cil_tmp19);
  __cil_tmp21 = (void *)__cil_tmp20;
  kfree(__cil_tmp21);
  __cil_tmp22 = (unsigned long )us;
  __cil_tmp23 = __cil_tmp22 + 208;
  __cil_tmp24 = *((struct urb **)__cil_tmp23);
  usb_free_urb(__cil_tmp24);
  }
  return;
}
}
static void dissociate_dev(struct us_data *us )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned char *__cil_tmp4 ;
  void *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct usb_device *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct usb_ctrlrequest *__cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  dma_addr_t __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct usb_device *__cil_tmp22 ;
  size_t __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned char *__cil_tmp26 ;
  void *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  dma_addr_t __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct usb_interface *__cil_tmp33 ;
  void *__cil_tmp34 ;
  {
  {
  printk("<6>usb --- dissociate_dev\n");
  __cil_tmp2 = (unsigned long )us;
  __cil_tmp3 = __cil_tmp2 + 352;
  __cil_tmp4 = *((unsigned char **)__cil_tmp3);
  __cil_tmp5 = (void *)__cil_tmp4;
  kfree(__cil_tmp5);
  }
  {
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 216;
  if (*((struct usb_ctrlrequest **)__cil_tmp7)) {
    {
    __cil_tmp8 = (unsigned long )us;
    __cil_tmp9 = __cil_tmp8 + 72;
    __cil_tmp10 = *((struct usb_device **)__cil_tmp9);
    __cil_tmp11 = (unsigned long )us;
    __cil_tmp12 = __cil_tmp11 + 216;
    __cil_tmp13 = *((struct usb_ctrlrequest **)__cil_tmp12);
    __cil_tmp14 = (void *)__cil_tmp13;
    __cil_tmp15 = (unsigned long )us;
    __cil_tmp16 = __cil_tmp15 + 360;
    __cil_tmp17 = *((dma_addr_t *)__cil_tmp16);
    usb_free_coherent(__cil_tmp10, 8UL, __cil_tmp14, __cil_tmp17);
    }
  } else {
  }
  }
  {
  __cil_tmp18 = (unsigned long )us;
  __cil_tmp19 = __cil_tmp18 + 344;
  if (*((unsigned char **)__cil_tmp19)) {
    {
    __cil_tmp20 = (unsigned long )us;
    __cil_tmp21 = __cil_tmp20 + 72;
    __cil_tmp22 = *((struct usb_device **)__cil_tmp21);
    __cil_tmp23 = (size_t )64;
    __cil_tmp24 = (unsigned long )us;
    __cil_tmp25 = __cil_tmp24 + 344;
    __cil_tmp26 = *((unsigned char **)__cil_tmp25);
    __cil_tmp27 = (void *)__cil_tmp26;
    __cil_tmp28 = (unsigned long )us;
    __cil_tmp29 = __cil_tmp28 + 368;
    __cil_tmp30 = *((dma_addr_t *)__cil_tmp29);
    usb_free_coherent(__cil_tmp22, __cil_tmp23, __cil_tmp27, __cil_tmp30);
    }
  } else {
  }
  }
  {
  __cil_tmp31 = (unsigned long )us;
  __cil_tmp32 = __cil_tmp31 + 80;
  __cil_tmp33 = *((struct usb_interface **)__cil_tmp32);
  __cil_tmp34 = (void *)0;
  usb_set_intfdata(__cil_tmp33, __cil_tmp34);
  }
  return;
}
}
static void quiesce_and_remove_host(struct us_data *us )
{ struct Scsi_Host *host ;
  struct Scsi_Host *tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct usb_device *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  enum usb_device_state __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long *__cil_tmp13 ;
  unsigned long volatile *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long *__cil_tmp17 ;
  unsigned long volatile *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  wait_queue_head_t *__cil_tmp21 ;
  void *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct completion *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  spinlock_t *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long *__cil_tmp31 ;
  unsigned long volatile *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  spinlock_t *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  wait_queue_head_t *__cil_tmp38 ;
  void *__cil_tmp39 ;
  {
  {
  tmp___7 = us_to_host(us);
  host = tmp___7;
  printk("<6>usb --- quiesce_and_remove_host\n");
  }
  {
  __cil_tmp4 = (unsigned long )us;
  __cil_tmp5 = __cil_tmp4 + 72;
  __cil_tmp6 = *((struct usb_device **)__cil_tmp5);
  __cil_tmp7 = (unsigned long )__cil_tmp6;
  __cil_tmp8 = __cil_tmp7 + 24;
  __cil_tmp9 = *((enum usb_device_state *)__cil_tmp8);
  __cil_tmp10 = (unsigned int )__cil_tmp9;
  if (__cil_tmp10 == 0U) {
    {
    __cil_tmp11 = (unsigned long )us;
    __cil_tmp12 = __cil_tmp11 + 104;
    __cil_tmp13 = (unsigned long *)__cil_tmp12;
    __cil_tmp14 = (unsigned long volatile *)__cil_tmp13;
    set_bit(3U, __cil_tmp14);
    }
  } else {
  }
  }
  {
  __cil_tmp15 = (unsigned long )us;
  __cil_tmp16 = __cil_tmp15 + 104;
  __cil_tmp17 = (unsigned long *)__cil_tmp16;
  __cil_tmp18 = (unsigned long volatile *)__cil_tmp17;
  set_bit(6U, __cil_tmp18);
  __cil_tmp19 = (unsigned long )us;
  __cil_tmp20 = __cil_tmp19 + 480;
  __cil_tmp21 = (wait_queue_head_t *)__cil_tmp20;
  __cil_tmp22 = (void *)0;
  __wake_up(__cil_tmp21, 3U, 1, __cil_tmp22);
  __cil_tmp23 = (unsigned long )us;
  __cil_tmp24 = __cil_tmp23 + 520;
  __cil_tmp25 = (struct completion *)__cil_tmp24;
  wait_for_completion(__cil_tmp25);
  scsi_remove_host(host);
  __cil_tmp26 = (unsigned long )host;
  __cil_tmp27 = __cil_tmp26 + 120;
  __cil_tmp28 = *((spinlock_t **)__cil_tmp27);
  spin_lock_irq(__cil_tmp28);
  __cil_tmp29 = (unsigned long )us;
  __cil_tmp30 = __cil_tmp29 + 104;
  __cil_tmp31 = (unsigned long *)__cil_tmp30;
  __cil_tmp32 = (unsigned long volatile *)__cil_tmp31;
  set_bit(3U, __cil_tmp32);
  __cil_tmp33 = (unsigned long )host;
  __cil_tmp34 = __cil_tmp33 + 120;
  __cil_tmp35 = *((spinlock_t **)__cil_tmp34);
  spin_unlock_irq(__cil_tmp35);
  __cil_tmp36 = (unsigned long )us;
  __cil_tmp37 = __cil_tmp36 + 480;
  __cil_tmp38 = (wait_queue_head_t *)__cil_tmp37;
  __cil_tmp39 = (void *)0;
  __wake_up(__cil_tmp38, 3U, 1, __cil_tmp39);
  }
  return;
}
}
static void release_everything(struct us_data *us )
{ struct Scsi_Host *tmp___7 ;
  {
  {
  printk("<6>usb --- release_everything\n");
  usb_stor_release_resources(us);
  dissociate_dev(us);
  tmp___7 = us_to_host(us);
  scsi_host_put(tmp___7);
  }
  return;
}
}
static int usb_stor_scan_thread(void *__us )
{ struct us_data *us ;
  long __retval ;
  long __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp___7 ;
  int tmp___8 ;
  struct task_struct *tmp___10 ;
  bool tmp___11 ;
  struct task_struct *tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  struct task_struct *tmp___16 ;
  bool tmp___17 ;
  int tmp___18 ;
  int tmp___20 ;
  struct Scsi_Host *tmp___21 ;
  int tmp___22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct usb_device *__cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long *__cil_tmp30 ;
  unsigned long volatile *__cil_tmp31 ;
  wait_queue_t *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  wait_queue_head_t *__cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long *__cil_tmp45 ;
  unsigned long volatile *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  wait_queue_head_t *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long *__cil_tmp52 ;
  unsigned long volatile *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long *__cil_tmp56 ;
  unsigned long volatile *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  u8 __cil_tmp60 ;
  int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  struct mutex *__cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  struct mutex *__cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  struct completion *__cil_tmp72 ;
  {
  {
  us = (struct us_data *)__us;
  printk("<6>usb --- usb_stor_scan_thread\n");
  __cil_tmp23 = (unsigned long )us;
  __cil_tmp24 = __cil_tmp23 + 72;
  __cil_tmp25 = *((struct usb_device **)__cil_tmp24);
  __cil_tmp26 = *((int *)__cil_tmp25);
  printk("<6>EUCR : device found at %d\n", __cil_tmp26);
  set_freezable();
  }
  if (delay_use > 0U) {
    __cil_tmp27 = delay_use * 250U;
    __retval = (long )__cil_tmp27;
    {
    while (1) {
      while_continue: ;
      {
      __ret = __retval;
      __cil_tmp28 = (unsigned long )us;
      __cil_tmp29 = __cil_tmp28 + 104;
      __cil_tmp30 = (unsigned long *)__cil_tmp29;
      __cil_tmp31 = (unsigned long volatile *)__cil_tmp30;
      tmp___14 = ant_test_bit(6U, __cil_tmp31);
      }
      if (tmp___14) {
      } else {
        {
        tmp___16 = get_current();
        tmp___17 = freezing(tmp___16);
        }
        if (tmp___17) {
        } else {
          {
          while (1) {
            while_continue___0: ;
            {
            tmp___7 = get_current();
            __cil_tmp32 = & __wait;
            *((unsigned int *)__cil_tmp32) = 0U;
            __cil_tmp33 = (unsigned long )(& __wait) + 8;
            *((void **)__cil_tmp33) = (void *)tmp___7;
            __cil_tmp34 = (unsigned long )(& __wait) + 16;
            *((int (**)(wait_queue_t *wait , unsigned int mode , int flags , void *key ))__cil_tmp34) = & autoremove_wake_function;
            __cil_tmp35 = (unsigned long )(& __wait) + 24;
            __cil_tmp36 = (unsigned long )(& __wait) + 24;
            *((struct list_head **)__cil_tmp35) = (struct list_head *)__cil_tmp36;
            __cil_tmp37 = 24 + 8;
            __cil_tmp38 = (unsigned long )(& __wait) + __cil_tmp37;
            __cil_tmp39 = (unsigned long )(& __wait) + 24;
            *((struct list_head **)__cil_tmp38) = (struct list_head *)__cil_tmp39;
            }
            {
            while (1) {
              while_continue___1: ;
              {
              __cil_tmp40 = (unsigned long )us;
              __cil_tmp41 = __cil_tmp40 + 480;
              __cil_tmp42 = (wait_queue_head_t *)__cil_tmp41;
              prepare_to_wait(__cil_tmp42, & __wait, 1);
              __cil_tmp43 = (unsigned long )us;
              __cil_tmp44 = __cil_tmp43 + 104;
              __cil_tmp45 = (unsigned long *)__cil_tmp44;
              __cil_tmp46 = (unsigned long volatile *)__cil_tmp45;
              tmp___8 = ant_test_bit(6U, __cil_tmp46);
              }
              if (tmp___8) {
                goto while_break___1;
              } else {
                {
                tmp___10 = get_current();
                tmp___11 = freezing(tmp___10);
                }
                if (tmp___11) {
                  goto while_break___1;
                } else {
                }
              }
              {
              tmp___12 = get_current();
              tmp___13 = signal_pending(tmp___12);
              }
              if (tmp___13) {
              } else {
                {
                __ret = schedule_timeout(__ret);
                }
                if (! __ret) {
                  goto while_break___1;
                } else {
                }
                goto __Cont;
              }
              __ret = -512L;
              goto while_break___1;
              __Cont: ;
            }
            while_break___1: ;
            }
            {
            __cil_tmp47 = (unsigned long )us;
            __cil_tmp48 = __cil_tmp47 + 480;
            __cil_tmp49 = (wait_queue_head_t *)__cil_tmp48;
            finish_wait(__cil_tmp49, & __wait);
            }
            goto while_break___0;
          }
          while_break___0: ;
          }
        }
      }
      __retval = __ret;
      if (__retval <= 0L) {
        goto while_break;
      } else {
        {
        __cil_tmp50 = (unsigned long )us;
        __cil_tmp51 = __cil_tmp50 + 104;
        __cil_tmp52 = (unsigned long *)__cil_tmp51;
        __cil_tmp53 = (unsigned long volatile *)__cil_tmp52;
        tmp___18 = ant_test_bit(6U, __cil_tmp53);
        }
        if (tmp___18) {
          goto while_break;
        } else {
        }
      }
      {
      try_to_freeze();
      }
    }
    while_break: ;
    }
  } else {
  }
  {
  __cil_tmp54 = (unsigned long )us;
  __cil_tmp55 = __cil_tmp54 + 104;
  __cil_tmp56 = (unsigned long *)__cil_tmp55;
  __cil_tmp57 = (unsigned long volatile *)__cil_tmp56;
  tmp___22 = ant_test_bit(6U, __cil_tmp57);
  }
  if (tmp___22) {
  } else {
    {
    __cil_tmp58 = (unsigned long )us;
    __cil_tmp59 = __cil_tmp58 + 157;
    __cil_tmp60 = *((u8 *)__cil_tmp59);
    __cil_tmp61 = (int )__cil_tmp60;
    if (__cil_tmp61 == 80) {
      {
      __cil_tmp62 = (unsigned long )us;
      __cil_tmp63 = __cil_tmp62 + 96;
      __cil_tmp64 = *((unsigned long *)__cil_tmp63);
      __cil_tmp65 = __cil_tmp64 & 1UL;
      if (! __cil_tmp65) {
        {
        __cil_tmp66 = (struct mutex *)us;
        mutex_lock(__cil_tmp66);
        tmp___20 = usb_stor_Bulk_max_lun(us);
        __cil_tmp67 = (unsigned long )us;
        __cil_tmp68 = __cil_tmp67 + 158;
        *((u8 *)__cil_tmp68) = (u8 )tmp___20;
        __cil_tmp69 = (struct mutex *)us;
        mutex_unlock(__cil_tmp69);
        }
      } else {
      }
      }
    } else {
    }
    }
    {
    tmp___21 = us_to_host(us);
    scsi_scan_host(tmp___21);
    printk("<6>EUCR : device scan complete\n");
    }
  }
  {
  __cil_tmp70 = (unsigned long )us;
  __cil_tmp71 = __cil_tmp70 + 520;
  __cil_tmp72 = (struct completion *)__cil_tmp71;
  complete_and_exit(__cil_tmp72, 0L);
  }
}
}
static struct lock_class_key __key___6 ;
static struct lock_class_key __key___7 ;
static int eucr_probe(struct usb_interface *intf , struct usb_device_id *id )
{ struct Scsi_Host *host ;
  struct us_data *us ;
  int result ;
  BYTE MiscReg03 ;
  struct task_struct *th ;
  long tmp___7 ;
  long tmp___8 ;
  BYTE *__cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  struct mutex *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct completion *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct completion *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  wait_queue_head_t *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  struct completion *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct device *__cil_tmp30 ;
  void *__cil_tmp31 ;
  void *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  struct completion *__cil_tmp35 ;
  void *__cil_tmp36 ;
  WORD __cil_tmp37 ;
  void *__cil_tmp38 ;
  BYTE *__cil_tmp39 ;
  BYTE __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  {
  {
  __cil_tmp10 = & MiscReg03;
  *__cil_tmp10 = (BYTE )0;
  printk("<6>usb --- eucr_probe\n");
  __cil_tmp11 = (int )656UL;
  host = scsi_host_alloc(& usb_stor_host_template, __cil_tmp11);
  }
  if (! host) {
    {
    printk("<6>Unable to allocate the scsi host\n");
    }
    return (-12);
  } else {
  }
  {
  __cil_tmp12 = (unsigned long )host;
  __cil_tmp13 = __cil_tmp12 + 344;
  *((unsigned short *)__cil_tmp13) = (unsigned short)16;
  us = host_to_us(host);
  __cil_tmp14 = (void *)us;
  memset(__cil_tmp14, 0, 656UL);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp15 = (struct mutex *)us;
    __mutex_init(__cil_tmp15, "&(us->dev_mutex)", & __key___6);
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp16 = (unsigned long )us;
  __cil_tmp17 = __cil_tmp16 + 384;
  __cil_tmp18 = (struct completion *)__cil_tmp17;
  init_completion(__cil_tmp18);
  __cil_tmp19 = (unsigned long )us;
  __cil_tmp20 = __cil_tmp19 + 432;
  __cil_tmp21 = (struct completion *)__cil_tmp20;
  init_completion(__cil_tmp21);
  }
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp22 = (unsigned long )us;
    __cil_tmp23 = __cil_tmp22 + 480;
    __cil_tmp24 = (wait_queue_head_t *)__cil_tmp23;
    __init_waitqueue_head(__cil_tmp24, "&us->delay_wait", & __key___7);
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  {
  __cil_tmp25 = (unsigned long )us;
  __cil_tmp26 = __cil_tmp25 + 520;
  __cil_tmp27 = (struct completion *)__cil_tmp26;
  init_completion(__cil_tmp27);
  result = associate_dev(us, intf);
  }
  if (result) {
    goto BadDevice;
  } else {
  }
  {
  result = get_device_info(us, id);
  }
  if (result) {
    goto BadDevice;
  } else {
  }
  {
  result = get_transport(us);
  }
  if (result) {
    goto BadDevice;
  } else {
  }
  {
  result = get_protocol(us);
  }
  if (result) {
    goto BadDevice;
  } else {
  }
  {
  result = get_pipes(us);
  }
  if (result) {
    goto BadDevice;
  } else {
  }
  {
  result = usb_stor_acquire_resources(us);
  }
  if (result) {
    goto BadDevice;
  } else {
  }
  {
  __cil_tmp28 = (unsigned long )intf;
  __cil_tmp29 = __cil_tmp28 + 48;
  __cil_tmp30 = (struct device *)__cil_tmp29;
  result = (int )scsi_add_host(host, __cil_tmp30);
  }
  if (result) {
    {
    printk("<6>Unable to add the scsi host\n");
    }
    goto BadDevice;
  } else {
  }
  {
  __cil_tmp31 = (void *)us;
  th = kthread_create_on_node(& usb_stor_scan_thread, __cil_tmp31, -1, "eucr-stor-scan");
  __cil_tmp32 = (void *)th;
  tmp___8 = (long )IS_ERR(__cil_tmp32);
  }
  if (tmp___8) {
    {
    printk("<6>Unable to start the device-scanning thread\n");
    __cil_tmp33 = (unsigned long )us;
    __cil_tmp34 = __cil_tmp33 + 520;
    __cil_tmp35 = (struct completion *)__cil_tmp34;
    complete(__cil_tmp35);
    quiesce_and_remove_host(us);
    __cil_tmp36 = (void *)th;
    tmp___7 = (long )PTR_ERR(__cil_tmp36);
    result = (int )tmp___7;
    }
    goto BadDevice;
  } else {
  }
  {
  wake_up_process(th);
  __cil_tmp37 = (WORD )65411;
  __cil_tmp38 = (void *)(& MiscReg03);
  result = ENE_Read_BYTE(us, __cil_tmp37, __cil_tmp38);
  }
  if (result != 0) {
    {
    result = 3;
    quiesce_and_remove_host(us);
    }
    goto BadDevice;
  } else {
  }
  {
  __cil_tmp39 = & MiscReg03;
  __cil_tmp40 = *__cil_tmp39;
  __cil_tmp41 = (int )__cil_tmp40;
  __cil_tmp42 = __cil_tmp41 & 2;
  if (! __cil_tmp42) {
    {
    result = -19;
    quiesce_and_remove_host(us);
    printk("<6>keucr: The driver only supports SM/MS card.\t\t\tTo use SD card, \t\t\tplease build driver/usb/storage/ums-eneub6250.ko\n");
    }
    goto BadDevice;
  } else {
  }
  }
  return (0);
  BadDevice:
  {
  printk("<6>usb --- eucr_probe failed\n");
  release_everything(us);
  }
  return (result);
}
}
static void eucr_disconnect(struct usb_interface *intf )
{ struct us_data *us ;
  void *tmp___7 ;
  {
  {
  tmp___7 = usb_get_intfdata(intf);
  us = (struct us_data *)tmp___7;
  printk("<6>usb --- eucr_disconnect\n");
  quiesce_and_remove_host(us);
  release_everything(us);
  }
  return;
}
}
static struct usb_driver usb_storage_driver =
     {"eucr", & eucr_probe, & eucr_disconnect, (int (*)(struct usb_interface *intf ,
                                                      unsigned int code , void *buf ))0,
    & eucr_suspend, & eucr_resume, & eucr_reset_resume, & eucr_pre_reset, & eucr_post_reset,
    (struct usb_device_id *)(eucr_usb_ids), {{{{{{0U}}, 0U, 0U, (void *)0}}},
                                                     {(struct list_head *)0, (struct list_head *)0}},
    {{(char *)0, (struct bus_type *)0, (struct module *)0, (char *)0,
      (_Bool)0, (struct of_device_id *)0, (int (*)(struct device *dev ))0,
      (int (*)(struct device *dev ))0, (void (*)(struct device *dev ))0, (int (*)(struct device *dev ,
                                                                                  pm_message_t state ))0,
      (int (*)(struct device *dev ))0, (struct attribute_group **)0, (struct dev_pm_ops *)0,
      (struct driver_private *)0}, 0}, 0U, 0U, 1U};
static int usb_storage_driver_init(void) __attribute__((__section__(".init.text"),
__no_instrument_function__)) ;
static int usb_storage_driver_init(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = usb_register_driver(& usb_storage_driver, & __this_module, "keucr");
  }
  return (tmp___7);
}
}
int init_module(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = usb_storage_driver_init();
  }
  return (tmp___7);
}
}
static void usb_storage_driver_exit(void) __attribute__((__section__(".exit.text"),
__no_instrument_function__)) ;
static void usb_storage_driver_exit(void)
{
  {
  {
  usb_deregister(& usb_storage_driver);
  }
  return;
}
}
void cleanup_module(void)
{
  {
  {
  usb_storage_driver_exit();
  }
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int res ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
static int res_eucr_probe_18 ;
void ldv_main0_sequence_infinite_withcheck_stateful(void)
{ struct usb_interface *var_group1 ;
  struct usb_device_id *var_eucr_probe_18_p1 ;
  pm_message_t var_eucr_suspend_0_p1 ;
  int ldv_s_usb_storage_driver_usb_driver ;
  int tmp___7 ;
  int tmp___8 ;
  int __cil_tmp7 ;
  int var_eucr_suspend_0_p1_event8 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_s_usb_storage_driver_usb_driver = 0;
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
      __cil_tmp7 = ldv_s_usb_storage_driver_usb_driver == 0;
      if (! __cil_tmp7) {
      } else {
        goto while_break;
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
    } else
    if (tmp___7 == 6) {
      goto case_6;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        if (ldv_s_usb_storage_driver_usb_driver == 0) {
          {
          res_eucr_probe_18 = eucr_probe(var_group1, var_eucr_probe_18_p1);
          ldv_check_return_value(res_eucr_probe_18);
          }
          if (res_eucr_probe_18) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_usb_storage_driver_usb_driver = ldv_s_usb_storage_driver_usb_driver + 1;
        } else {
        }
        goto switch_break;
        case_1:
        if (ldv_s_usb_storage_driver_usb_driver == 1) {
          {
          eucr_suspend(var_group1, var_eucr_suspend_0_p1_event8);
          ldv_s_usb_storage_driver_usb_driver = ldv_s_usb_storage_driver_usb_driver + 1;
          }
        } else {
        }
        goto switch_break;
        case_2:
        if (ldv_s_usb_storage_driver_usb_driver == 2) {
          {
          eucr_resume(var_group1);
          ldv_s_usb_storage_driver_usb_driver = ldv_s_usb_storage_driver_usb_driver + 1;
          }
        } else {
        }
        goto switch_break;
        case_3:
        if (ldv_s_usb_storage_driver_usb_driver == 3) {
          {
          eucr_pre_reset(var_group1);
          ldv_s_usb_storage_driver_usb_driver = ldv_s_usb_storage_driver_usb_driver + 1;
          }
        } else {
        }
        goto switch_break;
        case_4:
        if (ldv_s_usb_storage_driver_usb_driver == 4) {
          {
          eucr_reset_resume(var_group1);
          ldv_s_usb_storage_driver_usb_driver = ldv_s_usb_storage_driver_usb_driver + 1;
          }
        } else {
        }
        goto switch_break;
        case_5:
        if (ldv_s_usb_storage_driver_usb_driver == 5) {
          {
          eucr_post_reset(var_group1);
          ldv_s_usb_storage_driver_usb_driver = ldv_s_usb_storage_driver_usb_driver + 1;
          }
        } else {
        }
        goto switch_break;
        case_6:
        if (ldv_s_usb_storage_driver_usb_driver == 6) {
          {
          eucr_disconnect(var_group1);
          ldv_s_usb_storage_driver_usb_driver = 0;
          }
        } else {
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
  ldv_module_exit:
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
extern int ( sprintf)(char *buf , char *fmt , ...) ;
extern int ( sscanf)(char * , char * , ...) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t *lock ) __attribute__((__section__(".spinlock.text"))) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t *lock , unsigned long flags ) __attribute__((__section__(".spinlock.text"))) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock ) __attribute__((__no_instrument_function__)) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return ((struct raw_spinlock *)lock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) __attribute__((__no_instrument_function__)) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{ struct raw_spinlock *__cil_tmp5 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp5 = (struct raw_spinlock *)lock;
    _raw_spin_unlock_irqrestore(__cil_tmp5, flags);
    }
    goto while_break;
  }
  while_break: ;
  }
  return;
}
}
__inline static void *( __attribute__((__always_inline__)) lowmem_page_address)(struct page *page ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) lowmem_page_address)(struct page *page )
{ struct page *__cil_tmp2 ;
  struct page *__cil_tmp3 ;
  int __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  phys_addr_t __cil_tmp6 ;
  phys_addr_t __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  {
  {
  __cil_tmp2 = (struct page *)0xffffea0000000000UL;
  __cil_tmp3 = (struct page *)__cil_tmp2;
  __cil_tmp4 = page - __cil_tmp3;
  __cil_tmp5 = (unsigned long )__cil_tmp4;
  __cil_tmp6 = (phys_addr_t )__cil_tmp5;
  __cil_tmp7 = __cil_tmp6 << 12;
  __cil_tmp8 = (unsigned long )__cil_tmp7;
  __cil_tmp9 = __cil_tmp8 + 0xffff880000000000UL;
  return ((void *)__cil_tmp9);
  }
}
}
__inline static struct page *sg_page(struct scatterlist *sg ) __attribute__((__no_instrument_function__)) ;
__inline static struct page *sg_page(struct scatterlist *sg )
{ long tmp ;
  long tmp___0 ;
  unsigned long __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp4 = *((unsigned long *)sg);
    __cil_tmp5 = __cil_tmp4 != 2271560481UL;
    __cil_tmp6 = ! __cil_tmp5;
    __cil_tmp7 = ! __cil_tmp6;
    __cil_tmp8 = (long )__cil_tmp7;
    tmp = ldv__builtin_expect(__cil_tmp8, 0L);
    }
    if (tmp) {
      {
      while (1) {
        while_continue___0: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("include/linux/scatterlist.h"),
                             "i" (98), "i" (12UL));
        {
        while (1) {
          while_continue___1: ;
        }
        while_break___1: ;
        }
        goto while_break___0;
      }
      while_break___0: ;
      }
    } else {
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  while (1) {
    while_continue___2: ;
    {
    __cil_tmp9 = (unsigned long )sg;
    __cil_tmp10 = __cil_tmp9 + 8;
    __cil_tmp11 = *((unsigned long *)__cil_tmp10);
    __cil_tmp12 = __cil_tmp11 & 1UL;
    __cil_tmp13 = ! __cil_tmp12;
    __cil_tmp14 = ! __cil_tmp13;
    __cil_tmp15 = (long )__cil_tmp14;
    tmp___0 = ldv__builtin_expect(__cil_tmp15, 0L);
    }
    if (tmp___0) {
      {
      while (1) {
        while_continue___3: ;
        __asm__ volatile ("1:\tud2\n"
                             ".pushsection __bug_table,\"a\"\n"
                             "2:\t.long 1b - 2b, %c0 - 2b\n"
                             "\t.word %c1, 0\n"
                             "\t.org 2b+%c2\n"
                             ".popsection": : "i" ("include/linux/scatterlist.h"),
                             "i" (99), "i" (12UL));
        {
        while (1) {
          while_continue___4: ;
        }
        while_break___4: ;
        }
        goto while_break___3;
      }
      while_break___3: ;
      }
    } else {
    }
    goto while_break___2;
  }
  while_break___2: ;
  }
  {
  __cil_tmp16 = (unsigned long )sg;
  __cil_tmp17 = __cil_tmp16 + 8;
  __cil_tmp18 = *((unsigned long *)__cil_tmp17);
  __cil_tmp19 = __cil_tmp18 & 0xfffffffffffffffcUL;
  return ((struct page *)__cil_tmp19);
  }
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
__inline static void *kmap(struct page *page ) __attribute__((__no_instrument_function__)) ;
__inline static void *kmap(struct page *page )
{ void *tmp___7 ;
  struct page *__cil_tmp3 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    __might_sleep("include/linux/highmem.h", 51, 0);
    }
    {
    while (1) {
      while_continue___0: ;
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp3 = (struct page *)page;
  tmp___7 = lowmem_page_address(__cil_tmp3);
  }
  return (tmp___7);
}
}
__inline static void kunmap(struct page *page ) __attribute__((__no_instrument_function__)) ;
__inline static void kunmap(struct page *page )
{
  {
  return;
}
}
extern void blk_queue_max_hw_sectors(struct request_queue * , unsigned int ) ;
extern void blk_queue_update_dma_alignment(struct request_queue * , int ) ;
__inline static unsigned int queue_max_sectors(struct request_queue *q ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int queue_max_sectors(struct request_queue *q )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  {
  {
  __cil_tmp2 = 1448 + 20;
  __cil_tmp3 = (unsigned long )q;
  __cil_tmp4 = __cil_tmp3 + __cil_tmp2;
  return (*((unsigned int *)__cil_tmp4));
  }
}
}
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd ) __attribute__((__no_instrument_function__)) ;
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  {
  {
  __cil_tmp2 = (unsigned long )cmd;
  __cil_tmp3 = __cil_tmp2 + 88;
  return (*((struct scatterlist **)__cil_tmp3));
  }
}
}
__inline static unsigned int scsi_bufflen(struct scsi_cmnd *cmd ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int scsi_bufflen(struct scsi_cmnd *cmd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  {
  {
  __cil_tmp2 = 88 + 16;
  __cil_tmp3 = (unsigned long )cmd;
  __cil_tmp4 = __cil_tmp3 + __cil_tmp2;
  return (*((unsigned int *)__cil_tmp4));
  }
}
}
__inline static void scsi_set_resid(struct scsi_cmnd *cmd , int resid ) __attribute__((__no_instrument_function__)) ;
__inline static void scsi_set_resid(struct scsi_cmnd *cmd , int resid )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  {
  __cil_tmp3 = 88 + 20;
  __cil_tmp4 = (unsigned long )cmd;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  *((int *)__cil_tmp5) = resid;
  return;
}
}
extern void scsi_report_bus_reset(struct Scsi_Host * , int ) ;
extern void scsi_report_device_reset(struct Scsi_Host * , int , int ) ;
extern void scsi_cmd_get_serial(struct Scsi_Host * , struct scsi_cmnd * ) ;
void usb_stor_report_device_reset(struct us_data *us ) ;
unsigned char usb_stor_sense_invalidCDB[18] ;
void usb_stor_stop_transport(struct us_data *us ) ;
int usb_stor_port_reset(struct us_data *us ) ;
unsigned int usb_stor_access_xfer_buf(struct us_data *us , unsigned char *buffer ,
                                      unsigned int buflen , struct scsi_cmnd *srb ,
                                      struct scatterlist **sgptr , unsigned int *offset ,
                                      enum xfer_buf_dir dir ) ;
static char *host_info(struct Scsi_Host *host )
{
  {
  return ("SCSI emulation for USB Mass Storage devices");
}
}
static int slave_alloc(struct scsi_device *sdev )
{ struct us_data *us ;
  struct us_data *tmp___7 ;
  struct Scsi_Host *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct request_queue *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  u8 __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct scsi_target *__cil_tmp16 ;
  {
  {
  __cil_tmp4 = *((struct Scsi_Host **)sdev);
  tmp___7 = host_to_us(__cil_tmp4);
  us = tmp___7;
  __cil_tmp5 = (unsigned long )sdev;
  __cil_tmp6 = __cil_tmp5 + 187;
  *((unsigned char *)__cil_tmp6) = (unsigned char)36;
  __cil_tmp7 = (unsigned long )sdev;
  __cil_tmp8 = __cil_tmp7 + 8;
  __cil_tmp9 = *((struct request_queue **)__cil_tmp8);
  blk_queue_update_dma_alignment(__cil_tmp9, 511);
  }
  {
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 156;
  __cil_tmp12 = *((u8 *)__cil_tmp11);
  __cil_tmp13 = (int )__cil_tmp12;
  if (__cil_tmp13 == 4) {
    __cil_tmp14 = (unsigned long )sdev;
    __cil_tmp15 = __cil_tmp14 + 232;
    __cil_tmp16 = *((struct scsi_target **)__cil_tmp15);
    __cil_tmp16->pdt_1f_for_no_lun = 1U;
  } else {
  }
  }
  return (0);
}
}
static int slave_configure(struct scsi_device *sdev )
{ struct us_data *us ;
  struct us_data *tmp___7 ;
  unsigned int max_sectors ;
  unsigned int tmp___8 ;
  char tmp___9 ;
  struct Scsi_Host *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct request_queue *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct request_queue *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  char __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  u8 __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  u8 __cil_tmp32 ;
  int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  char __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  struct scsi_target *__cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  u8 __cil_tmp60 ;
  int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  u8 __cil_tmp64 ;
  int __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  char __cil_tmp68 ;
  int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  {
  {
  __cil_tmp7 = *((struct Scsi_Host **)sdev);
  tmp___7 = host_to_us(__cil_tmp7);
  us = tmp___7;
  }
  {
  __cil_tmp8 = (unsigned long )us;
  __cil_tmp9 = __cil_tmp8 + 96;
  __cil_tmp10 = *((unsigned long *)__cil_tmp9);
  if (__cil_tmp10 & 9216UL) {
    max_sectors = 64U;
    {
    __cil_tmp11 = (unsigned long )us;
    __cil_tmp12 = __cil_tmp11 + 96;
    __cil_tmp13 = *((unsigned long *)__cil_tmp12);
    if (__cil_tmp13 & 8192UL) {
      __cil_tmp14 = 1UL << 12;
      __cil_tmp15 = __cil_tmp14 >> 9;
      max_sectors = (unsigned int )__cil_tmp15;
    } else {
    }
    }
    {
    __cil_tmp16 = (unsigned long )sdev;
    __cil_tmp17 = __cil_tmp16 + 8;
    __cil_tmp18 = *((struct request_queue **)__cil_tmp17);
    tmp___8 = queue_max_sectors(__cil_tmp18);
    }
    if (tmp___8 > max_sectors) {
      {
      __cil_tmp19 = (unsigned long )sdev;
      __cil_tmp20 = __cil_tmp19 + 8;
      __cil_tmp21 = *((struct request_queue **)__cil_tmp20);
      blk_queue_max_hw_sectors(__cil_tmp21, max_sectors);
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp22 = (unsigned long )sdev;
  __cil_tmp23 = __cil_tmp22 + 184;
  __cil_tmp24 = *((char *)__cil_tmp23);
  __cil_tmp25 = (int )__cil_tmp24;
  if (__cil_tmp25 == 0) {
    {
    __cil_tmp26 = (unsigned long )us;
    __cil_tmp27 = __cil_tmp26 + 156;
    __cil_tmp28 = *((u8 *)__cil_tmp27);
    __cil_tmp29 = (int )__cil_tmp28;
    if (__cil_tmp29 != 6) {
      {
      __cil_tmp30 = (unsigned long )us;
      __cil_tmp31 = __cil_tmp30 + 156;
      __cil_tmp32 = *((u8 *)__cil_tmp31);
      __cil_tmp33 = (int )__cil_tmp32;
      if (__cil_tmp33 != 241) {
        sdev->use_10_for_ms = 1U;
      } else {
      }
      }
    } else {
    }
    }
    sdev->use_192_bytes_for_3f = 1U;
    {
    __cil_tmp34 = (unsigned long )us;
    __cil_tmp35 = __cil_tmp34 + 96;
    __cil_tmp36 = *((unsigned long *)__cil_tmp35);
    if (__cil_tmp36 & 512UL) {
      sdev->skip_ms_page_3f = 1U;
    } else {
    }
    }
    sdev->skip_ms_page_8 = 1U;
    {
    __cil_tmp37 = (unsigned long )us;
    __cil_tmp38 = __cil_tmp37 + 96;
    __cil_tmp39 = *((unsigned long *)__cil_tmp38);
    if (__cil_tmp39 & 16UL) {
      sdev->fix_capacity = 1U;
    } else {
    }
    }
    {
    __cil_tmp40 = (unsigned long )us;
    __cil_tmp41 = __cil_tmp40 + 96;
    __cil_tmp42 = *((unsigned long *)__cil_tmp41);
    if (__cil_tmp42 & 4096UL) {
      sdev->guess_capacity = 1U;
    } else {
    }
    }
    {
    __cil_tmp43 = (unsigned long )sdev;
    __cil_tmp44 = __cil_tmp43 + 185;
    __cil_tmp45 = *((char *)__cil_tmp44);
    __cil_tmp46 = (int )__cil_tmp45;
    if (__cil_tmp46 > 3) {
      tmp___9 = (char)3;
      __cil_tmp47 = (unsigned long )sdev;
      __cil_tmp48 = __cil_tmp47 + 185;
      *((char *)__cil_tmp48) = tmp___9;
      __cil_tmp49 = (unsigned long )sdev;
      __cil_tmp50 = __cil_tmp49 + 232;
      __cil_tmp51 = *((struct scsi_target **)__cil_tmp50);
      __cil_tmp52 = (unsigned long )__cil_tmp51;
      __cil_tmp53 = __cil_tmp52 + 840;
      *((char *)__cil_tmp53) = tmp___9;
    } else {
    }
    }
    sdev->retry_hwerror = 1U;
    __cil_tmp54 = (unsigned long )sdev;
    __cil_tmp55 = __cil_tmp54 + 247;
    *((unsigned int *)__cil_tmp55) = 1U;
    __cil_tmp56 = (unsigned long )sdev;
    __cil_tmp57 = __cil_tmp56 + 248;
    *((unsigned int *)__cil_tmp57) = 1U;
  } else {
    sdev->use_10_for_ms = 1U;
  }
  }
  {
  __cil_tmp58 = (unsigned long )us;
  __cil_tmp59 = __cil_tmp58 + 157;
  __cil_tmp60 = *((u8 *)__cil_tmp59);
  __cil_tmp61 = (int )__cil_tmp60;
  if (__cil_tmp61 == 1) {
    goto _L;
  } else {
    {
    __cil_tmp62 = (unsigned long )us;
    __cil_tmp63 = __cil_tmp62 + 157;
    __cil_tmp64 = *((u8 *)__cil_tmp63);
    __cil_tmp65 = (int )__cil_tmp64;
    if (__cil_tmp65 == 0) {
      _L:
      {
      __cil_tmp66 = (unsigned long )sdev;
      __cil_tmp67 = __cil_tmp66 + 185;
      __cil_tmp68 = *((char *)__cil_tmp67);
      __cil_tmp69 = (int )__cil_tmp68;
      if (__cil_tmp69 == 0) {
        __cil_tmp70 = (unsigned long )us;
        __cil_tmp71 = __cil_tmp70 + 158;
        *((u8 *)__cil_tmp71) = (u8 )0;
      } else {
      }
      }
    } else {
    }
    }
  }
  }
  {
  __cil_tmp72 = (unsigned long )us;
  __cil_tmp73 = __cil_tmp72 + 96;
  __cil_tmp74 = *((unsigned long *)__cil_tmp73);
  if (__cil_tmp74 & 128UL) {
    sdev->lockable = 0U;
  } else {
  }
  }
  return (0);
}
}
static int queuecommand_lck(struct scsi_cmnd *srb , void (*done)(struct scsi_cmnd * ) )
{ struct us_data *us ;
  struct us_data *tmp___7 ;
  int tmp___8 ;
  struct scsi_device *__cil_tmp7 ;
  struct Scsi_Host *__cil_tmp8 ;
  void *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct scsi_cmnd *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long *__cil_tmp17 ;
  unsigned long volatile *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  struct completion *__cil_tmp27 ;
  {
  {
  __cil_tmp7 = *((struct scsi_device **)srb);
  __cil_tmp8 = *((struct Scsi_Host **)__cil_tmp7);
  tmp___7 = host_to_us(__cil_tmp8);
  us = tmp___7;
  }
  {
  __cil_tmp9 = (void *)0;
  __cil_tmp10 = (unsigned long )__cil_tmp9;
  __cil_tmp11 = (unsigned long )us;
  __cil_tmp12 = __cil_tmp11 + 192;
  __cil_tmp13 = *((struct scsi_cmnd **)__cil_tmp12);
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  if (__cil_tmp14 != __cil_tmp10) {
    return (4181);
  } else {
  }
  }
  {
  __cil_tmp15 = (unsigned long )us;
  __cil_tmp16 = __cil_tmp15 + 104;
  __cil_tmp17 = (unsigned long *)__cil_tmp16;
  __cil_tmp18 = (unsigned long volatile *)__cil_tmp17;
  tmp___8 = ant_test_bit(3U, __cil_tmp18);
  }
  if (tmp___8) {
    {
    printk("<6>keucr: Fail command during disconnect\n");
    __cil_tmp19 = (unsigned long )srb;
    __cil_tmp20 = __cil_tmp19 + 224;
    *((int *)__cil_tmp20) = 1 << 16;
    (*done)(srb);
    }
    return (0);
  } else {
  }
  {
  __cil_tmp21 = (unsigned long )srb;
  __cil_tmp22 = __cil_tmp21 + 144;
  *((void (**)(struct scsi_cmnd * ))__cil_tmp22) = done;
  __cil_tmp23 = (unsigned long )us;
  __cil_tmp24 = __cil_tmp23 + 192;
  *((struct scsi_cmnd **)__cil_tmp24) = srb;
  __cil_tmp25 = (unsigned long )us;
  __cil_tmp26 = __cil_tmp25 + 384;
  __cil_tmp27 = (struct completion *)__cil_tmp26;
  complete(__cil_tmp27);
  }
  return (0);
}
}
static int queuecommand(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{ unsigned long irq_flags ;
  int rc ;
  raw_spinlock_t *tmp___7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  spinlock_t *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  void (*__cil_tmp13)(struct scsi_cmnd * ) ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  spinlock_t *__cil_tmp16 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp8 = (unsigned long )shost;
      __cil_tmp9 = __cil_tmp8 + 120;
      __cil_tmp10 = *((spinlock_t **)__cil_tmp9);
      tmp___7 = spinlock_check(__cil_tmp10);
      irq_flags = _raw_spin_lock_irqsave(tmp___7);
      }
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  scsi_cmd_get_serial(shost, cmd);
  __cil_tmp11 = (unsigned long )cmd;
  __cil_tmp12 = __cil_tmp11 + 144;
  __cil_tmp13 = *((void (**)(struct scsi_cmnd * ))__cil_tmp12);
  rc = queuecommand_lck(cmd, __cil_tmp13);
  __cil_tmp14 = (unsigned long )shost;
  __cil_tmp15 = __cil_tmp14 + 120;
  __cil_tmp16 = *((spinlock_t **)__cil_tmp15);
  spin_unlock_irqrestore(__cil_tmp16, irq_flags);
  }
  return (rc);
}
}
static int command_abort(struct scsi_cmnd *srb )
{ struct us_data *us ;
  struct us_data *tmp___7 ;
  struct Scsi_Host *tmp___8 ;
  struct Scsi_Host *tmp___9 ;
  int tmp___10 ;
  struct Scsi_Host *tmp___12 ;
  struct scsi_device *__cil_tmp9 ;
  struct Scsi_Host *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  spinlock_t *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct scsi_cmnd *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  spinlock_t *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long *__cil_tmp24 ;
  unsigned long volatile *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long *__cil_tmp28 ;
  unsigned long volatile *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long *__cil_tmp32 ;
  unsigned long volatile *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  spinlock_t *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  struct completion *__cil_tmp39 ;
  {
  {
  __cil_tmp9 = *((struct scsi_device **)srb);
  __cil_tmp10 = *((struct Scsi_Host **)__cil_tmp9);
  tmp___7 = host_to_us(__cil_tmp10);
  us = tmp___7;
  tmp___8 = us_to_host(us);
  __cil_tmp11 = (unsigned long )tmp___8;
  __cil_tmp12 = __cil_tmp11 + 120;
  __cil_tmp13 = *((spinlock_t **)__cil_tmp12);
  spin_lock_irq(__cil_tmp13);
  }
  {
  __cil_tmp14 = (unsigned long )srb;
  __cil_tmp15 = (unsigned long )us;
  __cil_tmp16 = __cil_tmp15 + 192;
  __cil_tmp17 = *((struct scsi_cmnd **)__cil_tmp16);
  __cil_tmp18 = (unsigned long )__cil_tmp17;
  if (__cil_tmp18 != __cil_tmp14) {
    {
    tmp___9 = us_to_host(us);
    __cil_tmp19 = (unsigned long )tmp___9;
    __cil_tmp20 = __cil_tmp19 + 120;
    __cil_tmp21 = *((spinlock_t **)__cil_tmp20);
    spin_unlock_irq(__cil_tmp21);
    printk("-- nothing to abort\n");
    }
    return (8195);
  } else {
  }
  }
  {
  __cil_tmp22 = (unsigned long )us;
  __cil_tmp23 = __cil_tmp22 + 104;
  __cil_tmp24 = (unsigned long *)__cil_tmp23;
  __cil_tmp25 = (unsigned long volatile *)__cil_tmp24;
  set_bit(5U, __cil_tmp25);
  __cil_tmp26 = (unsigned long )us;
  __cil_tmp27 = __cil_tmp26 + 104;
  __cil_tmp28 = (unsigned long *)__cil_tmp27;
  __cil_tmp29 = (unsigned long volatile *)__cil_tmp28;
  tmp___10 = ant_test_bit(4U, __cil_tmp29);
  }
  if (tmp___10) {
  } else {
    {
    __cil_tmp30 = (unsigned long )us;
    __cil_tmp31 = __cil_tmp30 + 104;
    __cil_tmp32 = (unsigned long *)__cil_tmp31;
    __cil_tmp33 = (unsigned long volatile *)__cil_tmp32;
    set_bit(2U, __cil_tmp33);
    usb_stor_stop_transport(us);
    }
  }
  {
  tmp___12 = us_to_host(us);
  __cil_tmp34 = (unsigned long )tmp___12;
  __cil_tmp35 = __cil_tmp34 + 120;
  __cil_tmp36 = *((spinlock_t **)__cil_tmp35);
  spin_unlock_irq(__cil_tmp36);
  __cil_tmp37 = (unsigned long )us;
  __cil_tmp38 = __cil_tmp37 + 432;
  __cil_tmp39 = (struct completion *)__cil_tmp38;
  wait_for_completion(__cil_tmp39);
  }
  return (8194);
}
}
static int device_reset(struct scsi_cmnd *srb )
{ struct us_data *us ;
  struct us_data *tmp___7 ;
  int result ;
  int tmp___8 ;
  struct scsi_device *__cil_tmp6 ;
  struct Scsi_Host *__cil_tmp7 ;
  struct mutex *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int (*__cil_tmp11)(struct us_data * ) ;
  struct mutex *__cil_tmp12 ;
  {
  {
  __cil_tmp6 = *((struct scsi_device **)srb);
  __cil_tmp7 = *((struct Scsi_Host **)__cil_tmp6);
  tmp___7 = host_to_us(__cil_tmp7);
  us = tmp___7;
  __cil_tmp8 = (struct mutex *)us;
  mutex_lock(__cil_tmp8);
  __cil_tmp9 = (unsigned long )us;
  __cil_tmp10 = __cil_tmp9 + 176;
  __cil_tmp11 = *((int (**)(struct us_data * ))__cil_tmp10);
  result = (*__cil_tmp11)(us);
  __cil_tmp12 = (struct mutex *)us;
  mutex_unlock(__cil_tmp12);
  }
  if (result < 0) {
    tmp___8 = 8195;
  } else {
    tmp___8 = 8194;
  }
  return (tmp___8);
}
}
static int bus_reset(struct scsi_cmnd *srb )
{ struct us_data *us ;
  struct us_data *tmp___7 ;
  int result ;
  int tmp___8 ;
  struct scsi_device *__cil_tmp6 ;
  struct Scsi_Host *__cil_tmp7 ;
  {
  {
  __cil_tmp6 = *((struct scsi_device **)srb);
  __cil_tmp7 = *((struct Scsi_Host **)__cil_tmp6);
  tmp___7 = host_to_us(__cil_tmp7);
  us = tmp___7;
  result = usb_stor_port_reset(us);
  }
  if (result < 0) {
    tmp___8 = 8195;
  } else {
    tmp___8 = 8194;
  }
  return (tmp___8);
}
}
void usb_stor_report_device_reset(struct us_data *us )
{ int i ;
  struct Scsi_Host *host ;
  struct Scsi_Host *tmp___7 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  {
  {
  tmp___7 = us_to_host(us);
  host = tmp___7;
  scsi_report_device_reset(host, 0, 0);
  }
  {
  __cil_tmp5 = (unsigned long )us;
  __cil_tmp6 = __cil_tmp5 + 96;
  __cil_tmp7 = *((unsigned long *)__cil_tmp6);
  if (__cil_tmp7 & 4UL) {
    i = 1;
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp8 = (unsigned long )host;
      __cil_tmp9 = __cil_tmp8 + 328;
      __cil_tmp10 = *((unsigned int *)__cil_tmp9);
      __cil_tmp11 = (unsigned int )i;
      if (__cil_tmp11 < __cil_tmp10) {
      } else {
        goto while_break;
      }
      }
      {
      scsi_report_device_reset(host, 0, i);
      i = i + 1;
      }
    }
    while_break: ;
    }
  } else {
  }
  }
  return;
}
}
void usb_stor_report_bus_reset(struct us_data *us )
{ struct Scsi_Host *host ;
  struct Scsi_Host *tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  spinlock_t *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  spinlock_t *__cil_tmp9 ;
  {
  {
  tmp___7 = us_to_host(us);
  host = tmp___7;
  __cil_tmp4 = (unsigned long )host;
  __cil_tmp5 = __cil_tmp4 + 120;
  __cil_tmp6 = *((spinlock_t **)__cil_tmp5);
  spin_lock_irq(__cil_tmp6);
  scsi_report_bus_reset(host, 0);
  __cil_tmp7 = (unsigned long )host;
  __cil_tmp8 = __cil_tmp7 + 120;
  __cil_tmp9 = *((spinlock_t **)__cil_tmp8);
  spin_unlock_irq(__cil_tmp9);
  }
  return;
}
}
static int proc_info(struct Scsi_Host *host , char *buffer , char **start , off_t offset ,
                     int length , int inout )
{ struct us_data *us ;
  struct us_data *tmp___7 ;
  char *pos ;
  char *string ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  int tmp___34 ;
  int tmp___35 ;
  char *tmp___36 ;
  char *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct usb_device *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  struct usb_device *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  char *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  struct us_unusual_dev *__cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  struct us_unusual_dev *__cil_tmp62 ;
  char *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct usb_device *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  struct usb_device *__cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  char *__cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  struct us_unusual_dev *__cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  struct us_unusual_dev *__cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  char *__cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  struct usb_device *__cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  struct usb_device *__cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  char *__cil_tmp100 ;
  char *__cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  char *__cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  char *__cil_tmp109 ;
  char *__cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  char *__cil_tmp115 ;
  char *__cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  int __cil_tmp182 ;
  off_t __cil_tmp183 ;
  off_t __cil_tmp184 ;
  int __cil_tmp185 ;
  off_t __cil_tmp186 ;
  off_t __cil_tmp187 ;
  int __cil_tmp188 ;
  off_t __cil_tmp189 ;
  off_t __cil_tmp190 ;
  {
  {
  tmp___7 = host_to_us(host);
  us = tmp___7;
  pos = buffer;
  }
  if (inout) {
    return (length);
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp40 = buffer + length;
    __cil_tmp41 = (unsigned long )__cil_tmp40;
    __cil_tmp42 = (unsigned long )pos;
    if (__cil_tmp42 < __cil_tmp41) {
      {
      __cil_tmp43 = (unsigned long )host;
      __cil_tmp44 = __cil_tmp43 + 308;
      __cil_tmp45 = *((unsigned int *)__cil_tmp44);
      tmp___8 = sprintf(pos, "   Host scsi%d: usb-storage\n", __cil_tmp45);
      pos = pos + tmp___8;
      }
    } else {
    }
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  __cil_tmp46 = (unsigned long )us;
  __cil_tmp47 = __cil_tmp46 + 72;
  __cil_tmp48 = *((struct usb_device **)__cil_tmp47);
  __cil_tmp49 = (unsigned long )__cil_tmp48;
  __cil_tmp50 = __cil_tmp49 + 1240;
  if (*((char **)__cil_tmp50)) {
    __cil_tmp51 = (unsigned long )us;
    __cil_tmp52 = __cil_tmp51 + 72;
    __cil_tmp53 = *((struct usb_device **)__cil_tmp52);
    __cil_tmp54 = (unsigned long )__cil_tmp53;
    __cil_tmp55 = __cil_tmp54 + 1240;
    __cil_tmp56 = *((char **)__cil_tmp55);
    string = (char *)__cil_tmp56;
  } else {
    {
    __cil_tmp57 = (unsigned long )us;
    __cil_tmp58 = __cil_tmp57 + 88;
    __cil_tmp59 = *((struct us_unusual_dev **)__cil_tmp58);
    if (*((char **)__cil_tmp59)) {
      __cil_tmp60 = (unsigned long )us;
      __cil_tmp61 = __cil_tmp60 + 88;
      __cil_tmp62 = *((struct us_unusual_dev **)__cil_tmp61);
      string = *((char **)__cil_tmp62);
    } else {
      string = "Unknown";
    }
    }
  }
  }
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp63 = buffer + length;
    __cil_tmp64 = (unsigned long )__cil_tmp63;
    __cil_tmp65 = (unsigned long )pos;
    if (__cil_tmp65 < __cil_tmp64) {
      {
      tmp___9 = sprintf(pos, "       Vendor: %s\n", string);
      pos = pos + tmp___9;
      }
    } else {
    }
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  {
  __cil_tmp66 = (unsigned long )us;
  __cil_tmp67 = __cil_tmp66 + 72;
  __cil_tmp68 = *((struct usb_device **)__cil_tmp67);
  __cil_tmp69 = (unsigned long )__cil_tmp68;
  __cil_tmp70 = __cil_tmp69 + 1232;
  if (*((char **)__cil_tmp70)) {
    __cil_tmp71 = (unsigned long )us;
    __cil_tmp72 = __cil_tmp71 + 72;
    __cil_tmp73 = *((struct usb_device **)__cil_tmp72);
    __cil_tmp74 = (unsigned long )__cil_tmp73;
    __cil_tmp75 = __cil_tmp74 + 1232;
    __cil_tmp76 = *((char **)__cil_tmp75);
    string = (char *)__cil_tmp76;
  } else {
    {
    __cil_tmp77 = (unsigned long )us;
    __cil_tmp78 = __cil_tmp77 + 88;
    __cil_tmp79 = *((struct us_unusual_dev **)__cil_tmp78);
    __cil_tmp80 = (unsigned long )__cil_tmp79;
    __cil_tmp81 = __cil_tmp80 + 8;
    if (*((char **)__cil_tmp81)) {
      __cil_tmp82 = (unsigned long )us;
      __cil_tmp83 = __cil_tmp82 + 88;
      __cil_tmp84 = *((struct us_unusual_dev **)__cil_tmp83);
      __cil_tmp85 = (unsigned long )__cil_tmp84;
      __cil_tmp86 = __cil_tmp85 + 8;
      string = *((char **)__cil_tmp86);
    } else {
      string = "Unknown";
    }
    }
  }
  }
  {
  while (1) {
    while_continue___1: ;
    {
    __cil_tmp87 = buffer + length;
    __cil_tmp88 = (unsigned long )__cil_tmp87;
    __cil_tmp89 = (unsigned long )pos;
    if (__cil_tmp89 < __cil_tmp88) {
      {
      tmp___10 = sprintf(pos, "      Product: %s\n", string);
      pos = pos + tmp___10;
      }
    } else {
    }
    }
    goto while_break___1;
  }
  while_break___1: ;
  }
  {
  __cil_tmp90 = (unsigned long )us;
  __cil_tmp91 = __cil_tmp90 + 72;
  __cil_tmp92 = *((struct usb_device **)__cil_tmp91);
  __cil_tmp93 = (unsigned long )__cil_tmp92;
  __cil_tmp94 = __cil_tmp93 + 1248;
  if (*((char **)__cil_tmp94)) {
    __cil_tmp95 = (unsigned long )us;
    __cil_tmp96 = __cil_tmp95 + 72;
    __cil_tmp97 = *((struct usb_device **)__cil_tmp96);
    __cil_tmp98 = (unsigned long )__cil_tmp97;
    __cil_tmp99 = __cil_tmp98 + 1248;
    __cil_tmp100 = *((char **)__cil_tmp99);
    string = (char *)__cil_tmp100;
  } else {
    string = "None";
  }
  }
  {
  while (1) {
    while_continue___2: ;
    {
    __cil_tmp101 = buffer + length;
    __cil_tmp102 = (unsigned long )__cil_tmp101;
    __cil_tmp103 = (unsigned long )pos;
    if (__cil_tmp103 < __cil_tmp102) {
      {
      tmp___11 = sprintf(pos, "Serial Number: %s\n", string);
      pos = pos + tmp___11;
      }
    } else {
    }
    }
    goto while_break___2;
  }
  while_break___2: ;
  }
  {
  while (1) {
    while_continue___3: ;
    {
    __cil_tmp104 = buffer + length;
    __cil_tmp105 = (unsigned long )__cil_tmp104;
    __cil_tmp106 = (unsigned long )pos;
    if (__cil_tmp106 < __cil_tmp105) {
      {
      __cil_tmp107 = (unsigned long )us;
      __cil_tmp108 = __cil_tmp107 + 144;
      __cil_tmp109 = *((char **)__cil_tmp108);
      tmp___12 = sprintf(pos, "     Protocol: %s\n", __cil_tmp109);
      pos = pos + tmp___12;
      }
    } else {
    }
    }
    goto while_break___3;
  }
  while_break___3: ;
  }
  {
  while (1) {
    while_continue___4: ;
    {
    __cil_tmp110 = buffer + length;
    __cil_tmp111 = (unsigned long )__cil_tmp110;
    __cil_tmp112 = (unsigned long )pos;
    if (__cil_tmp112 < __cil_tmp111) {
      {
      __cil_tmp113 = (unsigned long )us;
      __cil_tmp114 = __cil_tmp113 + 136;
      __cil_tmp115 = *((char **)__cil_tmp114);
      tmp___13 = sprintf(pos, "    Transport: %s\n", __cil_tmp115);
      pos = pos + tmp___13;
      }
    } else {
    }
    }
    goto while_break___4;
  }
  while_break___4: ;
  }
  {
  __cil_tmp116 = buffer + length;
  __cil_tmp117 = (unsigned long )__cil_tmp116;
  __cil_tmp118 = (unsigned long )pos;
  if (__cil_tmp118 < __cil_tmp117) {
    {
    tmp___14 = sprintf(pos, "       Quirks:");
    pos = pos + tmp___14;
    }
    {
    __cil_tmp119 = (unsigned long )us;
    __cil_tmp120 = __cil_tmp119 + 96;
    __cil_tmp121 = *((unsigned long *)__cil_tmp120);
    if (__cil_tmp121 & 1UL) {
      {
      tmp___15 = sprintf(pos, " SINGLE_LUN");
      pos = pos + tmp___15;
      }
    } else {
    }
    }
    {
    __cil_tmp122 = (unsigned long )us;
    __cil_tmp123 = __cil_tmp122 + 96;
    __cil_tmp124 = *((unsigned long *)__cil_tmp123);
    if (__cil_tmp124 & 2UL) {
      {
      tmp___16 = sprintf(pos, " NEED_OVERRIDE");
      pos = pos + tmp___16;
      }
    } else {
    }
    }
    {
    __cil_tmp125 = (unsigned long )us;
    __cil_tmp126 = __cil_tmp125 + 96;
    __cil_tmp127 = *((unsigned long *)__cil_tmp126);
    if (__cil_tmp127 & 4UL) {
      {
      tmp___17 = sprintf(pos, " SCM_MULT_TARG");
      pos = pos + tmp___17;
      }
    } else {
    }
    }
    {
    __cil_tmp128 = (unsigned long )us;
    __cil_tmp129 = __cil_tmp128 + 96;
    __cil_tmp130 = *((unsigned long *)__cil_tmp129);
    if (__cil_tmp130 & 8UL) {
      {
      tmp___18 = sprintf(pos, " FIX_INQUIRY");
      pos = pos + tmp___18;
      }
    } else {
    }
    }
    {
    __cil_tmp131 = (unsigned long )us;
    __cil_tmp132 = __cil_tmp131 + 96;
    __cil_tmp133 = *((unsigned long *)__cil_tmp132);
    if (__cil_tmp133 & 16UL) {
      {
      tmp___19 = sprintf(pos, " FIX_CAPACITY");
      pos = pos + tmp___19;
      }
    } else {
    }
    }
    {
    __cil_tmp134 = (unsigned long )us;
    __cil_tmp135 = __cil_tmp134 + 96;
    __cil_tmp136 = *((unsigned long *)__cil_tmp135);
    if (__cil_tmp136 & 32UL) {
      {
      tmp___20 = sprintf(pos, " IGNORE_RESIDUE");
      pos = pos + tmp___20;
      }
    } else {
    }
    }
    {
    __cil_tmp137 = (unsigned long )us;
    __cil_tmp138 = __cil_tmp137 + 96;
    __cil_tmp139 = *((unsigned long *)__cil_tmp138);
    if (__cil_tmp139 & 64UL) {
      {
      tmp___21 = sprintf(pos, " BULK32");
      pos = pos + tmp___21;
      }
    } else {
    }
    }
    {
    __cil_tmp140 = (unsigned long )us;
    __cil_tmp141 = __cil_tmp140 + 96;
    __cil_tmp142 = *((unsigned long *)__cil_tmp141);
    if (__cil_tmp142 & 128UL) {
      {
      tmp___22 = sprintf(pos, " NOT_LOCKABLE");
      pos = pos + tmp___22;
      }
    } else {
    }
    }
    {
    __cil_tmp143 = (unsigned long )us;
    __cil_tmp144 = __cil_tmp143 + 96;
    __cil_tmp145 = *((unsigned long *)__cil_tmp144);
    if (__cil_tmp145 & 256UL) {
      {
      tmp___23 = sprintf(pos, " GO_SLOW");
      pos = pos + tmp___23;
      }
    } else {
    }
    }
    {
    __cil_tmp146 = (unsigned long )us;
    __cil_tmp147 = __cil_tmp146 + 96;
    __cil_tmp148 = *((unsigned long *)__cil_tmp147);
    if (__cil_tmp148 & 512UL) {
      {
      tmp___24 = sprintf(pos, " NO_WP_DETECT");
      pos = pos + tmp___24;
      }
    } else {
    }
    }
    {
    __cil_tmp149 = (unsigned long )us;
    __cil_tmp150 = __cil_tmp149 + 96;
    __cil_tmp151 = *((unsigned long *)__cil_tmp150);
    if (__cil_tmp151 & 1024UL) {
      {
      tmp___25 = sprintf(pos, " MAX_SECTORS_64");
      pos = pos + tmp___25;
      }
    } else {
    }
    }
    {
    __cil_tmp152 = (unsigned long )us;
    __cil_tmp153 = __cil_tmp152 + 96;
    __cil_tmp154 = *((unsigned long *)__cil_tmp153);
    if (__cil_tmp154 & 2048UL) {
      {
      tmp___26 = sprintf(pos, " IGNORE_DEVICE");
      pos = pos + tmp___26;
      }
    } else {
    }
    }
    {
    __cil_tmp155 = (unsigned long )us;
    __cil_tmp156 = __cil_tmp155 + 96;
    __cil_tmp157 = *((unsigned long *)__cil_tmp156);
    if (__cil_tmp157 & 4096UL) {
      {
      tmp___27 = sprintf(pos, " CAPACITY_HEURISTICS");
      pos = pos + tmp___27;
      }
    } else {
    }
    }
    {
    __cil_tmp158 = (unsigned long )us;
    __cil_tmp159 = __cil_tmp158 + 96;
    __cil_tmp160 = *((unsigned long *)__cil_tmp159);
    if (__cil_tmp160 & 8192UL) {
      {
      tmp___28 = sprintf(pos, " MAX_SECTORS_MIN");
      pos = pos + tmp___28;
      }
    } else {
    }
    }
    {
    __cil_tmp161 = (unsigned long )us;
    __cil_tmp162 = __cil_tmp161 + 96;
    __cil_tmp163 = *((unsigned long *)__cil_tmp162);
    if (__cil_tmp163 & 16384UL) {
      {
      tmp___29 = sprintf(pos, " BULK_IGNORE_TAG");
      pos = pos + tmp___29;
      }
    } else {
    }
    }
    {
    __cil_tmp164 = (unsigned long )us;
    __cil_tmp165 = __cil_tmp164 + 96;
    __cil_tmp166 = *((unsigned long *)__cil_tmp165);
    if (__cil_tmp166 & 32768UL) {
      {
      tmp___30 = sprintf(pos, " SANE_SENSE");
      pos = pos + tmp___30;
      }
    } else {
    }
    }
    {
    __cil_tmp167 = (unsigned long )us;
    __cil_tmp168 = __cil_tmp167 + 96;
    __cil_tmp169 = *((unsigned long *)__cil_tmp168);
    if (__cil_tmp169 & 65536UL) {
      {
      tmp___31 = sprintf(pos, " CAPACITY_OK");
      pos = pos + tmp___31;
      }
    } else {
    }
    }
    {
    __cil_tmp170 = (unsigned long )us;
    __cil_tmp171 = __cil_tmp170 + 96;
    __cil_tmp172 = *((unsigned long *)__cil_tmp171);
    if (__cil_tmp172 & 131072UL) {
      {
      tmp___32 = sprintf(pos, " BAD_SENSE");
      pos = pos + tmp___32;
      }
    } else {
    }
    }
    {
    __cil_tmp173 = (unsigned long )us;
    __cil_tmp174 = __cil_tmp173 + 96;
    __cil_tmp175 = *((unsigned long *)__cil_tmp174);
    if (__cil_tmp175 & 262144UL) {
      {
      tmp___33 = sprintf(pos, " NO_READ_DISC_INFO");
      pos = pos + tmp___33;
      }
    } else {
    }
    }
    {
    __cil_tmp176 = (unsigned long )us;
    __cil_tmp177 = __cil_tmp176 + 96;
    __cil_tmp178 = *((unsigned long *)__cil_tmp177);
    if (__cil_tmp178 & 524288UL) {
      {
      tmp___34 = sprintf(pos, " NO_READ_CAPACITY_16");
      pos = pos + tmp___34;
      }
    } else {
    }
    }
    {
    __cil_tmp179 = (unsigned long )us;
    __cil_tmp180 = __cil_tmp179 + 96;
    __cil_tmp181 = *((unsigned long *)__cil_tmp180);
    if (__cil_tmp181 & 1048576UL) {
      {
      tmp___35 = sprintf(pos, " INITIAL_READ10");
      pos = pos + tmp___35;
      }
    } else {
    }
    }
    tmp___36 = pos;
    pos = pos + 1;
    *tmp___36 = (char )'\n';
  } else {
  }
  }
  *start = buffer + offset;
  {
  __cil_tmp182 = pos - buffer;
  __cil_tmp183 = (off_t )__cil_tmp182;
  if (__cil_tmp183 < offset) {
    return (0);
  } else {
    {
    __cil_tmp184 = (off_t )length;
    __cil_tmp185 = pos - buffer;
    __cil_tmp186 = (off_t )__cil_tmp185;
    __cil_tmp187 = __cil_tmp186 - offset;
    if (__cil_tmp187 < __cil_tmp184) {
      {
      __cil_tmp188 = pos - buffer;
      __cil_tmp189 = (off_t )__cil_tmp188;
      __cil_tmp190 = __cil_tmp189 - offset;
      return ((int )__cil_tmp190);
      }
    } else {
      return (length);
    }
    }
  }
  }
}
}
static ssize_t show_max_sectors(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{ struct scsi_device *sdev ;
  struct device *__mptr ;
  unsigned int tmp___7 ;
  int tmp___8 ;
  struct scsi_device *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  struct device *__cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  char *__cil_tmp13 ;
  char *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct request_queue *__cil_tmp17 ;
  {
  {
  __mptr = (struct device *)dev;
  __cil_tmp8 = (struct scsi_device *)0;
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = __cil_tmp9 + 336;
  __cil_tmp11 = (struct device *)__cil_tmp10;
  __cil_tmp12 = (unsigned int )__cil_tmp11;
  __cil_tmp13 = (char *)__mptr;
  __cil_tmp14 = __cil_tmp13 - __cil_tmp12;
  sdev = (struct scsi_device *)__cil_tmp14;
  __cil_tmp15 = (unsigned long )sdev;
  __cil_tmp16 = __cil_tmp15 + 8;
  __cil_tmp17 = *((struct request_queue **)__cil_tmp16);
  tmp___7 = queue_max_sectors(__cil_tmp17);
  tmp___8 = sprintf(buf, "%u\n", tmp___7);
  }
  return ((ssize_t )tmp___8);
}
}
static ssize_t store_max_sectors(struct device *dev , struct device_attribute *attr ,
                                 char *buf , size_t count )
{ struct scsi_device *sdev ;
  struct device *__mptr ;
  unsigned short ms ;
  unsigned long tmp___7 ;
  int tmp___8 ;
  struct scsi_device *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct device *__cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  char *__cil_tmp15 ;
  char *__cil_tmp16 ;
  unsigned short *__cil_tmp17 ;
  unsigned short __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct request_queue *__cil_tmp22 ;
  unsigned short *__cil_tmp23 ;
  unsigned short __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  {
  {
  __mptr = (struct device *)dev;
  __cil_tmp10 = (struct scsi_device *)0;
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  __cil_tmp12 = __cil_tmp11 + 336;
  __cil_tmp13 = (struct device *)__cil_tmp12;
  __cil_tmp14 = (unsigned int )__cil_tmp13;
  __cil_tmp15 = (char *)__mptr;
  __cil_tmp16 = __cil_tmp15 - __cil_tmp14;
  sdev = (struct scsi_device *)__cil_tmp16;
  tmp___8 = sscanf(buf, "%hu", & ms);
  }
  if (tmp___8 > 0) {
    {
    __cil_tmp17 = & ms;
    __cil_tmp18 = *__cil_tmp17;
    __cil_tmp19 = (int )__cil_tmp18;
    if (__cil_tmp19 <= 1024) {
      {
      __cil_tmp20 = (unsigned long )sdev;
      __cil_tmp21 = __cil_tmp20 + 8;
      __cil_tmp22 = *((struct request_queue **)__cil_tmp21);
      __cil_tmp23 = & ms;
      __cil_tmp24 = *__cil_tmp23;
      __cil_tmp25 = (unsigned int )__cil_tmp24;
      blk_queue_max_hw_sectors(__cil_tmp22, __cil_tmp25);
      tmp___7 = strlen(buf);
      }
      return ((ssize_t )tmp___7);
    } else {
    }
    }
  } else {
  }
  return ((ssize_t )-22);
}
}
static struct device_attribute dev_attr_max_sectors = {{"max_sectors", (umode_t )420}, & show_max_sectors, & store_max_sectors};
static struct device_attribute *sysfs_device_attr_list[2] = { & dev_attr_max_sectors, (struct device_attribute *)((void *)0)};
struct scsi_host_template usb_stor_host_template =
     {& __this_module, "eucr-storage", (int (*)(struct scsi_host_template * ))0, (int (*)(struct Scsi_Host * ))0,
    & host_info, (int (*)(struct scsi_device *dev , int cmd , void *arg ))0, (int (*)(struct scsi_device *dev ,
                                                                                      int cmd ,
                                                                                      void *arg ))0,
    & queuecommand, (int (*)(struct scsi_cmnd * , void (*done)(struct scsi_cmnd * ) ))0,
    & command_abort, & device_reset, (int (*)(struct scsi_cmnd * ))0, & bus_reset,
    (int (*)(struct scsi_cmnd * ))0, & slave_alloc, & slave_configure, (void (*)(struct scsi_device * ))0,
    (int (*)(struct scsi_target * ))0, (void (*)(struct scsi_target * ))0, (int (*)(struct Scsi_Host * ,
                                                                                    unsigned long ))0,
    (void (*)(struct Scsi_Host * ))0, (int (*)(struct scsi_device * , int , int ))0,
    (int (*)(struct scsi_device * , int ))0, (int (*)(struct scsi_device * , struct block_device * ,
                                                       sector_t , int * ))0, (void (*)(struct scsi_device * ))0,
    & proc_info, (enum blk_eh_timer_return (*)(struct scsi_cmnd * ))0, (int (*)(struct Scsi_Host *shost ,
                                                                                int reset_type ))0,
    "eucr-storage", (struct proc_dir_entry *)0, 1, -1, (unsigned short)128, (unsigned short)0,
    (unsigned short)240, 0UL, (short)1, (unsigned char)0, 0U, 0U, 1U, 1U, 1U, 0U,
    0U, (struct device_attribute **)0, sysfs_device_attr_list, {(struct list_head *)0,
                                                                (struct list_head *)0},
    0ULL};
unsigned char usb_stor_sense_invalidCDB[18] =
  { (unsigned char)112, (unsigned char)0, (unsigned char)5, (unsigned char)0,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)10,
        (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)36, (unsigned char)0, (unsigned char)0, (unsigned char)0,
        (unsigned char)0, (unsigned char)0};
unsigned int usb_stor_access_xfer_buf(struct us_data *us , unsigned char *buffer ,
                                      unsigned int buflen , struct scsi_cmnd *srb ,
                                      struct scatterlist **sgptr , unsigned int *offset ,
                                      enum xfer_buf_dir dir )
{ unsigned int cnt ;
  struct scatterlist *sg ;
  struct page *page ;
  struct page *tmp___7 ;
  unsigned int poff ;
  unsigned int sglen ;
  unsigned int plen ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp___8 ;
  unsigned char *ptr ;
  void *tmp___9 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned int __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  unsigned int __cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned int __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned int *__cil_tmp45 ;
  unsigned int *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  unsigned int *__cil_tmp49 ;
  unsigned int __cil_tmp50 ;
  unsigned int *__cil_tmp51 ;
  unsigned int __cil_tmp52 ;
  unsigned int *__cil_tmp53 ;
  unsigned int *__cil_tmp54 ;
  unsigned int __cil_tmp55 ;
  unsigned char *__cil_tmp56 ;
  void *__cil_tmp57 ;
  unsigned char *__cil_tmp58 ;
  void *__cil_tmp59 ;
  unsigned char *__cil_tmp60 ;
  void *__cil_tmp61 ;
  unsigned char *__cil_tmp62 ;
  void *__cil_tmp63 ;
  {
  sg = *sgptr;
  if (! sg) {
    {
    sg = scsi_sglist(srb);
    }
  } else {
  }
  cnt = 0U;
  {
  while (1) {
    while_continue: ;
    if (cnt < buflen) {
      if (sg) {
      } else {
        goto while_break;
      }
    } else {
      goto while_break;
    }
    {
    tmp___7 = sg_page(sg);
    __cil_tmp24 = *offset;
    __cil_tmp25 = (unsigned long )sg;
    __cil_tmp26 = __cil_tmp25 + 16;
    __cil_tmp27 = *((unsigned int *)__cil_tmp26);
    __cil_tmp28 = __cil_tmp27 + __cil_tmp24;
    __cil_tmp29 = __cil_tmp28 >> 12;
    page = tmp___7 + __cil_tmp29;
    __cil_tmp30 = 1UL << 12;
    __cil_tmp31 = __cil_tmp30 - 1UL;
    __cil_tmp32 = *offset;
    __cil_tmp33 = (unsigned long )sg;
    __cil_tmp34 = __cil_tmp33 + 16;
    __cil_tmp35 = *((unsigned int *)__cil_tmp34);
    __cil_tmp36 = __cil_tmp35 + __cil_tmp32;
    __cil_tmp37 = (unsigned long )__cil_tmp36;
    __cil_tmp38 = __cil_tmp37 & __cil_tmp31;
    poff = (unsigned int )__cil_tmp38;
    __cil_tmp39 = *offset;
    __cil_tmp40 = (unsigned long )sg;
    __cil_tmp41 = __cil_tmp40 + 20;
    __cil_tmp42 = *((unsigned int *)__cil_tmp41);
    sglen = __cil_tmp42 - __cil_tmp39;
    }
    {
    __cil_tmp43 = buflen - cnt;
    if (sglen > __cil_tmp43) {
      sglen = buflen - cnt;
      __cil_tmp44 = *offset;
      *offset = __cil_tmp44 + sglen;
    } else {
      {
      *offset = 0U;
      sg = sg_next(sg);
      }
    }
    }
    {
    while (1) {
      while_continue___0: ;
      if (sglen > 0U) {
      } else {
        goto while_break___0;
      }
      __cil_tmp45 = & _min1;
      *__cil_tmp45 = sglen;
      __cil_tmp46 = & _min2;
      __cil_tmp47 = 1UL << 12;
      __cil_tmp48 = (unsigned int )__cil_tmp47;
      *__cil_tmp46 = __cil_tmp48 - poff;
      {
      __cil_tmp49 = & _min2;
      __cil_tmp50 = *__cil_tmp49;
      __cil_tmp51 = & _min1;
      __cil_tmp52 = *__cil_tmp51;
      if (__cil_tmp52 < __cil_tmp50) {
        __cil_tmp53 = & _min1;
        tmp___8 = *__cil_tmp53;
      } else {
        __cil_tmp54 = & _min2;
        tmp___8 = *__cil_tmp54;
      }
      }
      {
      plen = tmp___8;
      tmp___9 = kmap(page);
      ptr = (unsigned char *)tmp___9;
      }
      {
      __cil_tmp55 = (unsigned int )dir;
      if (__cil_tmp55 == 0U) {
        {
        __len = (size_t )plen;
        __cil_tmp56 = ptr + poff;
        __cil_tmp57 = (void *)__cil_tmp56;
        __cil_tmp58 = buffer + cnt;
        __cil_tmp59 = (void *)__cil_tmp58;
        __ret = memcpy(__cil_tmp57, __cil_tmp59, __len);
        }
      } else {
        {
        __len___0 = (size_t )plen;
        __cil_tmp60 = buffer + cnt;
        __cil_tmp61 = (void *)__cil_tmp60;
        __cil_tmp62 = ptr + poff;
        __cil_tmp63 = (void *)__cil_tmp62;
        __ret___0 = memcpy(__cil_tmp61, __cil_tmp63, __len___0);
        }
      }
      }
      {
      kunmap(page);
      poff = 0U;
      page = page + 1;
      cnt = cnt + plen;
      sglen = sglen - plen;
      }
    }
    while_break___0: ;
    }
  }
  while_break: ;
  }
  *sgptr = sg;
  return (cnt);
}
}
void usb_stor_set_xfer_buf(struct us_data *us , unsigned char *buffer , unsigned int buflen ,
                           struct scsi_cmnd *srb , unsigned int dir )
{ unsigned int offset ;
  struct scatterlist *sg ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  unsigned int *__cil_tmp14 ;
  struct scatterlist **__cil_tmp15 ;
  void *__cil_tmp16 ;
  unsigned int *__cil_tmp17 ;
  unsigned int *__cil_tmp18 ;
  unsigned int *__cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  unsigned int *__cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  unsigned int *__cil_tmp23 ;
  unsigned int *__cil_tmp24 ;
  enum xfer_buf_dir __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  int __cil_tmp27 ;
  {
  {
  __cil_tmp14 = & offset;
  *__cil_tmp14 = 0U;
  __cil_tmp15 = & sg;
  __cil_tmp16 = (void *)0;
  *__cil_tmp15 = (struct scatterlist *)__cil_tmp16;
  __cil_tmp17 = & _min1;
  *__cil_tmp17 = buflen;
  tmp___7 = scsi_bufflen(srb);
  __cil_tmp18 = & _min2;
  *__cil_tmp18 = tmp___7;
  }
  {
  __cil_tmp19 = & _min2;
  __cil_tmp20 = *__cil_tmp19;
  __cil_tmp21 = & _min1;
  __cil_tmp22 = *__cil_tmp21;
  if (__cil_tmp22 < __cil_tmp20) {
    __cil_tmp23 = & _min1;
    tmp___8 = *__cil_tmp23;
  } else {
    __cil_tmp24 = & _min2;
    tmp___8 = *__cil_tmp24;
  }
  }
  {
  buflen = tmp___8;
  __cil_tmp25 = (enum xfer_buf_dir )dir;
  buflen = usb_stor_access_xfer_buf(us, buffer, buflen, srb, & sg, & offset, __cil_tmp25);
  tmp___10 = scsi_bufflen(srb);
  }
  if (buflen < tmp___10) {
    {
    tmp___9 = scsi_bufflen(srb);
    __cil_tmp26 = tmp___9 - buflen;
    __cil_tmp27 = (int )__cil_tmp26;
    scsi_set_resid(srb, __cil_tmp27);
    }
  } else {
  }
  return;
}
}
void main(void)
{ struct Scsi_Host *var_group1 ;
  char *var_proc_info_8_p1 ;
  char **var_proc_info_8_p2 ;
  off_t var_proc_info_8_p3 ;
  int var_proc_info_8_p4 ;
  int var_proc_info_8_p5 ;
  struct scsi_cmnd *var_group2 ;
  struct scsi_device *var_group3 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___8 = __VERIFIER_nondet_int();
    }
    if (tmp___8) {
    } else {
      goto while_break;
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
    } else
    if (tmp___7 == 6) {
      goto case_6;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        proc_info(var_group1, var_proc_info_8_p1, var_proc_info_8_p2, var_proc_info_8_p3,
                  var_proc_info_8_p4, var_proc_info_8_p5);
        }
        goto switch_break;
        case_1:
        {
        host_info(var_group1);
        }
        goto switch_break;
        case_2:
        {
        command_abort(var_group2);
        }
        goto switch_break;
        case_3:
        {
        device_reset(var_group2);
        }
        goto switch_break;
        case_4:
        {
        bus_reset(var_group2);
        }
        goto switch_break;
        case_5:
        {
        slave_alloc(var_group3);
        }
        goto switch_break;
        case_6:
        {
        slave_configure(var_group3);
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
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  long volatile *__cil_tmp4 ;
  {
  __cil_tmp4 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n"
                       ".balign 4\n"
                       ".long 671f - .\n"
                       ".previous\n"
                       "671:"
                       "\n\tlock; "
                       "btr %2,%1\n\t"
                       "sbb %0,%0": "=r" (oldbit), "+m" (*__cil_tmp4): "Ir" (nr): "memory");
  return (oldbit);
}
}
extern void *memcpy(void *to , void *from , size_t len ) ;
static struct lock_class_key __key___8 ;
__inline static void init_completion___0(struct completion *x ) __attribute__((__no_instrument_function__)) ;
__inline static void init_completion___0(struct completion *x )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  wait_queue_head_t *__cil_tmp4 ;
  {
  *((unsigned int *)x) = 0U;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp2 = (unsigned long )x;
    __cil_tmp3 = __cil_tmp2 + 8;
    __cil_tmp4 = (wait_queue_head_t *)__cil_tmp3;
    __init_waitqueue_head(__cil_tmp4, "&x->wait", & __key___8);
    }
    goto while_break;
  }
  while_break: ;
  }
  return;
}
}
extern long wait_for_completion_interruptible_timeout(struct completion *x , unsigned long timeout ) ;
__inline static void device_unlock(struct device *dev ) __attribute__((__no_instrument_function__)) ;
__inline static void device_unlock(struct device *dev )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct mutex *__cil_tmp4 ;
  {
  {
  __cil_tmp2 = (unsigned long )dev;
  __cil_tmp3 = __cil_tmp2 + 96;
  __cil_tmp4 = (struct mutex *)__cil_tmp3;
  mutex_unlock(__cil_tmp4);
  }
  return;
}
}
__inline static unsigned int scsi_sg_count(struct scsi_cmnd *cmd ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int scsi_sg_count(struct scsi_cmnd *cmd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  {
  {
  __cil_tmp2 = 0 + 8;
  __cil_tmp3 = 88 + __cil_tmp2;
  __cil_tmp4 = (unsigned long )cmd;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  return (*((unsigned int *)__cil_tmp5));
  }
}
}
__inline static int scsi_get_resid(struct scsi_cmnd *cmd ) __attribute__((__no_instrument_function__)) ;
__inline static int scsi_get_resid(struct scsi_cmnd *cmd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  {
  {
  __cil_tmp2 = 88 + 20;
  __cil_tmp3 = (unsigned long )cmd;
  __cil_tmp4 = __cil_tmp3 + __cil_tmp2;
  return (*((int *)__cil_tmp4));
  }
}
}
extern void scsi_eh_prep_cmnd(struct scsi_cmnd *scmd , struct scsi_eh_save *ses ,
                              unsigned char *cmnd , int cmnd_size , unsigned int sense_bytes ) ;
extern void scsi_eh_restore_cmnd(struct scsi_cmnd *scmd , struct scsi_eh_save *ses ) ;
extern void ___udelay(unsigned long xloops ) ;
extern int usb_lock_device_for_reset(struct usb_device *udev , struct usb_interface *iface ) ;
extern int usb_reset_device(struct usb_device *dev ) ;
__inline static void usb_fill_control_urb(struct urb *urb , struct usb_device *dev ,
                                          unsigned int pipe , unsigned char *setup_packet ,
                                          void *transfer_buffer , int buffer_length ,
                                          void (*complete_fn)(struct urb * ) , void *context ) __attribute__((__no_instrument_function__)) ;
__inline static void usb_fill_control_urb(struct urb *urb , struct usb_device *dev ,
                                          unsigned int pipe , unsigned char *setup_packet ,
                                          void *transfer_buffer , int buffer_length ,
                                          void (*complete_fn)(struct urb * ) , void *context )
{ unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  {
  __cil_tmp9 = (unsigned long )urb;
  __cil_tmp10 = __cil_tmp9 + 72;
  *((struct usb_device **)__cil_tmp10) = dev;
  __cil_tmp11 = (unsigned long )urb;
  __cil_tmp12 = __cil_tmp11 + 88;
  *((unsigned int *)__cil_tmp12) = pipe;
  __cil_tmp13 = (unsigned long )urb;
  __cil_tmp14 = __cil_tmp13 + 144;
  *((unsigned char **)__cil_tmp14) = setup_packet;
  __cil_tmp15 = (unsigned long )urb;
  __cil_tmp16 = __cil_tmp15 + 104;
  *((void **)__cil_tmp16) = transfer_buffer;
  __cil_tmp17 = (unsigned long )urb;
  __cil_tmp18 = __cil_tmp17 + 136;
  *((u32 *)__cil_tmp18) = (u32 )buffer_length;
  __cil_tmp19 = (unsigned long )urb;
  __cil_tmp20 = __cil_tmp19 + 184;
  *((void (**)(struct urb * ))__cil_tmp20) = complete_fn;
  __cil_tmp21 = (unsigned long )urb;
  __cil_tmp22 = __cil_tmp21 + 176;
  *((void **)__cil_tmp22) = context;
  return;
}
}
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context ) __attribute__((__no_instrument_function__)) ;
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{ unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  {
  __cil_tmp8 = (unsigned long )urb;
  __cil_tmp9 = __cil_tmp8 + 72;
  *((struct usb_device **)__cil_tmp9) = dev;
  __cil_tmp10 = (unsigned long )urb;
  __cil_tmp11 = __cil_tmp10 + 88;
  *((unsigned int *)__cil_tmp11) = pipe;
  __cil_tmp12 = (unsigned long )urb;
  __cil_tmp13 = __cil_tmp12 + 104;
  *((void **)__cil_tmp13) = transfer_buffer;
  __cil_tmp14 = (unsigned long )urb;
  __cil_tmp15 = __cil_tmp14 + 136;
  *((u32 *)__cil_tmp15) = (u32 )buffer_length;
  __cil_tmp16 = (unsigned long )urb;
  __cil_tmp17 = __cil_tmp16 + 184;
  *((void (**)(struct urb * ))__cil_tmp17) = complete_fn;
  __cil_tmp18 = (unsigned long )urb;
  __cil_tmp19 = __cil_tmp18 + 176;
  *((void **)__cil_tmp19) = context;
  return;
}
}
extern int usb_submit_urb(struct urb *urb , gfp_t mem_flags ) ;
extern int usb_unlink_urb(struct urb *urb ) ;
extern void usb_kill_urb(struct urb *urb ) ;
extern void usb_reset_endpoint(struct usb_device *dev , unsigned int epaddr ) ;
extern int usb_sg_init(struct usb_sg_request *io , struct usb_device *dev , unsigned int pipe ,
                       unsigned int period , struct scatterlist *sg , int nents ,
                       size_t length , gfp_t mem_flags ) ;
extern void usb_sg_cancel(struct usb_sg_request *io ) ;
extern void usb_sg_wait(struct usb_sg_request *io ) ;
void usb_stor_print_cmd(struct scsi_cmnd *srb ) ;
int usb_stor_control_msg(struct us_data *us , unsigned int pipe , u8 request , u8 requesttype ,
                         u16 value , u16 index , void *data , u16 size , int timeout ) ;
int usb_stor_clear_halt(struct us_data *us , unsigned int pipe ) ;
int usb_stor_bulk_transfer_buf(struct us_data *us , unsigned int pipe , void *buf ,
                               unsigned int length , unsigned int *act_len ) ;
int usb_stor_bulk_transfer_sg(struct us_data *us , unsigned int pipe , void *buf ,
                              unsigned int length_left , int use_sg , int *residual ) ;
int usb_stor_bulk_srb(struct us_data *us , unsigned int pipe , struct scsi_cmnd *srb ) ;
int ENE_InitMedia(struct us_data *us ) ;
void BuildSenseBuffer(struct scsi_cmnd *srb , int SrbStatus ) ;
int SM_SCSIIrp(struct us_data *us , struct scsi_cmnd *srb ) ;
static void usb_stor_blocking_completion(struct urb *urb )
{ struct completion *urb_done_ptr ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  void *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )urb;
  __cil_tmp4 = __cil_tmp3 + 176;
  __cil_tmp5 = *((void **)__cil_tmp4);
  urb_done_ptr = (struct completion *)__cil_tmp5;
  complete(urb_done_ptr);
  }
  return;
}
}
static int usb_stor_msg_common(struct us_data *us , int timeout )
{ struct completion urb_done ;
  long timeleft ;
  int status ;
  int tmp___7 ;
  int tmp___9 ;
  int tmp___10 ;
  long tmp___12 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long *__cil_tmp14 ;
  unsigned long volatile *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct urb *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct urb *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct urb *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  struct urb *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct urb *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned char *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  struct urb *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  void *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  struct urb *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  struct urb *__cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  struct urb *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  struct urb *__cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  struct urb *__cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long *__cil_tmp82 ;
  unsigned long volatile *__cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long *__cil_tmp86 ;
  unsigned long volatile *__cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long *__cil_tmp90 ;
  unsigned long volatile *__cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  struct urb *__cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long *__cil_tmp99 ;
  unsigned long volatile *__cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  struct urb *__cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  struct urb *__cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  {
  {
  __cil_tmp12 = (unsigned long )us;
  __cil_tmp13 = __cil_tmp12 + 104;
  __cil_tmp14 = (unsigned long *)__cil_tmp13;
  __cil_tmp15 = (unsigned long volatile *)__cil_tmp14;
  tmp___7 = ant_test_bit(2U, __cil_tmp15);
  }
  if (tmp___7) {
    return (-5);
  } else {
  }
  {
  init_completion___0(& urb_done);
  __cil_tmp16 = (unsigned long )us;
  __cil_tmp17 = __cil_tmp16 + 208;
  __cil_tmp18 = *((struct urb **)__cil_tmp17);
  __cil_tmp19 = (unsigned long )__cil_tmp18;
  __cil_tmp20 = __cil_tmp19 + 176;
  *((void **)__cil_tmp20) = (void *)(& urb_done);
  __cil_tmp21 = (unsigned long )us;
  __cil_tmp22 = __cil_tmp21 + 208;
  __cil_tmp23 = *((struct urb **)__cil_tmp22);
  __cil_tmp24 = (unsigned long )__cil_tmp23;
  __cil_tmp25 = __cil_tmp24 + 140;
  *((u32 *)__cil_tmp25) = (u32 )0;
  __cil_tmp26 = (unsigned long )us;
  __cil_tmp27 = __cil_tmp26 + 208;
  __cil_tmp28 = *((struct urb **)__cil_tmp27);
  __cil_tmp29 = (unsigned long )__cil_tmp28;
  __cil_tmp30 = __cil_tmp29 + 172;
  *((int *)__cil_tmp30) = 0;
  __cil_tmp31 = (unsigned long )us;
  __cil_tmp32 = __cil_tmp31 + 208;
  __cil_tmp33 = *((struct urb **)__cil_tmp32);
  __cil_tmp34 = (unsigned long )__cil_tmp33;
  __cil_tmp35 = __cil_tmp34 + 96;
  *((int *)__cil_tmp35) = 0;
  __cil_tmp36 = (unsigned long )us;
  __cil_tmp37 = __cil_tmp36 + 208;
  __cil_tmp38 = *((struct urb **)__cil_tmp37);
  __cil_tmp39 = (unsigned long )__cil_tmp38;
  __cil_tmp40 = __cil_tmp39 + 100;
  *((unsigned int *)__cil_tmp40) = 0U;
  }
  {
  __cil_tmp41 = (unsigned long )us;
  __cil_tmp42 = __cil_tmp41 + 344;
  __cil_tmp43 = *((unsigned char **)__cil_tmp42);
  __cil_tmp44 = (unsigned long )__cil_tmp43;
  __cil_tmp45 = (unsigned long )us;
  __cil_tmp46 = __cil_tmp45 + 208;
  __cil_tmp47 = *((struct urb **)__cil_tmp46);
  __cil_tmp48 = (unsigned long )__cil_tmp47;
  __cil_tmp49 = __cil_tmp48 + 104;
  __cil_tmp50 = *((void **)__cil_tmp49);
  __cil_tmp51 = (unsigned long )__cil_tmp50;
  if (__cil_tmp51 == __cil_tmp44) {
    __cil_tmp52 = (unsigned long )us;
    __cil_tmp53 = __cil_tmp52 + 208;
    __cil_tmp54 = *((struct urb **)__cil_tmp53);
    __cil_tmp55 = (unsigned long )__cil_tmp54;
    __cil_tmp56 = __cil_tmp55 + 100;
    __cil_tmp57 = (unsigned long )us;
    __cil_tmp58 = __cil_tmp57 + 208;
    __cil_tmp59 = *((struct urb **)__cil_tmp58);
    __cil_tmp60 = (unsigned long )__cil_tmp59;
    __cil_tmp61 = __cil_tmp60 + 100;
    __cil_tmp62 = *((unsigned int *)__cil_tmp61);
    *((unsigned int *)__cil_tmp56) = __cil_tmp62 | 4U;
  } else {
  }
  }
  {
  __cil_tmp63 = (unsigned long )us;
  __cil_tmp64 = __cil_tmp63 + 208;
  __cil_tmp65 = *((struct urb **)__cil_tmp64);
  __cil_tmp66 = (unsigned long )__cil_tmp65;
  __cil_tmp67 = __cil_tmp66 + 112;
  __cil_tmp68 = (unsigned long )us;
  __cil_tmp69 = __cil_tmp68 + 368;
  *((dma_addr_t *)__cil_tmp67) = *((dma_addr_t *)__cil_tmp69);
  __cil_tmp70 = (unsigned long )us;
  __cil_tmp71 = __cil_tmp70 + 208;
  __cil_tmp72 = *((struct urb **)__cil_tmp71);
  __cil_tmp73 = (unsigned long )__cil_tmp72;
  __cil_tmp74 = __cil_tmp73 + 152;
  __cil_tmp75 = (unsigned long )us;
  __cil_tmp76 = __cil_tmp75 + 360;
  *((dma_addr_t *)__cil_tmp74) = *((dma_addr_t *)__cil_tmp76);
  __cil_tmp77 = (unsigned long )us;
  __cil_tmp78 = __cil_tmp77 + 208;
  __cil_tmp79 = *((struct urb **)__cil_tmp78);
  status = usb_submit_urb(__cil_tmp79, 16U);
  }
  if (status) {
    return (status);
  } else {
  }
  {
  __cil_tmp80 = (unsigned long )us;
  __cil_tmp81 = __cil_tmp80 + 104;
  __cil_tmp82 = (unsigned long *)__cil_tmp81;
  __cil_tmp83 = (unsigned long volatile *)__cil_tmp82;
  set_bit(0U, __cil_tmp83);
  __cil_tmp84 = (unsigned long )us;
  __cil_tmp85 = __cil_tmp84 + 104;
  __cil_tmp86 = (unsigned long *)__cil_tmp85;
  __cil_tmp87 = (unsigned long volatile *)__cil_tmp86;
  tmp___10 = ant_test_bit(2U, __cil_tmp87);
  }
  if (tmp___10) {
    {
    __cil_tmp88 = (unsigned long )us;
    __cil_tmp89 = __cil_tmp88 + 104;
    __cil_tmp90 = (unsigned long *)__cil_tmp89;
    __cil_tmp91 = (unsigned long volatile *)__cil_tmp90;
    tmp___9 = test_and_clear_bit(0, __cil_tmp91);
    }
    if (tmp___9) {
      {
      __cil_tmp92 = (unsigned long )us;
      __cil_tmp93 = __cil_tmp92 + 208;
      __cil_tmp94 = *((struct urb **)__cil_tmp93);
      usb_unlink_urb(__cil_tmp94);
      }
    } else {
    }
  } else {
  }
  tmp___12 = (long )timeout;
  if (tmp___12) {
  } else {
    __cil_tmp95 = 0xffffffffffffffffUL >> 1;
    tmp___12 = (long )__cil_tmp95;
  }
  {
  __cil_tmp96 = (unsigned long )tmp___12;
  timeleft = wait_for_completion_interruptible_timeout(& urb_done, __cil_tmp96);
  __cil_tmp97 = (unsigned long )us;
  __cil_tmp98 = __cil_tmp97 + 104;
  __cil_tmp99 = (unsigned long *)__cil_tmp98;
  __cil_tmp100 = (unsigned long volatile *)__cil_tmp99;
  clear_bit(0, __cil_tmp100);
  }
  if (timeleft <= 0L) {
    {
    __cil_tmp101 = (unsigned long )us;
    __cil_tmp102 = __cil_tmp101 + 208;
    __cil_tmp103 = *((struct urb **)__cil_tmp102);
    usb_kill_urb(__cil_tmp103);
    }
  } else {
  }
  {
  __cil_tmp104 = (unsigned long )us;
  __cil_tmp105 = __cil_tmp104 + 208;
  __cil_tmp106 = *((struct urb **)__cil_tmp105);
  __cil_tmp107 = (unsigned long )__cil_tmp106;
  __cil_tmp108 = __cil_tmp107 + 96;
  return (*((int *)__cil_tmp108));
  }
}
}
int usb_stor_control_msg(struct us_data *us , unsigned int pipe , u8 request , u8 requesttype ,
                         u16 value , u16 index , void *data , u16 size , int timeout )
{ int status ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct usb_ctrlrequest *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct usb_ctrlrequest *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct usb_ctrlrequest *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct usb_ctrlrequest *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct usb_ctrlrequest *__cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  struct urb *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  struct usb_device *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  struct usb_ctrlrequest *__cil_tmp42 ;
  unsigned char *__cil_tmp43 ;
  int __cil_tmp44 ;
  void *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  struct urb *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  u32 __cil_tmp51 ;
  {
  {
  __cil_tmp11 = (unsigned long )us;
  __cil_tmp12 = __cil_tmp11 + 216;
  __cil_tmp13 = *((struct usb_ctrlrequest **)__cil_tmp12);
  *((__u8 *)__cil_tmp13) = requesttype;
  __cil_tmp14 = (unsigned long )us;
  __cil_tmp15 = __cil_tmp14 + 216;
  __cil_tmp16 = *((struct usb_ctrlrequest **)__cil_tmp15);
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 + 1;
  *((__u8 *)__cil_tmp18) = request;
  __cil_tmp19 = (unsigned long )us;
  __cil_tmp20 = __cil_tmp19 + 216;
  __cil_tmp21 = *((struct usb_ctrlrequest **)__cil_tmp20);
  __cil_tmp22 = (unsigned long )__cil_tmp21;
  __cil_tmp23 = __cil_tmp22 + 2;
  *((__le16 *)__cil_tmp23) = value;
  __cil_tmp24 = (unsigned long )us;
  __cil_tmp25 = __cil_tmp24 + 216;
  __cil_tmp26 = *((struct usb_ctrlrequest **)__cil_tmp25);
  __cil_tmp27 = (unsigned long )__cil_tmp26;
  __cil_tmp28 = __cil_tmp27 + 4;
  *((__le16 *)__cil_tmp28) = index;
  __cil_tmp29 = (unsigned long )us;
  __cil_tmp30 = __cil_tmp29 + 216;
  __cil_tmp31 = *((struct usb_ctrlrequest **)__cil_tmp30);
  __cil_tmp32 = (unsigned long )__cil_tmp31;
  __cil_tmp33 = __cil_tmp32 + 6;
  *((__le16 *)__cil_tmp33) = size;
  __cil_tmp34 = (unsigned long )us;
  __cil_tmp35 = __cil_tmp34 + 208;
  __cil_tmp36 = *((struct urb **)__cil_tmp35);
  __cil_tmp37 = (unsigned long )us;
  __cil_tmp38 = __cil_tmp37 + 72;
  __cil_tmp39 = *((struct usb_device **)__cil_tmp38);
  __cil_tmp40 = (unsigned long )us;
  __cil_tmp41 = __cil_tmp40 + 216;
  __cil_tmp42 = *((struct usb_ctrlrequest **)__cil_tmp41);
  __cil_tmp43 = (unsigned char *)__cil_tmp42;
  __cil_tmp44 = (int )size;
  __cil_tmp45 = (void *)0;
  usb_fill_control_urb(__cil_tmp36, __cil_tmp39, pipe, __cil_tmp43, data, __cil_tmp44,
                       & usb_stor_blocking_completion, __cil_tmp45);
  status = usb_stor_msg_common(us, timeout);
  }
  if (status == 0) {
    __cil_tmp46 = (unsigned long )us;
    __cil_tmp47 = __cil_tmp46 + 208;
    __cil_tmp48 = *((struct urb **)__cil_tmp47);
    __cil_tmp49 = (unsigned long )__cil_tmp48;
    __cil_tmp50 = __cil_tmp49 + 140;
    __cil_tmp51 = *((u32 *)__cil_tmp50);
    status = (int )__cil_tmp51;
  } else {
  }
  return (status);
}
}
int usb_stor_clear_halt(struct us_data *us , unsigned int pipe )
{ int result ;
  int endp ;
  unsigned int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  u8 __cil_tmp10 ;
  u8 __cil_tmp11 ;
  u16 __cil_tmp12 ;
  u16 __cil_tmp13 ;
  void *__cil_tmp14 ;
  u16 __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct usb_device *__cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  {
  __cil_tmp5 = pipe >> 15;
  __cil_tmp6 = __cil_tmp5 & 15U;
  endp = (int )__cil_tmp6;
  if (pipe & 128U) {
    endp = endp | 128;
  } else {
  }
  {
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 120;
  __cil_tmp9 = *((unsigned int *)__cil_tmp8);
  __cil_tmp10 = (u8 )1;
  __cil_tmp11 = (u8 )2;
  __cil_tmp12 = (u16 )0;
  __cil_tmp13 = (u16 )endp;
  __cil_tmp14 = (void *)0;
  __cil_tmp15 = (u16 )0;
  result = usb_stor_control_msg(us, __cil_tmp9, __cil_tmp10, __cil_tmp11, __cil_tmp12,
                                __cil_tmp13, __cil_tmp14, __cil_tmp15, 750);
  }
  if (result >= 0) {
    {
    __cil_tmp16 = (unsigned long )us;
    __cil_tmp17 = __cil_tmp16 + 72;
    __cil_tmp18 = *((struct usb_device **)__cil_tmp17);
    __cil_tmp19 = (unsigned int )endp;
    usb_reset_endpoint(__cil_tmp18, __cil_tmp19);
    }
  } else {
  }
  return (result);
}
}
static int interpret_urb_result(struct us_data *us , unsigned int pipe , unsigned int length ,
                                int result , unsigned int partial )
{ int tmp___7 ;
  unsigned int __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  {
  if (result == 0) {
    goto case_0;
  } else
  if (result == -32) {
    goto case_neg_32;
  } else
  if (result == -75) {
    goto case_neg_75;
  } else
  if (result == -104) {
    goto case_neg_104;
  } else
  if (result == -121) {
    goto case_neg_121;
  } else
  if (result == -5) {
    goto case_neg_5;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      if (partial != length) {
        return (1);
      } else {
      }
      return (0);
      case_neg_32:
      {
      __cil_tmp7 = pipe >> 30;
      __cil_tmp8 = __cil_tmp7 & 3U;
      if (__cil_tmp8 == 2U) {
        return (2);
      } else {
      }
      }
      {
      tmp___7 = usb_stor_clear_halt(us, pipe);
      }
      if (tmp___7 < 0) {
        return (4);
      } else {
      }
      return (2);
      case_neg_75:
      return (3);
      case_neg_104:
      return (4);
      case_neg_121:
      return (1);
      case_neg_5:
      return (4);
      switch_default:
      return (4);
    } else {
      switch_break: ;
    }
    }
  }
}
}
int usb_stor_bulk_transfer_buf(struct us_data *us , unsigned int pipe , void *buf ,
                               unsigned int length , unsigned int *act_len )
{ int result ;
  int tmp___7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct urb *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct usb_device *__cil_tmp13 ;
  int __cil_tmp14 ;
  void *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct urb *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct urb *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  u32 __cil_tmp26 ;
  {
  {
  __cil_tmp8 = (unsigned long )us;
  __cil_tmp9 = __cil_tmp8 + 208;
  __cil_tmp10 = *((struct urb **)__cil_tmp9);
  __cil_tmp11 = (unsigned long )us;
  __cil_tmp12 = __cil_tmp11 + 72;
  __cil_tmp13 = *((struct usb_device **)__cil_tmp12);
  __cil_tmp14 = (int )length;
  __cil_tmp15 = (void *)0;
  usb_fill_bulk_urb(__cil_tmp10, __cil_tmp13, pipe, buf, __cil_tmp14, & usb_stor_blocking_completion,
                    __cil_tmp15);
  result = usb_stor_msg_common(us, 0);
  }
  if (act_len) {
    __cil_tmp16 = (unsigned long )us;
    __cil_tmp17 = __cil_tmp16 + 208;
    __cil_tmp18 = *((struct urb **)__cil_tmp17);
    __cil_tmp19 = (unsigned long )__cil_tmp18;
    __cil_tmp20 = __cil_tmp19 + 140;
    *act_len = *((u32 *)__cil_tmp20);
  } else {
  }
  {
  __cil_tmp21 = (unsigned long )us;
  __cil_tmp22 = __cil_tmp21 + 208;
  __cil_tmp23 = *((struct urb **)__cil_tmp22);
  __cil_tmp24 = (unsigned long )__cil_tmp23;
  __cil_tmp25 = __cil_tmp24 + 140;
  __cil_tmp26 = *((u32 *)__cil_tmp25);
  tmp___7 = interpret_urb_result(us, pipe, length, result, __cil_tmp26);
  }
  return (tmp___7);
}
}
static int usb_stor_bulk_transfer_sglist(struct us_data *us , unsigned int pipe ,
                                         struct scatterlist *sg , int num_sg , unsigned int length ,
                                         unsigned int *act_len )
{ int result ;
  int tmp___7 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___12 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long *__cil_tmp16 ;
  unsigned long volatile *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct usb_sg_request *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct usb_device *__cil_tmp23 ;
  size_t __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long *__cil_tmp27 ;
  unsigned long volatile *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long *__cil_tmp31 ;
  unsigned long volatile *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long *__cil_tmp35 ;
  unsigned long volatile *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  struct usb_sg_request *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  struct usb_sg_request *__cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long *__cil_tmp45 ;
  unsigned long volatile *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  size_t __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  size_t __cil_tmp56 ;
  unsigned int __cil_tmp57 ;
  {
  {
  __cil_tmp14 = (unsigned long )us;
  __cil_tmp15 = __cil_tmp14 + 104;
  __cil_tmp16 = (unsigned long *)__cil_tmp15;
  __cil_tmp17 = (unsigned long volatile *)__cil_tmp16;
  tmp___7 = ant_test_bit(2U, __cil_tmp17);
  }
  if (tmp___7) {
    return (4);
  } else {
  }
  {
  __cil_tmp18 = (unsigned long )us;
  __cil_tmp19 = __cil_tmp18 + 224;
  __cil_tmp20 = (struct usb_sg_request *)__cil_tmp19;
  __cil_tmp21 = (unsigned long )us;
  __cil_tmp22 = __cil_tmp21 + 72;
  __cil_tmp23 = *((struct usb_device **)__cil_tmp22);
  __cil_tmp24 = (size_t )length;
  result = usb_sg_init(__cil_tmp20, __cil_tmp23, pipe, 0U, sg, num_sg, __cil_tmp24,
                       16U);
  }
  if (result) {
    return (4);
  } else {
  }
  {
  __cil_tmp25 = (unsigned long )us;
  __cil_tmp26 = __cil_tmp25 + 104;
  __cil_tmp27 = (unsigned long *)__cil_tmp26;
  __cil_tmp28 = (unsigned long volatile *)__cil_tmp27;
  set_bit(1U, __cil_tmp28);
  __cil_tmp29 = (unsigned long )us;
  __cil_tmp30 = __cil_tmp29 + 104;
  __cil_tmp31 = (unsigned long *)__cil_tmp30;
  __cil_tmp32 = (unsigned long volatile *)__cil_tmp31;
  tmp___10 = ant_test_bit(2U, __cil_tmp32);
  }
  if (tmp___10) {
    {
    __cil_tmp33 = (unsigned long )us;
    __cil_tmp34 = __cil_tmp33 + 104;
    __cil_tmp35 = (unsigned long *)__cil_tmp34;
    __cil_tmp36 = (unsigned long volatile *)__cil_tmp35;
    tmp___9 = test_and_clear_bit(1, __cil_tmp36);
    }
    if (tmp___9) {
      {
      __cil_tmp37 = (unsigned long )us;
      __cil_tmp38 = __cil_tmp37 + 224;
      __cil_tmp39 = (struct usb_sg_request *)__cil_tmp38;
      usb_sg_cancel(__cil_tmp39);
      }
    } else {
    }
  } else {
  }
  {
  __cil_tmp40 = (unsigned long )us;
  __cil_tmp41 = __cil_tmp40 + 224;
  __cil_tmp42 = (struct usb_sg_request *)__cil_tmp41;
  usb_sg_wait(__cil_tmp42);
  __cil_tmp43 = (unsigned long )us;
  __cil_tmp44 = __cil_tmp43 + 104;
  __cil_tmp45 = (unsigned long *)__cil_tmp44;
  __cil_tmp46 = (unsigned long volatile *)__cil_tmp45;
  clear_bit(1, __cil_tmp46);
  __cil_tmp47 = (unsigned long )us;
  __cil_tmp48 = __cil_tmp47 + 224;
  result = *((int *)__cil_tmp48);
  }
  if (act_len) {
    __cil_tmp49 = 224 + 8;
    __cil_tmp50 = (unsigned long )us;
    __cil_tmp51 = __cil_tmp50 + __cil_tmp49;
    __cil_tmp52 = *((size_t *)__cil_tmp51);
    *act_len = (unsigned int )__cil_tmp52;
  } else {
  }
  {
  __cil_tmp53 = 224 + 8;
  __cil_tmp54 = (unsigned long )us;
  __cil_tmp55 = __cil_tmp54 + __cil_tmp53;
  __cil_tmp56 = *((size_t *)__cil_tmp55);
  __cil_tmp57 = (unsigned int )__cil_tmp56;
  tmp___12 = interpret_urb_result(us, pipe, length, result, __cil_tmp57);
  }
  return (tmp___12);
}
}
int usb_stor_bulk_srb(struct us_data *us , unsigned int pipe , struct scsi_cmnd *srb )
{ unsigned int partial ;
  int result ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  struct scatterlist *tmp___9 ;
  int tmp___10 ;
  unsigned int tmp___11 ;
  int __cil_tmp11 ;
  unsigned int *__cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  int __cil_tmp15 ;
  {
  {
  tmp___7 = scsi_bufflen(srb);
  tmp___8 = scsi_sg_count(srb);
  tmp___9 = scsi_sglist(srb);
  __cil_tmp11 = (int )tmp___8;
  tmp___10 = usb_stor_bulk_transfer_sglist(us, pipe, tmp___9, __cil_tmp11, tmp___7,
                                           & partial);
  result = tmp___10;
  tmp___11 = scsi_bufflen(srb);
  __cil_tmp12 = & partial;
  __cil_tmp13 = *__cil_tmp12;
  __cil_tmp14 = tmp___11 - __cil_tmp13;
  __cil_tmp15 = (int )__cil_tmp14;
  scsi_set_resid(srb, __cil_tmp15);
  }
  return (result);
}
}
int usb_stor_bulk_transfer_sg(struct us_data *us , unsigned int pipe , void *buf ,
                              unsigned int length_left , int use_sg , int *residual )
{ int result ;
  unsigned int partial ;
  struct scatterlist *__cil_tmp9 ;
  unsigned int *__cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned int *__cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  {
  if (use_sg) {
    {
    __cil_tmp9 = (struct scatterlist *)buf;
    result = usb_stor_bulk_transfer_sglist(us, pipe, __cil_tmp9, use_sg, length_left,
                                           & partial);
    __cil_tmp10 = & partial;
    __cil_tmp11 = *__cil_tmp10;
    length_left = length_left - __cil_tmp11;
    }
  } else {
    {
    result = usb_stor_bulk_transfer_buf(us, pipe, buf, length_left, & partial);
    __cil_tmp12 = & partial;
    __cil_tmp13 = *__cil_tmp12;
    length_left = length_left - __cil_tmp13;
    }
  }
  if (residual) {
    *residual = (int )length_left;
  } else {
  }
  return (result);
}
}
void usb_stor_invoke_transport(struct scsi_cmnd *srb , struct us_data *us )
{ int need_auto_sense ;
  int result ;
  int tmp___7 ;
  int temp_result ;
  struct scsi_eh_save ses ;
  int tmp___9 ;
  unsigned int tmp___11 ;
  int tmp___12 ;
  struct Scsi_Host *tmp___13 ;
  struct Scsi_Host *tmp___14 ;
  struct Scsi_Host *tmp___15 ;
  struct Scsi_Host *tmp___16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int (*__cil_tmp19)(struct scsi_cmnd * , struct us_data * ) ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long *__cil_tmp22 ;
  unsigned long volatile *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  u8 __cil_tmp34 ;
  int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  u8 __cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  enum dma_data_direction __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  void *__cil_tmp44 ;
  unsigned char *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  u8 __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  u8 __cil_tmp54 ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  u8 __cil_tmp60 ;
  int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  int (*__cil_tmp68)(struct scsi_cmnd * , struct us_data * ) ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct scsi_cmnd *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long *__cil_tmp74 ;
  unsigned long volatile *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned char *__cil_tmp88 ;
  unsigned char *__cil_tmp89 ;
  unsigned char __cil_tmp90 ;
  int __cil_tmp91 ;
  int __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned char *__cil_tmp95 ;
  unsigned char *__cil_tmp96 ;
  unsigned char __cil_tmp97 ;
  int __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned char *__cil_tmp101 ;
  unsigned char *__cil_tmp102 ;
  unsigned char __cil_tmp103 ;
  int __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned char *__cil_tmp109 ;
  unsigned char *__cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  int __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned int __cil_tmp116 ;
  unsigned int __cil_tmp117 ;
  unsigned int __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  spinlock_t *__cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long *__cil_tmp126 ;
  unsigned long volatile *__cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long *__cil_tmp130 ;
  unsigned long volatile *__cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  spinlock_t *__cil_tmp134 ;
  struct mutex *__cil_tmp135 ;
  struct mutex *__cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  spinlock_t *__cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  spinlock_t *__cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  int (*__cil_tmp145)(struct us_data * ) ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long *__cil_tmp148 ;
  unsigned long volatile *__cil_tmp149 ;
  {
  {
  usb_stor_print_cmd(srb);
  scsi_set_resid(srb, 0);
  __cil_tmp17 = (unsigned long )us;
  __cil_tmp18 = __cil_tmp17 + 168;
  __cil_tmp19 = *((int (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp18);
  result = (*__cil_tmp19)(srb, us);
  __cil_tmp20 = (unsigned long )us;
  __cil_tmp21 = __cil_tmp20 + 104;
  __cil_tmp22 = (unsigned long *)__cil_tmp21;
  __cil_tmp23 = (unsigned long volatile *)__cil_tmp22;
  tmp___7 = ant_test_bit(5U, __cil_tmp23);
  }
  if (tmp___7) {
    __cil_tmp24 = (unsigned long )srb;
    __cil_tmp25 = __cil_tmp24 + 224;
    *((int *)__cil_tmp25) = 5 << 16;
    goto Handle_Errors;
  } else {
  }
  if (result == 3) {
    __cil_tmp26 = (unsigned long )srb;
    __cil_tmp27 = __cil_tmp26 + 224;
    *((int *)__cil_tmp27) = 7 << 16;
    goto Handle_Errors;
  } else {
  }
  if (result == 2) {
    __cil_tmp28 = (unsigned long )srb;
    __cil_tmp29 = __cil_tmp28 + 224;
    *((int *)__cil_tmp29) = 2;
    return;
  } else {
  }
  __cil_tmp30 = (unsigned long )srb;
  __cil_tmp31 = __cil_tmp30 + 224;
  *((int *)__cil_tmp31) = 0;
  need_auto_sense = 0;
  {
  __cil_tmp32 = (unsigned long )us;
  __cil_tmp33 = __cil_tmp32 + 157;
  __cil_tmp34 = *((u8 *)__cil_tmp33);
  __cil_tmp35 = (int )__cil_tmp34;
  if (__cil_tmp35 == 1) {
    goto _L;
  } else {
    {
    __cil_tmp36 = (unsigned long )us;
    __cil_tmp37 = __cil_tmp36 + 157;
    __cil_tmp38 = *((u8 *)__cil_tmp37);
    __cil_tmp39 = (int )__cil_tmp38;
    if (__cil_tmp39 == 240) {
      _L:
      {
      __cil_tmp40 = (unsigned long )srb;
      __cil_tmp41 = __cil_tmp40 + 76;
      __cil_tmp42 = *((enum dma_data_direction *)__cil_tmp41);
      __cil_tmp43 = (unsigned int )__cil_tmp42;
      if (__cil_tmp43 != 2U) {
        need_auto_sense = 1;
      } else {
      }
      }
    } else {
    }
    }
  }
  }
  if (result == 1) {
    need_auto_sense = 1;
  } else {
  }
  if (need_auto_sense) {
    {
    printk("<6>keucr: Issuing auto-REQUEST_SENSE\n");
    __cil_tmp44 = (void *)0;
    __cil_tmp45 = (unsigned char *)__cil_tmp44;
    scsi_eh_prep_cmnd(srb, & ses, __cil_tmp45, 0, 18U);
    }
    {
    __cil_tmp46 = (unsigned long )us;
    __cil_tmp47 = __cil_tmp46 + 156;
    __cil_tmp48 = *((u8 *)__cil_tmp47);
    __cil_tmp49 = (int )__cil_tmp48;
    if (__cil_tmp49 == 1) {
      __cil_tmp50 = (unsigned long )srb;
      __cil_tmp51 = __cil_tmp50 + 74;
      *((unsigned short *)__cil_tmp51) = (unsigned short)6;
    } else {
      {
      __cil_tmp52 = (unsigned long )us;
      __cil_tmp53 = __cil_tmp52 + 156;
      __cil_tmp54 = *((u8 *)__cil_tmp53);
      __cil_tmp55 = (int )__cil_tmp54;
      if (__cil_tmp55 == 6) {
        __cil_tmp56 = (unsigned long )srb;
        __cil_tmp57 = __cil_tmp56 + 74;
        *((unsigned short *)__cil_tmp57) = (unsigned short)6;
      } else {
        {
        __cil_tmp58 = (unsigned long )us;
        __cil_tmp59 = __cil_tmp58 + 156;
        __cil_tmp60 = *((u8 *)__cil_tmp59);
        __cil_tmp61 = (int )__cil_tmp60;
        if (__cil_tmp61 == 241) {
          __cil_tmp62 = (unsigned long )srb;
          __cil_tmp63 = __cil_tmp62 + 74;
          *((unsigned short *)__cil_tmp63) = (unsigned short)6;
        } else {
          __cil_tmp64 = (unsigned long )srb;
          __cil_tmp65 = __cil_tmp64 + 74;
          *((unsigned short *)__cil_tmp65) = (unsigned short)12;
        }
        }
      }
      }
    }
    }
    {
    scsi_set_resid(srb, 0);
    __cil_tmp66 = (unsigned long )us;
    __cil_tmp67 = __cil_tmp66 + 168;
    __cil_tmp68 = *((int (**)(struct scsi_cmnd * , struct us_data * ))__cil_tmp67);
    __cil_tmp69 = (unsigned long )us;
    __cil_tmp70 = __cil_tmp69 + 192;
    __cil_tmp71 = *((struct scsi_cmnd **)__cil_tmp70);
    temp_result = (*__cil_tmp68)(__cil_tmp71, us);
    scsi_eh_restore_cmnd(srb, & ses);
    __cil_tmp72 = (unsigned long )us;
    __cil_tmp73 = __cil_tmp72 + 104;
    __cil_tmp74 = (unsigned long *)__cil_tmp73;
    __cil_tmp75 = (unsigned long volatile *)__cil_tmp74;
    tmp___9 = ant_test_bit(5U, __cil_tmp75);
    }
    if (tmp___9) {
      __cil_tmp76 = (unsigned long )srb;
      __cil_tmp77 = __cil_tmp76 + 224;
      *((int *)__cil_tmp77) = 5 << 16;
      goto Handle_Errors;
    } else {
    }
    if (temp_result != 0) {
      __cil_tmp78 = (unsigned long )srb;
      __cil_tmp79 = __cil_tmp78 + 224;
      *((int *)__cil_tmp79) = 7 << 16;
      {
      __cil_tmp80 = (unsigned long )us;
      __cil_tmp81 = __cil_tmp80 + 96;
      __cil_tmp82 = *((unsigned long *)__cil_tmp81);
      __cil_tmp83 = __cil_tmp82 & 4UL;
      if (! __cil_tmp83) {
        goto Handle_Errors;
      } else {
      }
      }
      return;
    } else {
    }
    __cil_tmp84 = (unsigned long )srb;
    __cil_tmp85 = __cil_tmp84 + 224;
    *((int *)__cil_tmp85) = 2;
    if (result == 0) {
      {
      __cil_tmp86 = (unsigned long )srb;
      __cil_tmp87 = __cil_tmp86 + 136;
      __cil_tmp88 = *((unsigned char **)__cil_tmp87);
      __cil_tmp89 = __cil_tmp88 + 2;
      __cil_tmp90 = *__cil_tmp89;
      __cil_tmp91 = (int )__cil_tmp90;
      __cil_tmp92 = __cil_tmp91 & 175;
      if (__cil_tmp92 == 0) {
        {
        __cil_tmp93 = (unsigned long )srb;
        __cil_tmp94 = __cil_tmp93 + 136;
        __cil_tmp95 = *((unsigned char **)__cil_tmp94);
        __cil_tmp96 = __cil_tmp95 + 12;
        __cil_tmp97 = *__cil_tmp96;
        __cil_tmp98 = (int )__cil_tmp97;
        if (__cil_tmp98 == 0) {
          {
          __cil_tmp99 = (unsigned long )srb;
          __cil_tmp100 = __cil_tmp99 + 136;
          __cil_tmp101 = *((unsigned char **)__cil_tmp100);
          __cil_tmp102 = __cil_tmp101 + 13;
          __cil_tmp103 = *__cil_tmp102;
          __cil_tmp104 = (int )__cil_tmp103;
          if (__cil_tmp104 == 0) {
            __cil_tmp105 = (unsigned long )srb;
            __cil_tmp106 = __cil_tmp105 + 224;
            *((int *)__cil_tmp106) = 0;
            __cil_tmp107 = (unsigned long )srb;
            __cil_tmp108 = __cil_tmp107 + 136;
            __cil_tmp109 = *((unsigned char **)__cil_tmp108);
            __cil_tmp110 = __cil_tmp109 + 0;
            *__cil_tmp110 = (unsigned char)0;
          } else {
          }
          }
        } else {
        }
        }
      } else {
      }
      }
    } else {
    }
  } else {
  }
  {
  __cil_tmp111 = (unsigned long )srb;
  __cil_tmp112 = __cil_tmp111 + 224;
  __cil_tmp113 = *((int *)__cil_tmp112);
  if (__cil_tmp113 == 0) {
    {
    tmp___11 = scsi_bufflen(srb);
    tmp___12 = scsi_get_resid(srb);
    }
    {
    __cil_tmp114 = (unsigned long )srb;
    __cil_tmp115 = __cil_tmp114 + 120;
    __cil_tmp116 = *((unsigned int *)__cil_tmp115);
    __cil_tmp117 = (unsigned int )tmp___12;
    __cil_tmp118 = tmp___11 - __cil_tmp117;
    if (__cil_tmp118 < __cil_tmp116) {
      __cil_tmp119 = (unsigned long )srb;
      __cil_tmp120 = __cil_tmp119 + 224;
      *((int *)__cil_tmp120) = 7 << 16;
    } else {
    }
    }
  } else {
  }
  }
  return;
  Handle_Errors:
  {
  tmp___13 = us_to_host(us);
  __cil_tmp121 = (unsigned long )tmp___13;
  __cil_tmp122 = __cil_tmp121 + 120;
  __cil_tmp123 = *((spinlock_t **)__cil_tmp122);
  spin_lock_irq(__cil_tmp123);
  __cil_tmp124 = (unsigned long )us;
  __cil_tmp125 = __cil_tmp124 + 104;
  __cil_tmp126 = (unsigned long *)__cil_tmp125;
  __cil_tmp127 = (unsigned long volatile *)__cil_tmp126;
  set_bit(4U, __cil_tmp127);
  __cil_tmp128 = (unsigned long )us;
  __cil_tmp129 = __cil_tmp128 + 104;
  __cil_tmp130 = (unsigned long *)__cil_tmp129;
  __cil_tmp131 = (unsigned long volatile *)__cil_tmp130;
  clear_bit(2, __cil_tmp131);
  tmp___14 = us_to_host(us);
  __cil_tmp132 = (unsigned long )tmp___14;
  __cil_tmp133 = __cil_tmp132 + 120;
  __cil_tmp134 = *((spinlock_t **)__cil_tmp133);
  spin_unlock_irq(__cil_tmp134);
  __cil_tmp135 = (struct mutex *)us;
  mutex_unlock(__cil_tmp135);
  result = usb_stor_port_reset(us);
  __cil_tmp136 = (struct mutex *)us;
  mutex_lock(__cil_tmp136);
  }
  if (result < 0) {
    {
    tmp___15 = us_to_host(us);
    __cil_tmp137 = (unsigned long )tmp___15;
    __cil_tmp138 = __cil_tmp137 + 120;
    __cil_tmp139 = *((spinlock_t **)__cil_tmp138);
    spin_lock_irq(__cil_tmp139);
    usb_stor_report_device_reset(us);
    tmp___16 = us_to_host(us);
    __cil_tmp140 = (unsigned long )tmp___16;
    __cil_tmp141 = __cil_tmp140 + 120;
    __cil_tmp142 = *((spinlock_t **)__cil_tmp141);
    spin_unlock_irq(__cil_tmp142);
    __cil_tmp143 = (unsigned long )us;
    __cil_tmp144 = __cil_tmp143 + 176;
    __cil_tmp145 = *((int (**)(struct us_data * ))__cil_tmp144);
    (*__cil_tmp145)(us);
    }
  } else {
  }
  {
  __cil_tmp146 = (unsigned long )us;
  __cil_tmp147 = __cil_tmp146 + 104;
  __cil_tmp148 = (unsigned long *)__cil_tmp147;
  __cil_tmp149 = (unsigned long volatile *)__cil_tmp148;
  clear_bit(4, __cil_tmp149);
  }
  return;
}
}
void ENE_stor_invoke_transport(struct scsi_cmnd *srb , struct us_data *us )
{ int result ;
  int tmp___7 ;
  unsigned int tmp___9 ;
  int tmp___10 ;
  struct Scsi_Host *tmp___11 ;
  struct Scsi_Host *tmp___12 ;
  struct Scsi_Host *tmp___13 ;
  struct Scsi_Host *tmp___14 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  BYTE __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  BOOLEAN __cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long *__cil_tmp25 ;
  unsigned long volatile *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  spinlock_t *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long *__cil_tmp55 ;
  unsigned long volatile *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long *__cil_tmp59 ;
  unsigned long volatile *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  spinlock_t *__cil_tmp63 ;
  struct mutex *__cil_tmp64 ;
  struct mutex *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  spinlock_t *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  spinlock_t *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  int (*__cil_tmp74)(struct us_data * ) ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long *__cil_tmp77 ;
  unsigned long volatile *__cil_tmp78 ;
  {
  {
  result = 0;
  usb_stor_print_cmd(srb);
  scsi_set_resid(srb, 0);
  }
  {
  __cil_tmp12 = (unsigned long )us;
  __cil_tmp13 = __cil_tmp12 + 594;
  __cil_tmp14 = ((struct _SM_STATUS *)__cil_tmp13)->Ready;
  if (! __cil_tmp14) {
    {
    result = ENE_InitMedia(us);
    }
  } else {
  }
  }
  {
  __cil_tmp15 = (unsigned long )us;
  __cil_tmp16 = __cil_tmp15 + 652;
  __cil_tmp17 = *((BOOLEAN *)__cil_tmp16);
  __cil_tmp18 = (int )__cil_tmp17;
  if (__cil_tmp18 == 1) {
    {
    result = ENE_InitMedia(us);
    __cil_tmp19 = (unsigned long )us;
    __cil_tmp20 = __cil_tmp19 + 652;
    *((BOOLEAN *)__cil_tmp20) = (BOOLEAN )0;
    }
  } else {
  }
  }
  {
  __cil_tmp21 = (unsigned long )us;
  __cil_tmp22 = __cil_tmp21 + 594;
  if (((struct _SM_STATUS *)__cil_tmp22)->Ready) {
    {
    result = SM_SCSIIrp(us, srb);
    }
  } else {
  }
  }
  {
  __cil_tmp23 = (unsigned long )us;
  __cil_tmp24 = __cil_tmp23 + 104;
  __cil_tmp25 = (unsigned long *)__cil_tmp24;
  __cil_tmp26 = (unsigned long volatile *)__cil_tmp25;
  tmp___7 = ant_test_bit(5U, __cil_tmp26);
  }
  if (tmp___7) {
    __cil_tmp27 = (unsigned long )srb;
    __cil_tmp28 = __cil_tmp27 + 224;
    *((int *)__cil_tmp28) = 5 << 16;
    goto Handle_Errors;
  } else {
  }
  if (result == 3) {
    __cil_tmp29 = (unsigned long )srb;
    __cil_tmp30 = __cil_tmp29 + 224;
    *((int *)__cil_tmp30) = 7 << 16;
    goto Handle_Errors;
  } else {
  }
  if (result == 2) {
    __cil_tmp31 = (unsigned long )srb;
    __cil_tmp32 = __cil_tmp31 + 224;
    *((int *)__cil_tmp32) = 2;
    return;
  } else {
  }
  __cil_tmp33 = (unsigned long )srb;
  __cil_tmp34 = __cil_tmp33 + 224;
  *((int *)__cil_tmp34) = 0;
  if (result == 1) {
    {
    __cil_tmp35 = (unsigned long )us;
    __cil_tmp36 = __cil_tmp35 + 648;
    __cil_tmp37 = *((int *)__cil_tmp36);
    BuildSenseBuffer(srb, __cil_tmp37);
    __cil_tmp38 = (unsigned long )srb;
    __cil_tmp39 = __cil_tmp38 + 224;
    *((int *)__cil_tmp39) = 2;
    }
  } else {
  }
  {
  __cil_tmp40 = (unsigned long )srb;
  __cil_tmp41 = __cil_tmp40 + 224;
  __cil_tmp42 = *((int *)__cil_tmp41);
  if (__cil_tmp42 == 0) {
    {
    tmp___9 = scsi_bufflen(srb);
    tmp___10 = scsi_get_resid(srb);
    }
    {
    __cil_tmp43 = (unsigned long )srb;
    __cil_tmp44 = __cil_tmp43 + 120;
    __cil_tmp45 = *((unsigned int *)__cil_tmp44);
    __cil_tmp46 = (unsigned int )tmp___10;
    __cil_tmp47 = tmp___9 - __cil_tmp46;
    if (__cil_tmp47 < __cil_tmp45) {
      __cil_tmp48 = (unsigned long )srb;
      __cil_tmp49 = __cil_tmp48 + 224;
      *((int *)__cil_tmp49) = 7 << 16;
    } else {
    }
    }
  } else {
  }
  }
  return;
  Handle_Errors:
  {
  tmp___11 = us_to_host(us);
  __cil_tmp50 = (unsigned long )tmp___11;
  __cil_tmp51 = __cil_tmp50 + 120;
  __cil_tmp52 = *((spinlock_t **)__cil_tmp51);
  spin_lock_irq(__cil_tmp52);
  __cil_tmp53 = (unsigned long )us;
  __cil_tmp54 = __cil_tmp53 + 104;
  __cil_tmp55 = (unsigned long *)__cil_tmp54;
  __cil_tmp56 = (unsigned long volatile *)__cil_tmp55;
  set_bit(4U, __cil_tmp56);
  __cil_tmp57 = (unsigned long )us;
  __cil_tmp58 = __cil_tmp57 + 104;
  __cil_tmp59 = (unsigned long *)__cil_tmp58;
  __cil_tmp60 = (unsigned long volatile *)__cil_tmp59;
  clear_bit(2, __cil_tmp60);
  tmp___12 = us_to_host(us);
  __cil_tmp61 = (unsigned long )tmp___12;
  __cil_tmp62 = __cil_tmp61 + 120;
  __cil_tmp63 = *((spinlock_t **)__cil_tmp62);
  spin_unlock_irq(__cil_tmp63);
  __cil_tmp64 = (struct mutex *)us;
  mutex_unlock(__cil_tmp64);
  result = usb_stor_port_reset(us);
  __cil_tmp65 = (struct mutex *)us;
  mutex_lock(__cil_tmp65);
  }
  if (result < 0) {
    {
    tmp___13 = us_to_host(us);
    __cil_tmp66 = (unsigned long )tmp___13;
    __cil_tmp67 = __cil_tmp66 + 120;
    __cil_tmp68 = *((spinlock_t **)__cil_tmp67);
    spin_lock_irq(__cil_tmp68);
    usb_stor_report_device_reset(us);
    tmp___14 = us_to_host(us);
    __cil_tmp69 = (unsigned long )tmp___14;
    __cil_tmp70 = __cil_tmp69 + 120;
    __cil_tmp71 = *((spinlock_t **)__cil_tmp70);
    spin_unlock_irq(__cil_tmp71);
    __cil_tmp72 = (unsigned long )us;
    __cil_tmp73 = __cil_tmp72 + 176;
    __cil_tmp74 = *((int (**)(struct us_data * ))__cil_tmp73);
    (*__cil_tmp74)(us);
    }
  } else {
  }
  {
  __cil_tmp75 = (unsigned long )us;
  __cil_tmp76 = __cil_tmp75 + 104;
  __cil_tmp77 = (unsigned long *)__cil_tmp76;
  __cil_tmp78 = (unsigned long volatile *)__cil_tmp77;
  clear_bit(4, __cil_tmp78);
  }
  return;
}
}
void BuildSenseBuffer(struct scsi_cmnd *srb , int SrbStatus )
{ BYTE *buf ;
  BYTE asc ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  void *__cil_tmp7 ;
  size_t __cil_tmp8 ;
  BYTE *__cil_tmp9 ;
  BYTE *__cil_tmp10 ;
  BYTE *__cil_tmp11 ;
  BYTE *__cil_tmp12 ;
  {
  {
  __cil_tmp5 = (unsigned long )srb;
  __cil_tmp6 = __cil_tmp5 + 136;
  buf = *((unsigned char **)__cil_tmp6);
  printk("<6>keucr: transport --- BuildSenseBuffer\n");
  }
  if (SrbStatus == 2) {
    goto case_2;
  } else
  if (SrbStatus == 3) {
    goto case_3;
  } else
  if (SrbStatus == 5) {
    goto case_5;
  } else {
    {
    goto switch_default;
    if (0) {
      case_2:
      asc = (BYTE )58;
      goto switch_break;
      case_3:
      asc = (BYTE )12;
      goto switch_break;
      case_5:
      asc = (BYTE )32;
      goto switch_break;
      switch_default:
      asc = (BYTE )0;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  {
  __cil_tmp7 = (void *)buf;
  __cil_tmp8 = (size_t )18;
  memset(__cil_tmp7, 0, __cil_tmp8);
  __cil_tmp9 = buf + 0;
  *__cil_tmp9 = (BYTE )240;
  __cil_tmp10 = buf + 2;
  *__cil_tmp10 = (BYTE )SrbStatus;
  __cil_tmp11 = buf + 7;
  *__cil_tmp11 = (BYTE )11;
  __cil_tmp12 = buf + 12;
  *__cil_tmp12 = asc;
  }
  return;
}
}
void usb_stor_stop_transport(struct us_data *us )
{ int tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long *__cil_tmp6 ;
  unsigned long volatile *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct urb *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long *__cil_tmp13 ;
  unsigned long volatile *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  struct usb_sg_request *__cil_tmp17 ;
  {
  {
  __cil_tmp4 = (unsigned long )us;
  __cil_tmp5 = __cil_tmp4 + 104;
  __cil_tmp6 = (unsigned long *)__cil_tmp5;
  __cil_tmp7 = (unsigned long volatile *)__cil_tmp6;
  tmp___7 = test_and_clear_bit(0, __cil_tmp7);
  }
  if (tmp___7) {
    {
    __cil_tmp8 = (unsigned long )us;
    __cil_tmp9 = __cil_tmp8 + 208;
    __cil_tmp10 = *((struct urb **)__cil_tmp9);
    usb_unlink_urb(__cil_tmp10);
    }
  } else {
  }
  {
  __cil_tmp11 = (unsigned long )us;
  __cil_tmp12 = __cil_tmp11 + 104;
  __cil_tmp13 = (unsigned long *)__cil_tmp12;
  __cil_tmp14 = (unsigned long volatile *)__cil_tmp13;
  tmp___8 = test_and_clear_bit(1, __cil_tmp14);
  }
  if (tmp___8) {
    {
    __cil_tmp15 = (unsigned long )us;
    __cil_tmp16 = __cil_tmp15 + 224;
    __cil_tmp17 = (struct usb_sg_request *)__cil_tmp16;
    usb_sg_cancel(__cil_tmp17);
    }
  } else {
  }
  return;
}
}
int usb_stor_Bulk_max_lun(struct us_data *us )
{ int result ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned char *__cil_tmp5 ;
  unsigned char *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  u8 __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  u8 __cil_tmp14 ;
  u16 __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u8 __cil_tmp18 ;
  u16 __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned char *__cil_tmp22 ;
  void *__cil_tmp23 ;
  u16 __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned char *__cil_tmp27 ;
  unsigned char *__cil_tmp28 ;
  unsigned char __cil_tmp29 ;
  {
  {
  __cil_tmp3 = (unsigned long )us;
  __cil_tmp4 = __cil_tmp3 + 344;
  __cil_tmp5 = *((unsigned char **)__cil_tmp4);
  __cil_tmp6 = __cil_tmp5 + 0;
  *__cil_tmp6 = (unsigned char)0;
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 124;
  __cil_tmp9 = *((unsigned int *)__cil_tmp8);
  __cil_tmp10 = (u8 )254;
  __cil_tmp11 = 1 << 5;
  __cil_tmp12 = 128 | __cil_tmp11;
  __cil_tmp13 = __cil_tmp12 | 1;
  __cil_tmp14 = (u8 )__cil_tmp13;
  __cil_tmp15 = (u16 )0;
  __cil_tmp16 = (unsigned long )us;
  __cil_tmp17 = __cil_tmp16 + 159;
  __cil_tmp18 = *((u8 *)__cil_tmp17);
  __cil_tmp19 = (u16 )__cil_tmp18;
  __cil_tmp20 = (unsigned long )us;
  __cil_tmp21 = __cil_tmp20 + 344;
  __cil_tmp22 = *((unsigned char **)__cil_tmp21);
  __cil_tmp23 = (void *)__cil_tmp22;
  __cil_tmp24 = (u16 )1;
  result = usb_stor_control_msg(us, __cil_tmp9, __cil_tmp10, __cil_tmp14, __cil_tmp15,
                                __cil_tmp19, __cil_tmp23, __cil_tmp24, 250);
  }
  if (result > 0) {
    {
    __cil_tmp25 = (unsigned long )us;
    __cil_tmp26 = __cil_tmp25 + 344;
    __cil_tmp27 = *((unsigned char **)__cil_tmp26);
    __cil_tmp28 = __cil_tmp27 + 0;
    __cil_tmp29 = *__cil_tmp28;
    return ((int )__cil_tmp29);
    }
  } else {
  }
  return (0);
}
}
int usb_stor_Bulk_transport(struct scsi_cmnd *srb , struct us_data *us )
{ struct bulk_cb_wrap *bcb ;
  struct bulk_cs_wrap *bcs ;
  unsigned int transfer_length ;
  unsigned int tmp___7 ;
  unsigned int residue ;
  int result ;
  int fake_sense ;
  unsigned int cswlen ;
  unsigned int cbwlen ;
  long tmp___8 ;
  size_t __len ;
  void *__ret ;
  long tmp___9 ;
  unsigned int pipe ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp___10 ;
  int _max1 ;
  int tmp___11 ;
  int _max2 ;
  int tmp___12 ;
  int tmp___13 ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned char *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned char *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned char *__cil_tmp42 ;
  unsigned char *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  enum dma_data_direction __cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  struct scsi_device *__cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  struct scsi_device *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned int __cil_tmp78 ;
  unsigned int __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  __u8 __cil_tmp82 ;
  unsigned int __cil_tmp83 ;
  unsigned int __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned short __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  __u8 *__cil_tmp94 ;
  void *__cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  __u8 __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  __u8 *__cil_tmp103 ;
  void *__cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned char *__cil_tmp107 ;
  void *__cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned int __cil_tmp111 ;
  void *__cil_tmp112 ;
  void *__cil_tmp113 ;
  unsigned int *__cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  int __cil_tmp119 ;
  int __cil_tmp120 ;
  long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  enum dma_data_direction __cil_tmp124 ;
  unsigned int __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned int __cil_tmp132 ;
  void *__cil_tmp133 ;
  unsigned int *__cil_tmp134 ;
  unsigned int __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned int __cil_tmp138 ;
  void *__cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned int __cil_tmp142 ;
  void *__cil_tmp143 ;
  void *__cil_tmp144 ;
  unsigned int *__cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned int __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  __u32 __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  __u8 __cil_tmp159 ;
  int __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  __le32 __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  __le32 __cil_tmp168 ;
  __le32 __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  __u8 __cil_tmp176 ;
  int __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned char *__cil_tmp180 ;
  unsigned char *__cil_tmp181 ;
  unsigned char __cil_tmp182 ;
  int __cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  unsigned long __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  unsigned long __cil_tmp190 ;
  unsigned char *__cil_tmp191 ;
  unsigned char *__cil_tmp192 ;
  unsigned char __cil_tmp193 ;
  int __cil_tmp194 ;
  unsigned long __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  unsigned long __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned int *__cil_tmp200 ;
  unsigned int *__cil_tmp201 ;
  unsigned int *__cil_tmp202 ;
  unsigned int __cil_tmp203 ;
  unsigned int *__cil_tmp204 ;
  unsigned int __cil_tmp205 ;
  unsigned int *__cil_tmp206 ;
  unsigned int *__cil_tmp207 ;
  int *__cil_tmp208 ;
  int *__cil_tmp209 ;
  int *__cil_tmp210 ;
  int __cil_tmp211 ;
  int *__cil_tmp212 ;
  int __cil_tmp213 ;
  int *__cil_tmp214 ;
  int *__cil_tmp215 ;
  unsigned long __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  __u8 __cil_tmp218 ;
  unsigned long __cil_tmp219 ;
  unsigned long __cil_tmp220 ;
  unsigned char *__cil_tmp221 ;
  void *__cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  unsigned char *__cil_tmp225 ;
  void *__cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  unsigned long __cil_tmp228 ;
  unsigned char *__cil_tmp229 ;
  void *__cil_tmp230 ;
  unsigned long __cil_tmp231 ;
  unsigned long __cil_tmp232 ;
  unsigned char *__cil_tmp233 ;
  void *__cil_tmp234 ;
  {
  {
  __cil_tmp27 = (unsigned long )us;
  __cil_tmp28 = __cil_tmp27 + 344;
  __cil_tmp29 = *((unsigned char **)__cil_tmp28);
  bcb = (struct bulk_cb_wrap *)__cil_tmp29;
  __cil_tmp30 = (unsigned long )us;
  __cil_tmp31 = __cil_tmp30 + 344;
  __cil_tmp32 = *((unsigned char **)__cil_tmp31);
  bcs = (struct bulk_cs_wrap *)__cil_tmp32;
  tmp___7 = scsi_bufflen(srb);
  transfer_length = tmp___7;
  fake_sense = 0;
  cbwlen = 31U;
  __cil_tmp33 = (unsigned long )us;
  __cil_tmp34 = __cil_tmp33 + 96;
  __cil_tmp35 = *((unsigned long *)__cil_tmp34);
  __cil_tmp36 = __cil_tmp35 & 64UL;
  __cil_tmp37 = ! __cil_tmp36;
  __cil_tmp38 = ! __cil_tmp37;
  __cil_tmp39 = (long )__cil_tmp38;
  tmp___8 = ldv__builtin_expect(__cil_tmp39, 0L);
  }
  if (tmp___8) {
    cbwlen = 32U;
    __cil_tmp40 = (unsigned long )us;
    __cil_tmp41 = __cil_tmp40 + 344;
    __cil_tmp42 = *((unsigned char **)__cil_tmp41);
    __cil_tmp43 = __cil_tmp42 + 31;
    *__cil_tmp43 = (unsigned char)0;
  } else {
  }
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp44 = (unsigned long )bcb;
  __cil_tmp45 = __cil_tmp44 + 8;
  *((__le32 *)__cil_tmp45) = transfer_length;
  {
  __cil_tmp46 = (unsigned long )srb;
  __cil_tmp47 = __cil_tmp46 + 76;
  __cil_tmp48 = *((enum dma_data_direction *)__cil_tmp47);
  __cil_tmp49 = (unsigned int )__cil_tmp48;
  if (__cil_tmp49 == 2U) {
    __cil_tmp50 = (unsigned long )bcb;
    __cil_tmp51 = __cil_tmp50 + 12;
    __cil_tmp52 = 1 << 7;
    *((__u8 *)__cil_tmp51) = (__u8 )__cil_tmp52;
  } else {
    __cil_tmp53 = (unsigned long )bcb;
    __cil_tmp54 = __cil_tmp53 + 12;
    *((__u8 *)__cil_tmp54) = (__u8 )0;
  }
  }
  __cil_tmp55 = (unsigned long )us;
  __cil_tmp56 = __cil_tmp55 + 200;
  __cil_tmp57 = (unsigned long )us;
  __cil_tmp58 = __cil_tmp57 + 200;
  __cil_tmp59 = *((unsigned int *)__cil_tmp58);
  *((unsigned int *)__cil_tmp56) = __cil_tmp59 + 1U;
  __cil_tmp60 = (unsigned long )bcb;
  __cil_tmp61 = __cil_tmp60 + 4;
  __cil_tmp62 = (unsigned long )us;
  __cil_tmp63 = __cil_tmp62 + 200;
  *((__u32 *)__cil_tmp61) = *((unsigned int *)__cil_tmp63);
  __cil_tmp64 = (unsigned long )bcb;
  __cil_tmp65 = __cil_tmp64 + 13;
  __cil_tmp66 = *((struct scsi_device **)srb);
  __cil_tmp67 = (unsigned long )__cil_tmp66;
  __cil_tmp68 = __cil_tmp67 + 156;
  __cil_tmp69 = *((unsigned int *)__cil_tmp68);
  *((__u8 *)__cil_tmp65) = (__u8 )__cil_tmp69;
  {
  __cil_tmp70 = (unsigned long )us;
  __cil_tmp71 = __cil_tmp70 + 96;
  __cil_tmp72 = *((unsigned long *)__cil_tmp71);
  if (__cil_tmp72 & 4UL) {
    __cil_tmp73 = (unsigned long )bcb;
    __cil_tmp74 = __cil_tmp73 + 13;
    __cil_tmp75 = *((struct scsi_device **)srb);
    __cil_tmp76 = (unsigned long )__cil_tmp75;
    __cil_tmp77 = __cil_tmp76 + 152;
    __cil_tmp78 = *((unsigned int *)__cil_tmp77);
    __cil_tmp79 = __cil_tmp78 << 4;
    __cil_tmp80 = (unsigned long )bcb;
    __cil_tmp81 = __cil_tmp80 + 13;
    __cil_tmp82 = *((__u8 *)__cil_tmp81);
    __cil_tmp83 = (unsigned int )__cil_tmp82;
    __cil_tmp84 = __cil_tmp83 | __cil_tmp79;
    *((__u8 *)__cil_tmp74) = (__u8 )__cil_tmp84;
  } else {
  }
  }
  {
  __cil_tmp85 = (unsigned long )bcb;
  __cil_tmp86 = __cil_tmp85 + 14;
  __cil_tmp87 = (unsigned long )srb;
  __cil_tmp88 = __cil_tmp87 + 74;
  __cil_tmp89 = *((unsigned short *)__cil_tmp88);
  *((__u8 *)__cil_tmp86) = (__u8 )__cil_tmp89;
  __cil_tmp90 = 0 * 1UL;
  __cil_tmp91 = 15 + __cil_tmp90;
  __cil_tmp92 = (unsigned long )bcb;
  __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
  __cil_tmp94 = (__u8 *)__cil_tmp93;
  __cil_tmp95 = (void *)__cil_tmp94;
  memset(__cil_tmp95, 0, 16UL);
  __cil_tmp96 = (unsigned long )bcb;
  __cil_tmp97 = __cil_tmp96 + 14;
  __cil_tmp98 = *((__u8 *)__cil_tmp97);
  __len = (size_t )__cil_tmp98;
  __cil_tmp99 = 0 * 1UL;
  __cil_tmp100 = 15 + __cil_tmp99;
  __cil_tmp101 = (unsigned long )bcb;
  __cil_tmp102 = __cil_tmp101 + __cil_tmp100;
  __cil_tmp103 = (__u8 *)__cil_tmp102;
  __cil_tmp104 = (void *)__cil_tmp103;
  __cil_tmp105 = (unsigned long )srb;
  __cil_tmp106 = __cil_tmp105 + 80;
  __cil_tmp107 = *((unsigned char **)__cil_tmp106);
  __cil_tmp108 = (void *)__cil_tmp107;
  __ret = memcpy(__cil_tmp104, __cil_tmp108, __len);
  __cil_tmp109 = (unsigned long )us;
  __cil_tmp110 = __cil_tmp109 + 112;
  __cil_tmp111 = *((unsigned int *)__cil_tmp110);
  __cil_tmp112 = (void *)bcb;
  __cil_tmp113 = (void *)0;
  __cil_tmp114 = (unsigned int *)__cil_tmp113;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp111, __cil_tmp112, cbwlen, __cil_tmp114);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp115 = (unsigned long )us;
  __cil_tmp116 = __cil_tmp115 + 96;
  __cil_tmp117 = *((unsigned long *)__cil_tmp116);
  __cil_tmp118 = __cil_tmp117 & 256UL;
  __cil_tmp119 = ! __cil_tmp118;
  __cil_tmp120 = ! __cil_tmp119;
  __cil_tmp121 = (long )__cil_tmp120;
  tmp___9 = ldv__builtin_expect(__cil_tmp121, 0L);
  }
  if (tmp___9) {
    {
    ___udelay(536875UL);
    }
  } else {
  }
  if (transfer_length) {
    {
    __cil_tmp122 = (unsigned long )srb;
    __cil_tmp123 = __cil_tmp122 + 76;
    __cil_tmp124 = *((enum dma_data_direction *)__cil_tmp123);
    __cil_tmp125 = (unsigned int )__cil_tmp124;
    if (__cil_tmp125 == 2U) {
      __cil_tmp126 = (unsigned long )us;
      __cil_tmp127 = __cil_tmp126 + 116;
      pipe = *((unsigned int *)__cil_tmp127);
    } else {
      __cil_tmp128 = (unsigned long )us;
      __cil_tmp129 = __cil_tmp128 + 112;
      pipe = *((unsigned int *)__cil_tmp129);
    }
    }
    {
    result = usb_stor_bulk_srb(us, pipe, srb);
    }
    if (result == 4) {
      return (3);
    } else {
    }
    if (result == 3) {
      fake_sense = 1;
    } else {
    }
  } else {
  }
  {
  __cil_tmp130 = (unsigned long )us;
  __cil_tmp131 = __cil_tmp130 + 116;
  __cil_tmp132 = *((unsigned int *)__cil_tmp131);
  __cil_tmp133 = (void *)bcs;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp132, __cil_tmp133, 13U, & cswlen);
  }
  if (result == 1) {
    {
    __cil_tmp134 = & cswlen;
    __cil_tmp135 = *__cil_tmp134;
    if (__cil_tmp135 == 0U) {
      {
      __cil_tmp136 = (unsigned long )us;
      __cil_tmp137 = __cil_tmp136 + 116;
      __cil_tmp138 = *((unsigned int *)__cil_tmp137);
      __cil_tmp139 = (void *)bcs;
      result = usb_stor_bulk_transfer_buf(us, __cil_tmp138, __cil_tmp139, 13U, & cswlen);
      }
    } else {
    }
    }
  } else {
  }
  if (result == 2) {
    {
    __cil_tmp140 = (unsigned long )us;
    __cil_tmp141 = __cil_tmp140 + 116;
    __cil_tmp142 = *((unsigned int *)__cil_tmp141);
    __cil_tmp143 = (void *)bcs;
    __cil_tmp144 = (void *)0;
    __cil_tmp145 = (unsigned int *)__cil_tmp144;
    result = usb_stor_bulk_transfer_buf(us, __cil_tmp142, __cil_tmp143, 13U, __cil_tmp145);
    }
  } else {
  }
  if (result != 0) {
    return (3);
  } else {
  }
  __cil_tmp146 = (unsigned long )bcs;
  __cil_tmp147 = __cil_tmp146 + 8;
  residue = *((__le32 *)__cil_tmp147);
  {
  __cil_tmp148 = (unsigned long )us;
  __cil_tmp149 = __cil_tmp148 + 200;
  __cil_tmp150 = *((unsigned int *)__cil_tmp149);
  __cil_tmp151 = (unsigned long )bcs;
  __cil_tmp152 = __cil_tmp151 + 4;
  __cil_tmp153 = *((__u32 *)__cil_tmp152);
  if (__cil_tmp153 == __cil_tmp150) {
    goto _L;
  } else {
    {
    __cil_tmp154 = (unsigned long )us;
    __cil_tmp155 = __cil_tmp154 + 96;
    __cil_tmp156 = *((unsigned long *)__cil_tmp155);
    if (__cil_tmp156 & 16384UL) {
      _L:
      {
      __cil_tmp157 = (unsigned long )bcs;
      __cil_tmp158 = __cil_tmp157 + 12;
      __cil_tmp159 = *((__u8 *)__cil_tmp158);
      __cil_tmp160 = (int )__cil_tmp159;
      if (__cil_tmp160 > 2) {
        return (3);
      } else {
      }
      }
    } else {
      return (3);
    }
    }
  }
  }
  {
  __cil_tmp161 = (unsigned long )us;
  __cil_tmp162 = __cil_tmp161 + 152;
  __cil_tmp163 = *((__le32 *)__cil_tmp162);
  if (! __cil_tmp163) {
    __cil_tmp164 = (unsigned long )us;
    __cil_tmp165 = __cil_tmp164 + 152;
    *((__le32 *)__cil_tmp165) = *((__le32 *)bcs);
  } else {
    {
    __cil_tmp166 = (unsigned long )us;
    __cil_tmp167 = __cil_tmp166 + 152;
    __cil_tmp168 = *((__le32 *)__cil_tmp167);
    __cil_tmp169 = *((__le32 *)bcs);
    if (__cil_tmp169 != __cil_tmp168) {
      return (3);
    } else {
    }
    }
  }
  }
  if (residue) {
    {
    __cil_tmp170 = (unsigned long )us;
    __cil_tmp171 = __cil_tmp170 + 96;
    __cil_tmp172 = *((unsigned long *)__cil_tmp171);
    __cil_tmp173 = __cil_tmp172 & 32UL;
    if (! __cil_tmp173) {
      {
      __cil_tmp174 = (unsigned long )bcs;
      __cil_tmp175 = __cil_tmp174 + 12;
      __cil_tmp176 = *((__u8 *)__cil_tmp175);
      __cil_tmp177 = (int )__cil_tmp176;
      if (__cil_tmp177 == 0) {
        {
        tmp___13 = scsi_get_resid(srb);
        }
        if (tmp___13 == 0) {
          {
          __cil_tmp178 = (unsigned long )srb;
          __cil_tmp179 = __cil_tmp178 + 80;
          __cil_tmp180 = *((unsigned char **)__cil_tmp179);
          __cil_tmp181 = __cil_tmp180 + 0;
          __cil_tmp182 = *__cil_tmp181;
          __cil_tmp183 = (int )__cil_tmp182;
          if (__cil_tmp183 == 18) {
            if (transfer_length == 36U) {
              __cil_tmp184 = (unsigned long )us;
              __cil_tmp185 = __cil_tmp184 + 96;
              __cil_tmp186 = (unsigned long )us;
              __cil_tmp187 = __cil_tmp186 + 96;
              __cil_tmp188 = *((unsigned long *)__cil_tmp187);
              *((unsigned long *)__cil_tmp185) = __cil_tmp188 | 32UL;
            } else {
              goto _L___1;
            }
          } else {
            _L___1:
            {
            __cil_tmp189 = (unsigned long )srb;
            __cil_tmp190 = __cil_tmp189 + 80;
            __cil_tmp191 = *((unsigned char **)__cil_tmp190);
            __cil_tmp192 = __cil_tmp191 + 0;
            __cil_tmp193 = *__cil_tmp192;
            __cil_tmp194 = (int )__cil_tmp193;
            if (__cil_tmp194 == 37) {
              if (transfer_length == 8U) {
                __cil_tmp195 = (unsigned long )us;
                __cil_tmp196 = __cil_tmp195 + 96;
                __cil_tmp197 = (unsigned long )us;
                __cil_tmp198 = __cil_tmp197 + 96;
                __cil_tmp199 = *((unsigned long *)__cil_tmp198);
                *((unsigned long *)__cil_tmp196) = __cil_tmp199 | 32UL;
              } else {
                goto _L___2;
              }
            } else {
              goto _L___2;
            }
            }
          }
          }
        } else {
          goto _L___2;
        }
      } else {
        _L___2:
        __cil_tmp200 = & _min1;
        *__cil_tmp200 = residue;
        __cil_tmp201 = & _min2;
        *__cil_tmp201 = transfer_length;
        {
        __cil_tmp202 = & _min2;
        __cil_tmp203 = *__cil_tmp202;
        __cil_tmp204 = & _min1;
        __cil_tmp205 = *__cil_tmp204;
        if (__cil_tmp205 < __cil_tmp203) {
          __cil_tmp206 = & _min1;
          tmp___10 = *__cil_tmp206;
        } else {
          __cil_tmp207 = & _min2;
          tmp___10 = *__cil_tmp207;
        }
        }
        {
        residue = tmp___10;
        tmp___11 = scsi_get_resid(srb);
        __cil_tmp208 = & _max1;
        *__cil_tmp208 = tmp___11;
        __cil_tmp209 = & _max2;
        *__cil_tmp209 = (int )residue;
        }
        {
        __cil_tmp210 = & _max2;
        __cil_tmp211 = *__cil_tmp210;
        __cil_tmp212 = & _max1;
        __cil_tmp213 = *__cil_tmp212;
        if (__cil_tmp213 > __cil_tmp211) {
          __cil_tmp214 = & _max1;
          tmp___12 = *__cil_tmp214;
        } else {
          __cil_tmp215 = & _max2;
          tmp___12 = *__cil_tmp215;
        }
        }
        {
        scsi_set_resid(srb, tmp___12);
        }
      }
      }
    } else {
    }
    }
  } else {
  }
  {
  __cil_tmp216 = (unsigned long )bcs;
  __cil_tmp217 = __cil_tmp216 + 12;
  __cil_tmp218 = *((__u8 *)__cil_tmp217);
  if ((int )__cil_tmp218 == 0) {
    goto case_0;
  } else
  if ((int )__cil_tmp218 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp218 == 2) {
    goto case_2;
  } else
  if (0) {
    case_0:
    if (fake_sense) {
      __len___0 = 18UL;
      if (__len___0 >= 64UL) {
        {
        __cil_tmp219 = (unsigned long )srb;
        __cil_tmp220 = __cil_tmp219 + 136;
        __cil_tmp221 = *((unsigned char **)__cil_tmp220);
        __cil_tmp222 = (void *)__cil_tmp221;
        __cil_tmp223 = 0 * 1UL;
        __cil_tmp224 = (unsigned long )(usb_stor_sense_invalidCDB) + __cil_tmp223;
        __cil_tmp225 = (unsigned char *)__cil_tmp224;
        __cil_tmp226 = (void *)__cil_tmp225;
        __ret___0 = memcpy(__cil_tmp222, __cil_tmp226, __len___0);
        }
      } else {
        {
        __cil_tmp227 = (unsigned long )srb;
        __cil_tmp228 = __cil_tmp227 + 136;
        __cil_tmp229 = *((unsigned char **)__cil_tmp228);
        __cil_tmp230 = (void *)__cil_tmp229;
        __cil_tmp231 = 0 * 1UL;
        __cil_tmp232 = (unsigned long )(usb_stor_sense_invalidCDB) + __cil_tmp231;
        __cil_tmp233 = (unsigned char *)__cil_tmp232;
        __cil_tmp234 = (void *)__cil_tmp233;
        __ret___0 = memcpy(__cil_tmp230, __cil_tmp234, __len___0);
        }
      }
      return (2);
    } else {
    }
    return (0);
    case_1:
    return (1);
    case_2:
    return (3);
  } else {
    switch_break: ;
  }
  }
  return (3);
}
}
static int usb_stor_reset_common(struct us_data *us , u8 request , u8 requesttype ,
                                 u16 value , u16 index , void *data , u16 size )
{ int result ;
  int result2 ;
  int tmp___7 ;
  long __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp___9 ;
  int tmp___10 ;
  struct task_struct *tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___16 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long *__cil_tmp25 ;
  unsigned long volatile *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long *__cil_tmp32 ;
  unsigned long volatile *__cil_tmp33 ;
  wait_queue_t *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  wait_queue_head_t *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long *__cil_tmp47 ;
  unsigned long volatile *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  wait_queue_head_t *__cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long *__cil_tmp54 ;
  unsigned long volatile *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  {
  {
  __cil_tmp23 = (unsigned long )us;
  __cil_tmp24 = __cil_tmp23 + 104;
  __cil_tmp25 = (unsigned long *)__cil_tmp24;
  __cil_tmp26 = (unsigned long volatile *)__cil_tmp25;
  tmp___7 = ant_test_bit(3U, __cil_tmp26);
  }
  if (tmp___7) {
    return (-5);
  } else {
  }
  {
  __cil_tmp27 = (unsigned long )us;
  __cil_tmp28 = __cil_tmp27 + 120;
  __cil_tmp29 = *((unsigned int *)__cil_tmp28);
  result = usb_stor_control_msg(us, __cil_tmp29, request, requesttype, value, index,
                                data, size, 1250);
  }
  if (result < 0) {
    return (result);
  } else {
  }
  {
  __ret = 1500L;
  __cil_tmp30 = (unsigned long )us;
  __cil_tmp31 = __cil_tmp30 + 104;
  __cil_tmp32 = (unsigned long *)__cil_tmp31;
  __cil_tmp33 = (unsigned long volatile *)__cil_tmp32;
  tmp___14 = ant_test_bit(3U, __cil_tmp33);
  }
  if (tmp___14) {
  } else {
    {
    while (1) {
      while_continue: ;
      {
      tmp___9 = get_current();
      __cil_tmp34 = & __wait;
      *((unsigned int *)__cil_tmp34) = 0U;
      __cil_tmp35 = (unsigned long )(& __wait) + 8;
      *((void **)__cil_tmp35) = (void *)tmp___9;
      __cil_tmp36 = (unsigned long )(& __wait) + 16;
      *((int (**)(wait_queue_t *wait , unsigned int mode , int flags , void *key ))__cil_tmp36) = & autoremove_wake_function;
      __cil_tmp37 = (unsigned long )(& __wait) + 24;
      __cil_tmp38 = (unsigned long )(& __wait) + 24;
      *((struct list_head **)__cil_tmp37) = (struct list_head *)__cil_tmp38;
      __cil_tmp39 = 24 + 8;
      __cil_tmp40 = (unsigned long )(& __wait) + __cil_tmp39;
      __cil_tmp41 = (unsigned long )(& __wait) + 24;
      *((struct list_head **)__cil_tmp40) = (struct list_head *)__cil_tmp41;
      }
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp42 = (unsigned long )us;
        __cil_tmp43 = __cil_tmp42 + 480;
        __cil_tmp44 = (wait_queue_head_t *)__cil_tmp43;
        prepare_to_wait(__cil_tmp44, & __wait, 1);
        __cil_tmp45 = (unsigned long )us;
        __cil_tmp46 = __cil_tmp45 + 104;
        __cil_tmp47 = (unsigned long *)__cil_tmp46;
        __cil_tmp48 = (unsigned long volatile *)__cil_tmp47;
        tmp___10 = ant_test_bit(3U, __cil_tmp48);
        }
        if (tmp___10) {
          goto while_break___0;
        } else {
        }
        {
        tmp___12 = get_current();
        tmp___13 = signal_pending(tmp___12);
        }
        if (tmp___13) {
        } else {
          {
          __ret = schedule_timeout(__ret);
          }
          if (! __ret) {
            goto while_break___0;
          } else {
          }
          goto __Cont;
        }
        __ret = -512L;
        goto while_break___0;
        __Cont: ;
      }
      while_break___0: ;
      }
      {
      __cil_tmp49 = (unsigned long )us;
      __cil_tmp50 = __cil_tmp49 + 480;
      __cil_tmp51 = (wait_queue_head_t *)__cil_tmp50;
      finish_wait(__cil_tmp51, & __wait);
      }
      goto while_break;
    }
    while_break: ;
    }
  }
  {
  __cil_tmp52 = (unsigned long )us;
  __cil_tmp53 = __cil_tmp52 + 104;
  __cil_tmp54 = (unsigned long *)__cil_tmp53;
  __cil_tmp55 = (unsigned long volatile *)__cil_tmp54;
  tmp___16 = ant_test_bit(3U, __cil_tmp55);
  }
  if (tmp___16) {
    return (-5);
  } else {
  }
  {
  __cil_tmp56 = (unsigned long )us;
  __cil_tmp57 = __cil_tmp56 + 116;
  __cil_tmp58 = *((unsigned int *)__cil_tmp57);
  result = usb_stor_clear_halt(us, __cil_tmp58);
  __cil_tmp59 = (unsigned long )us;
  __cil_tmp60 = __cil_tmp59 + 112;
  __cil_tmp61 = *((unsigned int *)__cil_tmp60);
  result2 = usb_stor_clear_halt(us, __cil_tmp61);
  }
  if (result >= 0) {
    result = result2;
  } else {
  }
  return (result);
}
}
int usb_stor_Bulk_reset(struct us_data *us )
{ int tmp___7 ;
  u8 __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  u8 __cil_tmp6 ;
  u16 __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  u8 __cil_tmp10 ;
  u16 __cil_tmp11 ;
  void *__cil_tmp12 ;
  u16 __cil_tmp13 ;
  {
  {
  __cil_tmp3 = (u8 )255;
  __cil_tmp4 = 1 << 5;
  __cil_tmp5 = __cil_tmp4 | 1;
  __cil_tmp6 = (u8 )__cil_tmp5;
  __cil_tmp7 = (u16 )0;
  __cil_tmp8 = (unsigned long )us;
  __cil_tmp9 = __cil_tmp8 + 159;
  __cil_tmp10 = *((u8 *)__cil_tmp9);
  __cil_tmp11 = (u16 )__cil_tmp10;
  __cil_tmp12 = (void *)0;
  __cil_tmp13 = (u16 )0;
  tmp___7 = usb_stor_reset_common(us, __cil_tmp3, __cil_tmp6, __cil_tmp7, __cil_tmp11,
                                  __cil_tmp12, __cil_tmp13);
  }
  return (tmp___7);
}
}
int usb_stor_port_reset(struct us_data *us )
{ int result ;
  int tmp___7 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct usb_device *__cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct usb_interface *__cil_tmp10 ;
  struct usb_interface *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long *__cil_tmp14 ;
  unsigned long volatile *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct usb_device *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct usb_device *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  struct device *__cil_tmp24 ;
  {
  {
  __cil_tmp5 = (unsigned long )us;
  __cil_tmp6 = __cil_tmp5 + 72;
  __cil_tmp7 = *((struct usb_device **)__cil_tmp6);
  __cil_tmp8 = (unsigned long )us;
  __cil_tmp9 = __cil_tmp8 + 80;
  __cil_tmp10 = *((struct usb_interface **)__cil_tmp9);
  __cil_tmp11 = (struct usb_interface *)__cil_tmp10;
  result = usb_lock_device_for_reset(__cil_tmp7, __cil_tmp11);
  }
  if (result < 0) {
    {
    printk("<6>keucr: unable to lock device for reset: %d\n", result);
    }
  } else {
    {
    __cil_tmp12 = (unsigned long )us;
    __cil_tmp13 = __cil_tmp12 + 104;
    __cil_tmp14 = (unsigned long *)__cil_tmp13;
    __cil_tmp15 = (unsigned long volatile *)__cil_tmp14;
    tmp___7 = ant_test_bit(3U, __cil_tmp15);
    }
    if (tmp___7) {
      result = -5;
    } else {
      {
      __cil_tmp16 = (unsigned long )us;
      __cil_tmp17 = __cil_tmp16 + 72;
      __cil_tmp18 = *((struct usb_device **)__cil_tmp17);
      result = usb_reset_device(__cil_tmp18);
      }
    }
    {
    __cil_tmp19 = (unsigned long )us;
    __cil_tmp20 = __cil_tmp19 + 72;
    __cil_tmp21 = *((struct usb_device **)__cil_tmp20);
    __cil_tmp22 = (unsigned long )__cil_tmp21;
    __cil_tmp23 = __cil_tmp22 + 136;
    __cil_tmp24 = (struct device *)__cil_tmp23;
    device_unlock(__cil_tmp24);
    }
  }
  return (result);
}
}
int ENE_SMInit(struct us_data *us ) ;
int ENE_SendScsiCmd(struct us_data *us , BYTE fDir , void *buf , int use_sg ) ;
int ENE_LoadBinCode(struct us_data *us , BYTE flag ) ;
int ENE_Read_Data(struct us_data *us , void *buf , unsigned int length ) ;
int ENE_Write_Data(struct us_data *us , void *buf , unsigned int length ) ;
DWORD MediaChange ;
int Check_D_MediaFmt(struct us_data *us ) ;
static BYTE SM_Init[2048] =
  { (BYTE )123, (BYTE )9, (BYTE )124, (BYTE )240,
        (BYTE )125, (BYTE )16, (BYTE )126, (BYTE )233,
        (BYTE )127, (BYTE )204, (BYTE )18, (BYTE )47,
        (BYTE )113, (BYTE )144, (BYTE )233, (BYTE )204,
        (BYTE )224, (BYTE )180, (BYTE )7, (BYTE )18,
        (BYTE )144, (BYTE )255, (BYTE )9, (BYTE )224,
        (BYTE )48, (BYTE )225, (BYTE )6, (BYTE )144,
        (BYTE )255, (BYTE )35, (BYTE )116, (BYTE )128,
        (BYTE )240, (BYTE )18, (BYTE )47, (BYTE )92,
        (BYTE )211, (BYTE )34, (BYTE )120, (BYTE )0,
        (BYTE )144, (BYTE )255, (BYTE )131, (BYTE )224,
        (BYTE )162, (BYTE )225, (BYTE )146, (BYTE )10,
        (BYTE )32, (BYTE )10, (BYTE )3, (BYTE )2,
        (BYTE )224, (BYTE )208, (BYTE )127, (BYTE )0,
        (BYTE )18, (BYTE )47, (BYTE )203, (BYTE )32,
        (BYTE )1, (BYTE )5, (BYTE )194, (BYTE )37,
        (BYTE )2, (BYTE )224, (BYTE )235, (BYTE )195,
        (BYTE )232, (BYTE )148, (BYTE )2, (BYTE )64,
        (BYTE )3, (BYTE )2, (BYTE )224, (BYTE )208,
        (BYTE )192, (BYTE )0, (BYTE )144, (BYTE )254,
        (BYTE )102, (BYTE )116, (BYTE )144, (BYTE )240,
        (BYTE )18, (BYTE )225, (BYTE )64, (BYTE )144,
        (BYTE )255, (BYTE )149, (BYTE )224, (BYTE )194,
        (BYTE )228, (BYTE )240, (BYTE )144, (BYTE )255,
        (BYTE )151, (BYTE )116, (BYTE )1, (BYTE )240,
        (BYTE )126, (BYTE )1, (BYTE )127, (BYTE )144,
        (BYTE )18, (BYTE )47, (BYTE )116, (BYTE )144,
        (BYTE )255, (BYTE )151, (BYTE )116, (BYTE )3,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )197,
        (BYTE )228, (BYTE )240, (BYTE )116, (BYTE )0,
        (BYTE )144, (BYTE )254, (BYTE )106, (BYTE )240,
        (BYTE )163, (BYTE )240, (BYTE )163, (BYTE )240,
        (BYTE )163, (BYTE )240, (BYTE )126, (BYTE )35,
        (BYTE )127, (BYTE )220, (BYTE )18, (BYTE )47,
        (BYTE )116, (BYTE )18, (BYTE )47, (BYTE )92,
        (BYTE )144, (BYTE )254, (BYTE )100, (BYTE )224,
        (BYTE )84, (BYTE )1, (BYTE )96, (BYTE )4,
        (BYTE )210, (BYTE )2, (BYTE )128, (BYTE )2,
        (BYTE )194, (BYTE )2, (BYTE )144, (BYTE )255,
        (BYTE )149, (BYTE )224, (BYTE )210, (BYTE )228,
        (BYTE )240, (BYTE )120, (BYTE )16, (BYTE )121,
        (BYTE )4, (BYTE )18, (BYTE )225, (BYTE )113,
        (BYTE )80, (BYTE )58, (BYTE )144, (BYTE )233,
        (BYTE )198, (BYTE )224, (BYTE )144, (BYTE )233,
        (BYTE )195, (BYTE )240, (BYTE )120, (BYTE )154,
        (BYTE )121, (BYTE )4, (BYTE )18, (BYTE )225,
        (BYTE )113, (BYTE )80, (BYTE )41, (BYTE )144,
        (BYTE )233, (BYTE )199, (BYTE )224, (BYTE )180,
        (BYTE )181, (BYTE )34, (BYTE )144, (BYTE )233,
        (BYTE )196, (BYTE )240, (BYTE )208, (BYTE )0,
        (BYTE )210, (BYTE )0, (BYTE )194, (BYTE )1,
        (BYTE )194, (BYTE )37, (BYTE )128, (BYTE )27,
        (BYTE )194, (BYTE )0, (BYTE )210, (BYTE )1,
        (BYTE )116, (BYTE )255, (BYTE )144, (BYTE )233,
        (BYTE )195, (BYTE )240, (BYTE )163, (BYTE )240,
        (BYTE )81, (BYTE )1, (BYTE )194, (BYTE )10,
        (BYTE )194, (BYTE )2, (BYTE )128, (BYTE )7,
        (BYTE )208, (BYTE )0, (BYTE )5, (BYTE )0,
        (BYTE )2, (BYTE )224, (BYTE )67, (BYTE )144,
        (BYTE )255, (BYTE )9, (BYTE )224, (BYTE )48,
        (BYTE )225, (BYTE )6, (BYTE )144, (BYTE )255,
        (BYTE )35, (BYTE )116, (BYTE )128, (BYTE )240,
        (BYTE )144, (BYTE )255, (BYTE )9, (BYTE )224,
        (BYTE )48, (BYTE )229, (BYTE )252, (BYTE )228,
        (BYTE )162, (BYTE )10, (BYTE )146, (BYTE )224,
        (BYTE )162, (BYTE )0, (BYTE )146, (BYTE )225,
        (BYTE )162, (BYTE )1, (BYTE )146, (BYTE )226,
        (BYTE )162, (BYTE )2, (BYTE )146, (BYTE )230,
        (BYTE )162, (BYTE )37, (BYTE )146, (BYTE )231,
        (BYTE )144, (BYTE )244, (BYTE )0, (BYTE )240,
        (BYTE )144, (BYTE )233, (BYTE )195, (BYTE )224,
        (BYTE )144, (BYTE )244, (BYTE )1, (BYTE )240,
        (BYTE )144, (BYTE )233, (BYTE )196, (BYTE )224,
        (BYTE )144, (BYTE )244, (BYTE )2, (BYTE )240,
        (BYTE )144, (BYTE )255, (BYTE )42, (BYTE )116,
        (BYTE )2, (BYTE )240, (BYTE )163, (BYTE )116,
        (BYTE )0, (BYTE )240, (BYTE )117, (BYTE )60,
        (BYTE )0, (BYTE )117, (BYTE )61, (BYTE )0,
        (BYTE )117, (BYTE )62, (BYTE )0, (BYTE )117,
        (BYTE )63, (BYTE )0, (BYTE )211, (BYTE )34,
        (BYTE )144, (BYTE )254, (BYTE )113, (BYTE )228,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )114,
        (BYTE )116, (BYTE )1, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )100, (BYTE )116, (BYTE )12,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )100,
        (BYTE )116, (BYTE )0, (BYTE )69, (BYTE )78,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )100,
        (BYTE )224, (BYTE )84, (BYTE )16, (BYTE )96,
        (BYTE )8, (BYTE )144, (BYTE )254, (BYTE )114,
        (BYTE )116, (BYTE )129, (BYTE )240, (BYTE )211,
        (BYTE )34, (BYTE )144, (BYTE )254, (BYTE )100,
        (BYTE )116, (BYTE )8, (BYTE )240, (BYTE )195,
        (BYTE )34, (BYTE )144, (BYTE )254, (BYTE )111,
        (BYTE )233, (BYTE )20, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )112, (BYTE )224, (BYTE )84,
        (BYTE )252, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )104, (BYTE )116, (BYTE )0, (BYTE )240,
        (BYTE )184, (BYTE )154, (BYTE )42, (BYTE )116,
        (BYTE )21, (BYTE )144, (BYTE )254, (BYTE )100,
        (BYTE )240, (BYTE )116, (BYTE )154, (BYTE )144,
        (BYTE )254, (BYTE )96, (BYTE )240, (BYTE )116,
        (BYTE )22, (BYTE )144, (BYTE )254, (BYTE )100,
        (BYTE )240, (BYTE )116, (BYTE )0, (BYTE )144,
        (BYTE )254, (BYTE )96, (BYTE )240, (BYTE )48,
        (BYTE )10, (BYTE )93, (BYTE )144, (BYTE )254,
        (BYTE )100, (BYTE )224, (BYTE )32, (BYTE )231,
        (BYTE )246, (BYTE )116, (BYTE )20, (BYTE )144,
        (BYTE )254, (BYTE )100, (BYTE )240, (BYTE )128,
        (BYTE )32, (BYTE )144, (BYTE )254, (BYTE )110,
        (BYTE )232, (BYTE )68, (BYTE )1, (BYTE )240,
        (BYTE )194, (BYTE )9, (BYTE )18, (BYTE )227,
        (BYTE )38, (BYTE )32, (BYTE )8, (BYTE )14,
        (BYTE )18, (BYTE )227, (BYTE )50, (BYTE )48,
        (BYTE )62, (BYTE )247, (BYTE )144, (BYTE )254,
        (BYTE )216, (BYTE )116, (BYTE )1, (BYTE )240,
        (BYTE )210, (BYTE )9, (BYTE )32, (BYTE )9,
        (BYTE )46, (BYTE )122, (BYTE )233, (BYTE )123,
        (BYTE )197, (BYTE )124, (BYTE )254, (BYTE )125,
        (BYTE )96, (BYTE )184, (BYTE )16, (BYTE )7,
        (BYTE )144, (BYTE )254, (BYTE )105, (BYTE )224,
        (BYTE )32, (BYTE )230, (BYTE )252, (BYTE )140,
        (BYTE )131, (BYTE )141, (BYTE )130, (BYTE )224,
        (BYTE )138, (BYTE )131, (BYTE )139, (BYTE )130,
        (BYTE )240, (BYTE )163, (BYTE )170, (BYTE )131,
        (BYTE )171, (BYTE )130, (BYTE )217, (BYTE )229,
        (BYTE )184, (BYTE )154, (BYTE )6, (BYTE )116,
        (BYTE )16, (BYTE )144, (BYTE )254, (BYTE )100,
        (BYTE )240, (BYTE )211, (BYTE )34, (BYTE )195,
        (BYTE )34, (BYTE )144, (BYTE )255, (BYTE )131,
        (BYTE )224, (BYTE )162, (BYTE )225, (BYTE )146,
        (BYTE )37, (BYTE )32, (BYTE )37, (BYTE )6,
        (BYTE )194, (BYTE )31, (BYTE )210, (BYTE )25,
        (BYTE )195, (BYTE )34, (BYTE )127, (BYTE )2,
        (BYTE )18, (BYTE )47, (BYTE )203, (BYTE )32,
        (BYTE )25, (BYTE )5, (BYTE )48, (BYTE )31,
        (BYTE )2, (BYTE )211, (BYTE )34, (BYTE )144,
        (BYTE )234, (BYTE )68, (BYTE )116, (BYTE )128,
        (BYTE )240, (BYTE )127, (BYTE )16, (BYTE )18,
        (BYTE )47, (BYTE )197, (BYTE )144, (BYTE )254,
        (BYTE )71, (BYTE )224, (BYTE )68, (BYTE )128,
        (BYTE )240, (BYTE )120, (BYTE )0, (BYTE )232,
        (BYTE )195, (BYTE )148, (BYTE )4, (BYTE )80,
        (BYTE )10, (BYTE )127, (BYTE )136, (BYTE )126,
        (BYTE )19, (BYTE )18, (BYTE )227, (BYTE )77,
        (BYTE )8, (BYTE )128, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )69, (BYTE )224, (BYTE )84,
        (BYTE )251, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )71, (BYTE )224, (BYTE )84, (BYTE )191,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )69,
        (BYTE )224, (BYTE )84, (BYTE )254, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )69, (BYTE )224,
        (BYTE )84, (BYTE )127, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )70, (BYTE )224, (BYTE )68,
        (BYTE )64, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )69, (BYTE )224, (BYTE )84, (BYTE )199,
        (BYTE )68, (BYTE )24, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )71, (BYTE )224, (BYTE )68,
        (BYTE )8, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )69, (BYTE )224, (BYTE )68, (BYTE )64,
        (BYTE )240, (BYTE )127, (BYTE )50, (BYTE )126,
        (BYTE )0, (BYTE )18, (BYTE )227, (BYTE )77,
        (BYTE )144, (BYTE )254, (BYTE )81, (BYTE )224,
        (BYTE )84, (BYTE )51, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )68, (BYTE )116, (BYTE )2,
        (BYTE )240, (BYTE )48, (BYTE )37, (BYTE )4,
        (BYTE )224, (BYTE )32, (BYTE )225, (BYTE )249,
        (BYTE )144, (BYTE )254, (BYTE )81, (BYTE )224,
        (BYTE )84, (BYTE )15, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )68, (BYTE )116, (BYTE )2,
        (BYTE )240, (BYTE )48, (BYTE )37, (BYTE )4,
        (BYTE )224, (BYTE )32, (BYTE )225, (BYTE )249,
        (BYTE )144, (BYTE )254, (BYTE )68, (BYTE )116,
        (BYTE )4, (BYTE )240, (BYTE )48, (BYTE )37,
        (BYTE )4, (BYTE )224, (BYTE )32, (BYTE )226,
        (BYTE )249, (BYTE )144, (BYTE )254, (BYTE )76,
        (BYTE )224, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )77, (BYTE )224, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )72, (BYTE )116, (BYTE )127,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )73,
        (BYTE )116, (BYTE )159, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )81, (BYTE )224, (BYTE )84,
        (BYTE )60, (BYTE )68, (BYTE )2, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )68, (BYTE )116,
        (BYTE )2, (BYTE )240, (BYTE )48, (BYTE )37,
        (BYTE )4, (BYTE )224, (BYTE )32, (BYTE )225,
        (BYTE )249, (BYTE )144, (BYTE )254, (BYTE )70,
        (BYTE )224, (BYTE )68, (BYTE )32, (BYTE )240,
        (BYTE )121, (BYTE )2, (BYTE )122, (BYTE )6,
        (BYTE )123, (BYTE )0, (BYTE )124, (BYTE )0,
        (BYTE )125, (BYTE )6, (BYTE )126, (BYTE )235,
        (BYTE )127, (BYTE )201, (BYTE )18, (BYTE )47,
        (BYTE )167, (BYTE )64, (BYTE )3, (BYTE )2,
        (BYTE )227, (BYTE )4, (BYTE )211, (BYTE )34,
        (BYTE )228, (BYTE )144, (BYTE )254, (BYTE )72,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )73,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )76,
        (BYTE )224, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )77, (BYTE )224, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )71, (BYTE )224, (BYTE )84,
        (BYTE )127, (BYTE )240, (BYTE )194, (BYTE )37,
        (BYTE )194, (BYTE )31, (BYTE )210, (BYTE )25,
        (BYTE )195, (BYTE )34, (BYTE )194, (BYTE )62,
        (BYTE )117, (BYTE )124, (BYTE )0, (BYTE )117,
        (BYTE )125, (BYTE )0, (BYTE )117, (BYTE )126,
        (BYTE )0, (BYTE )34, (BYTE )5, (BYTE )124,
        (BYTE )229, (BYTE )124, (BYTE )112, (BYTE )20,
        (BYTE )5, (BYTE )125, (BYTE )229, (BYTE )125,
        (BYTE )112, (BYTE )4, (BYTE )5, (BYTE )126,
        (BYTE )128, (BYTE )10, (BYTE )180, (BYTE )23,
        (BYTE )7, (BYTE )229, (BYTE )126, (BYTE )180,
        (BYTE )6, (BYTE )2, (BYTE )210, (BYTE )62,
        (BYTE )34, (BYTE )117, (BYTE )138, (BYTE )0,
        (BYTE )117, (BYTE )140, (BYTE )206, (BYTE )194,
        (BYTE )141, (BYTE )144, (BYTE )234, (BYTE )101,
        (BYTE )228, (BYTE )240, (BYTE )163, (BYTE )240,
        (BYTE )210, (BYTE )140, (BYTE )144, (BYTE )234,
        (BYTE )101, (BYTE )224, (BYTE )252, (BYTE )163,
        (BYTE )224, (BYTE )253, (BYTE )236, (BYTE )195,
        (BYTE )158, (BYTE )64, (BYTE )243, (BYTE )112,
        (BYTE )5, (BYTE )237, (BYTE )195, (BYTE )159,
        (BYTE )64, (BYTE )236, (BYTE )194, (BYTE )140,
        (BYTE )34, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )88, (BYTE )68, (BYTE )45, (BYTE )73,
        (BYTE )110, (BYTE )105, (BYTE )116, (BYTE )32,
        (BYTE )32, (BYTE )32, (BYTE )32, (BYTE )49,
        (BYTE )48, (BYTE )48, (BYTE )48, (BYTE )49};
static BYTE SM_Rdwr[2048] =
  { (BYTE )123, (BYTE )12, (BYTE )124, (BYTE )240,
        (BYTE )125, (BYTE )16, (BYTE )126, (BYTE )233,
        (BYTE )127, (BYTE )204, (BYTE )18, (BYTE )47,
        (BYTE )113, (BYTE )144, (BYTE )233, (BYTE )195,
        (BYTE )224, (BYTE )180, (BYTE )115, (BYTE )4,
        (BYTE )116, (BYTE )64, (BYTE )128, (BYTE )9,
        (BYTE )180, (BYTE )117, (BYTE )4, (BYTE )116,
        (BYTE )64, (BYTE )128, (BYTE )2, (BYTE )116,
        (BYTE )192, (BYTE )144, (BYTE )254, (BYTE )112,
        (BYTE )240, (BYTE )144, (BYTE )255, (BYTE )9,
        (BYTE )224, (BYTE )48, (BYTE )225, (BYTE )6,
        (BYTE )144, (BYTE )255, (BYTE )35, (BYTE )116,
        (BYTE )128, (BYTE )240, (BYTE )144, (BYTE )255,
        (BYTE )131, (BYTE )224, (BYTE )162, (BYTE )225,
        (BYTE )146, (BYTE )10, (BYTE )64, (BYTE )1,
        (BYTE )34, (BYTE )144, (BYTE )254, (BYTE )106,
        (BYTE )228, (BYTE )240, (BYTE )144, (BYTE )233,
        (BYTE )204, (BYTE )224, (BYTE )180, (BYTE )2,
        (BYTE )5, (BYTE )210, (BYTE )6, (BYTE )2,
        (BYTE )224, (BYTE )120, (BYTE )180, (BYTE )3,
        (BYTE )3, (BYTE )2, (BYTE )227, (BYTE )208,
        (BYTE )180, (BYTE )4, (BYTE )3, (BYTE )2,
        (BYTE )225, (BYTE )198, (BYTE )180, (BYTE )5,
        (BYTE )3, (BYTE )2, (BYTE )229, (BYTE )32,
        (BYTE )180, (BYTE )6, (BYTE )3, (BYTE )2,
        (BYTE )229, (BYTE )224, (BYTE )180, (BYTE )7,
        (BYTE )5, (BYTE )18, (BYTE )47, (BYTE )92,
        (BYTE )211, (BYTE )34, (BYTE )180, (BYTE )8,
        (BYTE )5, (BYTE )194, (BYTE )6, (BYTE )2,
        (BYTE )230, (BYTE )59, (BYTE )195, (BYTE )34,
        (BYTE )229, (BYTE )62, (BYTE )195, (BYTE )19,
        (BYTE )144, (BYTE )233, (BYTE )202, (BYTE )240,
        (BYTE )192, (BYTE )224, (BYTE )117, (BYTE )240,
        (BYTE )2, (BYTE )192, (BYTE )240, (BYTE )18,
        (BYTE )224, (BYTE )216, (BYTE )239, (BYTE )112,
        (BYTE )33, (BYTE )32, (BYTE )55, (BYTE )7,
        (BYTE )32, (BYTE )9, (BYTE )4, (BYTE )208,
        (BYTE )240, (BYTE )128, (BYTE )5, (BYTE )208,
        (BYTE )240, (BYTE )213, (BYTE )240, (BYTE )233,
        (BYTE )208, (BYTE )224, (BYTE )144, (BYTE )255,
        (BYTE )40, (BYTE )224, (BYTE )48, (BYTE )231,
        (BYTE )252, (BYTE )144, (BYTE )255, (BYTE )40,
        (BYTE )224, (BYTE )68, (BYTE )1, (BYTE )240,
        (BYTE )195, (BYTE )34, (BYTE )208, (BYTE )240,
        (BYTE )144, (BYTE )233, (BYTE )207, (BYTE )224,
        (BYTE )36, (BYTE )1, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )206, (BYTE )224, (BYTE )52,
        (BYTE )0, (BYTE )240, (BYTE )144, (BYTE )233,
        (BYTE )205, (BYTE )224, (BYTE )52, (BYTE )0,
        (BYTE )240, (BYTE )208, (BYTE )224, (BYTE )20,
        (BYTE )112, (BYTE )182, (BYTE )117, (BYTE )60,
        (BYTE )0, (BYTE )117, (BYTE )61, (BYTE )0,
        (BYTE )117, (BYTE )62, (BYTE )0, (BYTE )117,
        (BYTE )63, (BYTE )0, (BYTE )211, (BYTE )34,
        (BYTE )194, (BYTE )8, (BYTE )194, (BYTE )54,
        (BYTE )194, (BYTE )55, (BYTE )228, (BYTE )144,
        (BYTE )235, (BYTE )194, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )205, (BYTE )224, (BYTE )248,
        (BYTE )163, (BYTE )224, (BYTE )249, (BYTE )163,
        (BYTE )224, (BYTE )144, (BYTE )254, (BYTE )107,
        (BYTE )240, (BYTE )163, (BYTE )233, (BYTE )240,
        (BYTE )163, (BYTE )232, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )111, (BYTE )116, (BYTE )15,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )112,
        (BYTE )224, (BYTE )84, (BYTE )252, (BYTE )68,
        (BYTE )2, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )198, (BYTE )116, (BYTE )2, (BYTE )240,
        (BYTE )163, (BYTE )116, (BYTE )15, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )192, (BYTE )116,
        (BYTE )244, (BYTE )240, (BYTE )116, (BYTE )0,
        (BYTE )163, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )104, (BYTE )116, (BYTE )33, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )100, (BYTE )116,
        (BYTE )112, (BYTE )69, (BYTE )78, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )100, (BYTE )116,
        (BYTE )48, (BYTE )69, (BYTE )78, (BYTE )240,
        (BYTE )48, (BYTE )6, (BYTE )7, (BYTE )144,
        (BYTE )255, (BYTE )9, (BYTE )224, (BYTE )48,
        (BYTE )229, (BYTE )252, (BYTE )144, (BYTE )254,
        (BYTE )110, (BYTE )116, (BYTE )81, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )196, (BYTE )116,
        (BYTE )33, (BYTE )240, (BYTE )194, (BYTE )9,
        (BYTE )18, (BYTE )231, (BYTE )176, (BYTE )32,
        (BYTE )8, (BYTE )14, (BYTE )18, (BYTE )231,
        (BYTE )188, (BYTE )48, (BYTE )62, (BYTE )247,
        (BYTE )144, (BYTE )254, (BYTE )216, (BYTE )116,
        (BYTE )1, (BYTE )240, (BYTE )210, (BYTE )9,
        (BYTE )48, (BYTE )9, (BYTE )3, (BYTE )127,
        (BYTE )0, (BYTE )34, (BYTE )18, (BYTE )231,
        (BYTE )176, (BYTE )32, (BYTE )54, (BYTE )17,
        (BYTE )32, (BYTE )55, (BYTE )14, (BYTE )18,
        (BYTE )231, (BYTE )188, (BYTE )48, (BYTE )62,
        (BYTE )244, (BYTE )144, (BYTE )254, (BYTE )216,
        (BYTE )116, (BYTE )1, (BYTE )240, (BYTE )210,
        (BYTE )55, (BYTE )48, (BYTE )55, (BYTE )3,
        (BYTE )127, (BYTE )0, (BYTE )34, (BYTE )144,
        (BYTE )254, (BYTE )100, (BYTE )116, (BYTE )16,
        (BYTE )69, (BYTE )78, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )100, (BYTE )116, (BYTE )0,
        (BYTE )69, (BYTE )78, (BYTE )240, (BYTE )18,
        (BYTE )47, (BYTE )101, (BYTE )18, (BYTE )47,
        (BYTE )104, (BYTE )191, (BYTE )0, (BYTE )9,
        (BYTE )116, (BYTE )2, (BYTE )144, (BYTE )235,
        (BYTE )194, (BYTE )240, (BYTE )127, (BYTE )0,
        (BYTE )34, (BYTE )18, (BYTE )47, (BYTE )107,
        (BYTE )191, (BYTE )0, (BYTE )15, (BYTE )18,
        (BYTE )47, (BYTE )110, (BYTE )191, (BYTE )0,
        (BYTE )9, (BYTE )116, (BYTE )1, (BYTE )144,
        (BYTE )235, (BYTE )194, (BYTE )240, (BYTE )127,
        (BYTE )0, (BYTE )34, (BYTE )48, (BYTE )6,
        (BYTE )10, (BYTE )144, (BYTE )255, (BYTE )42,
        (BYTE )116, (BYTE )2, (BYTE )240, (BYTE )163,
        (BYTE )116, (BYTE )0, (BYTE )240, (BYTE )127,
        (BYTE )1, (BYTE )34, (BYTE )18, (BYTE )227,
        (BYTE )170, (BYTE )116, (BYTE )1, (BYTE )144,
        (BYTE )233, (BYTE )203, (BYTE )240, (BYTE )229,
        (BYTE )62, (BYTE )195, (BYTE )19, (BYTE )144,
        (BYTE )233, (BYTE )202, (BYTE )240, (BYTE )192,
        (BYTE )224, (BYTE )117, (BYTE )240, (BYTE )2,
        (BYTE )192, (BYTE )240, (BYTE )18, (BYTE )226,
        (BYTE )47, (BYTE )239, (BYTE )112, (BYTE )33,
        (BYTE )32, (BYTE )55, (BYTE )7, (BYTE )32,
        (BYTE )9, (BYTE )4, (BYTE )208, (BYTE )240,
        (BYTE )128, (BYTE )5, (BYTE )208, (BYTE )240,
        (BYTE )213, (BYTE )240, (BYTE )233, (BYTE )208,
        (BYTE )224, (BYTE )144, (BYTE )255, (BYTE )40,
        (BYTE )224, (BYTE )48, (BYTE )231, (BYTE )252,
        (BYTE )144, (BYTE )255, (BYTE )40, (BYTE )224,
        (BYTE )68, (BYTE )1, (BYTE )240, (BYTE )195,
        (BYTE )34, (BYTE )208, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )210, (BYTE )224, (BYTE )36,
        (BYTE )1, (BYTE )240, (BYTE )144, (BYTE )233,
        (BYTE )209, (BYTE )224, (BYTE )52, (BYTE )0,
        (BYTE )240, (BYTE )144, (BYTE )233, (BYTE )208,
        (BYTE )224, (BYTE )52, (BYTE )0, (BYTE )240,
        (BYTE )208, (BYTE )224, (BYTE )20, (BYTE )112,
        (BYTE )182, (BYTE )117, (BYTE )60, (BYTE )0,
        (BYTE )117, (BYTE )61, (BYTE )0, (BYTE )117,
        (BYTE )62, (BYTE )0, (BYTE )117, (BYTE )63,
        (BYTE )0, (BYTE )211, (BYTE )34, (BYTE )194,
        (BYTE )8, (BYTE )194, (BYTE )54, (BYTE )194,
        (BYTE )55, (BYTE )144, (BYTE )254, (BYTE )104,
        (BYTE )116, (BYTE )49, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )208, (BYTE )224, (BYTE )248,
        (BYTE )163, (BYTE )224, (BYTE )249, (BYTE )163,
        (BYTE )224, (BYTE )144, (BYTE )254, (BYTE )107,
        (BYTE )240, (BYTE )163, (BYTE )233, (BYTE )240,
        (BYTE )163, (BYTE )232, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )111, (BYTE )116, (BYTE )15,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )112,
        (BYTE )224, (BYTE )84, (BYTE )252, (BYTE )68,
        (BYTE )34, (BYTE )240, (BYTE )144, (BYTE )233,
        (BYTE )203, (BYTE )224, (BYTE )112, (BYTE )12,
        (BYTE )144, (BYTE )254, (BYTE )192, (BYTE )116,
        (BYTE )244, (BYTE )240, (BYTE )163, (BYTE )116,
        (BYTE )0, (BYTE )240, (BYTE )128, (BYTE )10,
        (BYTE )144, (BYTE )254, (BYTE )192, (BYTE )116,
        (BYTE )240, (BYTE )240, (BYTE )163, (BYTE )116,
        (BYTE )0, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )100, (BYTE )116, (BYTE )240, (BYTE )69,
        (BYTE )78, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )100, (BYTE )116, (BYTE )176, (BYTE )69,
        (BYTE )78, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )110, (BYTE )116, (BYTE )129, (BYTE )240,
        (BYTE )144, (BYTE )233, (BYTE )203, (BYTE )224,
        (BYTE )112, (BYTE )13, (BYTE )144, (BYTE )254,
        (BYTE )198, (BYTE )116, (BYTE )2, (BYTE )240,
        (BYTE )163, (BYTE )116, (BYTE )15, (BYTE )240,
        (BYTE )2, (BYTE )227, (BYTE )86, (BYTE )32,
        (BYTE )45, (BYTE )3, (BYTE )2, (BYTE )226,
        (BYTE )239, (BYTE )144, (BYTE )254, (BYTE )198,
        (BYTE )116, (BYTE )1, (BYTE )240, (BYTE )163,
        (BYTE )116, (BYTE )255, (BYTE )240, (BYTE )144,
        (BYTE )255, (BYTE )9, (BYTE )48, (BYTE )10,
        (BYTE )4, (BYTE )224, (BYTE )48, (BYTE )225,
        (BYTE )249, (BYTE )144, (BYTE )254, (BYTE )196,
        (BYTE )116, (BYTE )35, (BYTE )240, (BYTE )18,
        (BYTE )231, (BYTE )176, (BYTE )32, (BYTE )54,
        (BYTE )17, (BYTE )32, (BYTE )55, (BYTE )14,
        (BYTE )18, (BYTE )231, (BYTE )188, (BYTE )48,
        (BYTE )62, (BYTE )244, (BYTE )144, (BYTE )254,
        (BYTE )216, (BYTE )116, (BYTE )1, (BYTE )240,
        (BYTE )210, (BYTE )55, (BYTE )48, (BYTE )55,
        (BYTE )2, (BYTE )97, (BYTE )167, (BYTE )144,
        (BYTE )255, (BYTE )9, (BYTE )224, (BYTE )48,
        (BYTE )225, (BYTE )6, (BYTE )144, (BYTE )255,
        (BYTE )35, (BYTE )116, (BYTE )128, (BYTE )240,
        (BYTE )2, (BYTE )227, (BYTE )63, (BYTE )144,
        (BYTE )254, (BYTE )198, (BYTE )228, (BYTE )240,
        (BYTE )163, (BYTE )116, (BYTE )63, (BYTE )240,
        (BYTE )120, (BYTE )8, (BYTE )192, (BYTE )0,
        (BYTE )194, (BYTE )54, (BYTE )194, (BYTE )55,
        (BYTE )144, (BYTE )255, (BYTE )9, (BYTE )48,
        (BYTE )10, (BYTE )4, (BYTE )224, (BYTE )48,
        (BYTE )225, (BYTE )249, (BYTE )144, (BYTE )254,
        (BYTE )196, (BYTE )116, (BYTE )35, (BYTE )240,
        (BYTE )18, (BYTE )231, (BYTE )176, (BYTE )32,
        (BYTE )54, (BYTE )17, (BYTE )32, (BYTE )55,
        (BYTE )14, (BYTE )18, (BYTE )231, (BYTE )188,
        (BYTE )48, (BYTE )62, (BYTE )244, (BYTE )144,
        (BYTE )254, (BYTE )216, (BYTE )116, (BYTE )1,
        (BYTE )240, (BYTE )210, (BYTE )55, (BYTE )144,
        (BYTE )255, (BYTE )9, (BYTE )224, (BYTE )48,
        (BYTE )225, (BYTE )6, (BYTE )144, (BYTE )255,
        (BYTE )35, (BYTE )116, (BYTE )128, (BYTE )240,
        (BYTE )48, (BYTE )55, (BYTE )4, (BYTE )208,
        (BYTE )0, (BYTE )128, (BYTE )108, (BYTE )208,
        (BYTE )0, (BYTE )216, (BYTE )187, (BYTE )194,
        (BYTE )54, (BYTE )194, (BYTE )55, (BYTE )144,
        (BYTE )254, (BYTE )198, (BYTE )228, (BYTE )240,
        (BYTE )163, (BYTE )116, (BYTE )15, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )192, (BYTE )116,
        (BYTE )246, (BYTE )240, (BYTE )163, (BYTE )116,
        (BYTE )0, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )196, (BYTE )116, (BYTE )35, (BYTE )240,
        (BYTE )18, (BYTE )231, (BYTE )176, (BYTE )32,
        (BYTE )54, (BYTE )17, (BYTE )32, (BYTE )55,
        (BYTE )14, (BYTE )18, (BYTE )231, (BYTE )188,
        (BYTE )48, (BYTE )62, (BYTE )244, (BYTE )144,
        (BYTE )254, (BYTE )216, (BYTE )116, (BYTE )1,
        (BYTE )240, (BYTE )210, (BYTE )55, (BYTE )48,
        (BYTE )55, (BYTE )2, (BYTE )128, (BYTE )47,
        (BYTE )194, (BYTE )9, (BYTE )18, (BYTE )231,
        (BYTE )176, (BYTE )32, (BYTE )8, (BYTE )14,
        (BYTE )18, (BYTE )231, (BYTE )188, (BYTE )48,
        (BYTE )62, (BYTE )247, (BYTE )144, (BYTE )254,
        (BYTE )216, (BYTE )116, (BYTE )1, (BYTE )240,
        (BYTE )210, (BYTE )9, (BYTE )48, (BYTE )9,
        (BYTE )2, (BYTE )128, (BYTE )20, (BYTE )144,
        (BYTE )254, (BYTE )100, (BYTE )116, (BYTE )144,
        (BYTE )69, (BYTE )78, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )100, (BYTE )116, (BYTE )128,
        (BYTE )69, (BYTE )78, (BYTE )240, (BYTE )18,
        (BYTE )47, (BYTE )89, (BYTE )34, (BYTE )127,
        (BYTE )0, (BYTE )34, (BYTE )144, (BYTE )246,
        (BYTE )0, (BYTE )127, (BYTE )6, (BYTE )116,
        (BYTE )255, (BYTE )240, (BYTE )163, (BYTE )223,
        (BYTE )252, (BYTE )123, (BYTE )2, (BYTE )124,
        (BYTE )233, (BYTE )125, (BYTE )211, (BYTE )126,
        (BYTE )246, (BYTE )127, (BYTE )6, (BYTE )18,
        (BYTE )47, (BYTE )113, (BYTE )123, (BYTE )2,
        (BYTE )124, (BYTE )233, (BYTE )125, (BYTE )211,
        (BYTE )126, (BYTE )246, (BYTE )127, (BYTE )11,
        (BYTE )18, (BYTE )47, (BYTE )113, (BYTE )34,
        (BYTE )144, (BYTE )254, (BYTE )198, (BYTE )228,
        (BYTE )240, (BYTE )163, (BYTE )116, (BYTE )15,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )111,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )112,
        (BYTE )224, (BYTE )84, (BYTE )252, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )192, (BYTE )116,
        (BYTE )246, (BYTE )240, (BYTE )163, (BYTE )116,
        (BYTE )0, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )104, (BYTE )116, (BYTE )33, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )102, (BYTE )224,
        (BYTE )84, (BYTE )239, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )211, (BYTE )224, (BYTE )245,
        (BYTE )8, (BYTE )163, (BYTE )224, (BYTE )245,
        (BYTE )9, (BYTE )144, (BYTE )255, (BYTE )9,
        (BYTE )224, (BYTE )48, (BYTE )229, (BYTE )252,
        (BYTE )228, (BYTE )245, (BYTE )16, (BYTE )126,
        (BYTE )244, (BYTE )127, (BYTE )0, (BYTE )192,
        (BYTE )6, (BYTE )192, (BYTE )7, (BYTE )194,
        (BYTE )54, (BYTE )194, (BYTE )55, (BYTE )194,
        (BYTE )9, (BYTE )144, (BYTE )233, (BYTE )205,
        (BYTE )224, (BYTE )248, (BYTE )163, (BYTE )224,
        (BYTE )249, (BYTE )163, (BYTE )224, (BYTE )144,
        (BYTE )254, (BYTE )107, (BYTE )240, (BYTE )163,
        (BYTE )233, (BYTE )240, (BYTE )163, (BYTE )232,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )110,
        (BYTE )116, (BYTE )113, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )196, (BYTE )116, (BYTE )33,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )101,
        (BYTE )18, (BYTE )231, (BYTE )176, (BYTE )224,
        (BYTE )32, (BYTE )228, (BYTE )17, (BYTE )18,
        (BYTE )231, (BYTE )188, (BYTE )48, (BYTE )62,
        (BYTE )246, (BYTE )144, (BYTE )254, (BYTE )216,
        (BYTE )116, (BYTE )1, (BYTE )240, (BYTE )210,
        (BYTE )9, (BYTE )2, (BYTE )228, (BYTE )114,
        (BYTE )116, (BYTE )16, (BYTE )240, (BYTE )18,
        (BYTE )231, (BYTE )176, (BYTE )32, (BYTE )54,
        (BYTE )17, (BYTE )32, (BYTE )55, (BYTE )14,
        (BYTE )18, (BYTE )231, (BYTE )188, (BYTE )48,
        (BYTE )62, (BYTE )244, (BYTE )144, (BYTE )254,
        (BYTE )216, (BYTE )116, (BYTE )1, (BYTE )240,
        (BYTE )210, (BYTE )55, (BYTE )32, (BYTE )9,
        (BYTE )5, (BYTE )32, (BYTE )55, (BYTE )2,
        (BYTE )128, (BYTE )16, (BYTE )144, (BYTE )254,
        (BYTE )102, (BYTE )224, (BYTE )68, (BYTE )16,
        (BYTE )240, (BYTE )18, (BYTE )47, (BYTE )92,
        (BYTE )208, (BYTE )7, (BYTE )208, (BYTE )6,
        (BYTE )195, (BYTE )34, (BYTE )208, (BYTE )7,
        (BYTE )208, (BYTE )6, (BYTE )123, (BYTE )16,
        (BYTE )124, (BYTE )246, (BYTE )125, (BYTE )0,
        (BYTE )18, (BYTE )47, (BYTE )113, (BYTE )5,
        (BYTE )16, (BYTE )195, (BYTE )229, (BYTE )9,
        (BYTE )148, (BYTE )1, (BYTE )245, (BYTE )9,
        (BYTE )229, (BYTE )8, (BYTE )148, (BYTE )0,
        (BYTE )245, (BYTE )8, (BYTE )69, (BYTE )9,
        (BYTE )112, (BYTE )3, (BYTE )2, (BYTE )228,
        (BYTE )239, (BYTE )144, (BYTE )233, (BYTE )207,
        (BYTE )224, (BYTE )36, (BYTE )32, (BYTE )240,
        (BYTE )144, (BYTE )233, (BYTE )206, (BYTE )224,
        (BYTE )52, (BYTE )0, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )205, (BYTE )224, (BYTE )52,
        (BYTE )0, (BYTE )240, (BYTE )195, (BYTE )239,
        (BYTE )36, (BYTE )16, (BYTE )255, (BYTE )238,
        (BYTE )52, (BYTE )0, (BYTE )254, (BYTE )229,
        (BYTE )16, (BYTE )100, (BYTE )32, (BYTE )96,
        (BYTE )3, (BYTE )2, (BYTE )228, (BYTE )19,
        (BYTE )144, (BYTE )255, (BYTE )42, (BYTE )116,
        (BYTE )2, (BYTE )240, (BYTE )163, (BYTE )116,
        (BYTE )0, (BYTE )240, (BYTE )117, (BYTE )16,
        (BYTE )0, (BYTE )126, (BYTE )244, (BYTE )127,
        (BYTE )0, (BYTE )144, (BYTE )255, (BYTE )9,
        (BYTE )224, (BYTE )48, (BYTE )229, (BYTE )252,
        (BYTE )2, (BYTE )228, (BYTE )19, (BYTE )229,
        (BYTE )16, (BYTE )96, (BYTE )23, (BYTE )126,
        (BYTE )0, (BYTE )127, (BYTE )0, (BYTE )120,
        (BYTE )4, (BYTE )195, (BYTE )51, (BYTE )255,
        (BYTE )238, (BYTE )51, (BYTE )254, (BYTE )239,
        (BYTE )216, (BYTE )248, (BYTE )144, (BYTE )255,
        (BYTE )42, (BYTE )238, (BYTE )240, (BYTE )163,
        (BYTE )239, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )102, (BYTE )224, (BYTE )68, (BYTE )16,
        (BYTE )240, (BYTE )18, (BYTE )47, (BYTE )92,
        (BYTE )120, (BYTE )0, (BYTE )136, (BYTE )60,
        (BYTE )136, (BYTE )61, (BYTE )136, (BYTE )62,
        (BYTE )136, (BYTE )63, (BYTE )211, (BYTE )34,
        (BYTE )18, (BYTE )47, (BYTE )95, (BYTE )18,
        (BYTE )47, (BYTE )98, (BYTE )144, (BYTE )254,
        (BYTE )198, (BYTE )228, (BYTE )240, (BYTE )163,
        (BYTE )116, (BYTE )15, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )111, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )112, (BYTE )224, (BYTE )84,
        (BYTE )252, (BYTE )240, (BYTE )144, (BYTE )254,
        (BYTE )192, (BYTE )116, (BYTE )246, (BYTE )240,
        (BYTE )163, (BYTE )116, (BYTE )0, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )104, (BYTE )116,
        (BYTE )49, (BYTE )240, (BYTE )144, (BYTE )233,
        (BYTE )211, (BYTE )224, (BYTE )248, (BYTE )192,
        (BYTE )0, (BYTE )194, (BYTE )8, (BYTE )194,
        (BYTE )54, (BYTE )194, (BYTE )55, (BYTE )144,
        (BYTE )233, (BYTE )208, (BYTE )224, (BYTE )248,
        (BYTE )163, (BYTE )224, (BYTE )249, (BYTE )163,
        (BYTE )224, (BYTE )144, (BYTE )254, (BYTE )107,
        (BYTE )240, (BYTE )163, (BYTE )233, (BYTE )240,
        (BYTE )163, (BYTE )232, (BYTE )240, (BYTE )144,
        (BYTE )254, (BYTE )110, (BYTE )116, (BYTE )129,
        (BYTE )240, (BYTE )144, (BYTE )254, (BYTE )196,
        (BYTE )116, (BYTE )35, (BYTE )240, (BYTE )18,
        (BYTE )231, (BYTE )176, (BYTE )32, (BYTE )54,
        (BYTE )17, (BYTE )32, (BYTE )55, (BYTE )14,
        (BYTE )18, (BYTE )231, (BYTE )188, (BYTE )48,
        (BYTE )62, (BYTE )244, (BYTE )144, (BYTE )254,
        (BYTE )216, (BYTE )116, (BYTE )1, (BYTE )240,
        (BYTE )210, (BYTE )55, (BYTE )48, (BYTE )55,
        (BYTE )7, (BYTE )208, (BYTE )0, (BYTE )18,
        (BYTE )47, (BYTE )92, (BYTE )195, (BYTE )34,
        (BYTE )194, (BYTE )9, (BYTE )18, (BYTE )231,
        (BYTE )176, (BYTE )32, (BYTE )8, (BYTE )14,
        (BYTE )18, (BYTE )231, (BYTE )188, (BYTE )48,
        (BYTE )62, (BYTE )247, (BYTE )144, (BYTE )254,
        (BYTE )216, (BYTE )116, (BYTE )1, (BYTE )240,
        (BYTE )210, (BYTE )9, (BYTE )32, (BYTE )9,
        (BYTE )224, (BYTE )144, (BYTE )233, (BYTE )210,
        (BYTE )224, (BYTE )36, (BYTE )1, (BYTE )240,
        (BYTE )144, (BYTE )233, (BYTE )209, (BYTE )224,
        (BYTE )52, (BYTE )0, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )208, (BYTE )224, (BYTE )52,
        (BYTE )0, (BYTE )240, (BYTE )208, (BYTE )0,
        (BYTE )24, (BYTE )232, (BYTE )96, (BYTE )3,
        (BYTE )2, (BYTE )229, (BYTE )79, (BYTE )18,
        (BYTE )47, (BYTE )92, (BYTE )117, (BYTE )60,
        (BYTE )0, (BYTE )117, (BYTE )61, (BYTE )0,
        (BYTE )117, (BYTE )62, (BYTE )0, (BYTE )117,
        (BYTE )63, (BYTE )0, (BYTE )211, (BYTE )34,
        (BYTE )144, (BYTE )233, (BYTE )208, (BYTE )224,
        (BYTE )248, (BYTE )163, (BYTE )224, (BYTE )249,
        (BYTE )163, (BYTE )224, (BYTE )144, (BYTE )254,
        (BYTE )107, (BYTE )240, (BYTE )163, (BYTE )233,
        (BYTE )240, (BYTE )163, (BYTE )232, (BYTE )240,
        (BYTE )144, (BYTE )254, (BYTE )104, (BYTE )116,
        (BYTE )0, (BYTE )240, (BYTE )194, (BYTE )8,
        (BYTE )144, (BYTE )254, (BYTE )110, (BYTE )116,
        (BYTE )177, (BYTE )240, (BYTE )194, (BYTE )9,
        (BYTE )18, (BYTE )231, (BYTE )176, (BYTE )32,
        (BYTE )8, (BYTE )14, (BYTE )18, (BYTE )231,
        (BYTE )188, (BYTE )48, (BYTE )62, (BYTE )247,
        (BYTE )144, (BYTE )254, (BYTE )216, (BYTE )116,
        (BYTE )1, (BYTE )240, (BYTE )210, (BYTE )9,
        (BYTE )32, (BYTE )9, (BYTE )30, (BYTE )144,
        (BYTE )254, (BYTE )112, (BYTE )224, (BYTE )68,
        (BYTE )16, (BYTE )240, (BYTE )84, (BYTE )239,
        (BYTE )240, (BYTE )18, (BYTE )47, (BYTE )89,
        (BYTE )239, (BYTE )96, (BYTE )14, (BYTE )117,
        (BYTE )60, (BYTE )0, (BYTE )117, (BYTE )61,
        (BYTE )0, (BYTE )117, (BYTE )62, (BYTE )0,
        (BYTE )117, (BYTE )63, (BYTE )0, (BYTE )211,
        (BYTE )34, (BYTE )195, (BYTE )34, (BYTE )123,
        (BYTE )3, (BYTE )124, (BYTE )233, (BYTE )125,
        (BYTE )205, (BYTE )126, (BYTE )233, (BYTE )127,
        (BYTE )215, (BYTE )18, (BYTE )47, (BYTE )113,
        (BYTE )18, (BYTE )227, (BYTE )170, (BYTE )144,
        (BYTE )233, (BYTE )213, (BYTE )224, (BYTE )96,
        (BYTE )18, (BYTE )249, (BYTE )18, (BYTE )231,
        (BYTE )23, (BYTE )64, (BYTE )1, (BYTE )34,
        (BYTE )144, (BYTE )246, (BYTE )0, (BYTE )120,
        (BYTE )6, (BYTE )116, (BYTE )255, (BYTE )240,
        (BYTE )163, (BYTE )216, (BYTE )252, (BYTE )116,
        (BYTE )1, (BYTE )144, (BYTE )233, (BYTE )203,
        (BYTE )240, (BYTE )229, (BYTE )62, (BYTE )195,
        (BYTE )19, (BYTE )144, (BYTE )233, (BYTE )202,
        (BYTE )240, (BYTE )192, (BYTE )224, (BYTE )117,
        (BYTE )240, (BYTE )2, (BYTE )192, (BYTE )240,
        (BYTE )18, (BYTE )226, (BYTE )47, (BYTE )239,
        (BYTE )112, (BYTE )33, (BYTE )32, (BYTE )55,
        (BYTE )7, (BYTE )32, (BYTE )9, (BYTE )4,
        (BYTE )208, (BYTE )240, (BYTE )128, (BYTE )5,
        (BYTE )208, (BYTE )240, (BYTE )213, (BYTE )240,
        (BYTE )233, (BYTE )208, (BYTE )224, (BYTE )144,
        (BYTE )255, (BYTE )40, (BYTE )224, (BYTE )48,
        (BYTE )231, (BYTE )252, (BYTE )144, (BYTE )255,
        (BYTE )40, (BYTE )224, (BYTE )68, (BYTE )1,
        (BYTE )240, (BYTE )195, (BYTE )34, (BYTE )208,
        (BYTE )240, (BYTE )144, (BYTE )233, (BYTE )210,
        (BYTE )224, (BYTE )36, (BYTE )1, (BYTE )240,
        (BYTE )144, (BYTE )233, (BYTE )209, (BYTE )224,
        (BYTE )52, (BYTE )0, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )208, (BYTE )224, (BYTE )52,
        (BYTE )0, (BYTE )240, (BYTE )208, (BYTE )224,
        (BYTE )20, (BYTE )112, (BYTE )182, (BYTE )144,
        (BYTE )233, (BYTE )213, (BYTE )224, (BYTE )248,
        (BYTE )144, (BYTE )233, (BYTE )202, (BYTE )224,
        (BYTE )40, (BYTE )245, (BYTE )240, (BYTE )195,
        (BYTE )116, (BYTE )32, (BYTE )149, (BYTE )240,
        (BYTE )96, (BYTE )34, (BYTE )249, (BYTE )144,
        (BYTE )233, (BYTE )202, (BYTE )224, (BYTE )245,
        (BYTE )240, (BYTE )144, (BYTE )233, (BYTE )207,
        (BYTE )224, (BYTE )37, (BYTE )240, (BYTE )240,
        (BYTE )144, (BYTE )233, (BYTE )206, (BYTE )224,
        (BYTE )52, (BYTE )0, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )205, (BYTE )224, (BYTE )52,
        (BYTE )0, (BYTE )240, (BYTE )18, (BYTE )231,
        (BYTE )23, (BYTE )64, (BYTE )1, (BYTE )34,
        (BYTE )144, (BYTE )233, (BYTE )214, (BYTE )224,
        (BYTE )112, (BYTE )19, (BYTE )123, (BYTE )3,
        (BYTE )124, (BYTE )233, (BYTE )125, (BYTE )215,
        (BYTE )126, (BYTE )233, (BYTE )127, (BYTE )208,
        (BYTE )18, (BYTE )47, (BYTE )113, (BYTE )18,
        (BYTE )229, (BYTE )224, (BYTE )64, (BYTE )1,
        (BYTE )34, (BYTE )117, (BYTE )60, (BYTE )0,
        (BYTE )117, (BYTE )61, (BYTE )0, (BYTE )117,
        (BYTE )62, (BYTE )0, (BYTE )117, (BYTE )63,
        (BYTE )0, (BYTE )211, (BYTE )34, (BYTE )144,
        (BYTE )233, (BYTE )214, (BYTE )224, (BYTE )96,
        (BYTE )24, (BYTE )116, (BYTE )255, (BYTE )144,
        (BYTE )244, (BYTE )0, (BYTE )120, (BYTE )255,
        (BYTE )240, (BYTE )163, (BYTE )24, (BYTE )184,
        (BYTE )0, (BYTE )250, (BYTE )120, (BYTE )255,
        (BYTE )240, (BYTE )163, (BYTE )24, (BYTE )184,
        (BYTE )0, (BYTE )250, (BYTE )240, (BYTE )163,
        (BYTE )240, (BYTE )192, (BYTE )1, (BYTE )18,
        (BYTE )231, (BYTE )112, (BYTE )64, (BYTE )4,
        (BYTE )208, (BYTE )1, (BYTE )195, (BYTE )34,
        (BYTE )144, (BYTE )233, (BYTE )207, (BYTE )224,
        (BYTE )36, (BYTE )1, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )206, (BYTE )224, (BYTE )52,
        (BYTE )0, (BYTE )240, (BYTE )144, (BYTE )233,
        (BYTE )205, (BYTE )224, (BYTE )52, (BYTE )0,
        (BYTE )240, (BYTE )144, (BYTE )233, (BYTE )210,
        (BYTE )224, (BYTE )36, (BYTE )1, (BYTE )240,
        (BYTE )144, (BYTE )233, (BYTE )209, (BYTE )224,
        (BYTE )52, (BYTE )0, (BYTE )240, (BYTE )144,
        (BYTE )233, (BYTE )208, (BYTE )224, (BYTE )52,
        (BYTE )0, (BYTE )240, (BYTE )208, (BYTE )1,
        (BYTE )217, (BYTE )199, (BYTE )211, (BYTE )34,
        (BYTE )194, (BYTE )6, (BYTE )144, (BYTE )233,
        (BYTE )214, (BYTE )224, (BYTE )112, (BYTE )40,
        (BYTE )18, (BYTE )224, (BYTE )216, (BYTE )239,
        (BYTE )96, (BYTE )3, (BYTE )2, (BYTE )231,
        (BYTE )160, (BYTE )144, (BYTE )235, (BYTE )194,
        (BYTE )224, (BYTE )96, (BYTE )23, (BYTE )100,
        (BYTE )2, (BYTE )96, (BYTE )21, (BYTE )144,
        (BYTE )246, (BYTE )0, (BYTE )120, (BYTE )6,
        (BYTE )116, (BYTE )255, (BYTE )240, (BYTE )163,
        (BYTE )216, (BYTE )252, (BYTE )116, (BYTE )240,
        (BYTE )144, (BYTE )246, (BYTE )4, (BYTE )240,
        (BYTE )128, (BYTE )2, (BYTE )195, (BYTE )34,
        (BYTE )228, (BYTE )144, (BYTE )233, (BYTE )203,
        (BYTE )240, (BYTE )18, (BYTE )226, (BYTE )47,
        (BYTE )239, (BYTE )112, (BYTE )3, (BYTE )2,
        (BYTE )231, (BYTE )129, (BYTE )211, (BYTE )34,
        (BYTE )194, (BYTE )62, (BYTE )117, (BYTE )124,
        (BYTE )0, (BYTE )117, (BYTE )125, (BYTE )0,
        (BYTE )117, (BYTE )126, (BYTE )0, (BYTE )34,
        (BYTE )5, (BYTE )124, (BYTE )229, (BYTE )124,
        (BYTE )112, (BYTE )20, (BYTE )5, (BYTE )125,
        (BYTE )229, (BYTE )125, (BYTE )112, (BYTE )4,
        (BYTE )5, (BYTE )126, (BYTE )128, (BYTE )10,
        (BYTE )180, (BYTE )23, (BYTE )7, (BYTE )229,
        (BYTE )126, (BYTE )180, (BYTE )6, (BYTE )2,
        (BYTE )210, (BYTE )62, (BYTE )34, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )0, (BYTE )0, (BYTE )0, (BYTE )0,
        (BYTE )88, (BYTE )68, (BYTE )45, (BYTE )82,
        (BYTE )87, (BYTE )32, (BYTE )32, (BYTE )32,
        (BYTE )32, (BYTE )32, (BYTE )32, (BYTE )49,
        (BYTE )48, (BYTE )48, (BYTE )48, (BYTE )48};
int ENE_InitMedia(struct us_data *us )
{ int result ;
  BYTE MiscReg03 ;
  BYTE *__cil_tmp4 ;
  WORD __cil_tmp5 ;
  void *__cil_tmp6 ;
  BYTE *__cil_tmp7 ;
  BYTE __cil_tmp8 ;
  int __cil_tmp9 ;
  BYTE *__cil_tmp10 ;
  BYTE __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  BYTE __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  BYTE __cil_tmp18 ;
  {
  {
  __cil_tmp4 = & MiscReg03;
  *__cil_tmp4 = (BYTE )0;
  printk("<6>--- Init Media ---\n");
  __cil_tmp5 = (WORD )65411;
  __cil_tmp6 = (void *)(& MiscReg03);
  result = ENE_Read_BYTE(us, __cil_tmp5, __cil_tmp6);
  }
  if (result != 0) {
    {
    printk("<3>Read register fail !!\n");
    }
    return (3);
  } else {
  }
  {
  __cil_tmp7 = & MiscReg03;
  __cil_tmp8 = *__cil_tmp7;
  __cil_tmp9 = (int )__cil_tmp8;
  printk("<6>MiscReg03 = %x\n", __cil_tmp9);
  }
  {
  __cil_tmp10 = & MiscReg03;
  __cil_tmp11 = *__cil_tmp10;
  __cil_tmp12 = (int )__cil_tmp11;
  if (__cil_tmp12 & 2) {
    {
    __cil_tmp13 = (unsigned long )us;
    __cil_tmp14 = __cil_tmp13 + 594;
    __cil_tmp15 = ((struct _SM_STATUS *)__cil_tmp14)->Ready;
    if (! __cil_tmp15) {
      {
      __cil_tmp16 = (unsigned long )us;
      __cil_tmp17 = __cil_tmp16 + 593;
      __cil_tmp18 = ((struct _MS_STATUS *)__cil_tmp17)->Ready;
      if (! __cil_tmp18) {
        {
        result = ENE_SMInit(us);
        }
        if (result != 0) {
          return (3);
        } else {
        }
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  return (result);
}
}
int ENE_Read_BYTE(struct us_data *us , WORD index , void *buf )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  void *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  BYTE __cil_tmp28 ;
  {
  {
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 344;
  __cil_tmp8 = *((unsigned char **)__cil_tmp7);
  bcb = (struct bulk_cb_wrap *)__cil_tmp8;
  __cil_tmp9 = (void *)bcb;
  memset(__cil_tmp9, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp10 = (unsigned long )bcb;
  __cil_tmp11 = __cil_tmp10 + 8;
  *((__le32 *)__cil_tmp11) = (__le32 )1;
  __cil_tmp12 = (unsigned long )bcb;
  __cil_tmp13 = __cil_tmp12 + 12;
  *((__u8 *)__cil_tmp13) = (__u8 )128;
  __cil_tmp14 = 0 * 1UL;
  __cil_tmp15 = 15 + __cil_tmp14;
  __cil_tmp16 = (unsigned long )bcb;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
  *((__u8 *)__cil_tmp17) = (__u8 )237;
  __cil_tmp18 = 2 * 1UL;
  __cil_tmp19 = 15 + __cil_tmp18;
  __cil_tmp20 = (unsigned long )bcb;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  __cil_tmp22 = (int )index;
  __cil_tmp23 = __cil_tmp22 >> 8;
  *((__u8 *)__cil_tmp21) = (BYTE )__cil_tmp23;
  __cil_tmp24 = 3 * 1UL;
  __cil_tmp25 = 15 + __cil_tmp24;
  __cil_tmp26 = (unsigned long )bcb;
  __cil_tmp27 = __cil_tmp26 + __cil_tmp25;
  *((__u8 *)__cil_tmp27) = (BYTE )index;
  __cil_tmp28 = (BYTE )1;
  result = ENE_SendScsiCmd(us, __cil_tmp28, buf, 0);
  }
  return (result);
}
}
int ENE_SMInit(struct us_data *us )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  BYTE buf[512] ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned char *__cil_tmp7 ;
  BYTE __cil_tmp8 ;
  void *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  BYTE __cil_tmp22 ;
  void *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  BYTE *__cil_tmp28 ;
  PSM_STATUS __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  BYTE __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  BYTE __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  BYTE __cil_tmp52 ;
  int __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  BYTE __cil_tmp56 ;
  int __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  BYTE __cil_tmp60 ;
  int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  BYTE __cil_tmp64 ;
  int __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  BYTE __cil_tmp68 ;
  int __cil_tmp69 ;
  {
  {
  __cil_tmp5 = (unsigned long )us;
  __cil_tmp6 = __cil_tmp5 + 344;
  __cil_tmp7 = *((unsigned char **)__cil_tmp6);
  bcb = (struct bulk_cb_wrap *)__cil_tmp7;
  printk("<6>transport --- ENE_SMInit\n");
  __cil_tmp8 = (BYTE )7;
  result = ENE_LoadBinCode(us, __cil_tmp8);
  }
  if (result != 0) {
    {
    printk("<6>Load SM Init Code Fail !!\n");
    }
    return (3);
  } else {
  }
  {
  __cil_tmp9 = (void *)bcb;
  memset(__cil_tmp9, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp10 = (unsigned long )bcb;
  __cil_tmp11 = __cil_tmp10 + 8;
  *((__le32 *)__cil_tmp11) = (__le32 )512;
  __cil_tmp12 = (unsigned long )bcb;
  __cil_tmp13 = __cil_tmp12 + 12;
  *((__u8 *)__cil_tmp13) = (__u8 )128;
  __cil_tmp14 = 0 * 1UL;
  __cil_tmp15 = 15 + __cil_tmp14;
  __cil_tmp16 = (unsigned long )bcb;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
  *((__u8 *)__cil_tmp17) = (__u8 )241;
  __cil_tmp18 = 1 * 1UL;
  __cil_tmp19 = 15 + __cil_tmp18;
  __cil_tmp20 = (unsigned long )bcb;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  *((__u8 *)__cil_tmp21) = (__u8 )1;
  __cil_tmp22 = (BYTE )1;
  __cil_tmp23 = (void *)(& buf);
  result = ENE_SendScsiCmd(us, __cil_tmp22, __cil_tmp23, 0);
  }
  if (result != 0) {
    {
    printk("<3>Execution SM Init Code Fail !! result = %x\n", result);
    }
    return (3);
  } else {
  }
  __cil_tmp24 = (unsigned long )us;
  __cil_tmp25 = __cil_tmp24 + 594;
  __cil_tmp26 = 0 * 1UL;
  __cil_tmp27 = (unsigned long )(buf) + __cil_tmp26;
  __cil_tmp28 = (BYTE *)__cil_tmp27;
  __cil_tmp29 = (PSM_STATUS )__cil_tmp28;
  *((SM_STATUS *)__cil_tmp25) = *__cil_tmp29;
  __cil_tmp30 = (unsigned long )us;
  __cil_tmp31 = __cil_tmp30 + 624;
  __cil_tmp32 = 1 * 1UL;
  __cil_tmp33 = (unsigned long )(buf) + __cil_tmp32;
  *((BYTE *)__cil_tmp31) = *((BYTE *)__cil_tmp33);
  __cil_tmp34 = (unsigned long )us;
  __cil_tmp35 = __cil_tmp34 + 625;
  __cil_tmp36 = 2 * 1UL;
  __cil_tmp37 = (unsigned long )(buf) + __cil_tmp36;
  *((BYTE *)__cil_tmp35) = *((BYTE *)__cil_tmp37);
  {
  __cil_tmp38 = (unsigned long )us;
  __cil_tmp39 = __cil_tmp38 + 594;
  if (*((BYTE *)__cil_tmp39)) {
    {
    __cil_tmp40 = (unsigned long )us;
    __cil_tmp41 = __cil_tmp40 + 594;
    if (((struct _SM_STATUS *)__cil_tmp41)->Ready) {
      {
      __cil_tmp42 = (unsigned long )us;
      __cil_tmp43 = __cil_tmp42 + 594;
      __cil_tmp44 = *((BYTE *)__cil_tmp43);
      __cil_tmp45 = (int )__cil_tmp44;
      printk("<6>Insert     = %x\n", __cil_tmp45);
      __cil_tmp46 = (unsigned long )us;
      __cil_tmp47 = __cil_tmp46 + 594;
      __cil_tmp48 = ((struct _SM_STATUS *)__cil_tmp47)->Ready;
      __cil_tmp49 = (int )__cil_tmp48;
      printk("<6>Ready      = %x\n", __cil_tmp49);
      __cil_tmp50 = (unsigned long )us;
      __cil_tmp51 = __cil_tmp50 + 594;
      __cil_tmp52 = ((struct _SM_STATUS *)__cil_tmp51)->WtP;
      __cil_tmp53 = (int )__cil_tmp52;
      printk("<6>WtP        = %x\n", __cil_tmp53);
      __cil_tmp54 = (unsigned long )us;
      __cil_tmp55 = __cil_tmp54 + 624;
      __cil_tmp56 = *((BYTE *)__cil_tmp55);
      __cil_tmp57 = (int )__cil_tmp56;
      printk("<6>DeviceID   = %x\n", __cil_tmp57);
      __cil_tmp58 = (unsigned long )us;
      __cil_tmp59 = __cil_tmp58 + 625;
      __cil_tmp60 = *((BYTE *)__cil_tmp59);
      __cil_tmp61 = (int )__cil_tmp60;
      printk("<6>CardID     = %x\n", __cil_tmp61);
      MediaChange = (DWORD )1;
      Check_D_MediaFmt(us);
      }
    } else {
      {
      __cil_tmp62 = 0 * 1UL;
      __cil_tmp63 = (unsigned long )(buf) + __cil_tmp62;
      __cil_tmp64 = *((BYTE *)__cil_tmp63);
      __cil_tmp65 = (int )__cil_tmp64;
      printk("<3>SM Card Not Ready --- %x\n", __cil_tmp65);
      }
      return (3);
    }
    }
  } else {
    {
    __cil_tmp66 = 0 * 1UL;
    __cil_tmp67 = (unsigned long )(buf) + __cil_tmp66;
    __cil_tmp68 = *((BYTE *)__cil_tmp67);
    __cil_tmp69 = (int )__cil_tmp68;
    printk("<3>SM Card Not Ready --- %x\n", __cil_tmp69);
    }
    return (3);
  }
  }
  return (0);
}
}
int ENE_LoadBinCode(struct us_data *us , BYTE flag )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  PBYTE buf ;
  void *tmp___7 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned char *__cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  BYTE __cil_tmp17 ;
  int __cil_tmp18 ;
  size_t __cil_tmp19 ;
  void *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  void *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  BYTE *__cil_tmp26 ;
  void *__cil_tmp27 ;
  void *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  BYTE *__cil_tmp31 ;
  void *__cil_tmp32 ;
  void *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  BYTE *__cil_tmp36 ;
  void *__cil_tmp37 ;
  void *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  BYTE *__cil_tmp41 ;
  void *__cil_tmp42 ;
  void *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  BYTE __cil_tmp52 ;
  void *__cil_tmp53 ;
  void *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  {
  __cil_tmp11 = (unsigned long )us;
  __cil_tmp12 = __cil_tmp11 + 344;
  __cil_tmp13 = *((unsigned char **)__cil_tmp12);
  bcb = (struct bulk_cb_wrap *)__cil_tmp13;
  {
  __cil_tmp14 = (int )flag;
  __cil_tmp15 = (unsigned long )us;
  __cil_tmp16 = __cil_tmp15 + 640;
  __cil_tmp17 = *((BYTE *)__cil_tmp16);
  __cil_tmp18 = (int )__cil_tmp17;
  if (__cil_tmp18 == __cil_tmp14) {
    return (0);
  } else {
  }
  }
  {
  __cil_tmp19 = (size_t )2048;
  tmp___7 = kmalloc(__cil_tmp19, 208U);
  buf = (PBYTE )tmp___7;
  }
  {
  __cil_tmp20 = (void *)0;
  __cil_tmp21 = (unsigned long )__cil_tmp20;
  __cil_tmp22 = (unsigned long )buf;
  if (__cil_tmp22 == __cil_tmp21) {
    return (3);
  } else {
  }
  }
  if ((int )flag == 7) {
    goto case_7;
  } else
  if ((int )flag == 8) {
    goto case_8;
  } else
  if (0) {
    case_7:
    {
    printk("<6>SM_INIT_PATTERN\n");
    __len = (size_t )2048;
    }
    if (__len >= 64UL) {
      {
      __cil_tmp23 = (void *)buf;
      __cil_tmp24 = 0 * 1UL;
      __cil_tmp25 = (unsigned long )(SM_Init) + __cil_tmp24;
      __cil_tmp26 = (BYTE *)__cil_tmp25;
      __cil_tmp27 = (void *)__cil_tmp26;
      __ret = memcpy(__cil_tmp23, __cil_tmp27, __len);
      }
    } else {
      {
      __cil_tmp28 = (void *)buf;
      __cil_tmp29 = 0 * 1UL;
      __cil_tmp30 = (unsigned long )(SM_Init) + __cil_tmp29;
      __cil_tmp31 = (BYTE *)__cil_tmp30;
      __cil_tmp32 = (void *)__cil_tmp31;
      __ret = memcpy(__cil_tmp28, __cil_tmp32, __len);
      }
    }
    goto switch_break;
    case_8:
    {
    printk("<6>SM_RW_PATTERN\n");
    __len___0 = (size_t )2048;
    }
    if (__len___0 >= 64UL) {
      {
      __cil_tmp33 = (void *)buf;
      __cil_tmp34 = 0 * 1UL;
      __cil_tmp35 = (unsigned long )(SM_Rdwr) + __cil_tmp34;
      __cil_tmp36 = (BYTE *)__cil_tmp35;
      __cil_tmp37 = (void *)__cil_tmp36;
      __ret___0 = memcpy(__cil_tmp33, __cil_tmp37, __len___0);
      }
    } else {
      {
      __cil_tmp38 = (void *)buf;
      __cil_tmp39 = 0 * 1UL;
      __cil_tmp40 = (unsigned long )(SM_Rdwr) + __cil_tmp39;
      __cil_tmp41 = (BYTE *)__cil_tmp40;
      __cil_tmp42 = (void *)__cil_tmp41;
      __ret___0 = memcpy(__cil_tmp38, __cil_tmp42, __len___0);
      }
    }
    goto switch_break;
  } else {
    switch_break: ;
  }
  {
  __cil_tmp43 = (void *)bcb;
  memset(__cil_tmp43, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp44 = (unsigned long )bcb;
  __cil_tmp45 = __cil_tmp44 + 8;
  *((__le32 *)__cil_tmp45) = (__le32 )2048;
  __cil_tmp46 = (unsigned long )bcb;
  __cil_tmp47 = __cil_tmp46 + 12;
  *((__u8 *)__cil_tmp47) = (__u8 )0;
  __cil_tmp48 = 0 * 1UL;
  __cil_tmp49 = 15 + __cil_tmp48;
  __cil_tmp50 = (unsigned long )bcb;
  __cil_tmp51 = __cil_tmp50 + __cil_tmp49;
  *((__u8 *)__cil_tmp51) = (__u8 )239;
  __cil_tmp52 = (BYTE )0;
  __cil_tmp53 = (void *)buf;
  result = ENE_SendScsiCmd(us, __cil_tmp52, __cil_tmp53, 0);
  __cil_tmp54 = (void *)buf;
  kfree(__cil_tmp54);
  __cil_tmp55 = (unsigned long )us;
  __cil_tmp56 = __cil_tmp55 + 640;
  *((BYTE *)__cil_tmp56) = flag;
  }
  return (result);
}
}
int ENE_SendScsiCmd(struct us_data *us , BYTE fDir , void *buf , int use_sg )
{ struct bulk_cb_wrap *bcb ;
  struct bulk_cs_wrap *bcs ;
  int result ;
  unsigned int transfer_length ;
  unsigned int cswlen ;
  unsigned int partial ;
  unsigned int residue ;
  unsigned int pipe ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int tmp___7 ;
  int _max1 ;
  int tmp___8 ;
  int _max2 ;
  int tmp___9 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned char *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned char *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned int *__cil_tmp28 ;
  unsigned int *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  void *__cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned int *__cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  struct scsi_cmnd *__cil_tmp43 ;
  int *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  void *__cil_tmp48 ;
  unsigned int *__cil_tmp49 ;
  unsigned int __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned int __cil_tmp53 ;
  void *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned int __cil_tmp57 ;
  void *__cil_tmp58 ;
  void *__cil_tmp59 ;
  unsigned int *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned int *__cil_tmp67 ;
  unsigned int *__cil_tmp68 ;
  unsigned int *__cil_tmp69 ;
  unsigned int __cil_tmp70 ;
  unsigned int *__cil_tmp71 ;
  unsigned int __cil_tmp72 ;
  unsigned int *__cil_tmp73 ;
  unsigned int *__cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  struct scsi_cmnd *__cil_tmp79 ;
  int *__cil_tmp80 ;
  int *__cil_tmp81 ;
  int *__cil_tmp82 ;
  int __cil_tmp83 ;
  int *__cil_tmp84 ;
  int __cil_tmp85 ;
  int *__cil_tmp86 ;
  int *__cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  struct scsi_cmnd *__cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  __u8 __cil_tmp93 ;
  int __cil_tmp94 ;
  {
  {
  __cil_tmp20 = (unsigned long )us;
  __cil_tmp21 = __cil_tmp20 + 344;
  __cil_tmp22 = *((unsigned char **)__cil_tmp21);
  bcb = (struct bulk_cb_wrap *)__cil_tmp22;
  __cil_tmp23 = (unsigned long )us;
  __cil_tmp24 = __cil_tmp23 + 344;
  __cil_tmp25 = *((unsigned char **)__cil_tmp24);
  bcs = (struct bulk_cs_wrap *)__cil_tmp25;
  __cil_tmp26 = (unsigned long )bcb;
  __cil_tmp27 = __cil_tmp26 + 8;
  transfer_length = *((__le32 *)__cil_tmp27);
  __cil_tmp28 = & cswlen;
  *__cil_tmp28 = 0U;
  __cil_tmp29 = & partial;
  *__cil_tmp29 = 0U;
  __cil_tmp30 = (unsigned long )us;
  __cil_tmp31 = __cil_tmp30 + 112;
  __cil_tmp32 = *((unsigned int *)__cil_tmp31);
  __cil_tmp33 = (void *)bcb;
  __cil_tmp34 = (void *)0;
  __cil_tmp35 = (unsigned int *)__cil_tmp34;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp32, __cil_tmp33, 31U, __cil_tmp35);
  }
  if (result != 0) {
    {
    printk("<3>send cmd to out endpoint fail ---\n");
    }
    return (3);
  } else {
  }
  if (buf) {
    pipe = (unsigned int )fDir;
    {
    __cil_tmp36 = (int )fDir;
    if (__cil_tmp36 == 1) {
      __cil_tmp37 = (unsigned long )us;
      __cil_tmp38 = __cil_tmp37 + 116;
      pipe = *((unsigned int *)__cil_tmp38);
    } else {
      __cil_tmp39 = (unsigned long )us;
      __cil_tmp40 = __cil_tmp39 + 112;
      pipe = *((unsigned int *)__cil_tmp40);
    }
    }
    if (use_sg) {
      {
      __cil_tmp41 = (unsigned long )us;
      __cil_tmp42 = __cil_tmp41 + 192;
      __cil_tmp43 = *((struct scsi_cmnd **)__cil_tmp42);
      result = usb_stor_bulk_srb(us, pipe, __cil_tmp43);
      }
    } else {
      {
      __cil_tmp44 = (int *)(& partial);
      result = usb_stor_bulk_transfer_sg(us, pipe, buf, transfer_length, 0, __cil_tmp44);
      }
    }
    if (result != 0) {
      {
      printk("<3>data transfer fail ---\n");
      }
      return (3);
    } else {
    }
  } else {
  }
  {
  __cil_tmp45 = (unsigned long )us;
  __cil_tmp46 = __cil_tmp45 + 116;
  __cil_tmp47 = *((unsigned int *)__cil_tmp46);
  __cil_tmp48 = (void *)bcs;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp47, __cil_tmp48, 13U, & cswlen);
  }
  if (result == 1) {
    {
    __cil_tmp49 = & cswlen;
    __cil_tmp50 = *__cil_tmp49;
    if (__cil_tmp50 == 0U) {
      {
      printk("<4>Received 0-length CSW; retrying...\n");
      __cil_tmp51 = (unsigned long )us;
      __cil_tmp52 = __cil_tmp51 + 116;
      __cil_tmp53 = *((unsigned int *)__cil_tmp52);
      __cil_tmp54 = (void *)bcs;
      result = usb_stor_bulk_transfer_buf(us, __cil_tmp53, __cil_tmp54, 13U, & cswlen);
      }
    } else {
    }
    }
  } else {
  }
  if (result == 2) {
    {
    printk("<4>Attempting to get CSW (2nd try)...\n");
    __cil_tmp55 = (unsigned long )us;
    __cil_tmp56 = __cil_tmp55 + 116;
    __cil_tmp57 = *((unsigned int *)__cil_tmp56);
    __cil_tmp58 = (void *)bcs;
    __cil_tmp59 = (void *)0;
    __cil_tmp60 = (unsigned int *)__cil_tmp59;
    result = usb_stor_bulk_transfer_buf(us, __cil_tmp57, __cil_tmp58, 13U, __cil_tmp60);
    }
  } else {
  }
  if (result != 0) {
    return (3);
  } else {
  }
  __cil_tmp61 = (unsigned long )bcs;
  __cil_tmp62 = __cil_tmp61 + 8;
  residue = *((__le32 *)__cil_tmp62);
  if (residue) {
    {
    __cil_tmp63 = (unsigned long )us;
    __cil_tmp64 = __cil_tmp63 + 96;
    __cil_tmp65 = *((unsigned long *)__cil_tmp64);
    __cil_tmp66 = __cil_tmp65 & 32UL;
    if (! __cil_tmp66) {
      __cil_tmp67 = & _min1;
      *__cil_tmp67 = residue;
      __cil_tmp68 = & _min2;
      *__cil_tmp68 = transfer_length;
      {
      __cil_tmp69 = & _min2;
      __cil_tmp70 = *__cil_tmp69;
      __cil_tmp71 = & _min1;
      __cil_tmp72 = *__cil_tmp71;
      if (__cil_tmp72 < __cil_tmp70) {
        __cil_tmp73 = & _min1;
        tmp___7 = *__cil_tmp73;
      } else {
        __cil_tmp74 = & _min2;
        tmp___7 = *__cil_tmp74;
      }
      }
      residue = tmp___7;
      {
      __cil_tmp75 = (unsigned long )us;
      __cil_tmp76 = __cil_tmp75 + 192;
      if (*((struct scsi_cmnd **)__cil_tmp76)) {
        {
        __cil_tmp77 = (unsigned long )us;
        __cil_tmp78 = __cil_tmp77 + 192;
        __cil_tmp79 = *((struct scsi_cmnd **)__cil_tmp78);
        tmp___8 = scsi_get_resid(__cil_tmp79);
        __cil_tmp80 = & _max1;
        *__cil_tmp80 = tmp___8;
        __cil_tmp81 = & _max2;
        *__cil_tmp81 = (int )residue;
        }
        {
        __cil_tmp82 = & _max2;
        __cil_tmp83 = *__cil_tmp82;
        __cil_tmp84 = & _max1;
        __cil_tmp85 = *__cil_tmp84;
        if (__cil_tmp85 > __cil_tmp83) {
          __cil_tmp86 = & _max1;
          tmp___9 = *__cil_tmp86;
        } else {
          __cil_tmp87 = & _max2;
          tmp___9 = *__cil_tmp87;
        }
        }
        {
        __cil_tmp88 = (unsigned long )us;
        __cil_tmp89 = __cil_tmp88 + 192;
        __cil_tmp90 = *((struct scsi_cmnd **)__cil_tmp89);
        scsi_set_resid(__cil_tmp90, tmp___9);
        }
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  {
  __cil_tmp91 = (unsigned long )bcs;
  __cil_tmp92 = __cil_tmp91 + 12;
  __cil_tmp93 = *((__u8 *)__cil_tmp92);
  __cil_tmp94 = (int )__cil_tmp93;
  if (__cil_tmp94 != 0) {
    return (3);
  } else {
  }
  }
  return (0);
}
}
int ENE_Read_Data(struct us_data *us , void *buf , unsigned int length )
{ struct bulk_cb_wrap *bcb ;
  struct bulk_cs_wrap *bcs ;
  int result ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  void *__cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned int *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  void *__cil_tmp39 ;
  unsigned int *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  void *__cil_tmp44 ;
  void *__cil_tmp45 ;
  unsigned int *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  __u8 __cil_tmp49 ;
  int __cil_tmp50 ;
  {
  {
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 344;
  __cil_tmp9 = *((unsigned char **)__cil_tmp8);
  bcb = (struct bulk_cb_wrap *)__cil_tmp9;
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 344;
  __cil_tmp12 = *((unsigned char **)__cil_tmp11);
  bcs = (struct bulk_cs_wrap *)__cil_tmp12;
  __cil_tmp13 = (void *)bcb;
  memset(__cil_tmp13, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp14 = (unsigned long )bcb;
  __cil_tmp15 = __cil_tmp14 + 8;
  *((__le32 *)__cil_tmp15) = length;
  __cil_tmp16 = (unsigned long )bcb;
  __cil_tmp17 = __cil_tmp16 + 12;
  *((__u8 *)__cil_tmp17) = (__u8 )128;
  __cil_tmp18 = 0 * 1UL;
  __cil_tmp19 = 15 + __cil_tmp18;
  __cil_tmp20 = (unsigned long )bcb;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  *((__u8 *)__cil_tmp21) = (__u8 )237;
  __cil_tmp22 = 2 * 1UL;
  __cil_tmp23 = 15 + __cil_tmp22;
  __cil_tmp24 = (unsigned long )bcb;
  __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
  *((__u8 *)__cil_tmp25) = (__u8 )255;
  __cil_tmp26 = 3 * 1UL;
  __cil_tmp27 = 15 + __cil_tmp26;
  __cil_tmp28 = (unsigned long )bcb;
  __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
  *((__u8 *)__cil_tmp29) = (__u8 )129;
  __cil_tmp30 = (unsigned long )us;
  __cil_tmp31 = __cil_tmp30 + 112;
  __cil_tmp32 = *((unsigned int *)__cil_tmp31);
  __cil_tmp33 = (void *)bcb;
  __cil_tmp34 = (void *)0;
  __cil_tmp35 = (unsigned int *)__cil_tmp34;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp32, __cil_tmp33, 31U, __cil_tmp35);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp36 = (unsigned long )us;
  __cil_tmp37 = __cil_tmp36 + 116;
  __cil_tmp38 = *((unsigned int *)__cil_tmp37);
  __cil_tmp39 = (void *)0;
  __cil_tmp40 = (unsigned int *)__cil_tmp39;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp38, buf, length, __cil_tmp40);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp41 = (unsigned long )us;
  __cil_tmp42 = __cil_tmp41 + 116;
  __cil_tmp43 = *((unsigned int *)__cil_tmp42);
  __cil_tmp44 = (void *)bcs;
  __cil_tmp45 = (void *)0;
  __cil_tmp46 = (unsigned int *)__cil_tmp45;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp43, __cil_tmp44, 13U, __cil_tmp46);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp47 = (unsigned long )bcs;
  __cil_tmp48 = __cil_tmp47 + 12;
  __cil_tmp49 = *((__u8 *)__cil_tmp48);
  __cil_tmp50 = (int )__cil_tmp49;
  if (__cil_tmp50 != 0) {
    return (3);
  } else {
  }
  }
  return (0);
}
}
int ENE_Write_Data(struct us_data *us , void *buf , unsigned int length )
{ struct bulk_cb_wrap *bcb ;
  struct bulk_cs_wrap *bcs ;
  int result ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  void *__cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned int *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  void *__cil_tmp39 ;
  unsigned int *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  void *__cil_tmp44 ;
  void *__cil_tmp45 ;
  unsigned int *__cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  __u8 __cil_tmp49 ;
  int __cil_tmp50 ;
  {
  {
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 344;
  __cil_tmp9 = *((unsigned char **)__cil_tmp8);
  bcb = (struct bulk_cb_wrap *)__cil_tmp9;
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 344;
  __cil_tmp12 = *((unsigned char **)__cil_tmp11);
  bcs = (struct bulk_cs_wrap *)__cil_tmp12;
  __cil_tmp13 = (void *)bcb;
  memset(__cil_tmp13, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp14 = (unsigned long )bcb;
  __cil_tmp15 = __cil_tmp14 + 8;
  *((__le32 *)__cil_tmp15) = length;
  __cil_tmp16 = (unsigned long )bcb;
  __cil_tmp17 = __cil_tmp16 + 12;
  *((__u8 *)__cil_tmp17) = (__u8 )0;
  __cil_tmp18 = 0 * 1UL;
  __cil_tmp19 = 15 + __cil_tmp18;
  __cil_tmp20 = (unsigned long )bcb;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  *((__u8 *)__cil_tmp21) = (__u8 )238;
  __cil_tmp22 = 2 * 1UL;
  __cil_tmp23 = 15 + __cil_tmp22;
  __cil_tmp24 = (unsigned long )bcb;
  __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
  *((__u8 *)__cil_tmp25) = (__u8 )255;
  __cil_tmp26 = 3 * 1UL;
  __cil_tmp27 = 15 + __cil_tmp26;
  __cil_tmp28 = (unsigned long )bcb;
  __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
  *((__u8 *)__cil_tmp29) = (__u8 )129;
  __cil_tmp30 = (unsigned long )us;
  __cil_tmp31 = __cil_tmp30 + 112;
  __cil_tmp32 = *((unsigned int *)__cil_tmp31);
  __cil_tmp33 = (void *)bcb;
  __cil_tmp34 = (void *)0;
  __cil_tmp35 = (unsigned int *)__cil_tmp34;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp32, __cil_tmp33, 31U, __cil_tmp35);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp36 = (unsigned long )us;
  __cil_tmp37 = __cil_tmp36 + 112;
  __cil_tmp38 = *((unsigned int *)__cil_tmp37);
  __cil_tmp39 = (void *)0;
  __cil_tmp40 = (unsigned int *)__cil_tmp39;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp38, buf, length, __cil_tmp40);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp41 = (unsigned long )us;
  __cil_tmp42 = __cil_tmp41 + 116;
  __cil_tmp43 = *((unsigned int *)__cil_tmp42);
  __cil_tmp44 = (void *)bcs;
  __cil_tmp45 = (void *)0;
  __cil_tmp46 = (unsigned int *)__cil_tmp45;
  result = usb_stor_bulk_transfer_buf(us, __cil_tmp43, __cil_tmp44, 13U, __cil_tmp46);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp47 = (unsigned long )bcs;
  __cil_tmp48 = __cil_tmp47 + 12;
  __cil_tmp49 = *((__u8 *)__cil_tmp48);
  __cil_tmp50 = (int )__cil_tmp49;
  if (__cil_tmp50 != 0) {
    return (3);
  } else {
  }
  }
  return (0);
}
}
void usb_stor_print_cmd(struct scsi_cmnd *srb )
{ PBYTE Cdb ;
  DWORD cmd ;
  DWORD bn ;
  WORD blen ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  PBYTE __cil_tmp8 ;
  u8 __cil_tmp9 ;
  PBYTE __cil_tmp10 ;
  u8 __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  PBYTE __cil_tmp15 ;
  u8 __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  PBYTE __cil_tmp21 ;
  u8 __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  PBYTE __cil_tmp27 ;
  u8 __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned int __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  PBYTE __cil_tmp35 ;
  u8 __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  PBYTE __cil_tmp39 ;
  u8 __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  {
  __cil_tmp6 = (unsigned long )srb;
  __cil_tmp7 = __cil_tmp6 + 80;
  Cdb = *((unsigned char **)__cil_tmp7);
  __cil_tmp8 = Cdb + 0;
  __cil_tmp9 = *__cil_tmp8;
  cmd = (DWORD )__cil_tmp9;
  __cil_tmp10 = Cdb + 5;
  __cil_tmp11 = *__cil_tmp10;
  __cil_tmp12 = (int )__cil_tmp11;
  __cil_tmp13 = __cil_tmp12 & 255;
  __cil_tmp14 = (unsigned int )__cil_tmp13;
  __cil_tmp15 = Cdb + 4;
  __cil_tmp16 = *__cil_tmp15;
  __cil_tmp17 = (int )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 << 8;
  __cil_tmp19 = __cil_tmp18 & 65280;
  __cil_tmp20 = (unsigned int )__cil_tmp19;
  __cil_tmp21 = Cdb + 3;
  __cil_tmp22 = *__cil_tmp21;
  __cil_tmp23 = (int )__cil_tmp22;
  __cil_tmp24 = __cil_tmp23 << 16;
  __cil_tmp25 = __cil_tmp24 & 16711680;
  __cil_tmp26 = (unsigned int )__cil_tmp25;
  __cil_tmp27 = Cdb + 2;
  __cil_tmp28 = *__cil_tmp27;
  __cil_tmp29 = (int )__cil_tmp28;
  __cil_tmp30 = __cil_tmp29 << 24;
  __cil_tmp31 = (unsigned int )__cil_tmp30;
  __cil_tmp32 = __cil_tmp31 & 4278190080U;
  __cil_tmp33 = __cil_tmp32 | __cil_tmp26;
  __cil_tmp34 = __cil_tmp33 | __cil_tmp20;
  bn = __cil_tmp34 | __cil_tmp14;
  __cil_tmp35 = Cdb + 8;
  __cil_tmp36 = *__cil_tmp35;
  __cil_tmp37 = (int )__cil_tmp36;
  __cil_tmp38 = __cil_tmp37 & 255;
  __cil_tmp39 = Cdb + 7;
  __cil_tmp40 = *__cil_tmp39;
  __cil_tmp41 = (int )__cil_tmp40;
  __cil_tmp42 = __cil_tmp41 << 8;
  __cil_tmp43 = __cil_tmp42 & 65280;
  __cil_tmp44 = __cil_tmp43 | __cil_tmp38;
  blen = (WORD )__cil_tmp44;
  if ((int )cmd == 0) {
    goto case_0;
  } else
  if ((int )cmd == 18) {
    goto case_18;
  } else
  if ((int )cmd == 26) {
    goto case_26;
  } else
  if ((int )cmd == 27) {
    goto case_27;
  } else
  if ((int )cmd == 37) {
    goto case_37;
  } else
  if ((int )cmd == 40) {
    goto case_40;
  } else
  if ((int )cmd == 42) {
    goto case_42;
  } else
  if ((int )cmd == 30) {
    goto case_30;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      goto switch_break;
      case_18:
      {
      printk("<6>scsi cmd %X --- SCSIOP_INQUIRY\n", cmd);
      }
      goto switch_break;
      case_26:
      {
      printk("<6>scsi cmd %X --- SCSIOP_MODE_SENSE\n", cmd);
      }
      goto switch_break;
      case_27:
      {
      printk("<6>scsi cmd %X --- SCSIOP_START_STOP\n", cmd);
      }
      goto switch_break;
      case_37:
      {
      printk("<6>scsi cmd %X --- SCSIOP_READ_CAPACITY\n", cmd);
      }
      goto switch_break;
      case_40:
      goto switch_break;
      case_42:
      goto switch_break;
      case_30:
      {
      printk("<6>scsi cmd %X --- SCSIOP_ALLOW_MEDIUM_REMOVAL\n", cmd);
      }
      goto switch_break;
      switch_default:
      {
      printk("<6>scsi cmd %X --- Other cmd\n", cmd);
      }
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  bn = (DWORD )0;
  blen = (WORD )0;
  return;
}
}
struct SSFDCTYPE Ssfdc ;
int Media_D_ReadSector(struct us_data *us , DWORD start , WORD count , BYTE *buf ) ;
int Media_D_CopySector(struct us_data *us , DWORD start , WORD count , BYTE *buf ) ;
int SM_SCSI_Test_Unit_Ready(struct us_data *us , struct scsi_cmnd *srb ) ;
int SM_SCSI_Inquiry(struct us_data *us , struct scsi_cmnd *srb ) ;
int SM_SCSI_Mode_Sense(struct us_data *us , struct scsi_cmnd *srb ) ;
int SM_SCSI_Read_Capacity(struct us_data *us , struct scsi_cmnd *srb ) ;
int SM_SCSI_Read(struct us_data *us , struct scsi_cmnd *srb ) ;
int SM_SCSI_Write(struct us_data *us , struct scsi_cmnd *srb ) ;
int SM_SCSIIrp(struct us_data *us , struct scsi_cmnd *srb )
{ int result ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  unsigned char __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  {
  __cil_tmp4 = (unsigned long )us;
  __cil_tmp5 = __cil_tmp4 + 648;
  *((int *)__cil_tmp5) = 0;
  {
  __cil_tmp6 = (unsigned long )srb;
  __cil_tmp7 = __cil_tmp6 + 80;
  __cil_tmp8 = *((unsigned char **)__cil_tmp7);
  __cil_tmp9 = __cil_tmp8 + 0;
  __cil_tmp10 = *__cil_tmp9;
  if ((int )__cil_tmp10 == 0) {
    goto case_0;
  } else
  if ((int )__cil_tmp10 == 18) {
    goto case_18;
  } else
  if ((int )__cil_tmp10 == 26) {
    goto case_26;
  } else
  if ((int )__cil_tmp10 == 37) {
    goto case_37;
  } else
  if ((int )__cil_tmp10 == 40) {
    goto case_40;
  } else
  if ((int )__cil_tmp10 == 42) {
    goto case_42;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      {
      result = SM_SCSI_Test_Unit_Ready(us, srb);
      }
      goto switch_break;
      case_18:
      {
      result = SM_SCSI_Inquiry(us, srb);
      }
      goto switch_break;
      case_26:
      {
      result = SM_SCSI_Mode_Sense(us, srb);
      }
      goto switch_break;
      case_37:
      {
      result = SM_SCSI_Read_Capacity(us, srb);
      }
      goto switch_break;
      case_40:
      {
      result = SM_SCSI_Read(us, srb);
      }
      goto switch_break;
      case_42:
      {
      result = SM_SCSI_Write(us, srb);
      }
      goto switch_break;
      switch_default:
      __cil_tmp11 = (unsigned long )us;
      __cil_tmp12 = __cil_tmp11 + 648;
      *((int *)__cil_tmp12) = 5;
      result = 1;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  }
  return (result);
}
}
int SM_SCSI_Test_Unit_Ready(struct us_data *us , struct scsi_cmnd *srb )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )us;
  __cil_tmp4 = __cil_tmp3 + 594;
  if (*((BYTE *)__cil_tmp4)) {
    {
    __cil_tmp5 = (unsigned long )us;
    __cil_tmp6 = __cil_tmp5 + 594;
    if (((struct _SM_STATUS *)__cil_tmp6)->Ready) {
      return (0);
    } else {
      {
      ENE_SMInit(us);
      }
      return (0);
    }
    }
  } else {
    {
    ENE_SMInit(us);
    }
    return (0);
  }
  }
  return (0);
}
}
int SM_SCSI_Inquiry(struct us_data *us , struct scsi_cmnd *srb )
{ BYTE data_ptr[36] ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
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
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
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
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  BYTE *__cil_tmp78 ;
  {
  {
  __cil_tmp4 = 0 * 1UL;
  __cil_tmp5 = (unsigned long )(data_ptr) + __cil_tmp4;
  *((BYTE *)__cil_tmp5) = (BYTE )0;
  __cil_tmp6 = 1 * 1UL;
  __cil_tmp7 = (unsigned long )(data_ptr) + __cil_tmp6;
  *((BYTE *)__cil_tmp7) = (BYTE )128;
  __cil_tmp8 = 2 * 1UL;
  __cil_tmp9 = (unsigned long )(data_ptr) + __cil_tmp8;
  *((BYTE *)__cil_tmp9) = (BYTE )2;
  __cil_tmp10 = 3 * 1UL;
  __cil_tmp11 = (unsigned long )(data_ptr) + __cil_tmp10;
  *((BYTE *)__cil_tmp11) = (BYTE )0;
  __cil_tmp12 = 4 * 1UL;
  __cil_tmp13 = (unsigned long )(data_ptr) + __cil_tmp12;
  *((BYTE *)__cil_tmp13) = (BYTE )31;
  __cil_tmp14 = 5 * 1UL;
  __cil_tmp15 = (unsigned long )(data_ptr) + __cil_tmp14;
  *((BYTE *)__cil_tmp15) = (BYTE )0;
  __cil_tmp16 = 6 * 1UL;
  __cil_tmp17 = (unsigned long )(data_ptr) + __cil_tmp16;
  *((BYTE *)__cil_tmp17) = (BYTE )0;
  __cil_tmp18 = 7 * 1UL;
  __cil_tmp19 = (unsigned long )(data_ptr) + __cil_tmp18;
  *((BYTE *)__cil_tmp19) = (BYTE )0;
  __cil_tmp20 = 8 * 1UL;
  __cil_tmp21 = (unsigned long )(data_ptr) + __cil_tmp20;
  *((BYTE *)__cil_tmp21) = (BYTE )85;
  __cil_tmp22 = 9 * 1UL;
  __cil_tmp23 = (unsigned long )(data_ptr) + __cil_tmp22;
  *((BYTE *)__cil_tmp23) = (BYTE )83;
  __cil_tmp24 = 10 * 1UL;
  __cil_tmp25 = (unsigned long )(data_ptr) + __cil_tmp24;
  *((BYTE *)__cil_tmp25) = (BYTE )66;
  __cil_tmp26 = 11 * 1UL;
  __cil_tmp27 = (unsigned long )(data_ptr) + __cil_tmp26;
  *((BYTE *)__cil_tmp27) = (BYTE )50;
  __cil_tmp28 = 12 * 1UL;
  __cil_tmp29 = (unsigned long )(data_ptr) + __cil_tmp28;
  *((BYTE *)__cil_tmp29) = (BYTE )46;
  __cil_tmp30 = 13 * 1UL;
  __cil_tmp31 = (unsigned long )(data_ptr) + __cil_tmp30;
  *((BYTE *)__cil_tmp31) = (BYTE )48;
  __cil_tmp32 = 14 * 1UL;
  __cil_tmp33 = (unsigned long )(data_ptr) + __cil_tmp32;
  *((BYTE *)__cil_tmp33) = (BYTE )32;
  __cil_tmp34 = 15 * 1UL;
  __cil_tmp35 = (unsigned long )(data_ptr) + __cil_tmp34;
  *((BYTE *)__cil_tmp35) = (BYTE )32;
  __cil_tmp36 = 16 * 1UL;
  __cil_tmp37 = (unsigned long )(data_ptr) + __cil_tmp36;
  *((BYTE *)__cil_tmp37) = (BYTE )67;
  __cil_tmp38 = 17 * 1UL;
  __cil_tmp39 = (unsigned long )(data_ptr) + __cil_tmp38;
  *((BYTE *)__cil_tmp39) = (BYTE )97;
  __cil_tmp40 = 18 * 1UL;
  __cil_tmp41 = (unsigned long )(data_ptr) + __cil_tmp40;
  *((BYTE *)__cil_tmp41) = (BYTE )114;
  __cil_tmp42 = 19 * 1UL;
  __cil_tmp43 = (unsigned long )(data_ptr) + __cil_tmp42;
  *((BYTE *)__cil_tmp43) = (BYTE )100;
  __cil_tmp44 = 20 * 1UL;
  __cil_tmp45 = (unsigned long )(data_ptr) + __cil_tmp44;
  *((BYTE *)__cil_tmp45) = (BYTE )82;
  __cil_tmp46 = 21 * 1UL;
  __cil_tmp47 = (unsigned long )(data_ptr) + __cil_tmp46;
  *((BYTE *)__cil_tmp47) = (BYTE )101;
  __cil_tmp48 = 22 * 1UL;
  __cil_tmp49 = (unsigned long )(data_ptr) + __cil_tmp48;
  *((BYTE *)__cil_tmp49) = (BYTE )97;
  __cil_tmp50 = 23 * 1UL;
  __cil_tmp51 = (unsigned long )(data_ptr) + __cil_tmp50;
  *((BYTE *)__cil_tmp51) = (BYTE )100;
  __cil_tmp52 = 24 * 1UL;
  __cil_tmp53 = (unsigned long )(data_ptr) + __cil_tmp52;
  *((BYTE *)__cil_tmp53) = (BYTE )101;
  __cil_tmp54 = 25 * 1UL;
  __cil_tmp55 = (unsigned long )(data_ptr) + __cil_tmp54;
  *((BYTE *)__cil_tmp55) = (BYTE )114;
  __cil_tmp56 = 26 * 1UL;
  __cil_tmp57 = (unsigned long )(data_ptr) + __cil_tmp56;
  *((BYTE *)__cil_tmp57) = (BYTE )32;
  __cil_tmp58 = 27 * 1UL;
  __cil_tmp59 = (unsigned long )(data_ptr) + __cil_tmp58;
  *((BYTE *)__cil_tmp59) = (BYTE )32;
  __cil_tmp60 = 28 * 1UL;
  __cil_tmp61 = (unsigned long )(data_ptr) + __cil_tmp60;
  *((BYTE *)__cil_tmp61) = (BYTE )32;
  __cil_tmp62 = 29 * 1UL;
  __cil_tmp63 = (unsigned long )(data_ptr) + __cil_tmp62;
  *((BYTE *)__cil_tmp63) = (BYTE )32;
  __cil_tmp64 = 30 * 1UL;
  __cil_tmp65 = (unsigned long )(data_ptr) + __cil_tmp64;
  *((BYTE *)__cil_tmp65) = (BYTE )32;
  __cil_tmp66 = 31 * 1UL;
  __cil_tmp67 = (unsigned long )(data_ptr) + __cil_tmp66;
  *((BYTE *)__cil_tmp67) = (BYTE )32;
  __cil_tmp68 = 32 * 1UL;
  __cil_tmp69 = (unsigned long )(data_ptr) + __cil_tmp68;
  *((BYTE *)__cil_tmp69) = (BYTE )48;
  __cil_tmp70 = 33 * 1UL;
  __cil_tmp71 = (unsigned long )(data_ptr) + __cil_tmp70;
  *((BYTE *)__cil_tmp71) = (BYTE )49;
  __cil_tmp72 = 34 * 1UL;
  __cil_tmp73 = (unsigned long )(data_ptr) + __cil_tmp72;
  *((BYTE *)__cil_tmp73) = (BYTE )48;
  __cil_tmp74 = 35 * 1UL;
  __cil_tmp75 = (unsigned long )(data_ptr) + __cil_tmp74;
  *((BYTE *)__cil_tmp75) = (BYTE )48;
  __cil_tmp76 = 0 * 1UL;
  __cil_tmp77 = (unsigned long )(data_ptr) + __cil_tmp76;
  __cil_tmp78 = (BYTE *)__cil_tmp77;
  usb_stor_set_xfer_buf(us, __cil_tmp78, 36U, srb, 0U);
  }
  return (0);
}
}
int SM_SCSI_Mode_Sense(struct us_data *us , struct scsi_cmnd *srb )
{ BYTE mediaNoWP[12] ;
  BYTE mediaWP[12] ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
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
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
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
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  BYTE *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  BYTE *__cil_tmp60 ;
  {
  __cil_tmp5 = 0 * 1UL;
  __cil_tmp6 = (unsigned long )(mediaNoWP) + __cil_tmp5;
  *((BYTE *)__cil_tmp6) = (BYTE )11;
  __cil_tmp7 = 1 * 1UL;
  __cil_tmp8 = (unsigned long )(mediaNoWP) + __cil_tmp7;
  *((BYTE *)__cil_tmp8) = (BYTE )0;
  __cil_tmp9 = 2 * 1UL;
  __cil_tmp10 = (unsigned long )(mediaNoWP) + __cil_tmp9;
  *((BYTE *)__cil_tmp10) = (BYTE )0;
  __cil_tmp11 = 3 * 1UL;
  __cil_tmp12 = (unsigned long )(mediaNoWP) + __cil_tmp11;
  *((BYTE *)__cil_tmp12) = (BYTE )8;
  __cil_tmp13 = 4 * 1UL;
  __cil_tmp14 = (unsigned long )(mediaNoWP) + __cil_tmp13;
  *((BYTE *)__cil_tmp14) = (BYTE )0;
  __cil_tmp15 = 5 * 1UL;
  __cil_tmp16 = (unsigned long )(mediaNoWP) + __cil_tmp15;
  *((BYTE *)__cil_tmp16) = (BYTE )0;
  __cil_tmp17 = 6 * 1UL;
  __cil_tmp18 = (unsigned long )(mediaNoWP) + __cil_tmp17;
  *((BYTE *)__cil_tmp18) = (BYTE )113;
  __cil_tmp19 = 7 * 1UL;
  __cil_tmp20 = (unsigned long )(mediaNoWP) + __cil_tmp19;
  *((BYTE *)__cil_tmp20) = (BYTE )192;
  __cil_tmp21 = 8 * 1UL;
  __cil_tmp22 = (unsigned long )(mediaNoWP) + __cil_tmp21;
  *((BYTE *)__cil_tmp22) = (BYTE )0;
  __cil_tmp23 = 9 * 1UL;
  __cil_tmp24 = (unsigned long )(mediaNoWP) + __cil_tmp23;
  *((BYTE *)__cil_tmp24) = (BYTE )0;
  __cil_tmp25 = 10 * 1UL;
  __cil_tmp26 = (unsigned long )(mediaNoWP) + __cil_tmp25;
  *((BYTE *)__cil_tmp26) = (BYTE )2;
  __cil_tmp27 = 11 * 1UL;
  __cil_tmp28 = (unsigned long )(mediaNoWP) + __cil_tmp27;
  *((BYTE *)__cil_tmp28) = (BYTE )0;
  __cil_tmp29 = 0 * 1UL;
  __cil_tmp30 = (unsigned long )(mediaWP) + __cil_tmp29;
  *((BYTE *)__cil_tmp30) = (BYTE )11;
  __cil_tmp31 = 1 * 1UL;
  __cil_tmp32 = (unsigned long )(mediaWP) + __cil_tmp31;
  *((BYTE *)__cil_tmp32) = (BYTE )0;
  __cil_tmp33 = 2 * 1UL;
  __cil_tmp34 = (unsigned long )(mediaWP) + __cil_tmp33;
  *((BYTE *)__cil_tmp34) = (BYTE )128;
  __cil_tmp35 = 3 * 1UL;
  __cil_tmp36 = (unsigned long )(mediaWP) + __cil_tmp35;
  *((BYTE *)__cil_tmp36) = (BYTE )8;
  __cil_tmp37 = 4 * 1UL;
  __cil_tmp38 = (unsigned long )(mediaWP) + __cil_tmp37;
  *((BYTE *)__cil_tmp38) = (BYTE )0;
  __cil_tmp39 = 5 * 1UL;
  __cil_tmp40 = (unsigned long )(mediaWP) + __cil_tmp39;
  *((BYTE *)__cil_tmp40) = (BYTE )0;
  __cil_tmp41 = 6 * 1UL;
  __cil_tmp42 = (unsigned long )(mediaWP) + __cil_tmp41;
  *((BYTE *)__cil_tmp42) = (BYTE )113;
  __cil_tmp43 = 7 * 1UL;
  __cil_tmp44 = (unsigned long )(mediaWP) + __cil_tmp43;
  *((BYTE *)__cil_tmp44) = (BYTE )192;
  __cil_tmp45 = 8 * 1UL;
  __cil_tmp46 = (unsigned long )(mediaWP) + __cil_tmp45;
  *((BYTE *)__cil_tmp46) = (BYTE )0;
  __cil_tmp47 = 9 * 1UL;
  __cil_tmp48 = (unsigned long )(mediaWP) + __cil_tmp47;
  *((BYTE *)__cil_tmp48) = (BYTE )0;
  __cil_tmp49 = 10 * 1UL;
  __cil_tmp50 = (unsigned long )(mediaWP) + __cil_tmp49;
  *((BYTE *)__cil_tmp50) = (BYTE )2;
  __cil_tmp51 = 11 * 1UL;
  __cil_tmp52 = (unsigned long )(mediaWP) + __cil_tmp51;
  *((BYTE *)__cil_tmp52) = (BYTE )0;
  {
  __cil_tmp53 = (unsigned long )us;
  __cil_tmp54 = __cil_tmp53 + 594;
  if (((struct _SM_STATUS *)__cil_tmp54)->WtP) {
    {
    __cil_tmp55 = 0 * 1UL;
    __cil_tmp56 = (unsigned long )(mediaWP) + __cil_tmp55;
    __cil_tmp57 = (BYTE *)__cil_tmp56;
    usb_stor_set_xfer_buf(us, __cil_tmp57, 12U, srb, 0U);
    }
  } else {
    {
    __cil_tmp58 = 0 * 1UL;
    __cil_tmp59 = (unsigned long )(mediaNoWP) + __cil_tmp58;
    __cil_tmp60 = (BYTE *)__cil_tmp59;
    usb_stor_set_xfer_buf(us, __cil_tmp60, 12U, srb, 0U);
    }
  }
  }
  return (0);
}
}
int SM_SCSI_Read_Capacity(struct us_data *us , struct scsi_cmnd *srb )
{ unsigned int offset ;
  struct scatterlist *sg ;
  DWORD bl_num ;
  WORD bl_len ;
  BYTE buf[8] ;
  unsigned int *__cil_tmp8 ;
  struct scatterlist **__cil_tmp9 ;
  void *__cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  DWORD __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  DWORD __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  DWORD __cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  int __cil_tmp52 ;
  int __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  BYTE *__cil_tmp56 ;
  enum xfer_buf_dir __cil_tmp57 ;
  {
  {
  __cil_tmp8 = & offset;
  *__cil_tmp8 = 0U;
  __cil_tmp9 = & sg;
  __cil_tmp10 = (void *)0;
  *__cil_tmp9 = (struct scatterlist *)__cil_tmp10;
  printk("SM_SCSI_Read_Capacity\n");
  bl_len = (WORD )512;
  __cil_tmp11 = (int )Ssfdc.MaxZones;
  __cil_tmp12 = (int )Ssfdc.MaxSectors;
  __cil_tmp13 = (int )Ssfdc.MaxLogBlocks;
  __cil_tmp14 = __cil_tmp13 * __cil_tmp12;
  __cil_tmp15 = __cil_tmp14 * __cil_tmp11;
  __cil_tmp16 = __cil_tmp15 - 1;
  bl_num = (DWORD )__cil_tmp16;
  __cil_tmp17 = (unsigned long )us;
  __cil_tmp18 = __cil_tmp17 + 644;
  *((DWORD *)__cil_tmp18) = bl_num;
  __cil_tmp19 = (int )bl_len;
  printk("bl_len = %x\n", __cil_tmp19);
  printk("bl_num = %x\n", bl_num);
  __cil_tmp20 = 0 * 1UL;
  __cil_tmp21 = (unsigned long )(buf) + __cil_tmp20;
  __cil_tmp22 = bl_num >> 24;
  __cil_tmp23 = __cil_tmp22 & 255U;
  *((BYTE *)__cil_tmp21) = (BYTE )__cil_tmp23;
  __cil_tmp24 = 1 * 1UL;
  __cil_tmp25 = (unsigned long )(buf) + __cil_tmp24;
  __cil_tmp26 = bl_num >> 16;
  __cil_tmp27 = __cil_tmp26 & 255U;
  *((BYTE *)__cil_tmp25) = (BYTE )__cil_tmp27;
  __cil_tmp28 = 2 * 1UL;
  __cil_tmp29 = (unsigned long )(buf) + __cil_tmp28;
  __cil_tmp30 = bl_num >> 8;
  __cil_tmp31 = __cil_tmp30 & 255U;
  *((BYTE *)__cil_tmp29) = (BYTE )__cil_tmp31;
  __cil_tmp32 = 3 * 1UL;
  __cil_tmp33 = (unsigned long )(buf) + __cil_tmp32;
  __cil_tmp34 = bl_num & 255U;
  *((BYTE *)__cil_tmp33) = (BYTE )__cil_tmp34;
  __cil_tmp35 = 4 * 1UL;
  __cil_tmp36 = (unsigned long )(buf) + __cil_tmp35;
  __cil_tmp37 = (int )bl_len;
  __cil_tmp38 = __cil_tmp37 >> 24;
  __cil_tmp39 = __cil_tmp38 & 255;
  *((BYTE *)__cil_tmp36) = (BYTE )__cil_tmp39;
  __cil_tmp40 = 5 * 1UL;
  __cil_tmp41 = (unsigned long )(buf) + __cil_tmp40;
  __cil_tmp42 = (int )bl_len;
  __cil_tmp43 = __cil_tmp42 >> 16;
  __cil_tmp44 = __cil_tmp43 & 255;
  *((BYTE *)__cil_tmp41) = (BYTE )__cil_tmp44;
  __cil_tmp45 = 6 * 1UL;
  __cil_tmp46 = (unsigned long )(buf) + __cil_tmp45;
  __cil_tmp47 = (int )bl_len;
  __cil_tmp48 = __cil_tmp47 >> 8;
  __cil_tmp49 = __cil_tmp48 & 255;
  *((BYTE *)__cil_tmp46) = (BYTE )__cil_tmp49;
  __cil_tmp50 = 7 * 1UL;
  __cil_tmp51 = (unsigned long )(buf) + __cil_tmp50;
  __cil_tmp52 = (int )bl_len;
  __cil_tmp53 = __cil_tmp52 & 255;
  *((BYTE *)__cil_tmp51) = (BYTE )__cil_tmp53;
  __cil_tmp54 = 0 * 1UL;
  __cil_tmp55 = (unsigned long )(buf) + __cil_tmp54;
  __cil_tmp56 = (BYTE *)__cil_tmp55;
  __cil_tmp57 = (enum xfer_buf_dir )0;
  usb_stor_access_xfer_buf(us, __cil_tmp56, 8U, srb, & sg, & offset, __cil_tmp57);
  }
  return (0);
}
}
int SM_SCSI_Read(struct us_data *us , struct scsi_cmnd *srb )
{ int result ;
  PBYTE Cdb ;
  DWORD bn ;
  WORD blen ;
  DWORD blenByte ;
  void *buf ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  PBYTE __cil_tmp11 ;
  u8 __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  PBYTE __cil_tmp16 ;
  u8 __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  PBYTE __cil_tmp22 ;
  u8 __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  PBYTE __cil_tmp28 ;
  u8 __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned int __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  PBYTE __cil_tmp36 ;
  u8 __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  PBYTE __cil_tmp40 ;
  u8 __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  DWORD __cil_tmp50 ;
  size_t __cil_tmp51 ;
  void *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  BYTE *__cil_tmp55 ;
  unsigned char *__cil_tmp56 ;
  void *__cil_tmp57 ;
  {
  result = 0;
  __cil_tmp9 = (unsigned long )srb;
  __cil_tmp10 = __cil_tmp9 + 80;
  Cdb = *((unsigned char **)__cil_tmp10);
  __cil_tmp11 = Cdb + 5;
  __cil_tmp12 = *__cil_tmp11;
  __cil_tmp13 = (int )__cil_tmp12;
  __cil_tmp14 = __cil_tmp13 & 255;
  __cil_tmp15 = (unsigned int )__cil_tmp14;
  __cil_tmp16 = Cdb + 4;
  __cil_tmp17 = *__cil_tmp16;
  __cil_tmp18 = (int )__cil_tmp17;
  __cil_tmp19 = __cil_tmp18 << 8;
  __cil_tmp20 = __cil_tmp19 & 65280;
  __cil_tmp21 = (unsigned int )__cil_tmp20;
  __cil_tmp22 = Cdb + 3;
  __cil_tmp23 = *__cil_tmp22;
  __cil_tmp24 = (int )__cil_tmp23;
  __cil_tmp25 = __cil_tmp24 << 16;
  __cil_tmp26 = __cil_tmp25 & 16711680;
  __cil_tmp27 = (unsigned int )__cil_tmp26;
  __cil_tmp28 = Cdb + 2;
  __cil_tmp29 = *__cil_tmp28;
  __cil_tmp30 = (int )__cil_tmp29;
  __cil_tmp31 = __cil_tmp30 << 24;
  __cil_tmp32 = (unsigned int )__cil_tmp31;
  __cil_tmp33 = __cil_tmp32 & 4278190080U;
  __cil_tmp34 = __cil_tmp33 | __cil_tmp27;
  __cil_tmp35 = __cil_tmp34 | __cil_tmp21;
  bn = __cil_tmp35 | __cil_tmp15;
  __cil_tmp36 = Cdb + 8;
  __cil_tmp37 = *__cil_tmp36;
  __cil_tmp38 = (int )__cil_tmp37;
  __cil_tmp39 = __cil_tmp38 & 255;
  __cil_tmp40 = Cdb + 7;
  __cil_tmp41 = *__cil_tmp40;
  __cil_tmp42 = (int )__cil_tmp41;
  __cil_tmp43 = __cil_tmp42 << 8;
  __cil_tmp44 = __cil_tmp43 & 65280;
  __cil_tmp45 = __cil_tmp44 | __cil_tmp39;
  blen = (WORD )__cil_tmp45;
  __cil_tmp46 = (int )blen;
  __cil_tmp47 = __cil_tmp46 * 512;
  blenByte = (DWORD )__cil_tmp47;
  {
  __cil_tmp48 = (unsigned long )us;
  __cil_tmp49 = __cil_tmp48 + 644;
  __cil_tmp50 = *((DWORD *)__cil_tmp49);
  if (bn > __cil_tmp50) {
    return (3);
  } else {
  }
  }
  {
  __cil_tmp51 = (size_t )blenByte;
  buf = kmalloc(__cil_tmp51, 208U);
  }
  {
  __cil_tmp52 = (void *)0;
  __cil_tmp53 = (unsigned long )__cil_tmp52;
  __cil_tmp54 = (unsigned long )buf;
  if (__cil_tmp54 == __cil_tmp53) {
    return (3);
  } else {
  }
  }
  {
  __cil_tmp55 = (BYTE *)buf;
  result = Media_D_ReadSector(us, bn, blen, __cil_tmp55);
  __cil_tmp56 = (unsigned char *)buf;
  usb_stor_set_xfer_buf(us, __cil_tmp56, blenByte, srb, 0U);
  __cil_tmp57 = (void *)buf;
  kfree(__cil_tmp57);
  }
  if (! result) {
    return (0);
  } else {
    return (3);
  }
  return (0);
}
}
int SM_SCSI_Write(struct us_data *us , struct scsi_cmnd *srb )
{ int result ;
  PBYTE Cdb ;
  DWORD bn ;
  WORD blen ;
  DWORD blenByte ;
  void *buf ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  PBYTE __cil_tmp11 ;
  u8 __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  PBYTE __cil_tmp16 ;
  u8 __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  PBYTE __cil_tmp22 ;
  u8 __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  PBYTE __cil_tmp28 ;
  u8 __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned int __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  PBYTE __cil_tmp36 ;
  u8 __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  PBYTE __cil_tmp40 ;
  u8 __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  DWORD __cil_tmp50 ;
  size_t __cil_tmp51 ;
  void *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned char *__cil_tmp55 ;
  BYTE *__cil_tmp56 ;
  void *__cil_tmp57 ;
  {
  result = 0;
  __cil_tmp9 = (unsigned long )srb;
  __cil_tmp10 = __cil_tmp9 + 80;
  Cdb = *((unsigned char **)__cil_tmp10);
  __cil_tmp11 = Cdb + 5;
  __cil_tmp12 = *__cil_tmp11;
  __cil_tmp13 = (int )__cil_tmp12;
  __cil_tmp14 = __cil_tmp13 & 255;
  __cil_tmp15 = (unsigned int )__cil_tmp14;
  __cil_tmp16 = Cdb + 4;
  __cil_tmp17 = *__cil_tmp16;
  __cil_tmp18 = (int )__cil_tmp17;
  __cil_tmp19 = __cil_tmp18 << 8;
  __cil_tmp20 = __cil_tmp19 & 65280;
  __cil_tmp21 = (unsigned int )__cil_tmp20;
  __cil_tmp22 = Cdb + 3;
  __cil_tmp23 = *__cil_tmp22;
  __cil_tmp24 = (int )__cil_tmp23;
  __cil_tmp25 = __cil_tmp24 << 16;
  __cil_tmp26 = __cil_tmp25 & 16711680;
  __cil_tmp27 = (unsigned int )__cil_tmp26;
  __cil_tmp28 = Cdb + 2;
  __cil_tmp29 = *__cil_tmp28;
  __cil_tmp30 = (int )__cil_tmp29;
  __cil_tmp31 = __cil_tmp30 << 24;
  __cil_tmp32 = (unsigned int )__cil_tmp31;
  __cil_tmp33 = __cil_tmp32 & 4278190080U;
  __cil_tmp34 = __cil_tmp33 | __cil_tmp27;
  __cil_tmp35 = __cil_tmp34 | __cil_tmp21;
  bn = __cil_tmp35 | __cil_tmp15;
  __cil_tmp36 = Cdb + 8;
  __cil_tmp37 = *__cil_tmp36;
  __cil_tmp38 = (int )__cil_tmp37;
  __cil_tmp39 = __cil_tmp38 & 255;
  __cil_tmp40 = Cdb + 7;
  __cil_tmp41 = *__cil_tmp40;
  __cil_tmp42 = (int )__cil_tmp41;
  __cil_tmp43 = __cil_tmp42 << 8;
  __cil_tmp44 = __cil_tmp43 & 65280;
  __cil_tmp45 = __cil_tmp44 | __cil_tmp39;
  blen = (WORD )__cil_tmp45;
  __cil_tmp46 = (int )blen;
  __cil_tmp47 = __cil_tmp46 * 512;
  blenByte = (DWORD )__cil_tmp47;
  {
  __cil_tmp48 = (unsigned long )us;
  __cil_tmp49 = __cil_tmp48 + 644;
  __cil_tmp50 = *((DWORD *)__cil_tmp49);
  if (bn > __cil_tmp50) {
    return (3);
  } else {
  }
  }
  {
  __cil_tmp51 = (size_t )blenByte;
  buf = kmalloc(__cil_tmp51, 208U);
  }
  {
  __cil_tmp52 = (void *)0;
  __cil_tmp53 = (unsigned long )__cil_tmp52;
  __cil_tmp54 = (unsigned long )buf;
  if (__cil_tmp54 == __cil_tmp53) {
    return (3);
  } else {
  }
  }
  {
  __cil_tmp55 = (unsigned char *)buf;
  usb_stor_set_xfer_buf(us, __cil_tmp55, blenByte, srb, 1U);
  __cil_tmp56 = (BYTE *)buf;
  result = Media_D_CopySector(us, bn, blen, __cil_tmp56);
  __cil_tmp57 = (void *)buf;
  kfree(__cil_tmp57);
  }
  if (! result) {
    return (0);
  } else {
    return (3);
  }
  return (0);
}
}
BYTE IsSSFDCCompliance ;
BYTE IsXDCompliance ;
DWORD ErrXDCode ;
DWORD ErrCode ;
WORD ReadBlock ;
WORD WriteBlock ;
DWORD MediaChange ;
struct ADDRESS Media ;
struct CIS_AREA CisArea ;
int Check_D_DataBlank(BYTE *redundant ) ;
int Check_D_FailBlock(BYTE *redundant ) ;
int Check_D_DataStatus(BYTE *redundant ) ;
int Load_D_LogBlockAddr(BYTE *redundant ) ;
void Clr_D_RedundantData(BYTE *redundant ) ;
void Set_D_LogBlockAddr(BYTE *redundant ) ;
void Set_D_FailBlock(BYTE *redundant ) ;
void Set_D_DataStaus(BYTE *redundant ) ;
void Ssfdc_D_Reset(struct us_data *us ) ;
int Ssfdc_D_ReadCisSect(struct us_data *us , BYTE *buf , BYTE *redundant ) ;
int Ssfdc_D_ReadSect(struct us_data *us , BYTE *buf , BYTE *redundant ) ;
int Ssfdc_D_ReadBlock(struct us_data *us , WORD count , BYTE *buf , BYTE *redundant ) ;
int Ssfdc_D_CopyBlock(struct us_data *us , WORD count , BYTE *buf , BYTE *redundant ) ;
int Ssfdc_D_WriteSectForCopy(struct us_data *us , BYTE *buf , BYTE *redundant ) ;
int Ssfdc_D_EraseBlock(struct us_data *us ) ;
int Ssfdc_D_ReadRedtData(struct us_data *us , BYTE *redundant ) ;
int Ssfdc_D_WriteRedtData(struct us_data *us , BYTE *redundant ) ;
int Ssfdc_D_CheckStatus(void) ;
int Set_D_SsfdcModel(BYTE dcode ) ;
int Check_D_ReadError(BYTE *redundant ) ;
int Check_D_Correct(BYTE *buf , BYTE *redundant ) ;
int Check_D_CISdata(BYTE *buf , BYTE *redundant ) ;
void Set_D_RightECC(BYTE *redundant ) ;
int Conv_D_MediaAddr(struct us_data *us , DWORD addr ) ;
int Inc_D_MediaAddr(struct us_data *us ) ;
int Media_D_ReadOneSect(struct us_data *us , WORD count , BYTE *buf ) ;
int Copy_D_BlockAll(struct us_data *us , DWORD mode ) ;
int Assign_D_WriteBlock(void) ;
int Release_D_ReadBlock(struct us_data *us ) ;
int Release_D_WriteBlock(struct us_data *us ) ;
int Release_D_CopySector(struct us_data *us ) ;
int Copy_D_PhyOneSect(struct us_data *us ) ;
int Read_D_PhyOneSect(struct us_data *us , WORD count , BYTE *buf ) ;
int Erase_D_PhyOneBlock(struct us_data *us ) ;
int Set_D_PhyFmtValue(struct us_data *us ) ;
int Search_D_CIS(struct us_data *us ) ;
int Make_D_LogTable(struct us_data *us ) ;
int MarkFail_D_PhyOneBlock(struct us_data *us ) ;
static BYTE WorkBuf[512] ;
static BYTE Redundant[16] ;
static BYTE WorkRedund[16] ;
static WORD *Log2Phy[128] ;
static BYTE Assign[128][128] ;
static WORD AssignStart[128] ;
static DWORD SectCopyMode ;
static BYTE BitData[8] =
  { (BYTE )1, (BYTE )2, (BYTE )4, (BYTE )8,
        (BYTE )16, (BYTE )32, (BYTE )64, (BYTE )128};
int SM_FreeMem(void)
{ int i ;
  void *__cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  WORD *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  WORD *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  WORD *__cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void *__cil_tmp17 ;
  {
  {
  printk("<6>SM_FreeMem start\n");
  i = 0;
  }
  {
  while (1) {
    while_continue: ;
    if (i < 128) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp2 = (void *)0;
    __cil_tmp3 = (unsigned long )__cil_tmp2;
    __cil_tmp4 = i * 8UL;
    __cil_tmp5 = (unsigned long )(Log2Phy) + __cil_tmp4;
    __cil_tmp6 = *((WORD **)__cil_tmp5);
    __cil_tmp7 = (unsigned long )__cil_tmp6;
    if (__cil_tmp7 != __cil_tmp3) {
      {
      __cil_tmp8 = i * 8UL;
      __cil_tmp9 = (unsigned long )(Log2Phy) + __cil_tmp8;
      __cil_tmp10 = *((WORD **)__cil_tmp9);
      printk("<6>Free Zone = %x, Addr = %p\n", i, __cil_tmp10);
      __cil_tmp11 = i * 8UL;
      __cil_tmp12 = (unsigned long )(Log2Phy) + __cil_tmp11;
      __cil_tmp13 = *((WORD **)__cil_tmp12);
      __cil_tmp14 = (void *)__cil_tmp13;
      kfree(__cil_tmp14);
      __cil_tmp15 = i * 8UL;
      __cil_tmp16 = (unsigned long )(Log2Phy) + __cil_tmp15;
      __cil_tmp17 = (void *)0;
      *((WORD **)__cil_tmp16) = (WORD *)__cil_tmp17;
      }
    } else {
    }
    }
    i = i + 1;
  }
  while_break: ;
  }
  return (0);
}
}
int Media_D_ReadSector(struct us_data *us , DWORD start , WORD count , BYTE *buf )
{ WORD len ;
  WORD bn ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  {
  {
  tmp___7 = Conv_D_MediaAddr(us, start);
  }
  if (tmp___7) {
    return ((int )ErrCode);
  } else {
  }
  {
  while (1) {
    while_continue: ;
    __cil_tmp10 = (int )Media.Sector;
    __cil_tmp11 = (int )Ssfdc.MaxSectors;
    __cil_tmp12 = __cil_tmp11 - __cil_tmp10;
    len = (WORD )__cil_tmp12;
    {
    __cil_tmp13 = (int )len;
    __cil_tmp14 = (int )count;
    if (__cil_tmp14 > __cil_tmp13) {
      bn = len;
    } else {
      bn = count;
    }
    }
    {
    tmp___8 = Media_D_ReadOneSect(us, bn, buf);
    }
    if (tmp___8) {
      ErrCode = (DWORD )17;
      return ((int )ErrCode);
    } else {
    }
    __cil_tmp15 = (int )bn;
    __cil_tmp16 = (int )Media.Sector;
    __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
    Media.Sector = (BYTE )__cil_tmp17;
    __cil_tmp18 = (int )bn;
    __cil_tmp19 = (int )count;
    __cil_tmp20 = __cil_tmp19 - __cil_tmp18;
    count = (WORD )__cil_tmp20;
    {
    __cil_tmp21 = (int )count;
    if (__cil_tmp21 <= 0) {
      goto while_break;
    } else {
    }
    }
    {
    __cil_tmp22 = (int )bn;
    __cil_tmp23 = __cil_tmp22 * 512;
    buf = buf + __cil_tmp23;
    tmp___9 = Inc_D_MediaAddr(us);
    }
    if (tmp___9) {
      return ((int )ErrCode);
    } else {
    }
  }
  while_break: ;
  }
  return (0);
}
}
int Media_D_CopySector(struct us_data *us , DWORD start , WORD count , BYTE *buf )
{ WORD len ;
  WORD bn ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  BYTE *__cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  {
  {
  tmp___7 = Conv_D_MediaAddr(us, start);
  }
  if (tmp___7) {
    return ((int )ErrCode);
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___8 = Assign_D_WriteBlock();
    }
    if (tmp___8) {
      return (65535);
    } else {
    }
    __cil_tmp12 = (int )Media.Sector;
    __cil_tmp13 = (int )Ssfdc.MaxSectors;
    __cil_tmp14 = __cil_tmp13 - __cil_tmp12;
    len = (WORD )__cil_tmp14;
    {
    __cil_tmp15 = (int )len;
    __cil_tmp16 = (int )count;
    if (__cil_tmp16 > __cil_tmp15) {
      bn = len;
    } else {
      bn = count;
    }
    }
    {
    __cil_tmp17 = 0 * 1UL;
    __cil_tmp18 = (unsigned long )(Redundant) + __cil_tmp17;
    __cil_tmp19 = (BYTE *)__cil_tmp18;
    tmp___9 = Ssfdc_D_CopyBlock(us, bn, buf, __cil_tmp19);
    }
    if (tmp___9) {
      ErrCode = (DWORD )3;
      return ((int )ErrCode);
    } else {
    }
    {
    Media.Sector = (BYTE )31;
    tmp___10 = Release_D_CopySector(us);
    }
    if (tmp___10) {
      if (ErrCode == 4U) {
        ErrCode = (DWORD )3;
        return ((int )ErrCode);
      } else {
      }
    } else {
    }
    __cil_tmp20 = (int )bn;
    __cil_tmp21 = (int )count;
    __cil_tmp22 = __cil_tmp21 - __cil_tmp20;
    count = (WORD )__cil_tmp22;
    {
    __cil_tmp23 = (int )count;
    if (__cil_tmp23 <= 0) {
      goto while_break;
    } else {
    }
    }
    {
    __cil_tmp24 = (int )bn;
    __cil_tmp25 = __cil_tmp24 * 512;
    buf = buf + __cil_tmp25;
    tmp___11 = Inc_D_MediaAddr(us);
    }
    if (tmp___11) {
      return ((int )ErrCode);
    } else {
    }
  }
  while_break: ;
  }
  return (0);
}
}
int Release_D_CopySector(struct us_data *us )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  WORD *__cil_tmp4 ;
  WORD *__cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  BYTE __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  BYTE __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  BYTE __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  BYTE __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  {
  __cil_tmp2 = Media.Zone * 8UL;
  __cil_tmp3 = (unsigned long )(Log2Phy) + __cil_tmp2;
  __cil_tmp4 = *((WORD **)__cil_tmp3);
  __cil_tmp5 = __cil_tmp4 + Media.LogBlock;
  *__cil_tmp5 = WriteBlock;
  Media.PhyBlock = ReadBlock;
  {
  __cil_tmp6 = (int )Media.PhyBlock;
  if (__cil_tmp6 == 65535) {
    Media.PhyBlock = WriteBlock;
    return (0);
  } else {
  }
  }
  __cil_tmp7 = (int )Media.PhyBlock;
  __cil_tmp8 = __cil_tmp7 / 8;
  __cil_tmp9 = (BYTE )__cil_tmp8;
  __cil_tmp10 = __cil_tmp9 * 1UL;
  __cil_tmp11 = Media.Zone * 128UL;
  __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
  __cil_tmp13 = (unsigned long )(Assign) + __cil_tmp12;
  __cil_tmp14 = (int )Media.PhyBlock;
  __cil_tmp15 = __cil_tmp14 % 8;
  __cil_tmp16 = __cil_tmp15 * 1UL;
  __cil_tmp17 = (unsigned long )(BitData) + __cil_tmp16;
  __cil_tmp18 = *((BYTE *)__cil_tmp17);
  __cil_tmp19 = (int )__cil_tmp18;
  __cil_tmp20 = ~ __cil_tmp19;
  __cil_tmp21 = (int )Media.PhyBlock;
  __cil_tmp22 = __cil_tmp21 / 8;
  __cil_tmp23 = (BYTE )__cil_tmp22;
  __cil_tmp24 = __cil_tmp23 * 1UL;
  __cil_tmp25 = Media.Zone * 128UL;
  __cil_tmp26 = __cil_tmp25 + __cil_tmp24;
  __cil_tmp27 = (unsigned long )(Assign) + __cil_tmp26;
  __cil_tmp28 = *((BYTE *)__cil_tmp27);
  __cil_tmp29 = (int )__cil_tmp28;
  __cil_tmp30 = __cil_tmp29 & __cil_tmp20;
  *((BYTE *)__cil_tmp13) = (BYTE )__cil_tmp30;
  Media.PhyBlock = WriteBlock;
  return (0);
}
}
int Check_D_MediaFmt(struct us_data *us )
{ int tmp___7 ;
  int tmp___8 ;
  {
  {
  printk("<6>Check_D_MediaFmt\n");
  }
  if (! MediaChange) {
    return (0);
  } else {
  }
  {
  MediaChange = (DWORD )65535;
  SectCopyMode = (DWORD )0;
  tmp___7 = Set_D_PhyFmtValue(us);
  }
  if (tmp___7) {
    ErrCode = (DWORD )48;
    return (65535);
  } else {
  }
  {
  tmp___8 = Search_D_CIS(us);
  }
  if (tmp___8) {
    ErrCode = (DWORD )49;
    return (65535);
  } else {
  }
  MediaChange = (DWORD )0;
  return (0);
}
}
int Conv_D_MediaAddr(struct us_data *us , DWORD addr )
{ DWORD temp ;
  int tmp___7 ;
  DWORD __cil_tmp5 ;
  DWORD __cil_tmp6 ;
  DWORD __cil_tmp7 ;
  void *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  WORD *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  BYTE *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  BYTE *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  WORD *__cil_tmp28 ;
  WORD *__cil_tmp29 ;
  {
  __cil_tmp5 = (DWORD )Ssfdc.MaxSectors;
  temp = addr / __cil_tmp5;
  __cil_tmp6 = (DWORD )Ssfdc.MaxLogBlocks;
  __cil_tmp7 = temp / __cil_tmp6;
  Media.Zone = (BYTE )__cil_tmp7;
  {
  __cil_tmp8 = (void *)0;
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = Media.Zone * 8UL;
  __cil_tmp11 = (unsigned long )(Log2Phy) + __cil_tmp10;
  __cil_tmp12 = *((WORD **)__cil_tmp11);
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  if (__cil_tmp13 == __cil_tmp9) {
    {
    tmp___7 = Make_D_LogTable(us);
    }
    if (tmp___7) {
      ErrCode = (DWORD )49;
      return (65535);
    } else {
    }
  } else {
  }
  }
  __cil_tmp14 = (unsigned int )Ssfdc.MaxSectors;
  __cil_tmp15 = addr % __cil_tmp14;
  Media.Sector = (BYTE )__cil_tmp15;
  __cil_tmp16 = (unsigned int )Ssfdc.MaxLogBlocks;
  __cil_tmp17 = temp % __cil_tmp16;
  Media.LogBlock = (WORD )__cil_tmp17;
  {
  __cil_tmp18 = (int )Ssfdc.MaxZones;
  __cil_tmp19 = (int )Media.Zone;
  if (__cil_tmp19 < __cil_tmp18) {
    {
    __cil_tmp20 = 0 * 1UL;
    __cil_tmp21 = (unsigned long )(Redundant) + __cil_tmp20;
    __cil_tmp22 = (BYTE *)__cil_tmp21;
    Clr_D_RedundantData(__cil_tmp22);
    __cil_tmp23 = 0 * 1UL;
    __cil_tmp24 = (unsigned long )(Redundant) + __cil_tmp23;
    __cil_tmp25 = (BYTE *)__cil_tmp24;
    Set_D_LogBlockAddr(__cil_tmp25);
    __cil_tmp26 = Media.Zone * 8UL;
    __cil_tmp27 = (unsigned long )(Log2Phy) + __cil_tmp26;
    __cil_tmp28 = *((WORD **)__cil_tmp27);
    __cil_tmp29 = __cil_tmp28 + Media.LogBlock;
    Media.PhyBlock = *__cil_tmp29;
    }
    return (0);
  } else {
  }
  }
  ErrCode = (DWORD )33;
  return (65535);
}
}
int Inc_D_MediaAddr(struct us_data *us )
{ WORD LogBlock ;
  int tmp___7 ;
  int tmp___8 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  void *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  WORD *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  BYTE *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  BYTE *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  WORD *__cil_tmp25 ;
  WORD *__cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  void *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  WORD *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  BYTE *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  BYTE *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  WORD *__cil_tmp44 ;
  WORD *__cil_tmp45 ;
  {
  LogBlock = Media.LogBlock;
  __cil_tmp5 = (int )Media.Sector;
  __cil_tmp6 = __cil_tmp5 + 1;
  Media.Sector = (BYTE )__cil_tmp6;
  {
  __cil_tmp7 = (int )Ssfdc.MaxSectors;
  if (Media.Sector < __cil_tmp7) {
    return (0);
  } else {
  }
  }
  {
  __cil_tmp8 = (void *)0;
  __cil_tmp9 = (unsigned long )__cil_tmp8;
  __cil_tmp10 = Media.Zone * 8UL;
  __cil_tmp11 = (unsigned long )(Log2Phy) + __cil_tmp10;
  __cil_tmp12 = *((WORD **)__cil_tmp11);
  __cil_tmp13 = (unsigned long )__cil_tmp12;
  if (__cil_tmp13 == __cil_tmp9) {
    {
    tmp___7 = Make_D_LogTable(us);
    }
    if (tmp___7) {
      ErrCode = (DWORD )49;
      return (65535);
    } else {
    }
  } else {
  }
  }
  Media.Sector = (BYTE )0;
  Media.LogBlock = LogBlock;
  __cil_tmp14 = (int )Media.LogBlock;
  __cil_tmp15 = __cil_tmp14 + 1;
  Media.LogBlock = (WORD )__cil_tmp15;
  {
  __cil_tmp16 = (int )Ssfdc.MaxLogBlocks;
  if (Media.LogBlock < __cil_tmp16) {
    {
    __cil_tmp17 = 0 * 1UL;
    __cil_tmp18 = (unsigned long )(Redundant) + __cil_tmp17;
    __cil_tmp19 = (BYTE *)__cil_tmp18;
    Clr_D_RedundantData(__cil_tmp19);
    __cil_tmp20 = 0 * 1UL;
    __cil_tmp21 = (unsigned long )(Redundant) + __cil_tmp20;
    __cil_tmp22 = (BYTE *)__cil_tmp21;
    Set_D_LogBlockAddr(__cil_tmp22);
    __cil_tmp23 = Media.Zone * 8UL;
    __cil_tmp24 = (unsigned long )(Log2Phy) + __cil_tmp23;
    __cil_tmp25 = *((WORD **)__cil_tmp24);
    __cil_tmp26 = __cil_tmp25 + Media.LogBlock;
    Media.PhyBlock = *__cil_tmp26;
    }
    return (0);
  } else {
  }
  }
  Media.LogBlock = (WORD )0;
  __cil_tmp27 = (int )Media.Zone;
  __cil_tmp28 = __cil_tmp27 + 1;
  Media.Zone = (BYTE )__cil_tmp28;
  {
  __cil_tmp29 = (int )Ssfdc.MaxZones;
  if (Media.Zone < __cil_tmp29) {
    {
    __cil_tmp30 = (void *)0;
    __cil_tmp31 = (unsigned long )__cil_tmp30;
    __cil_tmp32 = Media.Zone * 8UL;
    __cil_tmp33 = (unsigned long )(Log2Phy) + __cil_tmp32;
    __cil_tmp34 = *((WORD **)__cil_tmp33);
    __cil_tmp35 = (unsigned long )__cil_tmp34;
    if (__cil_tmp35 == __cil_tmp31) {
      {
      tmp___8 = Make_D_LogTable(us);
      }
      if (tmp___8) {
        ErrCode = (DWORD )49;
        return (65535);
      } else {
      }
    } else {
    }
    }
    {
    Media.LogBlock = (WORD )0;
    __cil_tmp36 = 0 * 1UL;
    __cil_tmp37 = (unsigned long )(Redundant) + __cil_tmp36;
    __cil_tmp38 = (BYTE *)__cil_tmp37;
    Clr_D_RedundantData(__cil_tmp38);
    __cil_tmp39 = 0 * 1UL;
    __cil_tmp40 = (unsigned long )(Redundant) + __cil_tmp39;
    __cil_tmp41 = (BYTE *)__cil_tmp40;
    Set_D_LogBlockAddr(__cil_tmp41);
    __cil_tmp42 = Media.Zone * 8UL;
    __cil_tmp43 = (unsigned long )(Log2Phy) + __cil_tmp42;
    __cil_tmp44 = *((WORD **)__cil_tmp43);
    __cil_tmp45 = __cil_tmp44 + Media.LogBlock;
    Media.PhyBlock = *__cil_tmp45;
    }
    return (0);
  } else {
  }
  }
  Media.Zone = (BYTE )0;
  ErrCode = (DWORD )33;
  return (65535);
}
}
int Media_D_ReadOneSect(struct us_data *us , WORD count , BYTE *buf )
{ DWORD err ;
  DWORD retry ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int __cil_tmp9 ;
  DWORD __cil_tmp10 ;
  {
  {
  tmp___7 = Read_D_PhyOneSect(us, count, buf);
  }
  if (tmp___7) {
  } else {
    return (0);
  }
  if (ErrCode == 4U) {
    return (65535);
  } else {
  }
  if (ErrCode == 16U) {
    return (65535);
  } else {
  }
  {
  __cil_tmp9 = (int )Ssfdc.Attribute;
  if (__cil_tmp9 & 128) {
    if (ErrCode == 24U) {
      return (0);
    } else {
    }
    return (65535);
  } else {
  }
  }
  err = ErrCode;
  retry = (DWORD )0;
  {
  while (1) {
    while_continue: ;
    if (retry < 2U) {
    } else {
      goto while_break;
    }
    if (err == 17U) {
      tmp___8 = 2;
    } else {
      tmp___8 = 1;
    }
    {
    __cil_tmp10 = (DWORD )tmp___8;
    tmp___9 = Copy_D_BlockAll(us, __cil_tmp10);
    }
    if (tmp___9) {
      if (ErrCode == 4U) {
        return (65535);
      } else {
      }
      goto __Cont;
    } else {
    }
    ErrCode = err;
    if (ErrCode == 24U) {
      return (0);
    } else {
    }
    return (65535);
    __Cont:
    retry = retry + 1U;
  }
  while_break: ;
  }
  MediaChange = (DWORD )65535;
  return (65535);
}
}
int Copy_D_BlockAll(struct us_data *us , DWORD mode )
{ BYTE sect ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  {
  sect = Media.Sector;
  tmp___7 = Assign_D_WriteBlock();
  }
  if (tmp___7) {
    return (65535);
  } else {
  }
  if (mode == 2U) {
    SectCopyMode = (DWORD )2;
  } else {
  }
  Media.Sector = (BYTE )0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp8 = (int )Ssfdc.MaxSectors;
    __cil_tmp9 = (int )Media.Sector;
    if (__cil_tmp9 < __cil_tmp8) {
    } else {
      goto while_break;
    }
    }
    {
    tmp___9 = Copy_D_PhyOneSect(us);
    }
    if (tmp___9) {
      if (ErrCode == 4U) {
        return (65535);
      } else {
      }
      {
      tmp___8 = Release_D_WriteBlock(us);
      }
      if (tmp___8) {
        return (65535);
      } else {
      }
      ErrCode = (DWORD )3;
      Media.PhyBlock = ReadBlock;
      Media.Sector = sect;
      return (65535);
    } else {
    }
    __cil_tmp10 = (int )Media.Sector;
    __cil_tmp11 = __cil_tmp10 + 1;
    Media.Sector = (BYTE )__cil_tmp11;
  }
  while_break: ;
  }
  {
  tmp___10 = Release_D_ReadBlock(us);
  }
  if (tmp___10) {
    return (65535);
  } else {
  }
  Media.PhyBlock = WriteBlock;
  Media.Sector = sect;
  return (0);
}
}
int Assign_D_WriteBlock(void)
{ unsigned long __cil_tmp1 ;
  unsigned long __cil_tmp2 ;
  int __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  BYTE __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  BYTE __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  BYTE __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  BYTE __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  BYTE __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  BYTE __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  BYTE __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  WORD __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  int __cil_tmp55 ;
  int __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  BYTE __cil_tmp59 ;
  int __cil_tmp60 ;
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  BYTE __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  BYTE __cil_tmp68 ;
  int __cil_tmp69 ;
  int __cil_tmp70 ;
  int __cil_tmp71 ;
  int __cil_tmp72 ;
  BYTE __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  int __cil_tmp78 ;
  int __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  BYTE __cil_tmp82 ;
  int __cil_tmp83 ;
  int __cil_tmp84 ;
  int __cil_tmp85 ;
  BYTE __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  BYTE __cil_tmp91 ;
  int __cil_tmp92 ;
  int __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  int __cil_tmp96 ;
  int __cil_tmp97 ;
  int __cil_tmp98 ;
  int __cil_tmp99 ;
  {
  ReadBlock = Media.PhyBlock;
  __cil_tmp1 = Media.Zone * 2UL;
  __cil_tmp2 = (unsigned long )(AssignStart) + __cil_tmp1;
  WriteBlock = *((WORD *)__cil_tmp2);
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp3 = (int )Ssfdc.MaxBlocks;
    __cil_tmp4 = (int )WriteBlock;
    if (__cil_tmp4 < __cil_tmp3) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp5 = (int )WriteBlock;
    __cil_tmp6 = __cil_tmp5 % 8;
    __cil_tmp7 = __cil_tmp6 * 1UL;
    __cil_tmp8 = (unsigned long )(BitData) + __cil_tmp7;
    __cil_tmp9 = *((BYTE *)__cil_tmp8);
    __cil_tmp10 = (int )__cil_tmp9;
    __cil_tmp11 = (int )WriteBlock;
    __cil_tmp12 = __cil_tmp11 / 8;
    __cil_tmp13 = (BYTE )__cil_tmp12;
    __cil_tmp14 = __cil_tmp13 * 1UL;
    __cil_tmp15 = Media.Zone * 128UL;
    __cil_tmp16 = __cil_tmp15 + __cil_tmp14;
    __cil_tmp17 = (unsigned long )(Assign) + __cil_tmp16;
    __cil_tmp18 = *((BYTE *)__cil_tmp17);
    __cil_tmp19 = (int )__cil_tmp18;
    __cil_tmp20 = __cil_tmp19 & __cil_tmp10;
    if (! __cil_tmp20) {
      __cil_tmp21 = (int )WriteBlock;
      __cil_tmp22 = __cil_tmp21 / 8;
      __cil_tmp23 = (BYTE )__cil_tmp22;
      __cil_tmp24 = __cil_tmp23 * 1UL;
      __cil_tmp25 = Media.Zone * 128UL;
      __cil_tmp26 = __cil_tmp25 + __cil_tmp24;
      __cil_tmp27 = (unsigned long )(Assign) + __cil_tmp26;
      __cil_tmp28 = (int )WriteBlock;
      __cil_tmp29 = __cil_tmp28 % 8;
      __cil_tmp30 = __cil_tmp29 * 1UL;
      __cil_tmp31 = (unsigned long )(BitData) + __cil_tmp30;
      __cil_tmp32 = *((BYTE *)__cil_tmp31);
      __cil_tmp33 = (int )__cil_tmp32;
      __cil_tmp34 = (int )WriteBlock;
      __cil_tmp35 = __cil_tmp34 / 8;
      __cil_tmp36 = (BYTE )__cil_tmp35;
      __cil_tmp37 = __cil_tmp36 * 1UL;
      __cil_tmp38 = Media.Zone * 128UL;
      __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
      __cil_tmp40 = (unsigned long )(Assign) + __cil_tmp39;
      __cil_tmp41 = *((BYTE *)__cil_tmp40);
      __cil_tmp42 = (int )__cil_tmp41;
      __cil_tmp43 = __cil_tmp42 | __cil_tmp33;
      *((BYTE *)__cil_tmp27) = (BYTE )__cil_tmp43;
      __cil_tmp44 = Media.Zone * 2UL;
      __cil_tmp45 = (unsigned long )(AssignStart) + __cil_tmp44;
      __cil_tmp46 = (int )WriteBlock;
      __cil_tmp47 = __cil_tmp46 + 1;
      *((WORD *)__cil_tmp45) = (WORD )__cil_tmp47;
      Media.PhyBlock = WriteBlock;
      SectCopyMode = (DWORD )1;
      return (0);
    } else {
    }
    }
    __cil_tmp48 = (int )WriteBlock;
    __cil_tmp49 = __cil_tmp48 + 1;
    WriteBlock = (WORD )__cil_tmp49;
  }
  while_break: ;
  }
  WriteBlock = (WORD )0;
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp50 = Media.Zone * 2UL;
    __cil_tmp51 = (unsigned long )(AssignStart) + __cil_tmp50;
    __cil_tmp52 = *((WORD *)__cil_tmp51);
    __cil_tmp53 = (int )__cil_tmp52;
    __cil_tmp54 = (int )WriteBlock;
    if (__cil_tmp54 < __cil_tmp53) {
    } else {
      goto while_break___0;
    }
    }
    {
    __cil_tmp55 = (int )WriteBlock;
    __cil_tmp56 = __cil_tmp55 % 8;
    __cil_tmp57 = __cil_tmp56 * 1UL;
    __cil_tmp58 = (unsigned long )(BitData) + __cil_tmp57;
    __cil_tmp59 = *((BYTE *)__cil_tmp58);
    __cil_tmp60 = (int )__cil_tmp59;
    __cil_tmp61 = (int )WriteBlock;
    __cil_tmp62 = __cil_tmp61 / 8;
    __cil_tmp63 = (BYTE )__cil_tmp62;
    __cil_tmp64 = __cil_tmp63 * 1UL;
    __cil_tmp65 = Media.Zone * 128UL;
    __cil_tmp66 = __cil_tmp65 + __cil_tmp64;
    __cil_tmp67 = (unsigned long )(Assign) + __cil_tmp66;
    __cil_tmp68 = *((BYTE *)__cil_tmp67);
    __cil_tmp69 = (int )__cil_tmp68;
    __cil_tmp70 = __cil_tmp69 & __cil_tmp60;
    if (! __cil_tmp70) {
      __cil_tmp71 = (int )WriteBlock;
      __cil_tmp72 = __cil_tmp71 / 8;
      __cil_tmp73 = (BYTE )__cil_tmp72;
      __cil_tmp74 = __cil_tmp73 * 1UL;
      __cil_tmp75 = Media.Zone * 128UL;
      __cil_tmp76 = __cil_tmp75 + __cil_tmp74;
      __cil_tmp77 = (unsigned long )(Assign) + __cil_tmp76;
      __cil_tmp78 = (int )WriteBlock;
      __cil_tmp79 = __cil_tmp78 % 8;
      __cil_tmp80 = __cil_tmp79 * 1UL;
      __cil_tmp81 = (unsigned long )(BitData) + __cil_tmp80;
      __cil_tmp82 = *((BYTE *)__cil_tmp81);
      __cil_tmp83 = (int )__cil_tmp82;
      __cil_tmp84 = (int )WriteBlock;
      __cil_tmp85 = __cil_tmp84 / 8;
      __cil_tmp86 = (BYTE )__cil_tmp85;
      __cil_tmp87 = __cil_tmp86 * 1UL;
      __cil_tmp88 = Media.Zone * 128UL;
      __cil_tmp89 = __cil_tmp88 + __cil_tmp87;
      __cil_tmp90 = (unsigned long )(Assign) + __cil_tmp89;
      __cil_tmp91 = *((BYTE *)__cil_tmp90);
      __cil_tmp92 = (int )__cil_tmp91;
      __cil_tmp93 = __cil_tmp92 | __cil_tmp83;
      *((BYTE *)__cil_tmp77) = (BYTE )__cil_tmp93;
      __cil_tmp94 = Media.Zone * 2UL;
      __cil_tmp95 = (unsigned long )(AssignStart) + __cil_tmp94;
      __cil_tmp96 = (int )WriteBlock;
      __cil_tmp97 = __cil_tmp96 + 1;
      *((WORD *)__cil_tmp95) = (WORD )__cil_tmp97;
      Media.PhyBlock = WriteBlock;
      SectCopyMode = (DWORD )1;
      return (0);
    } else {
    }
    }
    __cil_tmp98 = (int )WriteBlock;
    __cil_tmp99 = __cil_tmp98 + 1;
    WriteBlock = (WORD )__cil_tmp99;
  }
  while_break___0: ;
  }
  WriteBlock = (WORD )65535;
  ErrCode = (DWORD )3;
  return (65535);
}
}
int Release_D_ReadBlock(struct us_data *us )
{ DWORD mode ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  WORD *__cil_tmp8 ;
  WORD *__cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  BYTE __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  BYTE __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  BYTE __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  BYTE __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  {
  mode = SectCopyMode;
  SectCopyMode = (DWORD )0;
  if (mode == 0U) {
    return (0);
  } else {
  }
  __cil_tmp6 = Media.Zone * 8UL;
  __cil_tmp7 = (unsigned long )(Log2Phy) + __cil_tmp6;
  __cil_tmp8 = *((WORD **)__cil_tmp7);
  __cil_tmp9 = __cil_tmp8 + Media.LogBlock;
  *__cil_tmp9 = WriteBlock;
  Media.PhyBlock = ReadBlock;
  {
  __cil_tmp10 = (int )Media.PhyBlock;
  if (__cil_tmp10 == 65535) {
    Media.PhyBlock = WriteBlock;
    return (0);
  } else {
  }
  }
  if (mode == 1U) {
    {
    tmp___8 = Erase_D_PhyOneBlock(us);
    }
    if (tmp___8) {
      if (ErrCode == 4U) {
        return (65535);
      } else {
      }
      {
      tmp___7 = MarkFail_D_PhyOneBlock(us);
      }
      if (tmp___7) {
        return (65535);
      } else {
      }
    } else {
      __cil_tmp11 = (int )Media.PhyBlock;
      __cil_tmp12 = __cil_tmp11 / 8;
      __cil_tmp13 = (BYTE )__cil_tmp12;
      __cil_tmp14 = __cil_tmp13 * 1UL;
      __cil_tmp15 = Media.Zone * 128UL;
      __cil_tmp16 = __cil_tmp15 + __cil_tmp14;
      __cil_tmp17 = (unsigned long )(Assign) + __cil_tmp16;
      __cil_tmp18 = (int )Media.PhyBlock;
      __cil_tmp19 = __cil_tmp18 % 8;
      __cil_tmp20 = __cil_tmp19 * 1UL;
      __cil_tmp21 = (unsigned long )(BitData) + __cil_tmp20;
      __cil_tmp22 = *((BYTE *)__cil_tmp21);
      __cil_tmp23 = (int )__cil_tmp22;
      __cil_tmp24 = ~ __cil_tmp23;
      __cil_tmp25 = (int )Media.PhyBlock;
      __cil_tmp26 = __cil_tmp25 / 8;
      __cil_tmp27 = (BYTE )__cil_tmp26;
      __cil_tmp28 = __cil_tmp27 * 1UL;
      __cil_tmp29 = Media.Zone * 128UL;
      __cil_tmp30 = __cil_tmp29 + __cil_tmp28;
      __cil_tmp31 = (unsigned long )(Assign) + __cil_tmp30;
      __cil_tmp32 = *((BYTE *)__cil_tmp31);
      __cil_tmp33 = (int )__cil_tmp32;
      __cil_tmp34 = __cil_tmp33 & __cil_tmp24;
      *((BYTE *)__cil_tmp17) = (BYTE )__cil_tmp34;
    }
  } else {
    {
    tmp___9 = MarkFail_D_PhyOneBlock(us);
    }
    if (tmp___9) {
      return (65535);
    } else {
    }
  }
  Media.PhyBlock = WriteBlock;
  return (0);
}
}
int Release_D_WriteBlock(struct us_data *us )
{ int tmp___7 ;
  {
  {
  SectCopyMode = (DWORD )0;
  Media.PhyBlock = WriteBlock;
  tmp___7 = MarkFail_D_PhyOneBlock(us);
  }
  if (tmp___7) {
    return (65535);
  } else {
  }
  Media.PhyBlock = ReadBlock;
  return (0);
}
}
int Copy_D_PhyOneSect(struct us_data *us )
{ int i ;
  DWORD err ;
  DWORD retry ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  BYTE *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  BYTE *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  BYTE *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  BYTE *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  BYTE *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  BYTE *__cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  BYTE *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  BYTE *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  BYTE *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  BYTE *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  BYTE *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  BYTE *__cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  BYTE *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  BYTE *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  BYTE *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  BYTE *__cil_tmp63 ;
  {
  {
  __cil_tmp13 = (int )ReadBlock;
  if (__cil_tmp13 != 65535) {
    Media.PhyBlock = ReadBlock;
    retry = (DWORD )0;
    {
    while (1) {
      while_continue: ;
      if (retry < 2U) {
      } else {
        goto while_break;
      }
      if (retry != 0U) {
        {
        Ssfdc_D_Reset(us);
        __cil_tmp14 = 0 * 1UL;
        __cil_tmp15 = (unsigned long )(WorkBuf) + __cil_tmp14;
        __cil_tmp16 = (BYTE *)__cil_tmp15;
        __cil_tmp17 = 0 * 1UL;
        __cil_tmp18 = (unsigned long )(WorkRedund) + __cil_tmp17;
        __cil_tmp19 = (BYTE *)__cil_tmp18;
        tmp___7 = Ssfdc_D_ReadCisSect(us, __cil_tmp16, __cil_tmp19);
        }
        if (tmp___7) {
          ErrCode = (DWORD )4;
          MediaChange = (DWORD )65535;
          return (65535);
        } else {
        }
        {
        __cil_tmp20 = 0 * 1UL;
        __cil_tmp21 = (unsigned long )(WorkBuf) + __cil_tmp20;
        __cil_tmp22 = (BYTE *)__cil_tmp21;
        __cil_tmp23 = 0 * 1UL;
        __cil_tmp24 = (unsigned long )(WorkRedund) + __cil_tmp23;
        __cil_tmp25 = (BYTE *)__cil_tmp24;
        tmp___8 = Check_D_CISdata(__cil_tmp22, __cil_tmp25);
        }
        if (tmp___8) {
          ErrCode = (DWORD )4;
          MediaChange = (DWORD )65535;
          return (65535);
        } else {
        }
      } else {
      }
      {
      __cil_tmp26 = 0 * 1UL;
      __cil_tmp27 = (unsigned long )(WorkBuf) + __cil_tmp26;
      __cil_tmp28 = (BYTE *)__cil_tmp27;
      __cil_tmp29 = 0 * 1UL;
      __cil_tmp30 = (unsigned long )(WorkRedund) + __cil_tmp29;
      __cil_tmp31 = (BYTE *)__cil_tmp30;
      tmp___9 = Ssfdc_D_ReadSect(us, __cil_tmp28, __cil_tmp31);
      }
      if (tmp___9) {
        ErrCode = (DWORD )4;
        MediaChange = (DWORD )65535;
        return (65535);
      } else {
      }
      {
      __cil_tmp32 = 0 * 1UL;
      __cil_tmp33 = (unsigned long )(WorkRedund) + __cil_tmp32;
      __cil_tmp34 = (BYTE *)__cil_tmp33;
      tmp___10 = Check_D_DataStatus(__cil_tmp34);
      }
      if (tmp___10) {
        err = (DWORD )65535;
        goto while_break;
      } else {
      }
      {
      __cil_tmp35 = 0 * 1UL;
      __cil_tmp36 = (unsigned long )(WorkRedund) + __cil_tmp35;
      __cil_tmp37 = (BYTE *)__cil_tmp36;
      tmp___11 = Check_D_ReadError(__cil_tmp37);
      }
      if (tmp___11) {
      } else {
        err = (DWORD )0;
        goto while_break;
      }
      {
      __cil_tmp38 = 0 * 1UL;
      __cil_tmp39 = (unsigned long )(WorkBuf) + __cil_tmp38;
      __cil_tmp40 = (BYTE *)__cil_tmp39;
      __cil_tmp41 = 0 * 1UL;
      __cil_tmp42 = (unsigned long )(WorkRedund) + __cil_tmp41;
      __cil_tmp43 = (BYTE *)__cil_tmp42;
      tmp___12 = Check_D_Correct(__cil_tmp40, __cil_tmp43);
      }
      if (tmp___12) {
      } else {
        err = (DWORD )0;
        goto while_break;
      }
      err = (DWORD )65535;
      SectCopyMode = (DWORD )2;
      retry = retry + 1U;
    }
    while_break: ;
    }
  } else {
    err = (DWORD )0;
    i = 0;
    {
    while (1) {
      while_continue___0: ;
      if (i < 512) {
      } else {
        goto while_break___0;
      }
      __cil_tmp44 = i * 1UL;
      __cil_tmp45 = (unsigned long )(WorkBuf) + __cil_tmp44;
      *((BYTE *)__cil_tmp45) = (BYTE )255;
      i = i + 1;
    }
    while_break___0: ;
    }
    {
    __cil_tmp46 = 0 * 1UL;
    __cil_tmp47 = (unsigned long )(WorkRedund) + __cil_tmp46;
    __cil_tmp48 = (BYTE *)__cil_tmp47;
    Clr_D_RedundantData(__cil_tmp48);
    }
  }
  }
  {
  __cil_tmp49 = 0 * 1UL;
  __cil_tmp50 = (unsigned long )(WorkRedund) + __cil_tmp49;
  __cil_tmp51 = (BYTE *)__cil_tmp50;
  Set_D_LogBlockAddr(__cil_tmp51);
  }
  if (err == 65535U) {
    {
    __cil_tmp52 = 0 * 1UL;
    __cil_tmp53 = (unsigned long )(WorkRedund) + __cil_tmp52;
    __cil_tmp54 = (BYTE *)__cil_tmp53;
    Set_D_RightECC(__cil_tmp54);
    __cil_tmp55 = 0 * 1UL;
    __cil_tmp56 = (unsigned long )(WorkRedund) + __cil_tmp55;
    __cil_tmp57 = (BYTE *)__cil_tmp56;
    Set_D_DataStaus(__cil_tmp57);
    }
  } else {
  }
  {
  Media.PhyBlock = WriteBlock;
  __cil_tmp58 = 0 * 1UL;
  __cil_tmp59 = (unsigned long )(WorkBuf) + __cil_tmp58;
  __cil_tmp60 = (BYTE *)__cil_tmp59;
  __cil_tmp61 = 0 * 1UL;
  __cil_tmp62 = (unsigned long )(WorkRedund) + __cil_tmp61;
  __cil_tmp63 = (BYTE *)__cil_tmp62;
  tmp___13 = Ssfdc_D_WriteSectForCopy(us, __cil_tmp60, __cil_tmp63);
  }
  if (tmp___13) {
    ErrCode = (DWORD )4;
    MediaChange = (DWORD )65535;
    return (65535);
  } else {
  }
  {
  tmp___14 = Ssfdc_D_CheckStatus();
  }
  if (tmp___14) {
    ErrCode = (DWORD )3;
    return (65535);
  } else {
  }
  Media.PhyBlock = ReadBlock;
  return (0);
}
}
int Read_D_PhyOneSect(struct us_data *us , WORD count , BYTE *buf )
{ int i ;
  DWORD retry ;
  BYTE *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  BYTE *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  BYTE *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  BYTE *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  BYTE *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  BYTE *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  BYTE *__cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  BYTE *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  BYTE *__cil_tmp37 ;
  {
  {
  __cil_tmp13 = (int )Media.PhyBlock;
  if (__cil_tmp13 == 65535) {
    i = 0;
    {
    while (1) {
      while_continue: ;
      if (i < 512) {
      } else {
        goto while_break;
      }
      tmp___7 = buf;
      buf = buf + 1;
      *tmp___7 = (BYTE )255;
      i = i + 1;
    }
    while_break: ;
    }
    return (0);
  } else {
  }
  }
  retry = (DWORD )0;
  {
  while (1) {
    while_continue___0: ;
    if (retry < 2U) {
    } else {
      goto while_break___0;
    }
    if (retry != 0U) {
      {
      Ssfdc_D_Reset(us);
      __cil_tmp14 = 0 * 1UL;
      __cil_tmp15 = (unsigned long )(WorkBuf) + __cil_tmp14;
      __cil_tmp16 = (BYTE *)__cil_tmp15;
      __cil_tmp17 = 0 * 1UL;
      __cil_tmp18 = (unsigned long )(WorkRedund) + __cil_tmp17;
      __cil_tmp19 = (BYTE *)__cil_tmp18;
      tmp___8 = Ssfdc_D_ReadCisSect(us, __cil_tmp16, __cil_tmp19);
      }
      if (tmp___8) {
        ErrCode = (DWORD )4;
        MediaChange = (DWORD )65535;
        return (65535);
      } else {
      }
      {
      __cil_tmp20 = 0 * 1UL;
      __cil_tmp21 = (unsigned long )(WorkBuf) + __cil_tmp20;
      __cil_tmp22 = (BYTE *)__cil_tmp21;
      __cil_tmp23 = 0 * 1UL;
      __cil_tmp24 = (unsigned long )(WorkRedund) + __cil_tmp23;
      __cil_tmp25 = (BYTE *)__cil_tmp24;
      tmp___9 = Check_D_CISdata(__cil_tmp22, __cil_tmp25);
      }
      if (tmp___9) {
        ErrCode = (DWORD )4;
        MediaChange = (DWORD )65535;
        return (65535);
      } else {
      }
    } else {
    }
    {
    __cil_tmp26 = 0 * 1UL;
    __cil_tmp27 = (unsigned long )(Redundant) + __cil_tmp26;
    __cil_tmp28 = (BYTE *)__cil_tmp27;
    tmp___10 = Ssfdc_D_ReadBlock(us, count, buf, __cil_tmp28);
    }
    if (tmp___10) {
      ErrCode = (DWORD )4;
      MediaChange = (DWORD )65535;
      return (65535);
    } else {
    }
    {
    __cil_tmp29 = 0 * 1UL;
    __cil_tmp30 = (unsigned long )(Redundant) + __cil_tmp29;
    __cil_tmp31 = (BYTE *)__cil_tmp30;
    tmp___11 = Check_D_DataStatus(__cil_tmp31);
    }
    if (tmp___11) {
      ErrCode = (DWORD )16;
      return (65535);
    } else {
    }
    {
    __cil_tmp32 = 0 * 1UL;
    __cil_tmp33 = (unsigned long )(Redundant) + __cil_tmp32;
    __cil_tmp34 = (BYTE *)__cil_tmp33;
    tmp___12 = Check_D_ReadError(__cil_tmp34);
    }
    if (tmp___12) {
    } else {
      return (0);
    }
    {
    __cil_tmp35 = 0 * 1UL;
    __cil_tmp36 = (unsigned long )(Redundant) + __cil_tmp35;
    __cil_tmp37 = (BYTE *)__cil_tmp36;
    tmp___13 = Check_D_Correct(buf, __cil_tmp37);
    }
    if (tmp___13) {
    } else {
      ErrCode = (DWORD )24;
      return (65535);
    }
    retry = retry + 1U;
  }
  while_break___0: ;
  }
  ErrCode = (DWORD )17;
  return (65535);
}
}
int Erase_D_PhyOneBlock(struct us_data *us )
{ int tmp___7 ;
  int tmp___8 ;
  {
  {
  tmp___7 = Ssfdc_D_EraseBlock(us);
  }
  if (tmp___7) {
    ErrCode = (DWORD )4;
    MediaChange = (DWORD )65535;
    return (65535);
  } else {
  }
  {
  tmp___8 = Ssfdc_D_CheckStatus();
  }
  if (tmp___8) {
    ErrCode = (DWORD )3;
    return (65535);
  } else {
  }
  return (0);
}
}
int Set_D_PhyFmtValue(struct us_data *us )
{ int tmp___7 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  BYTE __cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )us;
  __cil_tmp4 = __cil_tmp3 + 624;
  __cil_tmp5 = *((BYTE *)__cil_tmp4);
  tmp___7 = Set_D_SsfdcModel(__cil_tmp5);
  }
  if (tmp___7) {
    return (65535);
  } else {
  }
  return (0);
}
}
int Search_D_CIS(struct us_data *us )
{ int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  BYTE *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  BYTE *__cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  BYTE *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  BYTE *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  BYTE *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  BYTE *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  BYTE *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  BYTE *__cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  {
  Media.Zone = (BYTE )0;
  Media.Sector = (BYTE )0;
  Media.PhyBlock = (WORD )0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp8 = (int )Ssfdc.MaxLogBlocks;
    __cil_tmp9 = (int )Ssfdc.MaxBlocks;
    __cil_tmp10 = __cil_tmp9 - __cil_tmp8;
    __cil_tmp11 = __cil_tmp10 - 1;
    __cil_tmp12 = (int )Media.PhyBlock;
    if (__cil_tmp12 < __cil_tmp11) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp13 = 0 * 1UL;
    __cil_tmp14 = (unsigned long )(Redundant) + __cil_tmp13;
    __cil_tmp15 = (BYTE *)__cil_tmp14;
    tmp___7 = Ssfdc_D_ReadRedtData(us, __cil_tmp15);
    }
    if (tmp___7) {
      {
      Ssfdc_D_Reset(us);
      }
      return (65535);
    } else {
    }
    {
    __cil_tmp16 = 0 * 1UL;
    __cil_tmp17 = (unsigned long )(Redundant) + __cil_tmp16;
    __cil_tmp18 = (BYTE *)__cil_tmp17;
    tmp___8 = Check_D_FailBlock(__cil_tmp18);
    }
    if (tmp___8) {
    } else {
      goto while_break;
    }
    __cil_tmp19 = (int )Media.PhyBlock;
    __cil_tmp20 = __cil_tmp19 + 1;
    Media.PhyBlock = (WORD )__cil_tmp20;
  }
  while_break: ;
  }
  {
  __cil_tmp21 = (int )Ssfdc.MaxLogBlocks;
  __cil_tmp22 = (int )Ssfdc.MaxBlocks;
  __cil_tmp23 = __cil_tmp22 - __cil_tmp21;
  __cil_tmp24 = __cil_tmp23 - 1;
  __cil_tmp25 = (int )Media.PhyBlock;
  if (__cil_tmp25 == __cil_tmp24) {
    {
    Ssfdc_D_Reset(us);
    }
    return (65535);
  } else {
  }
  }
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp26 = (int )Media.Sector;
    if (__cil_tmp26 < 8) {
    } else {
      goto while_break___0;
    }
    }
    if (Media.Sector) {
      {
      __cil_tmp27 = 0 * 1UL;
      __cil_tmp28 = (unsigned long )(Redundant) + __cil_tmp27;
      __cil_tmp29 = (BYTE *)__cil_tmp28;
      tmp___9 = Ssfdc_D_ReadRedtData(us, __cil_tmp29);
      }
      if (tmp___9) {
        {
        Ssfdc_D_Reset(us);
        }
        return (65535);
      } else {
      }
    } else {
    }
    {
    __cil_tmp30 = 0 * 1UL;
    __cil_tmp31 = (unsigned long )(Redundant) + __cil_tmp30;
    __cil_tmp32 = (BYTE *)__cil_tmp31;
    tmp___12 = Check_D_DataStatus(__cil_tmp32);
    }
    if (tmp___12) {
    } else {
      {
      __cil_tmp33 = 0 * 1UL;
      __cil_tmp34 = (unsigned long )(WorkBuf) + __cil_tmp33;
      __cil_tmp35 = (BYTE *)__cil_tmp34;
      __cil_tmp36 = 0 * 1UL;
      __cil_tmp37 = (unsigned long )(Redundant) + __cil_tmp36;
      __cil_tmp38 = (BYTE *)__cil_tmp37;
      tmp___10 = Ssfdc_D_ReadSect(us, __cil_tmp35, __cil_tmp38);
      }
      if (tmp___10) {
        {
        Ssfdc_D_Reset(us);
        }
        return (65535);
      } else {
      }
      {
      __cil_tmp39 = 0 * 1UL;
      __cil_tmp40 = (unsigned long )(WorkBuf) + __cil_tmp39;
      __cil_tmp41 = (BYTE *)__cil_tmp40;
      __cil_tmp42 = 0 * 1UL;
      __cil_tmp43 = (unsigned long )(Redundant) + __cil_tmp42;
      __cil_tmp44 = (BYTE *)__cil_tmp43;
      tmp___11 = Check_D_CISdata(__cil_tmp41, __cil_tmp44);
      }
      if (tmp___11) {
        {
        Ssfdc_D_Reset(us);
        }
        return (65535);
      } else {
      }
      {
      CisArea.PhyBlock = Media.PhyBlock;
      CisArea.Sector = Media.Sector;
      Ssfdc_D_Reset(us);
      }
      return (0);
    }
    __cil_tmp45 = (int )Media.Sector;
    __cil_tmp46 = __cil_tmp45 + 1;
    Media.Sector = (BYTE )__cil_tmp46;
  }
  while_break___0: ;
  }
  {
  Ssfdc_D_Reset(us);
  }
  return (65535);
}
}
int Make_D_LogTable(struct us_data *us )
{ WORD phyblock ;
  WORD logblock ;
  void *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  WORD *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  void *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  WORD *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  WORD *__cil_tmp32 ;
  WORD *__cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  BYTE __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  int __cil_tmp54 ;
  int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  BYTE __cil_tmp58 ;
  int __cil_tmp59 ;
  int __cil_tmp60 ;
  int __cil_tmp61 ;
  BYTE __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  BYTE __cil_tmp67 ;
  int __cil_tmp68 ;
  int __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  BYTE *__cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  BYTE *__cil_tmp75 ;
  int __cil_tmp76 ;
  int __cil_tmp77 ;
  BYTE __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  int __cil_tmp83 ;
  int __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  BYTE __cil_tmp87 ;
  int __cil_tmp88 ;
  int __cil_tmp89 ;
  int __cil_tmp90 ;
  BYTE __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  BYTE __cil_tmp96 ;
  int __cil_tmp97 ;
  int __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  BYTE *__cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  BYTE *__cil_tmp104 ;
  int __cil_tmp105 ;
  int __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  WORD *__cil_tmp109 ;
  WORD *__cil_tmp110 ;
  WORD __cil_tmp111 ;
  int __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  WORD *__cil_tmp115 ;
  WORD *__cil_tmp116 ;
  int __cil_tmp117 ;
  int __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  BYTE *__cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  BYTE *__cil_tmp124 ;
  int __cil_tmp125 ;
  int __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  WORD *__cil_tmp129 ;
  WORD *__cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  BYTE *__cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  BYTE *__cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  WORD *__cil_tmp139 ;
  WORD *__cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  WORD *__cil_tmp143 ;
  WORD *__cil_tmp144 ;
  int __cil_tmp145 ;
  int __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  WORD *__cil_tmp149 ;
  WORD *__cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  WORD *__cil_tmp153 ;
  WORD *__cil_tmp154 ;
  int __cil_tmp155 ;
  int __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  {
  {
  __cil_tmp13 = (void *)0;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = Media.Zone * 8UL;
  __cil_tmp16 = (unsigned long )(Log2Phy) + __cil_tmp15;
  __cil_tmp17 = *((WORD **)__cil_tmp16);
  __cil_tmp18 = (unsigned long )__cil_tmp17;
  if (__cil_tmp18 == __cil_tmp14) {
    {
    __cil_tmp19 = 1000UL * 2UL;
    tmp___7 = kmalloc(__cil_tmp19, 208U);
    __cil_tmp20 = Media.Zone * 8UL;
    __cil_tmp21 = (unsigned long )(Log2Phy) + __cil_tmp20;
    *((WORD **)__cil_tmp21) = (WORD *)tmp___7;
    }
    {
    __cil_tmp22 = (void *)0;
    __cil_tmp23 = (unsigned long )__cil_tmp22;
    __cil_tmp24 = Media.Zone * 8UL;
    __cil_tmp25 = (unsigned long )(Log2Phy) + __cil_tmp24;
    __cil_tmp26 = *((WORD **)__cil_tmp25);
    __cil_tmp27 = (unsigned long )__cil_tmp26;
    if (__cil_tmp27 == __cil_tmp23) {
      return (65535);
    } else {
    }
    }
  } else {
  }
  }
  Media.Sector = (BYTE )0;
  Media.LogBlock = (WORD )0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp28 = (int )Ssfdc.MaxLogBlocks;
    __cil_tmp29 = (int )Media.LogBlock;
    if (__cil_tmp29 < __cil_tmp28) {
    } else {
      goto while_break;
    }
    }
    __cil_tmp30 = Media.Zone * 8UL;
    __cil_tmp31 = (unsigned long )(Log2Phy) + __cil_tmp30;
    __cil_tmp32 = *((WORD **)__cil_tmp31);
    __cil_tmp33 = __cil_tmp32 + Media.LogBlock;
    *__cil_tmp33 = (WORD )65535;
    __cil_tmp34 = (int )Media.LogBlock;
    __cil_tmp35 = __cil_tmp34 + 1;
    Media.LogBlock = (WORD )__cil_tmp35;
  }
  while_break: ;
  }
  Media.PhyBlock = (WORD )0;
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp36 = (int )Media.PhyBlock;
    if (__cil_tmp36 < 128) {
    } else {
      goto while_break___0;
    }
    }
    __cil_tmp37 = Media.PhyBlock * 1UL;
    __cil_tmp38 = Media.Zone * 128UL;
    __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
    __cil_tmp40 = (unsigned long )(Assign) + __cil_tmp39;
    *((BYTE *)__cil_tmp40) = (BYTE )0;
    __cil_tmp41 = (int )Media.PhyBlock;
    __cil_tmp42 = __cil_tmp41 + 1;
    Media.PhyBlock = (WORD )__cil_tmp42;
  }
  while_break___0: ;
  }
  Media.PhyBlock = (WORD )0;
  {
  while (1) {
    while_continue___1: ;
    {
    __cil_tmp43 = (int )Ssfdc.MaxBlocks;
    __cil_tmp44 = (int )Media.PhyBlock;
    if (__cil_tmp44 < __cil_tmp43) {
    } else {
      goto while_break___1;
    }
    }
    if (! Media.Zone) {
      {
      __cil_tmp45 = (int )CisArea.PhyBlock;
      __cil_tmp46 = (int )Media.PhyBlock;
      if (__cil_tmp46 <= __cil_tmp45) {
        __cil_tmp47 = (int )Media.PhyBlock;
        __cil_tmp48 = __cil_tmp47 / 8;
        __cil_tmp49 = (BYTE )__cil_tmp48;
        __cil_tmp50 = __cil_tmp49 * 1UL;
        __cil_tmp51 = Media.Zone * 128UL;
        __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
        __cil_tmp53 = (unsigned long )(Assign) + __cil_tmp52;
        __cil_tmp54 = (int )Media.PhyBlock;
        __cil_tmp55 = __cil_tmp54 % 8;
        __cil_tmp56 = __cil_tmp55 * 1UL;
        __cil_tmp57 = (unsigned long )(BitData) + __cil_tmp56;
        __cil_tmp58 = *((BYTE *)__cil_tmp57);
        __cil_tmp59 = (int )__cil_tmp58;
        __cil_tmp60 = (int )Media.PhyBlock;
        __cil_tmp61 = __cil_tmp60 / 8;
        __cil_tmp62 = (BYTE )__cil_tmp61;
        __cil_tmp63 = __cil_tmp62 * 1UL;
        __cil_tmp64 = Media.Zone * 128UL;
        __cil_tmp65 = __cil_tmp64 + __cil_tmp63;
        __cil_tmp66 = (unsigned long )(Assign) + __cil_tmp65;
        __cil_tmp67 = *((BYTE *)__cil_tmp66);
        __cil_tmp68 = (int )__cil_tmp67;
        __cil_tmp69 = __cil_tmp68 | __cil_tmp59;
        *((BYTE *)__cil_tmp53) = (BYTE )__cil_tmp69;
        goto __Cont;
      } else {
      }
      }
    } else {
    }
    {
    __cil_tmp70 = 0 * 1UL;
    __cil_tmp71 = (unsigned long )(Redundant) + __cil_tmp70;
    __cil_tmp72 = (BYTE *)__cil_tmp71;
    tmp___8 = Ssfdc_D_ReadRedtData(us, __cil_tmp72);
    }
    if (tmp___8) {
      {
      Ssfdc_D_Reset(us);
      }
      return (65535);
    } else {
    }
    {
    __cil_tmp73 = 0 * 1UL;
    __cil_tmp74 = (unsigned long )(Redundant) + __cil_tmp73;
    __cil_tmp75 = (BYTE *)__cil_tmp74;
    tmp___9 = Check_D_DataBlank(__cil_tmp75);
    }
    if (tmp___9) {
    } else {
      goto __Cont;
    }
    {
    __cil_tmp76 = (int )Media.PhyBlock;
    __cil_tmp77 = __cil_tmp76 / 8;
    __cil_tmp78 = (BYTE )__cil_tmp77;
    __cil_tmp79 = __cil_tmp78 * 1UL;
    __cil_tmp80 = Media.Zone * 128UL;
    __cil_tmp81 = __cil_tmp80 + __cil_tmp79;
    __cil_tmp82 = (unsigned long )(Assign) + __cil_tmp81;
    __cil_tmp83 = (int )Media.PhyBlock;
    __cil_tmp84 = __cil_tmp83 % 8;
    __cil_tmp85 = __cil_tmp84 * 1UL;
    __cil_tmp86 = (unsigned long )(BitData) + __cil_tmp85;
    __cil_tmp87 = *((BYTE *)__cil_tmp86);
    __cil_tmp88 = (int )__cil_tmp87;
    __cil_tmp89 = (int )Media.PhyBlock;
    __cil_tmp90 = __cil_tmp89 / 8;
    __cil_tmp91 = (BYTE )__cil_tmp90;
    __cil_tmp92 = __cil_tmp91 * 1UL;
    __cil_tmp93 = Media.Zone * 128UL;
    __cil_tmp94 = __cil_tmp93 + __cil_tmp92;
    __cil_tmp95 = (unsigned long )(Assign) + __cil_tmp94;
    __cil_tmp96 = *((BYTE *)__cil_tmp95);
    __cil_tmp97 = (int )__cil_tmp96;
    __cil_tmp98 = __cil_tmp97 | __cil_tmp88;
    *((BYTE *)__cil_tmp82) = (BYTE )__cil_tmp98;
    __cil_tmp99 = 0 * 1UL;
    __cil_tmp100 = (unsigned long )(Redundant) + __cil_tmp99;
    __cil_tmp101 = (BYTE *)__cil_tmp100;
    tmp___10 = Check_D_FailBlock(__cil_tmp101);
    }
    if (tmp___10) {
      goto __Cont;
    } else {
    }
    {
    __cil_tmp102 = 0 * 1UL;
    __cil_tmp103 = (unsigned long )(Redundant) + __cil_tmp102;
    __cil_tmp104 = (BYTE *)__cil_tmp103;
    tmp___11 = Load_D_LogBlockAddr(__cil_tmp104);
    }
    if (tmp___11) {
      goto __Cont;
    } else {
    }
    {
    __cil_tmp105 = (int )Ssfdc.MaxLogBlocks;
    __cil_tmp106 = (int )Media.LogBlock;
    if (__cil_tmp106 >= __cil_tmp105) {
      goto __Cont;
    } else {
    }
    }
    {
    __cil_tmp107 = Media.Zone * 8UL;
    __cil_tmp108 = (unsigned long )(Log2Phy) + __cil_tmp107;
    __cil_tmp109 = *((WORD **)__cil_tmp108);
    __cil_tmp110 = __cil_tmp109 + Media.LogBlock;
    __cil_tmp111 = *__cil_tmp110;
    __cil_tmp112 = (int )__cil_tmp111;
    if (__cil_tmp112 == 65535) {
      __cil_tmp113 = Media.Zone * 8UL;
      __cil_tmp114 = (unsigned long )(Log2Phy) + __cil_tmp113;
      __cil_tmp115 = *((WORD **)__cil_tmp114);
      __cil_tmp116 = __cil_tmp115 + Media.LogBlock;
      *__cil_tmp116 = Media.PhyBlock;
      goto __Cont;
    } else {
    }
    }
    {
    phyblock = Media.PhyBlock;
    logblock = Media.LogBlock;
    __cil_tmp117 = (int )Ssfdc.MaxSectors;
    __cil_tmp118 = __cil_tmp117 - 1;
    Media.Sector = (BYTE )__cil_tmp118;
    __cil_tmp119 = 0 * 1UL;
    __cil_tmp120 = (unsigned long )(Redundant) + __cil_tmp119;
    __cil_tmp121 = (BYTE *)__cil_tmp120;
    tmp___12 = Ssfdc_D_ReadRedtData(us, __cil_tmp121);
    }
    if (tmp___12) {
      {
      Ssfdc_D_Reset(us);
      }
      return (65535);
    } else {
    }
    {
    __cil_tmp122 = 0 * 1UL;
    __cil_tmp123 = (unsigned long )(Redundant) + __cil_tmp122;
    __cil_tmp124 = (BYTE *)__cil_tmp123;
    tmp___15 = Load_D_LogBlockAddr(__cil_tmp124);
    }
    if (tmp___15) {
    } else {
      {
      __cil_tmp125 = (int )logblock;
      __cil_tmp126 = (int )Media.LogBlock;
      if (__cil_tmp126 == __cil_tmp125) {
        {
        __cil_tmp127 = Media.Zone * 8UL;
        __cil_tmp128 = (unsigned long )(Log2Phy) + __cil_tmp127;
        __cil_tmp129 = *((WORD **)__cil_tmp128);
        __cil_tmp130 = __cil_tmp129 + logblock;
        Media.PhyBlock = *__cil_tmp130;
        __cil_tmp131 = 0 * 1UL;
        __cil_tmp132 = (unsigned long )(Redundant) + __cil_tmp131;
        __cil_tmp133 = (BYTE *)__cil_tmp132;
        tmp___13 = Ssfdc_D_ReadRedtData(us, __cil_tmp133);
        }
        if (tmp___13) {
          {
          Ssfdc_D_Reset(us);
          }
          return (65535);
        } else {
        }
        {
        Media.PhyBlock = phyblock;
        __cil_tmp134 = 0 * 1UL;
        __cil_tmp135 = (unsigned long )(Redundant) + __cil_tmp134;
        __cil_tmp136 = (BYTE *)__cil_tmp135;
        tmp___14 = Load_D_LogBlockAddr(__cil_tmp136);
        }
        if (tmp___14) {
          __cil_tmp137 = Media.Zone * 8UL;
          __cil_tmp138 = (unsigned long )(Log2Phy) + __cil_tmp137;
          __cil_tmp139 = *((WORD **)__cil_tmp138);
          __cil_tmp140 = __cil_tmp139 + logblock;
          Media.PhyBlock = *__cil_tmp140;
          __cil_tmp141 = Media.Zone * 8UL;
          __cil_tmp142 = (unsigned long )(Log2Phy) + __cil_tmp141;
          __cil_tmp143 = *((WORD **)__cil_tmp142);
          __cil_tmp144 = __cil_tmp143 + logblock;
          *__cil_tmp144 = phyblock;
        } else {
          {
          __cil_tmp145 = (int )logblock;
          __cil_tmp146 = (int )Media.LogBlock;
          if (__cil_tmp146 != __cil_tmp145) {
            __cil_tmp147 = Media.Zone * 8UL;
            __cil_tmp148 = (unsigned long )(Log2Phy) + __cil_tmp147;
            __cil_tmp149 = *((WORD **)__cil_tmp148);
            __cil_tmp150 = __cil_tmp149 + logblock;
            Media.PhyBlock = *__cil_tmp150;
            __cil_tmp151 = Media.Zone * 8UL;
            __cil_tmp152 = (unsigned long )(Log2Phy) + __cil_tmp151;
            __cil_tmp153 = *((WORD **)__cil_tmp152);
            __cil_tmp154 = __cil_tmp153 + logblock;
            *__cil_tmp154 = phyblock;
          } else {
          }
          }
        }
      } else {
      }
      }
    }
    Media.Sector = (BYTE )0;
    Media.PhyBlock = phyblock;
    __Cont:
    __cil_tmp155 = (int )Media.PhyBlock;
    __cil_tmp156 = __cil_tmp155 + 1;
    Media.PhyBlock = (WORD )__cil_tmp156;
  }
  while_break___1: ;
  }
  {
  __cil_tmp157 = Media.Zone * 2UL;
  __cil_tmp158 = (unsigned long )(AssignStart) + __cil_tmp157;
  *((WORD *)__cil_tmp158) = (WORD )0;
  Ssfdc_D_Reset(us);
  }
  return (0);
}
}
int MarkFail_D_PhyOneBlock(struct us_data *us )
{ BYTE sect ;
  int tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  BYTE *__cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  BYTE *__cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  {
  {
  sect = Media.Sector;
  __cil_tmp4 = 0 * 1UL;
  __cil_tmp5 = (unsigned long )(WorkRedund) + __cil_tmp4;
  __cil_tmp6 = (BYTE *)__cil_tmp5;
  Set_D_FailBlock(__cil_tmp6);
  Media.Sector = (BYTE )0;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp7 = (int )Ssfdc.MaxSectors;
    __cil_tmp8 = (int )Media.Sector;
    if (__cil_tmp8 < __cil_tmp7) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp9 = 0 * 1UL;
    __cil_tmp10 = (unsigned long )(WorkRedund) + __cil_tmp9;
    __cil_tmp11 = (BYTE *)__cil_tmp10;
    tmp___7 = Ssfdc_D_WriteRedtData(us, __cil_tmp11);
    }
    if (tmp___7) {
      {
      Ssfdc_D_Reset(us);
      Media.Sector = sect;
      ErrCode = (DWORD )4;
      MediaChange = (DWORD )65535;
      }
      return (65535);
    } else {
    }
    __cil_tmp12 = (int )Media.Sector;
    __cil_tmp13 = __cil_tmp12 + 1;
    Media.Sector = (BYTE )__cil_tmp13;
  }
  while_break: ;
  }
  {
  Ssfdc_D_Reset(us);
  Media.Sector = sect;
  }
  return (0);
}
}
__inline static unsigned int __arch_hweight32(unsigned int w ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int __arch_hweight32(unsigned int w )
{ unsigned int res ;
  {
  res = 0U;
  __asm__ ("661:\n\t"
            "call __sw_hweight32"
            "\n662:\n"
            ".section .altinstructions,\"a\"\n"
            "\t .long 661b - .\n"
            "\t .long 663f - .\n"
            "\t .word "
            "(4*32+23)"
            "\n"
            "\t .byte 662b-661b\n"
            "\t .byte 664f-663f\n"
            ".previous\n"
            ".section .discard,\"aw\",@progbits\n"
            "\t .byte 0xff + (664f-663f) - (662b-661b)\n"
            ".previous\n"
            ".section .altinstr_replacement, \"ax\"\n"
            "663:\n\t"
            ".byte 0xf3,0x40,0x0f,0xb8,0xc7"
            "\n664:\n"
            ".previous": "=a" (res): "D" (w));
  return (res);
}
}
__inline static unsigned int __arch_hweight16(unsigned int w ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int __arch_hweight16(unsigned int w )
{ unsigned int tmp ;
  unsigned int __cil_tmp3 ;
  {
  {
  __cil_tmp3 = w & 65535U;
  tmp = __arch_hweight32(__cil_tmp3);
  }
  return (tmp);
}
}
__inline static unsigned int __arch_hweight8(unsigned int w ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int __arch_hweight8(unsigned int w )
{ unsigned int tmp ;
  unsigned int __cil_tmp3 ;
  {
  {
  __cil_tmp3 = w & 255U;
  tmp = __arch_hweight32(__cil_tmp3);
  }
  return (tmp);
}
}
extern int memcmp(void *cs , void *ct , unsigned long count ) ;
struct SSFDCTYPE Ssfdc ;
struct ADDRESS Media ;
struct CIS_AREA CisArea ;
int _Correct_D_SwECC(BYTE *buf , BYTE *redundant_ecc , BYTE *calculate_ecc___0 ) ;
BYTE _Check_D_DevCode(BYTE dcode ) ;
static BYTE EccBuf[6] ;
int Check_D_DataBlank(BYTE *redundant )
{ char i ;
  BYTE *tmp___7 ;
  int __cil_tmp4 ;
  BYTE __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  {
  i = (char)0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp4 = (int )i;
    if (__cil_tmp4 < 16) {
    } else {
      goto while_break;
    }
    }
    tmp___7 = redundant;
    redundant = redundant + 1;
    {
    __cil_tmp5 = *tmp___7;
    __cil_tmp6 = (int )__cil_tmp5;
    if (__cil_tmp6 != 255) {
      return (65535);
    } else {
    }
    }
    __cil_tmp7 = (int )i;
    __cil_tmp8 = __cil_tmp7 + 1;
    i = (char )__cil_tmp8;
  }
  while_break: ;
  }
  return (0);
}
}
int Check_D_FailBlock(BYTE *redundant )
{ unsigned int tmp___7 ;
  BYTE __cil_tmp3 ;
  int __cil_tmp4 ;
  BYTE __cil_tmp5 ;
  BYTE __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  {
  redundant = redundant + 5;
  {
  __cil_tmp3 = *redundant;
  __cil_tmp4 = (int )__cil_tmp3;
  if (__cil_tmp4 == 255) {
    return (0);
  } else {
  }
  }
  {
  __cil_tmp5 = *redundant;
  if (! __cil_tmp5) {
    return (65535);
  } else {
  }
  }
  {
  __cil_tmp6 = *redundant;
  __cil_tmp7 = (unsigned int )__cil_tmp6;
  tmp___7 = __arch_hweight8(__cil_tmp7);
  }
  if (tmp___7 < 7U) {
    return (65535);
  } else {
  }
  return (0);
}
}
int Check_D_DataStatus(BYTE *redundant )
{ unsigned int tmp___7 ;
  BYTE __cil_tmp3 ;
  int __cil_tmp4 ;
  BYTE __cil_tmp5 ;
  BYTE __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  {
  redundant = redundant + 4;
  {
  __cil_tmp3 = *redundant;
  __cil_tmp4 = (int )__cil_tmp3;
  if (__cil_tmp4 == 255) {
    return (0);
  } else {
  }
  }
  {
  __cil_tmp5 = *redundant;
  if (! __cil_tmp5) {
    ErrXDCode = (DWORD )16;
    return (65535);
  } else {
    ErrXDCode = (DWORD )0;
  }
  }
  {
  __cil_tmp6 = *redundant;
  __cil_tmp7 = (unsigned int )__cil_tmp6;
  tmp___7 = __arch_hweight8(__cil_tmp7);
  }
  if (tmp___7 < 5U) {
    return (65535);
  } else {
  }
  return (0);
}
}
int Load_D_LogBlockAddr(BYTE *redundant )
{ WORD addr1 ;
  WORD addr2 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  BYTE *__cil_tmp7 ;
  BYTE __cil_tmp8 ;
  WORD __cil_tmp9 ;
  int __cil_tmp10 ;
  BYTE *__cil_tmp11 ;
  BYTE __cil_tmp12 ;
  WORD __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  BYTE *__cil_tmp17 ;
  BYTE __cil_tmp18 ;
  WORD __cil_tmp19 ;
  int __cil_tmp20 ;
  BYTE *__cil_tmp21 ;
  BYTE __cil_tmp22 ;
  WORD __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  WORD __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  int __cil_tmp50 ;
  {
  __cil_tmp7 = redundant + 7;
  __cil_tmp8 = *__cil_tmp7;
  __cil_tmp9 = (WORD )__cil_tmp8;
  __cil_tmp10 = (int )__cil_tmp9;
  __cil_tmp11 = redundant + 6;
  __cil_tmp12 = *__cil_tmp11;
  __cil_tmp13 = (WORD )__cil_tmp12;
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 * 256;
  __cil_tmp16 = __cil_tmp15 + __cil_tmp10;
  addr1 = (WORD )__cil_tmp16;
  __cil_tmp17 = redundant + 12;
  __cil_tmp18 = *__cil_tmp17;
  __cil_tmp19 = (WORD )__cil_tmp18;
  __cil_tmp20 = (int )__cil_tmp19;
  __cil_tmp21 = redundant + 11;
  __cil_tmp22 = *__cil_tmp21;
  __cil_tmp23 = (WORD )__cil_tmp22;
  __cil_tmp24 = (int )__cil_tmp23;
  __cil_tmp25 = __cil_tmp24 * 256;
  __cil_tmp26 = __cil_tmp25 + __cil_tmp20;
  addr2 = (WORD )__cil_tmp26;
  {
  __cil_tmp27 = (int )addr2;
  __cil_tmp28 = (int )addr1;
  if (__cil_tmp28 == __cil_tmp27) {
    {
    __cil_tmp29 = (int )addr1;
    __cil_tmp30 = __cil_tmp29 & 61440;
    if (__cil_tmp30 == 4096) {
      __cil_tmp31 = (int )addr1;
      __cil_tmp32 = __cil_tmp31 & 4095;
      __cil_tmp33 = __cil_tmp32 / 2;
      Media.LogBlock = (WORD )__cil_tmp33;
      return (0);
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp34 = (int )addr2;
  __cil_tmp35 = (int )addr1;
  __cil_tmp36 = __cil_tmp35 ^ __cil_tmp34;
  __cil_tmp37 = (WORD )__cil_tmp36;
  __cil_tmp38 = (unsigned int )__cil_tmp37;
  tmp___7 = __arch_hweight16(__cil_tmp38);
  }
  if (tmp___7 != 1U) {
    return (65535);
  } else {
  }
  {
  __cil_tmp39 = (int )addr1;
  __cil_tmp40 = __cil_tmp39 & 61440;
  if (__cil_tmp40 == 4096) {
    {
    __cil_tmp41 = (unsigned int )addr1;
    tmp___8 = __arch_hweight16(__cil_tmp41);
    }
    if (tmp___8 & 1U) {
    } else {
      __cil_tmp42 = (int )addr1;
      __cil_tmp43 = __cil_tmp42 & 4095;
      __cil_tmp44 = __cil_tmp43 / 2;
      Media.LogBlock = (WORD )__cil_tmp44;
      return (0);
    }
  } else {
  }
  }
  {
  __cil_tmp45 = (int )addr2;
  __cil_tmp46 = __cil_tmp45 & 61440;
  if (__cil_tmp46 == 4096) {
    {
    __cil_tmp47 = (unsigned int )addr2;
    tmp___9 = __arch_hweight16(__cil_tmp47);
    }
    if (tmp___9 & 1U) {
    } else {
      __cil_tmp48 = (int )addr2;
      __cil_tmp49 = __cil_tmp48 & 4095;
      __cil_tmp50 = __cil_tmp49 / 2;
      Media.LogBlock = (WORD )__cil_tmp50;
      return (0);
    }
  } else {
  }
  }
  return (65535);
}
}
void Clr_D_RedundantData(BYTE *redundant )
{ char i ;
  int __cil_tmp3 ;
  int __cil_tmp4 ;
  BYTE *__cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  {
  i = (char)0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp3 = (int )i;
    if (__cil_tmp3 < 16) {
    } else {
      goto while_break;
    }
    }
    __cil_tmp4 = (int )i;
    __cil_tmp5 = redundant + __cil_tmp4;
    *__cil_tmp5 = (BYTE )255;
    __cil_tmp6 = (int )i;
    __cil_tmp7 = __cil_tmp6 + 1;
    i = (char )__cil_tmp7;
  }
  while_break: ;
  }
  return;
}
}
void Set_D_LogBlockAddr(BYTE *redundant )
{ WORD addr ;
  unsigned int tmp___7 ;
  BYTE tmp___8 ;
  BYTE tmp___9 ;
  BYTE *__cil_tmp6 ;
  BYTE *__cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  BYTE *__cil_tmp16 ;
  BYTE *__cil_tmp17 ;
  BYTE *__cil_tmp18 ;
  BYTE *__cil_tmp19 ;
  {
  {
  __cil_tmp6 = redundant + 5;
  *__cil_tmp6 = (BYTE )255;
  __cil_tmp7 = redundant + 4;
  *__cil_tmp7 = (BYTE )255;
  __cil_tmp8 = (int )Media.LogBlock;
  __cil_tmp9 = __cil_tmp8 * 2;
  __cil_tmp10 = __cil_tmp9 + 4096;
  addr = (WORD )__cil_tmp10;
  __cil_tmp11 = (unsigned int )addr;
  tmp___7 = __arch_hweight16(__cil_tmp11);
  }
  if (tmp___7 % 2U) {
    __cil_tmp12 = (int )addr;
    __cil_tmp13 = __cil_tmp12 + 1;
    addr = (WORD )__cil_tmp13;
  } else {
  }
  __cil_tmp14 = (int )addr;
  __cil_tmp15 = __cil_tmp14 / 256;
  tmp___8 = (BYTE )__cil_tmp15;
  __cil_tmp16 = redundant + 11;
  *__cil_tmp16 = tmp___8;
  __cil_tmp17 = redundant + 6;
  *__cil_tmp17 = tmp___8;
  tmp___9 = (BYTE )addr;
  __cil_tmp18 = redundant + 12;
  *__cil_tmp18 = tmp___9;
  __cil_tmp19 = redundant + 7;
  *__cil_tmp19 = tmp___9;
  return;
}
}
void Set_D_FailBlock(BYTE *redundant )
{ char i ;
  BYTE *tmp___7 ;
  int tmp___8 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  {
  i = (char)0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp5 = (int )i;
    if (__cil_tmp5 < 16) {
    } else {
      goto while_break;
    }
    }
    tmp___7 = redundant;
    redundant = redundant + 1;
    {
    __cil_tmp6 = (int )i;
    if (__cil_tmp6 == 5) {
      tmp___8 = 240;
    } else {
      tmp___8 = 255;
    }
    }
    *tmp___7 = (BYTE )tmp___8;
    __cil_tmp7 = (int )i;
    __cil_tmp8 = __cil_tmp7 + 1;
    i = (char )__cil_tmp8;
  }
  while_break: ;
  }
  return;
}
}
void Set_D_DataStaus(BYTE *redundant )
{
  {
  redundant = redundant + 4;
  *redundant = (BYTE )0;
  return;
}
}
void Ssfdc_D_Reset(struct us_data *us )
{
  {
  return;
}
}
int Ssfdc_D_ReadCisSect(struct us_data *us , BYTE *buf , BYTE *redundant )
{ BYTE zone ;
  BYTE sector ;
  WORD block ;
  int tmp___7 ;
  {
  {
  zone = Media.Zone;
  block = Media.PhyBlock;
  sector = Media.Sector;
  Media.Zone = (BYTE )0;
  Media.PhyBlock = CisArea.PhyBlock;
  Media.Sector = CisArea.Sector;
  tmp___7 = Ssfdc_D_ReadSect(us, buf, redundant);
  }
  if (tmp___7) {
    Media.Zone = zone;
    Media.PhyBlock = block;
    Media.Sector = sector;
    return (65535);
  } else {
  }
  Media.Zone = zone;
  Media.PhyBlock = block;
  Media.Sector = sector;
  return (0);
}
}
int Ssfdc_D_ReadSect(struct us_data *us , BYTE *buf , BYTE *redundant )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  WORD addr ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  BYTE __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  WORD __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  WORD __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  void *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  int __cil_tmp50 ;
  int __cil_tmp51 ;
  BYTE __cil_tmp52 ;
  void *__cil_tmp53 ;
  void *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  int __cil_tmp75 ;
  int __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  int __cil_tmp81 ;
  int __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  BYTE __cil_tmp91 ;
  void *__cil_tmp92 ;
  {
  {
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 344;
  __cil_tmp9 = *((unsigned char **)__cil_tmp8);
  bcb = (struct bulk_cb_wrap *)__cil_tmp9;
  __cil_tmp10 = (BYTE )8;
  result = ENE_LoadBinCode(us, __cil_tmp10);
  }
  if (result != 0) {
    {
    printk("Load SM RW Code Fail !!\n");
    }
    return (3);
  } else {
  }
  {
  __cil_tmp11 = (int )Media.PhyBlock;
  __cil_tmp12 = (int )Ssfdc.MaxBlocks;
  __cil_tmp13 = (WORD )Media.Zone;
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 * __cil_tmp12;
  __cil_tmp16 = __cil_tmp15 + __cil_tmp11;
  addr = (WORD )__cil_tmp16;
  __cil_tmp17 = (int )Media.Sector;
  __cil_tmp18 = (WORD )Ssfdc.MaxSectors;
  __cil_tmp19 = (int )__cil_tmp18;
  __cil_tmp20 = (int )addr;
  __cil_tmp21 = __cil_tmp20 * __cil_tmp19;
  __cil_tmp22 = __cil_tmp21 + __cil_tmp17;
  addr = (WORD )__cil_tmp22;
  __cil_tmp23 = (void *)bcb;
  memset(__cil_tmp23, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp24 = (unsigned long )bcb;
  __cil_tmp25 = __cil_tmp24 + 8;
  *((__le32 *)__cil_tmp25) = (__le32 )512;
  __cil_tmp26 = (unsigned long )bcb;
  __cil_tmp27 = __cil_tmp26 + 12;
  *((__u8 *)__cil_tmp27) = (__u8 )128;
  __cil_tmp28 = 0 * 1UL;
  __cil_tmp29 = 15 + __cil_tmp28;
  __cil_tmp30 = (unsigned long )bcb;
  __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
  *((__u8 *)__cil_tmp31) = (__u8 )241;
  __cil_tmp32 = 1 * 1UL;
  __cil_tmp33 = 15 + __cil_tmp32;
  __cil_tmp34 = (unsigned long )bcb;
  __cil_tmp35 = __cil_tmp34 + __cil_tmp33;
  *((__u8 *)__cil_tmp35) = (__u8 )2;
  __cil_tmp36 = 4 * 1UL;
  __cil_tmp37 = 15 + __cil_tmp36;
  __cil_tmp38 = (unsigned long )bcb;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
  *((__u8 *)__cil_tmp39) = (BYTE )addr;
  __cil_tmp40 = 3 * 1UL;
  __cil_tmp41 = 15 + __cil_tmp40;
  __cil_tmp42 = (unsigned long )bcb;
  __cil_tmp43 = __cil_tmp42 + __cil_tmp41;
  __cil_tmp44 = (int )addr;
  __cil_tmp45 = __cil_tmp44 / 256;
  *((__u8 *)__cil_tmp43) = (BYTE )__cil_tmp45;
  __cil_tmp46 = 2 * 1UL;
  __cil_tmp47 = 15 + __cil_tmp46;
  __cil_tmp48 = (unsigned long )bcb;
  __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
  __cil_tmp50 = (int )Media.Zone;
  __cil_tmp51 = __cil_tmp50 / 2;
  *((__u8 *)__cil_tmp49) = (__u8 )__cil_tmp51;
  __cil_tmp52 = (BYTE )1;
  __cil_tmp53 = (void *)buf;
  result = ENE_SendScsiCmd(us, __cil_tmp52, __cil_tmp53, 0);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp54 = (void *)bcb;
  memset(__cil_tmp54, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp55 = (unsigned long )bcb;
  __cil_tmp56 = __cil_tmp55 + 8;
  *((__le32 *)__cil_tmp56) = (__le32 )16;
  __cil_tmp57 = (unsigned long )bcb;
  __cil_tmp58 = __cil_tmp57 + 12;
  *((__u8 *)__cil_tmp58) = (__u8 )128;
  __cil_tmp59 = 0 * 1UL;
  __cil_tmp60 = 15 + __cil_tmp59;
  __cil_tmp61 = (unsigned long )bcb;
  __cil_tmp62 = __cil_tmp61 + __cil_tmp60;
  *((__u8 *)__cil_tmp62) = (__u8 )241;
  __cil_tmp63 = 1 * 1UL;
  __cil_tmp64 = 15 + __cil_tmp63;
  __cil_tmp65 = (unsigned long )bcb;
  __cil_tmp66 = __cil_tmp65 + __cil_tmp64;
  *((__u8 *)__cil_tmp66) = (__u8 )3;
  __cil_tmp67 = 4 * 1UL;
  __cil_tmp68 = 15 + __cil_tmp67;
  __cil_tmp69 = (unsigned long )bcb;
  __cil_tmp70 = __cil_tmp69 + __cil_tmp68;
  *((__u8 *)__cil_tmp70) = (BYTE )addr;
  __cil_tmp71 = 3 * 1UL;
  __cil_tmp72 = 15 + __cil_tmp71;
  __cil_tmp73 = (unsigned long )bcb;
  __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
  __cil_tmp75 = (int )addr;
  __cil_tmp76 = __cil_tmp75 / 256;
  *((__u8 *)__cil_tmp74) = (BYTE )__cil_tmp76;
  __cil_tmp77 = 2 * 1UL;
  __cil_tmp78 = 15 + __cil_tmp77;
  __cil_tmp79 = (unsigned long )bcb;
  __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
  __cil_tmp81 = (int )Media.Zone;
  __cil_tmp82 = __cil_tmp81 / 2;
  *((__u8 *)__cil_tmp80) = (__u8 )__cil_tmp82;
  __cil_tmp83 = 8 * 1UL;
  __cil_tmp84 = 15 + __cil_tmp83;
  __cil_tmp85 = (unsigned long )bcb;
  __cil_tmp86 = __cil_tmp85 + __cil_tmp84;
  *((__u8 *)__cil_tmp86) = (__u8 )0;
  __cil_tmp87 = 9 * 1UL;
  __cil_tmp88 = 15 + __cil_tmp87;
  __cil_tmp89 = (unsigned long )bcb;
  __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
  *((__u8 *)__cil_tmp90) = (__u8 )1;
  __cil_tmp91 = (BYTE )1;
  __cil_tmp92 = (void *)redundant;
  result = ENE_SendScsiCmd(us, __cil_tmp91, __cil_tmp92, 0);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
int Ssfdc_D_ReadBlock(struct us_data *us , WORD count , BYTE *buf , BYTE *redundant )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  WORD addr ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned char *__cil_tmp10 ;
  BYTE __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  WORD __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  WORD __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  void *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
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
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  BYTE __cil_tmp55 ;
  void *__cil_tmp56 ;
  void *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  int __cil_tmp78 ;
  int __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  int __cil_tmp84 ;
  int __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  BYTE __cil_tmp94 ;
  void *__cil_tmp95 ;
  {
  {
  __cil_tmp8 = (unsigned long )us;
  __cil_tmp9 = __cil_tmp8 + 344;
  __cil_tmp10 = *((unsigned char **)__cil_tmp9);
  bcb = (struct bulk_cb_wrap *)__cil_tmp10;
  __cil_tmp11 = (BYTE )8;
  result = ENE_LoadBinCode(us, __cil_tmp11);
  }
  if (result != 0) {
    {
    printk("Load SM RW Code Fail !!\n");
    }
    return (3);
  } else {
  }
  {
  __cil_tmp12 = (int )Media.PhyBlock;
  __cil_tmp13 = (int )Ssfdc.MaxBlocks;
  __cil_tmp14 = (WORD )Media.Zone;
  __cil_tmp15 = (int )__cil_tmp14;
  __cil_tmp16 = __cil_tmp15 * __cil_tmp13;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp12;
  addr = (WORD )__cil_tmp17;
  __cil_tmp18 = (int )Media.Sector;
  __cil_tmp19 = (WORD )Ssfdc.MaxSectors;
  __cil_tmp20 = (int )__cil_tmp19;
  __cil_tmp21 = (int )addr;
  __cil_tmp22 = __cil_tmp21 * __cil_tmp20;
  __cil_tmp23 = __cil_tmp22 + __cil_tmp18;
  addr = (WORD )__cil_tmp23;
  __cil_tmp24 = (void *)bcb;
  memset(__cil_tmp24, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp25 = (unsigned long )bcb;
  __cil_tmp26 = __cil_tmp25 + 8;
  __cil_tmp27 = (int )count;
  __cil_tmp28 = 512 * __cil_tmp27;
  *((__le32 *)__cil_tmp26) = (__le32 )__cil_tmp28;
  __cil_tmp29 = (unsigned long )bcb;
  __cil_tmp30 = __cil_tmp29 + 12;
  *((__u8 *)__cil_tmp30) = (__u8 )128;
  __cil_tmp31 = 0 * 1UL;
  __cil_tmp32 = 15 + __cil_tmp31;
  __cil_tmp33 = (unsigned long )bcb;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  *((__u8 *)__cil_tmp34) = (__u8 )241;
  __cil_tmp35 = 1 * 1UL;
  __cil_tmp36 = 15 + __cil_tmp35;
  __cil_tmp37 = (unsigned long )bcb;
  __cil_tmp38 = __cil_tmp37 + __cil_tmp36;
  *((__u8 *)__cil_tmp38) = (__u8 )2;
  __cil_tmp39 = 4 * 1UL;
  __cil_tmp40 = 15 + __cil_tmp39;
  __cil_tmp41 = (unsigned long )bcb;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  *((__u8 *)__cil_tmp42) = (BYTE )addr;
  __cil_tmp43 = 3 * 1UL;
  __cil_tmp44 = 15 + __cil_tmp43;
  __cil_tmp45 = (unsigned long )bcb;
  __cil_tmp46 = __cil_tmp45 + __cil_tmp44;
  __cil_tmp47 = (int )addr;
  __cil_tmp48 = __cil_tmp47 / 256;
  *((__u8 *)__cil_tmp46) = (BYTE )__cil_tmp48;
  __cil_tmp49 = 2 * 1UL;
  __cil_tmp50 = 15 + __cil_tmp49;
  __cil_tmp51 = (unsigned long )bcb;
  __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
  __cil_tmp53 = (int )Media.Zone;
  __cil_tmp54 = __cil_tmp53 / 2;
  *((__u8 *)__cil_tmp52) = (__u8 )__cil_tmp54;
  __cil_tmp55 = (BYTE )1;
  __cil_tmp56 = (void *)buf;
  result = ENE_SendScsiCmd(us, __cil_tmp55, __cil_tmp56, 0);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  {
  __cil_tmp57 = (void *)bcb;
  memset(__cil_tmp57, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp58 = (unsigned long )bcb;
  __cil_tmp59 = __cil_tmp58 + 8;
  *((__le32 *)__cil_tmp59) = (__le32 )16;
  __cil_tmp60 = (unsigned long )bcb;
  __cil_tmp61 = __cil_tmp60 + 12;
  *((__u8 *)__cil_tmp61) = (__u8 )128;
  __cil_tmp62 = 0 * 1UL;
  __cil_tmp63 = 15 + __cil_tmp62;
  __cil_tmp64 = (unsigned long )bcb;
  __cil_tmp65 = __cil_tmp64 + __cil_tmp63;
  *((__u8 *)__cil_tmp65) = (__u8 )241;
  __cil_tmp66 = 1 * 1UL;
  __cil_tmp67 = 15 + __cil_tmp66;
  __cil_tmp68 = (unsigned long )bcb;
  __cil_tmp69 = __cil_tmp68 + __cil_tmp67;
  *((__u8 *)__cil_tmp69) = (__u8 )3;
  __cil_tmp70 = 4 * 1UL;
  __cil_tmp71 = 15 + __cil_tmp70;
  __cil_tmp72 = (unsigned long )bcb;
  __cil_tmp73 = __cil_tmp72 + __cil_tmp71;
  *((__u8 *)__cil_tmp73) = (BYTE )addr;
  __cil_tmp74 = 3 * 1UL;
  __cil_tmp75 = 15 + __cil_tmp74;
  __cil_tmp76 = (unsigned long )bcb;
  __cil_tmp77 = __cil_tmp76 + __cil_tmp75;
  __cil_tmp78 = (int )addr;
  __cil_tmp79 = __cil_tmp78 / 256;
  *((__u8 *)__cil_tmp77) = (BYTE )__cil_tmp79;
  __cil_tmp80 = 2 * 1UL;
  __cil_tmp81 = 15 + __cil_tmp80;
  __cil_tmp82 = (unsigned long )bcb;
  __cil_tmp83 = __cil_tmp82 + __cil_tmp81;
  __cil_tmp84 = (int )Media.Zone;
  __cil_tmp85 = __cil_tmp84 / 2;
  *((__u8 *)__cil_tmp83) = (__u8 )__cil_tmp85;
  __cil_tmp86 = 8 * 1UL;
  __cil_tmp87 = 15 + __cil_tmp86;
  __cil_tmp88 = (unsigned long )bcb;
  __cil_tmp89 = __cil_tmp88 + __cil_tmp87;
  *((__u8 *)__cil_tmp89) = (__u8 )0;
  __cil_tmp90 = 9 * 1UL;
  __cil_tmp91 = 15 + __cil_tmp90;
  __cil_tmp92 = (unsigned long )bcb;
  __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
  *((__u8 *)__cil_tmp93) = (__u8 )1;
  __cil_tmp94 = (BYTE )1;
  __cil_tmp95 = (void *)redundant;
  result = ENE_SendScsiCmd(us, __cil_tmp94, __cil_tmp95, 0);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
int Ssfdc_D_CopyBlock(struct us_data *us , WORD count , BYTE *buf , BYTE *redundant )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  WORD ReadAddr ;
  WORD WriteAddr ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned char *__cil_tmp11 ;
  BYTE __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  WORD __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  WORD __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  WORD __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  WORD __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  void *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
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
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  int __cil_tmp56 ;
  int __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  int __cil_tmp62 ;
  int __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  BYTE *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  BYTE *__cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  int __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  int __cil_tmp87 ;
  int __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  int __cil_tmp93 ;
  int __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  BYTE __cil_tmp99 ;
  void *__cil_tmp100 ;
  {
  {
  __cil_tmp9 = (unsigned long )us;
  __cil_tmp10 = __cil_tmp9 + 344;
  __cil_tmp11 = *((unsigned char **)__cil_tmp10);
  bcb = (struct bulk_cb_wrap *)__cil_tmp11;
  __cil_tmp12 = (BYTE )8;
  result = ENE_LoadBinCode(us, __cil_tmp12);
  }
  if (result != 0) {
    {
    printk("Load SM RW Code Fail !!\n");
    }
    return (3);
  } else {
  }
  {
  __cil_tmp13 = (int )ReadBlock;
  __cil_tmp14 = (int )Ssfdc.MaxBlocks;
  __cil_tmp15 = (WORD )Media.Zone;
  __cil_tmp16 = (int )__cil_tmp15;
  __cil_tmp17 = __cil_tmp16 * __cil_tmp14;
  __cil_tmp18 = __cil_tmp17 + __cil_tmp13;
  ReadAddr = (WORD )__cil_tmp18;
  __cil_tmp19 = (WORD )Ssfdc.MaxSectors;
  __cil_tmp20 = (int )__cil_tmp19;
  __cil_tmp21 = (int )ReadAddr;
  __cil_tmp22 = __cil_tmp21 * __cil_tmp20;
  ReadAddr = (WORD )__cil_tmp22;
  __cil_tmp23 = (int )WriteBlock;
  __cil_tmp24 = (int )Ssfdc.MaxBlocks;
  __cil_tmp25 = (WORD )Media.Zone;
  __cil_tmp26 = (int )__cil_tmp25;
  __cil_tmp27 = __cil_tmp26 * __cil_tmp24;
  __cil_tmp28 = __cil_tmp27 + __cil_tmp23;
  WriteAddr = (WORD )__cil_tmp28;
  __cil_tmp29 = (WORD )Ssfdc.MaxSectors;
  __cil_tmp30 = (int )__cil_tmp29;
  __cil_tmp31 = (int )WriteAddr;
  __cil_tmp32 = __cil_tmp31 * __cil_tmp30;
  WriteAddr = (WORD )__cil_tmp32;
  __cil_tmp33 = (void *)bcb;
  memset(__cil_tmp33, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp34 = (unsigned long )bcb;
  __cil_tmp35 = __cil_tmp34 + 8;
  __cil_tmp36 = (int )count;
  __cil_tmp37 = 512 * __cil_tmp36;
  *((__le32 *)__cil_tmp35) = (__le32 )__cil_tmp37;
  __cil_tmp38 = (unsigned long )bcb;
  __cil_tmp39 = __cil_tmp38 + 12;
  *((__u8 *)__cil_tmp39) = (__u8 )0;
  __cil_tmp40 = 0 * 1UL;
  __cil_tmp41 = 15 + __cil_tmp40;
  __cil_tmp42 = (unsigned long )bcb;
  __cil_tmp43 = __cil_tmp42 + __cil_tmp41;
  *((__u8 *)__cil_tmp43) = (__u8 )240;
  __cil_tmp44 = 1 * 1UL;
  __cil_tmp45 = 15 + __cil_tmp44;
  __cil_tmp46 = (unsigned long )bcb;
  __cil_tmp47 = __cil_tmp46 + __cil_tmp45;
  *((__u8 *)__cil_tmp47) = (__u8 )8;
  __cil_tmp48 = 7 * 1UL;
  __cil_tmp49 = 15 + __cil_tmp48;
  __cil_tmp50 = (unsigned long )bcb;
  __cil_tmp51 = __cil_tmp50 + __cil_tmp49;
  *((__u8 *)__cil_tmp51) = (BYTE )WriteAddr;
  __cil_tmp52 = 6 * 1UL;
  __cil_tmp53 = 15 + __cil_tmp52;
  __cil_tmp54 = (unsigned long )bcb;
  __cil_tmp55 = __cil_tmp54 + __cil_tmp53;
  __cil_tmp56 = (int )WriteAddr;
  __cil_tmp57 = __cil_tmp56 / 256;
  *((__u8 *)__cil_tmp55) = (BYTE )__cil_tmp57;
  __cil_tmp58 = 5 * 1UL;
  __cil_tmp59 = 15 + __cil_tmp58;
  __cil_tmp60 = (unsigned long )bcb;
  __cil_tmp61 = __cil_tmp60 + __cil_tmp59;
  __cil_tmp62 = (int )Media.Zone;
  __cil_tmp63 = __cil_tmp62 / 2;
  *((__u8 *)__cil_tmp61) = (__u8 )__cil_tmp63;
  __cil_tmp64 = 8 * 1UL;
  __cil_tmp65 = 15 + __cil_tmp64;
  __cil_tmp66 = (unsigned long )bcb;
  __cil_tmp67 = __cil_tmp66 + __cil_tmp65;
  __cil_tmp68 = redundant + 6;
  *((__u8 *)__cil_tmp67) = *__cil_tmp68;
  __cil_tmp69 = 9 * 1UL;
  __cil_tmp70 = 15 + __cil_tmp69;
  __cil_tmp71 = (unsigned long )bcb;
  __cil_tmp72 = __cil_tmp71 + __cil_tmp70;
  __cil_tmp73 = redundant + 7;
  *((__u8 *)__cil_tmp72) = *__cil_tmp73;
  __cil_tmp74 = 10 * 1UL;
  __cil_tmp75 = 15 + __cil_tmp74;
  __cil_tmp76 = (unsigned long )bcb;
  __cil_tmp77 = __cil_tmp76 + __cil_tmp75;
  *((__u8 *)__cil_tmp77) = Media.Sector;
  }
  {
  __cil_tmp78 = (int )ReadBlock;
  if (__cil_tmp78 != 65535) {
    __cil_tmp79 = 4 * 1UL;
    __cil_tmp80 = 15 + __cil_tmp79;
    __cil_tmp81 = (unsigned long )bcb;
    __cil_tmp82 = __cil_tmp81 + __cil_tmp80;
    *((__u8 *)__cil_tmp82) = (BYTE )ReadAddr;
    __cil_tmp83 = 3 * 1UL;
    __cil_tmp84 = 15 + __cil_tmp83;
    __cil_tmp85 = (unsigned long )bcb;
    __cil_tmp86 = __cil_tmp85 + __cil_tmp84;
    __cil_tmp87 = (int )ReadAddr;
    __cil_tmp88 = __cil_tmp87 / 256;
    *((__u8 *)__cil_tmp86) = (BYTE )__cil_tmp88;
    __cil_tmp89 = 2 * 1UL;
    __cil_tmp90 = 15 + __cil_tmp89;
    __cil_tmp91 = (unsigned long )bcb;
    __cil_tmp92 = __cil_tmp91 + __cil_tmp90;
    __cil_tmp93 = (int )Media.Zone;
    __cil_tmp94 = __cil_tmp93 / 2;
    *((__u8 *)__cil_tmp92) = (__u8 )__cil_tmp94;
  } else {
    __cil_tmp95 = 11 * 1UL;
    __cil_tmp96 = 15 + __cil_tmp95;
    __cil_tmp97 = (unsigned long )bcb;
    __cil_tmp98 = __cil_tmp97 + __cil_tmp96;
    *((__u8 *)__cil_tmp98) = (__u8 )1;
  }
  }
  {
  __cil_tmp99 = (BYTE )0;
  __cil_tmp100 = (void *)buf;
  result = ENE_SendScsiCmd(us, __cil_tmp99, __cil_tmp100, 0);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
int Ssfdc_D_WriteSectForCopy(struct us_data *us , BYTE *buf , BYTE *redundant )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  WORD addr ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned char *__cil_tmp9 ;
  BYTE __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  WORD __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  WORD __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  void *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  int __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  BYTE *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  BYTE *__cil_tmp61 ;
  BYTE __cil_tmp62 ;
  void *__cil_tmp63 ;
  {
  {
  __cil_tmp7 = (unsigned long )us;
  __cil_tmp8 = __cil_tmp7 + 344;
  __cil_tmp9 = *((unsigned char **)__cil_tmp8);
  bcb = (struct bulk_cb_wrap *)__cil_tmp9;
  __cil_tmp10 = (BYTE )8;
  result = ENE_LoadBinCode(us, __cil_tmp10);
  }
  if (result != 0) {
    {
    printk("Load SM RW Code Fail !!\n");
    }
    return (3);
  } else {
  }
  {
  __cil_tmp11 = (int )Media.PhyBlock;
  __cil_tmp12 = (int )Ssfdc.MaxBlocks;
  __cil_tmp13 = (WORD )Media.Zone;
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 * __cil_tmp12;
  __cil_tmp16 = __cil_tmp15 + __cil_tmp11;
  addr = (WORD )__cil_tmp16;
  __cil_tmp17 = (int )Media.Sector;
  __cil_tmp18 = (WORD )Ssfdc.MaxSectors;
  __cil_tmp19 = (int )__cil_tmp18;
  __cil_tmp20 = (int )addr;
  __cil_tmp21 = __cil_tmp20 * __cil_tmp19;
  __cil_tmp22 = __cil_tmp21 + __cil_tmp17;
  addr = (WORD )__cil_tmp22;
  __cil_tmp23 = (void *)bcb;
  memset(__cil_tmp23, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp24 = (unsigned long )bcb;
  __cil_tmp25 = __cil_tmp24 + 8;
  *((__le32 *)__cil_tmp25) = (__le32 )512;
  __cil_tmp26 = (unsigned long )bcb;
  __cil_tmp27 = __cil_tmp26 + 12;
  *((__u8 *)__cil_tmp27) = (__u8 )0;
  __cil_tmp28 = 0 * 1UL;
  __cil_tmp29 = 15 + __cil_tmp28;
  __cil_tmp30 = (unsigned long )bcb;
  __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
  *((__u8 *)__cil_tmp31) = (__u8 )240;
  __cil_tmp32 = 1 * 1UL;
  __cil_tmp33 = 15 + __cil_tmp32;
  __cil_tmp34 = (unsigned long )bcb;
  __cil_tmp35 = __cil_tmp34 + __cil_tmp33;
  *((__u8 *)__cil_tmp35) = (__u8 )4;
  __cil_tmp36 = 7 * 1UL;
  __cil_tmp37 = 15 + __cil_tmp36;
  __cil_tmp38 = (unsigned long )bcb;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
  *((__u8 *)__cil_tmp39) = (BYTE )addr;
  __cil_tmp40 = 6 * 1UL;
  __cil_tmp41 = 15 + __cil_tmp40;
  __cil_tmp42 = (unsigned long )bcb;
  __cil_tmp43 = __cil_tmp42 + __cil_tmp41;
  __cil_tmp44 = (int )addr;
  __cil_tmp45 = __cil_tmp44 / 256;
  *((__u8 *)__cil_tmp43) = (BYTE )__cil_tmp45;
  __cil_tmp46 = 5 * 1UL;
  __cil_tmp47 = 15 + __cil_tmp46;
  __cil_tmp48 = (unsigned long )bcb;
  __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
  __cil_tmp50 = (int )Media.Zone;
  __cil_tmp51 = __cil_tmp50 / 2;
  *((__u8 *)__cil_tmp49) = (__u8 )__cil_tmp51;
  __cil_tmp52 = 8 * 1UL;
  __cil_tmp53 = 15 + __cil_tmp52;
  __cil_tmp54 = (unsigned long )bcb;
  __cil_tmp55 = __cil_tmp54 + __cil_tmp53;
  __cil_tmp56 = redundant + 6;
  *((__u8 *)__cil_tmp55) = *__cil_tmp56;
  __cil_tmp57 = 9 * 1UL;
  __cil_tmp58 = 15 + __cil_tmp57;
  __cil_tmp59 = (unsigned long )bcb;
  __cil_tmp60 = __cil_tmp59 + __cil_tmp58;
  __cil_tmp61 = redundant + 7;
  *((__u8 *)__cil_tmp60) = *__cil_tmp61;
  __cil_tmp62 = (BYTE )0;
  __cil_tmp63 = (void *)buf;
  result = ENE_SendScsiCmd(us, __cil_tmp62, __cil_tmp63, 0);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
int Ssfdc_D_EraseBlock(struct us_data *us )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  WORD addr ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned char *__cil_tmp7 ;
  BYTE __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  WORD __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  WORD __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  void *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
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
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  BYTE __cil_tmp48 ;
  void *__cil_tmp49 ;
  {
  {
  __cil_tmp5 = (unsigned long )us;
  __cil_tmp6 = __cil_tmp5 + 344;
  __cil_tmp7 = *((unsigned char **)__cil_tmp6);
  bcb = (struct bulk_cb_wrap *)__cil_tmp7;
  __cil_tmp8 = (BYTE )8;
  result = ENE_LoadBinCode(us, __cil_tmp8);
  }
  if (result != 0) {
    {
    printk("Load SM RW Code Fail !!\n");
    }
    return (3);
  } else {
  }
  {
  __cil_tmp9 = (int )Media.PhyBlock;
  __cil_tmp10 = (int )Ssfdc.MaxBlocks;
  __cil_tmp11 = (WORD )Media.Zone;
  __cil_tmp12 = (int )__cil_tmp11;
  __cil_tmp13 = __cil_tmp12 * __cil_tmp10;
  __cil_tmp14 = __cil_tmp13 + __cil_tmp9;
  addr = (WORD )__cil_tmp14;
  __cil_tmp15 = (WORD )Ssfdc.MaxSectors;
  __cil_tmp16 = (int )__cil_tmp15;
  __cil_tmp17 = (int )addr;
  __cil_tmp18 = __cil_tmp17 * __cil_tmp16;
  addr = (WORD )__cil_tmp18;
  __cil_tmp19 = (void *)bcb;
  memset(__cil_tmp19, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp20 = (unsigned long )bcb;
  __cil_tmp21 = __cil_tmp20 + 8;
  *((__le32 *)__cil_tmp21) = (__le32 )512;
  __cil_tmp22 = (unsigned long )bcb;
  __cil_tmp23 = __cil_tmp22 + 12;
  *((__u8 *)__cil_tmp23) = (__u8 )128;
  __cil_tmp24 = 0 * 1UL;
  __cil_tmp25 = 15 + __cil_tmp24;
  __cil_tmp26 = (unsigned long )bcb;
  __cil_tmp27 = __cil_tmp26 + __cil_tmp25;
  *((__u8 *)__cil_tmp27) = (__u8 )242;
  __cil_tmp28 = 1 * 1UL;
  __cil_tmp29 = 15 + __cil_tmp28;
  __cil_tmp30 = (unsigned long )bcb;
  __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
  *((__u8 *)__cil_tmp31) = (__u8 )6;
  __cil_tmp32 = 7 * 1UL;
  __cil_tmp33 = 15 + __cil_tmp32;
  __cil_tmp34 = (unsigned long )bcb;
  __cil_tmp35 = __cil_tmp34 + __cil_tmp33;
  *((__u8 *)__cil_tmp35) = (BYTE )addr;
  __cil_tmp36 = 6 * 1UL;
  __cil_tmp37 = 15 + __cil_tmp36;
  __cil_tmp38 = (unsigned long )bcb;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
  __cil_tmp40 = (int )addr;
  __cil_tmp41 = __cil_tmp40 / 256;
  *((__u8 *)__cil_tmp39) = (BYTE )__cil_tmp41;
  __cil_tmp42 = 5 * 1UL;
  __cil_tmp43 = 15 + __cil_tmp42;
  __cil_tmp44 = (unsigned long )bcb;
  __cil_tmp45 = __cil_tmp44 + __cil_tmp43;
  __cil_tmp46 = (int )Media.Zone;
  __cil_tmp47 = __cil_tmp46 / 2;
  *((__u8 *)__cil_tmp45) = (__u8 )__cil_tmp47;
  __cil_tmp48 = (BYTE )1;
  __cil_tmp49 = (void *)0;
  result = ENE_SendScsiCmd(us, __cil_tmp48, __cil_tmp49, 0);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
int Ssfdc_D_ReadRedtData(struct us_data *us , BYTE *redundant )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  WORD addr ;
  BYTE *buf ;
  void *tmp___7 ;
  size_t __len ;
  void *__ret ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned char *__cil_tmp12 ;
  BYTE __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  WORD __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  WORD __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  void *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
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
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  size_t __cil_tmp63 ;
  BYTE __cil_tmp64 ;
  void *__cil_tmp65 ;
  void *__cil_tmp66 ;
  void *__cil_tmp67 ;
  void *__cil_tmp68 ;
  void *__cil_tmp69 ;
  void *__cil_tmp70 ;
  {
  {
  __cil_tmp10 = (unsigned long )us;
  __cil_tmp11 = __cil_tmp10 + 344;
  __cil_tmp12 = *((unsigned char **)__cil_tmp11);
  bcb = (struct bulk_cb_wrap *)__cil_tmp12;
  __cil_tmp13 = (BYTE )8;
  result = ENE_LoadBinCode(us, __cil_tmp13);
  }
  if (result != 0) {
    {
    printk("Load SM RW Code Fail !!\n");
    }
    return (3);
  } else {
  }
  {
  __cil_tmp14 = (int )Media.PhyBlock;
  __cil_tmp15 = (int )Ssfdc.MaxBlocks;
  __cil_tmp16 = (WORD )Media.Zone;
  __cil_tmp17 = (int )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 * __cil_tmp15;
  __cil_tmp19 = __cil_tmp18 + __cil_tmp14;
  addr = (WORD )__cil_tmp19;
  __cil_tmp20 = (int )Media.Sector;
  __cil_tmp21 = (WORD )Ssfdc.MaxSectors;
  __cil_tmp22 = (int )__cil_tmp21;
  __cil_tmp23 = (int )addr;
  __cil_tmp24 = __cil_tmp23 * __cil_tmp22;
  __cil_tmp25 = __cil_tmp24 + __cil_tmp20;
  addr = (WORD )__cil_tmp25;
  __cil_tmp26 = (void *)bcb;
  memset(__cil_tmp26, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp27 = (unsigned long )bcb;
  __cil_tmp28 = __cil_tmp27 + 8;
  *((__le32 *)__cil_tmp28) = (__le32 )16;
  __cil_tmp29 = (unsigned long )bcb;
  __cil_tmp30 = __cil_tmp29 + 12;
  *((__u8 *)__cil_tmp30) = (__u8 )128;
  __cil_tmp31 = 0 * 1UL;
  __cil_tmp32 = 15 + __cil_tmp31;
  __cil_tmp33 = (unsigned long )bcb;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  *((__u8 *)__cil_tmp34) = (__u8 )241;
  __cil_tmp35 = 1 * 1UL;
  __cil_tmp36 = 15 + __cil_tmp35;
  __cil_tmp37 = (unsigned long )bcb;
  __cil_tmp38 = __cil_tmp37 + __cil_tmp36;
  *((__u8 *)__cil_tmp38) = (__u8 )3;
  __cil_tmp39 = 4 * 1UL;
  __cil_tmp40 = 15 + __cil_tmp39;
  __cil_tmp41 = (unsigned long )bcb;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  *((__u8 *)__cil_tmp42) = (BYTE )addr;
  __cil_tmp43 = 3 * 1UL;
  __cil_tmp44 = 15 + __cil_tmp43;
  __cil_tmp45 = (unsigned long )bcb;
  __cil_tmp46 = __cil_tmp45 + __cil_tmp44;
  __cil_tmp47 = (int )addr;
  __cil_tmp48 = __cil_tmp47 / 256;
  *((__u8 *)__cil_tmp46) = (BYTE )__cil_tmp48;
  __cil_tmp49 = 2 * 1UL;
  __cil_tmp50 = 15 + __cil_tmp49;
  __cil_tmp51 = (unsigned long )bcb;
  __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
  __cil_tmp53 = (int )Media.Zone;
  __cil_tmp54 = __cil_tmp53 / 2;
  *((__u8 *)__cil_tmp52) = (__u8 )__cil_tmp54;
  __cil_tmp55 = 8 * 1UL;
  __cil_tmp56 = 15 + __cil_tmp55;
  __cil_tmp57 = (unsigned long )bcb;
  __cil_tmp58 = __cil_tmp57 + __cil_tmp56;
  *((__u8 *)__cil_tmp58) = (__u8 )0;
  __cil_tmp59 = 9 * 1UL;
  __cil_tmp60 = 15 + __cil_tmp59;
  __cil_tmp61 = (unsigned long )bcb;
  __cil_tmp62 = __cil_tmp61 + __cil_tmp60;
  *((__u8 *)__cil_tmp62) = (__u8 )1;
  __cil_tmp63 = (size_t )16;
  tmp___7 = kmalloc(__cil_tmp63, 208U);
  buf = (BYTE *)tmp___7;
  __cil_tmp64 = (BYTE )1;
  __cil_tmp65 = (void *)buf;
  result = ENE_SendScsiCmd(us, __cil_tmp64, __cil_tmp65, 0);
  __len = (size_t )16;
  }
  if (__len >= 64UL) {
    {
    __cil_tmp66 = (void *)redundant;
    __cil_tmp67 = (void *)buf;
    __ret = memcpy(__cil_tmp66, __cil_tmp67, __len);
    }
  } else {
    {
    __cil_tmp68 = (void *)redundant;
    __cil_tmp69 = (void *)buf;
    __ret = memcpy(__cil_tmp68, __cil_tmp69, __len);
    }
  }
  {
  __cil_tmp70 = (void *)buf;
  kfree(__cil_tmp70);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
int Ssfdc_D_WriteRedtData(struct us_data *us , BYTE *redundant )
{ struct bulk_cb_wrap *bcb ;
  int result ;
  WORD addr ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned char *__cil_tmp8 ;
  BYTE __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  WORD __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  WORD __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
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
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  int __cil_tmp49 ;
  int __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  BYTE *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  BYTE *__cil_tmp60 ;
  BYTE __cil_tmp61 ;
  void *__cil_tmp62 ;
  {
  {
  __cil_tmp6 = (unsigned long )us;
  __cil_tmp7 = __cil_tmp6 + 344;
  __cil_tmp8 = *((unsigned char **)__cil_tmp7);
  bcb = (struct bulk_cb_wrap *)__cil_tmp8;
  __cil_tmp9 = (BYTE )8;
  result = ENE_LoadBinCode(us, __cil_tmp9);
  }
  if (result != 0) {
    {
    printk("Load SM RW Code Fail !!\n");
    }
    return (3);
  } else {
  }
  {
  __cil_tmp10 = (int )Media.PhyBlock;
  __cil_tmp11 = (int )Ssfdc.MaxBlocks;
  __cil_tmp12 = (WORD )Media.Zone;
  __cil_tmp13 = (int )__cil_tmp12;
  __cil_tmp14 = __cil_tmp13 * __cil_tmp11;
  __cil_tmp15 = __cil_tmp14 + __cil_tmp10;
  addr = (WORD )__cil_tmp15;
  __cil_tmp16 = (int )Media.Sector;
  __cil_tmp17 = (WORD )Ssfdc.MaxSectors;
  __cil_tmp18 = (int )__cil_tmp17;
  __cil_tmp19 = (int )addr;
  __cil_tmp20 = __cil_tmp19 * __cil_tmp18;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp16;
  addr = (WORD )__cil_tmp21;
  __cil_tmp22 = (void *)bcb;
  memset(__cil_tmp22, 0, 32UL);
  *((__le32 *)bcb) = (__u32 )1128420181;
  __cil_tmp23 = (unsigned long )bcb;
  __cil_tmp24 = __cil_tmp23 + 8;
  *((__le32 *)__cil_tmp24) = (__le32 )16;
  __cil_tmp25 = (unsigned long )bcb;
  __cil_tmp26 = __cil_tmp25 + 12;
  *((__u8 *)__cil_tmp26) = (__u8 )128;
  __cil_tmp27 = 0 * 1UL;
  __cil_tmp28 = 15 + __cil_tmp27;
  __cil_tmp29 = (unsigned long )bcb;
  __cil_tmp30 = __cil_tmp29 + __cil_tmp28;
  *((__u8 *)__cil_tmp30) = (__u8 )242;
  __cil_tmp31 = 1 * 1UL;
  __cil_tmp32 = 15 + __cil_tmp31;
  __cil_tmp33 = (unsigned long )bcb;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  *((__u8 *)__cil_tmp34) = (__u8 )5;
  __cil_tmp35 = 7 * 1UL;
  __cil_tmp36 = 15 + __cil_tmp35;
  __cil_tmp37 = (unsigned long )bcb;
  __cil_tmp38 = __cil_tmp37 + __cil_tmp36;
  *((__u8 *)__cil_tmp38) = (BYTE )addr;
  __cil_tmp39 = 6 * 1UL;
  __cil_tmp40 = 15 + __cil_tmp39;
  __cil_tmp41 = (unsigned long )bcb;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  __cil_tmp43 = (int )addr;
  __cil_tmp44 = __cil_tmp43 / 256;
  *((__u8 *)__cil_tmp42) = (BYTE )__cil_tmp44;
  __cil_tmp45 = 5 * 1UL;
  __cil_tmp46 = 15 + __cil_tmp45;
  __cil_tmp47 = (unsigned long )bcb;
  __cil_tmp48 = __cil_tmp47 + __cil_tmp46;
  __cil_tmp49 = (int )Media.Zone;
  __cil_tmp50 = __cil_tmp49 / 2;
  *((__u8 *)__cil_tmp48) = (__u8 )__cil_tmp50;
  __cil_tmp51 = 8 * 1UL;
  __cil_tmp52 = 15 + __cil_tmp51;
  __cil_tmp53 = (unsigned long )bcb;
  __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
  __cil_tmp55 = redundant + 6;
  *((__u8 *)__cil_tmp54) = *__cil_tmp55;
  __cil_tmp56 = 9 * 1UL;
  __cil_tmp57 = 15 + __cil_tmp56;
  __cil_tmp58 = (unsigned long )bcb;
  __cil_tmp59 = __cil_tmp58 + __cil_tmp57;
  __cil_tmp60 = redundant + 7;
  *((__u8 *)__cil_tmp59) = *__cil_tmp60;
  __cil_tmp61 = (BYTE )1;
  __cil_tmp62 = (void *)0;
  result = ENE_SendScsiCmd(us, __cil_tmp61, __cil_tmp62, 0);
  }
  if (result != 0) {
    return (3);
  } else {
  }
  return (0);
}
}
int Ssfdc_D_CheckStatus(void)
{
  {
  return (0);
}
}
int Set_D_SsfdcModel(BYTE dcode )
{ BYTE tmp___7 ;
  {
  {
  tmp___7 = _Check_D_DevCode(dcode);
  }
  if ((int )tmp___7 == 1) {
    goto case_1;
  } else
  if ((int )tmp___7 == 2) {
    goto case_2;
  } else
  if ((int )tmp___7 == 3) {
    goto case_3;
  } else
  if ((int )tmp___7 == 4) {
    goto case_4;
  } else
  if ((int )tmp___7 == 5) {
    goto case_5;
  } else
  if ((int )tmp___7 == 6) {
    goto case_6;
  } else
  if ((int )tmp___7 == 7) {
    goto case_7;
  } else
  if ((int )tmp___7 == 8) {
    goto case_8;
  } else
  if ((int )tmp___7 == 9) {
    goto case_9;
  } else
  if ((int )tmp___7 == 10) {
    goto case_10;
  } else
  if ((int )tmp___7 == 11) {
    goto case_11;
  } else
  if ((int )tmp___7 == 12) {
    goto case_12;
  } else {
    {
    goto switch_default;
    if (0) {
      case_1:
      Ssfdc.Model = (BYTE )1;
      Ssfdc.Attribute = (BYTE )32;
      Ssfdc.MaxZones = (BYTE )1;
      Ssfdc.MaxBlocks = (WORD )256;
      Ssfdc.MaxLogBlocks = (WORD )250;
      Ssfdc.MaxSectors = (BYTE )8;
      goto switch_break;
      case_2:
      Ssfdc.Model = (BYTE )2;
      Ssfdc.Attribute = (BYTE )32;
      Ssfdc.MaxZones = (BYTE )1;
      Ssfdc.MaxBlocks = (WORD )512;
      Ssfdc.MaxLogBlocks = (WORD )500;
      Ssfdc.MaxSectors = (BYTE )8;
      goto switch_break;
      case_3:
      Ssfdc.Model = (BYTE )3;
      Ssfdc.Attribute = (BYTE )33;
      Ssfdc.MaxZones = (BYTE )1;
      Ssfdc.MaxBlocks = (WORD )512;
      Ssfdc.MaxLogBlocks = (WORD )500;
      Ssfdc.MaxSectors = (BYTE )16;
      goto switch_break;
      case_4:
      Ssfdc.Model = (BYTE )4;
      Ssfdc.Attribute = (BYTE )33;
      Ssfdc.MaxZones = (BYTE )1;
      Ssfdc.MaxBlocks = (WORD )1024;
      Ssfdc.MaxLogBlocks = (WORD )1000;
      Ssfdc.MaxSectors = (BYTE )16;
      goto switch_break;
      case_5:
      Ssfdc.Model = (BYTE )5;
      Ssfdc.Attribute = (BYTE )37;
      Ssfdc.MaxZones = (BYTE )1;
      Ssfdc.MaxBlocks = (WORD )1024;
      Ssfdc.MaxLogBlocks = (WORD )1000;
      Ssfdc.MaxSectors = (BYTE )32;
      goto switch_break;
      case_6:
      Ssfdc.Model = (BYTE )6;
      Ssfdc.Attribute = (BYTE )37;
      Ssfdc.MaxZones = (BYTE )2;
      Ssfdc.MaxBlocks = (WORD )1024;
      Ssfdc.MaxLogBlocks = (WORD )1000;
      Ssfdc.MaxSectors = (BYTE )32;
      goto switch_break;
      case_7:
      Ssfdc.Model = (BYTE )7;
      Ssfdc.Attribute = (BYTE )53;
      Ssfdc.MaxZones = (BYTE )4;
      Ssfdc.MaxBlocks = (WORD )1024;
      Ssfdc.MaxLogBlocks = (WORD )1000;
      Ssfdc.MaxSectors = (BYTE )32;
      goto switch_break;
      case_8:
      Ssfdc.Model = (BYTE )8;
      Ssfdc.Attribute = (BYTE )53;
      Ssfdc.MaxZones = (BYTE )8;
      Ssfdc.MaxBlocks = (WORD )1024;
      Ssfdc.MaxLogBlocks = (WORD )1000;
      Ssfdc.MaxSectors = (BYTE )32;
      goto switch_break;
      case_9:
      Ssfdc.Model = (BYTE )9;
      Ssfdc.Attribute = (BYTE )53;
      Ssfdc.MaxZones = (BYTE )16;
      Ssfdc.MaxBlocks = (WORD )1024;
      Ssfdc.MaxLogBlocks = (WORD )1000;
      Ssfdc.MaxSectors = (BYTE )32;
      goto switch_break;
      case_10:
      Ssfdc.Model = (BYTE )10;
      Ssfdc.Attribute = (BYTE )53;
      Ssfdc.MaxZones = (BYTE )32;
      Ssfdc.MaxBlocks = (WORD )1024;
      Ssfdc.MaxLogBlocks = (WORD )1000;
      Ssfdc.MaxSectors = (BYTE )32;
      goto switch_break;
      case_11:
      Ssfdc.Model = (BYTE )11;
      Ssfdc.Attribute = (BYTE )53;
      Ssfdc.MaxZones = (BYTE )64;
      Ssfdc.MaxBlocks = (WORD )1024;
      Ssfdc.MaxLogBlocks = (WORD )1000;
      Ssfdc.MaxSectors = (BYTE )32;
      goto switch_break;
      case_12:
      Ssfdc.Model = (BYTE )12;
      Ssfdc.Attribute = (BYTE )53;
      Ssfdc.MaxZones = (BYTE )128;
      Ssfdc.MaxBlocks = (WORD )1024;
      Ssfdc.MaxLogBlocks = (WORD )1000;
      Ssfdc.MaxSectors = (BYTE )32;
      goto switch_break;
      switch_default:
      Ssfdc.Model = (BYTE )0;
      return (65535);
    } else {
      switch_break: ;
    }
    }
  }
  return (0);
}
}
BYTE _Check_D_DevCode(BYTE dcode )
{
  {
  if ((int )dcode == 110) {
    goto case_110;
  } else
  if ((int )dcode == 232) {
    goto case_110;
  } else
  if ((int )dcode == 236) {
    goto case_110;
  } else
  if ((int )dcode == 100) {
    goto case_100;
  } else
  if ((int )dcode == 234) {
    goto case_100;
  } else
  if ((int )dcode == 107) {
    goto case_107;
  } else
  if ((int )dcode == 227) {
    goto case_107;
  } else
  if ((int )dcode == 229) {
    goto case_107;
  } else
  if ((int )dcode == 230) {
    goto case_230;
  } else
  if ((int )dcode == 115) {
    goto case_115;
  } else
  if ((int )dcode == 117) {
    goto case_117;
  } else
  if ((int )dcode == 118) {
    goto case_118;
  } else
  if ((int )dcode == 121) {
    goto case_121;
  } else
  if ((int )dcode == 113) {
    goto case_113;
  } else
  if ((int )dcode == 220) {
    goto case_220;
  } else
  if ((int )dcode == 211) {
    goto case_211;
  } else
  if ((int )dcode == 213) {
    goto case_213;
  } else {
    {
    goto switch_default;
    if (0) {
      case_110:
      case_232:
      case_236:
      return ((BYTE )1);
      case_100:
      case_234:
      return ((BYTE )2);
      case_107:
      case_227:
      case_229:
      return ((BYTE )3);
      case_230:
      return ((BYTE )4);
      case_115:
      return ((BYTE )5);
      case_117:
      return ((BYTE )6);
      case_118:
      return ((BYTE )7);
      case_121:
      return ((BYTE )8);
      case_113:
      return ((BYTE )9);
      case_220:
      return ((BYTE )10);
      case_211:
      return ((BYTE )11);
      case_213:
      return ((BYTE )12);
      switch_default:
      return ((BYTE )0);
    } else {
      switch_break: ;
    }
    }
  }
}
}
int Check_D_ReadError(BYTE *redundant )
{
  {
  return (0);
}
}
int Check_D_Correct(BYTE *buf , BYTE *redundant )
{
  {
  return (0);
}
}
int Check_D_CISdata(BYTE *buf , BYTE *redundant )
{ BYTE cis[10] ;
  int cis_len ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
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
  BYTE *__cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  BYTE *__cil_tmp37 ;
  void *__cil_tmp38 ;
  void *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  BYTE *__cil_tmp42 ;
  void *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  BYTE *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  BYTE *__cil_tmp48 ;
  void *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  BYTE *__cil_tmp52 ;
  void *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  BYTE *__cil_tmp55 ;
  void *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  BYTE *__cil_tmp59 ;
  BYTE *__cil_tmp60 ;
  void *__cil_tmp61 ;
  void *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  BYTE *__cil_tmp65 ;
  void *__cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  BYTE *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  BYTE *__cil_tmp71 ;
  BYTE *__cil_tmp72 ;
  void *__cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  BYTE *__cil_tmp76 ;
  void *__cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  {
  __cil_tmp13 = 0 * 1UL;
  __cil_tmp14 = (unsigned long )(cis) + __cil_tmp13;
  *((BYTE *)__cil_tmp14) = (BYTE )1;
  __cil_tmp15 = 1 * 1UL;
  __cil_tmp16 = (unsigned long )(cis) + __cil_tmp15;
  *((BYTE *)__cil_tmp16) = (BYTE )3;
  __cil_tmp17 = 2 * 1UL;
  __cil_tmp18 = (unsigned long )(cis) + __cil_tmp17;
  *((BYTE *)__cil_tmp18) = (BYTE )217;
  __cil_tmp19 = 3 * 1UL;
  __cil_tmp20 = (unsigned long )(cis) + __cil_tmp19;
  *((BYTE *)__cil_tmp20) = (BYTE )1;
  __cil_tmp21 = 4 * 1UL;
  __cil_tmp22 = (unsigned long )(cis) + __cil_tmp21;
  *((BYTE *)__cil_tmp22) = (BYTE )255;
  __cil_tmp23 = 5 * 1UL;
  __cil_tmp24 = (unsigned long )(cis) + __cil_tmp23;
  *((BYTE *)__cil_tmp24) = (BYTE )24;
  __cil_tmp25 = 6 * 1UL;
  __cil_tmp26 = (unsigned long )(cis) + __cil_tmp25;
  *((BYTE *)__cil_tmp26) = (BYTE )2;
  __cil_tmp27 = 7 * 1UL;
  __cil_tmp28 = (unsigned long )(cis) + __cil_tmp27;
  *((BYTE *)__cil_tmp28) = (BYTE )223;
  __cil_tmp29 = 8 * 1UL;
  __cil_tmp30 = (unsigned long )(cis) + __cil_tmp29;
  *((BYTE *)__cil_tmp30) = (BYTE )1;
  __cil_tmp31 = 9 * 1UL;
  __cil_tmp32 = (unsigned long )(cis) + __cil_tmp31;
  *((BYTE *)__cil_tmp32) = (BYTE )32;
  cis_len = (int )10UL;
  if (! IsSSFDCCompliance) {
    if (! IsXDCompliance) {
      return (0);
    } else {
    }
  } else {
  }
  {
  __cil_tmp33 = redundant + 13;
  __cil_tmp34 = (void *)__cil_tmp33;
  __cil_tmp35 = 0 * 1UL;
  __cil_tmp36 = (unsigned long )(EccBuf) + __cil_tmp35;
  __cil_tmp37 = (BYTE *)__cil_tmp36;
  __cil_tmp38 = (void *)__cil_tmp37;
  tmp___8 = memcmp(__cil_tmp34, __cil_tmp38, 3UL);
  }
  if (tmp___8) {
  } else {
    {
    __cil_tmp39 = (void *)buf;
    __cil_tmp40 = 0 * 1UL;
    __cil_tmp41 = (unsigned long )(cis) + __cil_tmp40;
    __cil_tmp42 = (BYTE *)__cil_tmp41;
    __cil_tmp43 = (void *)__cil_tmp42;
    __cil_tmp44 = (unsigned long )cis_len;
    tmp___7 = memcmp(__cil_tmp39, __cil_tmp43, __cil_tmp44);
    }
    return (tmp___7);
  }
  {
  __cil_tmp45 = redundant + 13;
  __cil_tmp46 = 0 * 1UL;
  __cil_tmp47 = (unsigned long )(EccBuf) + __cil_tmp46;
  __cil_tmp48 = (BYTE *)__cil_tmp47;
  tmp___10 = _Correct_D_SwECC(buf, __cil_tmp45, __cil_tmp48);
  }
  if (tmp___10) {
  } else {
    {
    __cil_tmp49 = (void *)buf;
    __cil_tmp50 = 0 * 1UL;
    __cil_tmp51 = (unsigned long )(cis) + __cil_tmp50;
    __cil_tmp52 = (BYTE *)__cil_tmp51;
    __cil_tmp53 = (void *)__cil_tmp52;
    __cil_tmp54 = (unsigned long )cis_len;
    tmp___9 = memcmp(__cil_tmp49, __cil_tmp53, __cil_tmp54);
    }
    return (tmp___9);
  }
  {
  buf = buf + 256;
  __cil_tmp55 = redundant + 8;
  __cil_tmp56 = (void *)__cil_tmp55;
  __cil_tmp57 = 0 * 1UL;
  __cil_tmp58 = (unsigned long )(EccBuf) + __cil_tmp57;
  __cil_tmp59 = (BYTE *)__cil_tmp58;
  __cil_tmp60 = __cil_tmp59 + 3;
  __cil_tmp61 = (void *)__cil_tmp60;
  tmp___12 = memcmp(__cil_tmp56, __cil_tmp61, 3UL);
  }
  if (tmp___12) {
  } else {
    {
    __cil_tmp62 = (void *)buf;
    __cil_tmp63 = 0 * 1UL;
    __cil_tmp64 = (unsigned long )(cis) + __cil_tmp63;
    __cil_tmp65 = (BYTE *)__cil_tmp64;
    __cil_tmp66 = (void *)__cil_tmp65;
    __cil_tmp67 = (unsigned long )cis_len;
    tmp___11 = memcmp(__cil_tmp62, __cil_tmp66, __cil_tmp67);
    }
    return (tmp___11);
  }
  {
  __cil_tmp68 = redundant + 8;
  __cil_tmp69 = 0 * 1UL;
  __cil_tmp70 = (unsigned long )(EccBuf) + __cil_tmp69;
  __cil_tmp71 = (BYTE *)__cil_tmp70;
  __cil_tmp72 = __cil_tmp71 + 3;
  tmp___14 = _Correct_D_SwECC(buf, __cil_tmp68, __cil_tmp72);
  }
  if (tmp___14) {
  } else {
    {
    __cil_tmp73 = (void *)buf;
    __cil_tmp74 = 0 * 1UL;
    __cil_tmp75 = (unsigned long )(cis) + __cil_tmp74;
    __cil_tmp76 = (BYTE *)__cil_tmp75;
    __cil_tmp77 = (void *)__cil_tmp76;
    __cil_tmp78 = (unsigned long )cis_len;
    tmp___13 = memcmp(__cil_tmp73, __cil_tmp77, __cil_tmp78);
    }
    return (tmp___13);
  }
  return (65535);
}
}
void Set_D_RightECC(BYTE *redundant )
{
  {
  return;
}
}
void calculate_ecc(BYTE *table , BYTE *data , BYTE *ecc1 , BYTE *ecc2 , BYTE *ecc3 ) ;
BYTE correct_data(BYTE *data , BYTE *eccdata , BYTE ecc1 , BYTE ecc2 , BYTE ecc3 ) ;
void _Calculate_D_SwECC(BYTE *buf , BYTE *ecc ) ;
static BYTE ecctable[256] =
  { (BYTE )0, (BYTE )85, (BYTE )86, (BYTE )3,
        (BYTE )89, (BYTE )12, (BYTE )15, (BYTE )90,
        (BYTE )90, (BYTE )15, (BYTE )12, (BYTE )89,
        (BYTE )3, (BYTE )86, (BYTE )85, (BYTE )0,
        (BYTE )101, (BYTE )48, (BYTE )51, (BYTE )102,
        (BYTE )60, (BYTE )105, (BYTE )106, (BYTE )63,
        (BYTE )63, (BYTE )106, (BYTE )105, (BYTE )60,
        (BYTE )102, (BYTE )51, (BYTE )48, (BYTE )101,
        (BYTE )102, (BYTE )51, (BYTE )48, (BYTE )101,
        (BYTE )63, (BYTE )106, (BYTE )105, (BYTE )60,
        (BYTE )60, (BYTE )105, (BYTE )106, (BYTE )63,
        (BYTE )101, (BYTE )48, (BYTE )51, (BYTE )102,
        (BYTE )3, (BYTE )86, (BYTE )85, (BYTE )0,
        (BYTE )90, (BYTE )15, (BYTE )12, (BYTE )89,
        (BYTE )89, (BYTE )12, (BYTE )15, (BYTE )90,
        (BYTE )0, (BYTE )85, (BYTE )86, (BYTE )3,
        (BYTE )105, (BYTE )60, (BYTE )63, (BYTE )106,
        (BYTE )48, (BYTE )101, (BYTE )102, (BYTE )51,
        (BYTE )51, (BYTE )102, (BYTE )101, (BYTE )48,
        (BYTE )106, (BYTE )63, (BYTE )60, (BYTE )105,
        (BYTE )12, (BYTE )89, (BYTE )90, (BYTE )15,
        (BYTE )85, (BYTE )0, (BYTE )3, (BYTE )86,
        (BYTE )86, (BYTE )3, (BYTE )0, (BYTE )85,
        (BYTE )15, (BYTE )90, (BYTE )89, (BYTE )12,
        (BYTE )15, (BYTE )90, (BYTE )89, (BYTE )12,
        (BYTE )86, (BYTE )3, (BYTE )0, (BYTE )85,
        (BYTE )85, (BYTE )0, (BYTE )3, (BYTE )86,
        (BYTE )12, (BYTE )89, (BYTE )90, (BYTE )15,
        (BYTE )106, (BYTE )63, (BYTE )60, (BYTE )105,
        (BYTE )51, (BYTE )102, (BYTE )101, (BYTE )48,
        (BYTE )48, (BYTE )101, (BYTE )102, (BYTE )51,
        (BYTE )105, (BYTE )60, (BYTE )63, (BYTE )106,
        (BYTE )106, (BYTE )63, (BYTE )60, (BYTE )105,
        (BYTE )51, (BYTE )102, (BYTE )101, (BYTE )48,
        (BYTE )48, (BYTE )101, (BYTE )102, (BYTE )51,
        (BYTE )105, (BYTE )60, (BYTE )63, (BYTE )106,
        (BYTE )15, (BYTE )90, (BYTE )89, (BYTE )12,
        (BYTE )86, (BYTE )3, (BYTE )0, (BYTE )85,
        (BYTE )85, (BYTE )0, (BYTE )3, (BYTE )86,
        (BYTE )12, (BYTE )89, (BYTE )90, (BYTE )15,
        (BYTE )12, (BYTE )89, (BYTE )90, (BYTE )15,
        (BYTE )85, (BYTE )0, (BYTE )3, (BYTE )86,
        (BYTE )86, (BYTE )3, (BYTE )0, (BYTE )85,
        (BYTE )15, (BYTE )90, (BYTE )89, (BYTE )12,
        (BYTE )105, (BYTE )60, (BYTE )63, (BYTE )106,
        (BYTE )48, (BYTE )101, (BYTE )102, (BYTE )51,
        (BYTE )51, (BYTE )102, (BYTE )101, (BYTE )48,
        (BYTE )106, (BYTE )63, (BYTE )60, (BYTE )105,
        (BYTE )3, (BYTE )86, (BYTE )85, (BYTE )0,
        (BYTE )90, (BYTE )15, (BYTE )12, (BYTE )89,
        (BYTE )89, (BYTE )12, (BYTE )15, (BYTE )90,
        (BYTE )0, (BYTE )85, (BYTE )86, (BYTE )3,
        (BYTE )102, (BYTE )51, (BYTE )48, (BYTE )101,
        (BYTE )63, (BYTE )106, (BYTE )105, (BYTE )60,
        (BYTE )60, (BYTE )105, (BYTE )106, (BYTE )63,
        (BYTE )101, (BYTE )48, (BYTE )51, (BYTE )102,
        (BYTE )101, (BYTE )48, (BYTE )51, (BYTE )102,
        (BYTE )60, (BYTE )105, (BYTE )106, (BYTE )63,
        (BYTE )63, (BYTE )106, (BYTE )105, (BYTE )60,
        (BYTE )102, (BYTE )51, (BYTE )48, (BYTE )101,
        (BYTE )0, (BYTE )85, (BYTE )86, (BYTE )3,
        (BYTE )89, (BYTE )12, (BYTE )15, (BYTE )90,
        (BYTE )90, (BYTE )15, (BYTE )12, (BYTE )89,
        (BYTE )3, (BYTE )86, (BYTE )85, (BYTE )0};
static void trans_result(BYTE reg2 , BYTE reg3 , BYTE *ecc1 , BYTE *ecc2 ) ;
static void trans_result(BYTE reg2 , BYTE reg3 , BYTE *ecc1 , BYTE *ecc2 )
{ BYTE a ;
  BYTE b ;
  BYTE i ;
  BYTE tmp___7 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  BYTE __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  BYTE __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  BYTE __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  BYTE __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  int __cil_tmp50 ;
  int __cil_tmp51 ;
  int __cil_tmp52 ;
  int __cil_tmp53 ;
  int __cil_tmp54 ;
  {
  a = (BYTE )128;
  b = (BYTE )128;
  tmp___7 = (BYTE )0;
  *ecc2 = tmp___7;
  *ecc1 = tmp___7;
  i = (BYTE )0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp9 = (int )i;
    if (__cil_tmp9 < 4) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp10 = (int )a;
    __cil_tmp11 = (int )reg3;
    __cil_tmp12 = __cil_tmp11 & __cil_tmp10;
    if (__cil_tmp12 != 0) {
      __cil_tmp13 = (int )b;
      __cil_tmp14 = *ecc1;
      __cil_tmp15 = (int )__cil_tmp14;
      __cil_tmp16 = __cil_tmp15 | __cil_tmp13;
      *ecc1 = (BYTE )__cil_tmp16;
    } else {
    }
    }
    __cil_tmp17 = (int )b;
    __cil_tmp18 = __cil_tmp17 >> 1;
    b = (BYTE )__cil_tmp18;
    {
    __cil_tmp19 = (int )a;
    __cil_tmp20 = (int )reg2;
    __cil_tmp21 = __cil_tmp20 & __cil_tmp19;
    if (__cil_tmp21 != 0) {
      __cil_tmp22 = (int )b;
      __cil_tmp23 = *ecc1;
      __cil_tmp24 = (int )__cil_tmp23;
      __cil_tmp25 = __cil_tmp24 | __cil_tmp22;
      *ecc1 = (BYTE )__cil_tmp25;
    } else {
    }
    }
    __cil_tmp26 = (int )b;
    __cil_tmp27 = __cil_tmp26 >> 1;
    b = (BYTE )__cil_tmp27;
    __cil_tmp28 = (int )a;
    __cil_tmp29 = __cil_tmp28 >> 1;
    a = (BYTE )__cil_tmp29;
    __cil_tmp30 = (int )i;
    __cil_tmp31 = __cil_tmp30 + 1;
    i = (BYTE )__cil_tmp31;
  }
  while_break: ;
  }
  b = (BYTE )128;
  i = (BYTE )0;
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp32 = (int )i;
    if (__cil_tmp32 < 4) {
    } else {
      goto while_break___0;
    }
    }
    {
    __cil_tmp33 = (int )a;
    __cil_tmp34 = (int )reg3;
    __cil_tmp35 = __cil_tmp34 & __cil_tmp33;
    if (__cil_tmp35 != 0) {
      __cil_tmp36 = (int )b;
      __cil_tmp37 = *ecc2;
      __cil_tmp38 = (int )__cil_tmp37;
      __cil_tmp39 = __cil_tmp38 | __cil_tmp36;
      *ecc2 = (BYTE )__cil_tmp39;
    } else {
    }
    }
    __cil_tmp40 = (int )b;
    __cil_tmp41 = __cil_tmp40 >> 1;
    b = (BYTE )__cil_tmp41;
    {
    __cil_tmp42 = (int )a;
    __cil_tmp43 = (int )reg2;
    __cil_tmp44 = __cil_tmp43 & __cil_tmp42;
    if (__cil_tmp44 != 0) {
      __cil_tmp45 = (int )b;
      __cil_tmp46 = *ecc2;
      __cil_tmp47 = (int )__cil_tmp46;
      __cil_tmp48 = __cil_tmp47 | __cil_tmp45;
      *ecc2 = (BYTE )__cil_tmp48;
    } else {
    }
    }
    __cil_tmp49 = (int )b;
    __cil_tmp50 = __cil_tmp49 >> 1;
    b = (BYTE )__cil_tmp50;
    __cil_tmp51 = (int )a;
    __cil_tmp52 = __cil_tmp51 >> 1;
    a = (BYTE )__cil_tmp52;
    __cil_tmp53 = (int )i;
    __cil_tmp54 = __cil_tmp53 + 1;
    i = (BYTE )__cil_tmp54;
  }
  while_break___0: ;
  }
  return;
}
}
void calculate_ecc(BYTE *table , BYTE *data , BYTE *ecc1 , BYTE *ecc2 , BYTE *ecc3 )
{ DWORD i ;
  BYTE a ;
  BYTE reg1 ;
  BYTE reg2 ;
  BYTE reg3 ;
  BYTE *__cil_tmp11 ;
  BYTE __cil_tmp12 ;
  BYTE *__cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  BYTE __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  BYTE __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  BYTE __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  BYTE __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  {
  reg3 = (BYTE )0;
  reg2 = reg3;
  reg1 = reg2;
  i = (DWORD )0;
  {
  while (1) {
    while_continue: ;
    if (i < 256U) {
    } else {
      goto while_break;
    }
    __cil_tmp11 = data + i;
    __cil_tmp12 = *__cil_tmp11;
    __cil_tmp13 = table + __cil_tmp12;
    a = *__cil_tmp13;
    __cil_tmp14 = (int )a;
    __cil_tmp15 = __cil_tmp14 & 63;
    __cil_tmp16 = (int )reg1;
    __cil_tmp17 = __cil_tmp16 ^ __cil_tmp15;
    reg1 = (BYTE )__cil_tmp17;
    {
    __cil_tmp18 = (int )a;
    __cil_tmp19 = __cil_tmp18 & 64;
    if (__cil_tmp19 != 0) {
      __cil_tmp20 = (BYTE )i;
      __cil_tmp21 = (int )__cil_tmp20;
      __cil_tmp22 = (int )reg3;
      __cil_tmp23 = __cil_tmp22 ^ __cil_tmp21;
      reg3 = (BYTE )__cil_tmp23;
      __cil_tmp24 = (BYTE )i;
      __cil_tmp25 = (int )__cil_tmp24;
      __cil_tmp26 = ~ __cil_tmp25;
      __cil_tmp27 = (int )reg2;
      __cil_tmp28 = __cil_tmp27 ^ __cil_tmp26;
      reg2 = (BYTE )__cil_tmp28;
    } else {
    }
    }
    i = i + 1U;
  }
  while_break: ;
  }
  {
  trans_result(reg2, reg3, ecc1, ecc2);
  __cil_tmp29 = *ecc1;
  __cil_tmp30 = (int )__cil_tmp29;
  __cil_tmp31 = ~ __cil_tmp30;
  *ecc1 = (BYTE )__cil_tmp31;
  __cil_tmp32 = *ecc2;
  __cil_tmp33 = (int )__cil_tmp32;
  __cil_tmp34 = ~ __cil_tmp33;
  *ecc2 = (BYTE )__cil_tmp34;
  __cil_tmp35 = (int )reg1;
  __cil_tmp36 = ~ __cil_tmp35;
  __cil_tmp37 = __cil_tmp36 << 2;
  __cil_tmp38 = __cil_tmp37 | 3;
  *ecc3 = (BYTE )__cil_tmp38;
  }
  return;
}
}
BYTE correct_data(BYTE *data , BYTE *eccdata , BYTE ecc1 , BYTE ecc2 , BYTE ecc3 )
{ DWORD l ;
  DWORD d ;
  DWORD i ;
  BYTE d1 ;
  BYTE d2 ;
  BYTE d3 ;
  BYTE a ;
  BYTE add ;
  BYTE b ;
  BYTE bit ;
  BYTE *__cil_tmp16 ;
  BYTE __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  BYTE *__cil_tmp21 ;
  BYTE __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  BYTE *__cil_tmp26 ;
  BYTE __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  DWORD __cil_tmp31 ;
  DWORD __cil_tmp32 ;
  DWORD __cil_tmp33 ;
  DWORD __cil_tmp34 ;
  DWORD __cil_tmp35 ;
  DWORD __cil_tmp36 ;
  DWORD __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  long __cil_tmp39 ;
  long __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  int __cil_tmp48 ;
  int __cil_tmp49 ;
  int __cil_tmp50 ;
  int __cil_tmp51 ;
  int __cil_tmp52 ;
  BYTE *__cil_tmp53 ;
  int __cil_tmp54 ;
  int __cil_tmp55 ;
  int __cil_tmp56 ;
  BYTE *__cil_tmp57 ;
  BYTE __cil_tmp58 ;
  int __cil_tmp59 ;
  int __cil_tmp60 ;
  long __cil_tmp61 ;
  long __cil_tmp62 ;
  BYTE *__cil_tmp63 ;
  BYTE *__cil_tmp64 ;
  BYTE *__cil_tmp65 ;
  {
  __cil_tmp16 = eccdata + 1;
  __cil_tmp17 = *__cil_tmp16;
  __cil_tmp18 = (int )__cil_tmp17;
  __cil_tmp19 = (int )ecc1;
  __cil_tmp20 = __cil_tmp19 ^ __cil_tmp18;
  d1 = (BYTE )__cil_tmp20;
  __cil_tmp21 = eccdata + 0;
  __cil_tmp22 = *__cil_tmp21;
  __cil_tmp23 = (int )__cil_tmp22;
  __cil_tmp24 = (int )ecc2;
  __cil_tmp25 = __cil_tmp24 ^ __cil_tmp23;
  d2 = (BYTE )__cil_tmp25;
  __cil_tmp26 = eccdata + 2;
  __cil_tmp27 = *__cil_tmp26;
  __cil_tmp28 = (int )__cil_tmp27;
  __cil_tmp29 = (int )ecc3;
  __cil_tmp30 = __cil_tmp29 ^ __cil_tmp28;
  d3 = (BYTE )__cil_tmp30;
  __cil_tmp31 = (DWORD )d3;
  __cil_tmp32 = (DWORD )d2;
  __cil_tmp33 = __cil_tmp32 << 8;
  __cil_tmp34 = (DWORD )d1;
  __cil_tmp35 = __cil_tmp34 << 16;
  __cil_tmp36 = __cil_tmp35 + __cil_tmp33;
  d = __cil_tmp36 + __cil_tmp31;
  if (d == 0U) {
    return ((BYTE )0);
  } else {
  }
  {
  __cil_tmp37 = d >> 1;
  __cil_tmp38 = d ^ __cil_tmp37;
  __cil_tmp39 = (long )__cil_tmp38;
  __cil_tmp40 = __cil_tmp39 & 5592404L;
  if (__cil_tmp40 == 5592404L) {
    l = (DWORD )8388608L;
    add = (BYTE )0;
    a = (BYTE )128;
    i = (DWORD )0;
    {
    while (1) {
      while_continue: ;
      if (i < 8U) {
      } else {
        goto while_break;
      }
      {
      __cil_tmp41 = d & l;
      if (__cil_tmp41 != 0U) {
        __cil_tmp42 = (int )a;
        __cil_tmp43 = (int )add;
        __cil_tmp44 = __cil_tmp43 | __cil_tmp42;
        add = (BYTE )__cil_tmp44;
      } else {
      }
      }
      l = l >> 2;
      __cil_tmp45 = (int )a;
      __cil_tmp46 = __cil_tmp45 >> 1;
      a = (BYTE )__cil_tmp46;
      i = i + 1U;
    }
    while_break: ;
    }
    bit = (BYTE )0;
    b = (BYTE )4;
    i = (DWORD )0;
    {
    while (1) {
      while_continue___0: ;
      if (i < 3U) {
      } else {
        goto while_break___0;
      }
      {
      __cil_tmp47 = d & l;
      if (__cil_tmp47 != 0U) {
        __cil_tmp48 = (int )b;
        __cil_tmp49 = (int )bit;
        __cil_tmp50 = __cil_tmp49 | __cil_tmp48;
        bit = (BYTE )__cil_tmp50;
      } else {
      }
      }
      l = l >> 2;
      __cil_tmp51 = (int )b;
      __cil_tmp52 = __cil_tmp51 >> 1;
      b = (BYTE )__cil_tmp52;
      i = i + 1U;
    }
    while_break___0: ;
    }
    b = (BYTE )1;
    __cil_tmp53 = data + add;
    __cil_tmp54 = (int )bit;
    __cil_tmp55 = (int )b;
    __cil_tmp56 = __cil_tmp55 << __cil_tmp54;
    __cil_tmp57 = data + add;
    __cil_tmp58 = *__cil_tmp57;
    __cil_tmp59 = (int )__cil_tmp58;
    __cil_tmp60 = __cil_tmp59 ^ __cil_tmp56;
    *__cil_tmp53 = (BYTE )__cil_tmp60;
    return ((BYTE )1);
  } else {
  }
  }
  i = (DWORD )0;
  __cil_tmp61 = (long )d;
  __cil_tmp62 = __cil_tmp61 & 16777215L;
  d = (DWORD )__cil_tmp62;
  {
  while (1) {
    while_continue___1: ;
    if (d) {
    } else {
      goto while_break___1;
    }
    if (d & 1U) {
      i = i + 1U;
    } else {
    }
    d = d >> 1;
  }
  while_break___1: ;
  }
  if (i == 1U) {
    __cil_tmp63 = eccdata + 1;
    *__cil_tmp63 = ecc1;
    __cil_tmp64 = eccdata + 0;
    *__cil_tmp64 = ecc2;
    __cil_tmp65 = eccdata + 2;
    *__cil_tmp65 = ecc3;
    return ((BYTE )2);
  } else {
  }
  return ((BYTE )3);
}
}
int _Correct_D_SwECC(BYTE *buf , BYTE *redundant_ecc , BYTE *calculate_ecc___0 )
{ DWORD err ;
  BYTE tmp___7 ;
  size_t __len ;
  void *__ret ;
  BYTE *__cil_tmp8 ;
  BYTE __cil_tmp9 ;
  BYTE __cil_tmp10 ;
  BYTE *__cil_tmp11 ;
  BYTE __cil_tmp12 ;
  void *__cil_tmp13 ;
  void *__cil_tmp14 ;
  void *__cil_tmp15 ;
  void *__cil_tmp16 ;
  {
  {
  __cil_tmp8 = calculate_ecc___0 + 1;
  __cil_tmp9 = *__cil_tmp8;
  __cil_tmp10 = *calculate_ecc___0;
  __cil_tmp11 = calculate_ecc___0 + 2;
  __cil_tmp12 = *__cil_tmp11;
  tmp___7 = correct_data(buf, redundant_ecc, __cil_tmp9, __cil_tmp10, __cil_tmp12);
  err = (DWORD )tmp___7;
  }
  if (err == 1U) {
    __len = (size_t )3;
    if (__len >= 64UL) {
      {
      __cil_tmp13 = (void *)calculate_ecc___0;
      __cil_tmp14 = (void *)redundant_ecc;
      __ret = memcpy(__cil_tmp13, __cil_tmp14, __len);
      }
    } else {
      {
      __cil_tmp15 = (void *)calculate_ecc___0;
      __cil_tmp16 = (void *)redundant_ecc;
      __ret = memcpy(__cil_tmp15, __cil_tmp16, __len);
      }
    }
  } else {
  }
  if (err == 0U) {
    return (0);
  } else
  if (err == 1U) {
    return (0);
  } else
  if (err == 2U) {
    return (0);
  } else {
  }
  return (-1);
}
}
void _Calculate_D_SwECC(BYTE *buf , BYTE *ecc )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  BYTE *__cil_tmp5 ;
  BYTE *__cil_tmp6 ;
  BYTE *__cil_tmp7 ;
  BYTE *__cil_tmp8 ;
  {
  {
  __cil_tmp3 = 0 * 1UL;
  __cil_tmp4 = (unsigned long )(ecctable) + __cil_tmp3;
  __cil_tmp5 = (BYTE *)__cil_tmp4;
  __cil_tmp6 = ecc + 1;
  __cil_tmp7 = ecc + 0;
  __cil_tmp8 = ecc + 2;
  calculate_ecc(__cil_tmp5, buf, __cil_tmp6, __cil_tmp7, __cil_tmp8);
  }
  return;
}
}
void ___udelay(unsigned long arg0) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, char *arg1, struct lock_class_key *arg2) {
  return;
}
void __might_sleep(char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, char *arg1, struct lock_class_key *arg2) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __refrigerator(bool arg0) {
  return __VERIFIER_nondet_bool();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void blk_queue_max_hw_sectors(struct request_queue *arg0, unsigned int arg1) {
  return;
}
void blk_queue_update_dma_alignment(struct request_queue *arg0, int arg1) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
void complete_and_exit(struct completion *arg0, long arg1) {
  return;
}
void *dev_get_drvdata(struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool freezing_slow_path(struct task_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
struct task_struct *kthread_create_on_node(int (*arg0)(void *data), void *arg1, int arg2, char *arg3, ...) {
  return ldv_malloc(sizeof(struct task_struct));
}
int __VERIFIER_nondet_int(void);
int kthread_should_stop() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_cmd_get_serial(struct Scsi_Host *arg0, struct scsi_cmnd *arg1) {
  return;
}
void scsi_eh_prep_cmnd(struct scsi_cmnd *arg0, struct scsi_eh_save *arg1, unsigned char *arg2, int arg3, unsigned int arg4) {
  return;
}
void scsi_eh_restore_cmnd(struct scsi_cmnd *arg0, struct scsi_eh_save *arg1) {
  return;
}
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
void scsi_host_put(struct Scsi_Host *arg0) {
  return;
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_report_bus_reset(struct Scsi_Host *arg0, int arg1) {
  return;
}
void scsi_report_device_reset(struct Scsi_Host *arg0, int arg1, int arg2) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool set_freezable() {
  return __VERIFIER_nondet_bool();
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return ldv_malloc(0UL);
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_lock_device_for_reset(struct usb_device *arg0, struct usb_interface *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_reset_device(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
void usb_reset_endpoint(struct usb_device *arg0, unsigned int arg1) {
  return;
}
void usb_sg_cancel(struct usb_sg_request *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_sg_init(struct usb_sg_request *arg0, struct usb_device *arg1, unsigned int arg2, unsigned int arg3, struct scatterlist *arg4, int arg5, size_t arg6, gfp_t arg7) {
  return __VERIFIER_nondet_int();
}
void usb_sg_wait(struct usb_sg_request *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_unlink_urb(struct urb *arg0) {
  return __VERIFIER_nondet_int();
}
void wait_for_completion(struct completion *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wait_for_completion_interruptible(struct completion *arg0) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int wait_for_completion_interruptible_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int autoremove_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void * arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
