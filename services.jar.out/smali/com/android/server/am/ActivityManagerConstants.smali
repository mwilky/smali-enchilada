.class final Lcom/android/server/am/ActivityManagerConstants;
.super Landroid/database/ContentObserver;
.source "ActivityManagerConstants.java"


# static fields
.field private static final DEFAULT_BACKGROUND_SETTLE_TIME:J = 0xea60L

.field private static final DEFAULT_BG_START_TIMEOUT:J = 0x3a98L

.field private static final DEFAULT_BOUND_SERVICE_CRASH_MAX_RETRY:I = 0x10

.field private static final DEFAULT_BOUND_SERVICE_CRASH_RESTART_DURATION:J = 0x1b7740L

.field private static final DEFAULT_CONTENT_PROVIDER_RETAIN_TIME:J = 0x4e20L

.field private static final DEFAULT_FGSERVICE_MIN_REPORT_TIME:J = 0xbb8L

.field private static final DEFAULT_FGSERVICE_MIN_SHOWN_TIME:J = 0x7d0L

.field private static final DEFAULT_FGSERVICE_SCREEN_ON_AFTER_TIME:J = 0x1388L

.field private static final DEFAULT_FGSERVICE_SCREEN_ON_BEFORE_TIME:J = 0x3e8L

.field private static final DEFAULT_FULL_PSS_LOWERED_INTERVAL:J = 0x493e0L

.field private static final DEFAULT_FULL_PSS_MIN_INTERVAL:J = 0x124f80L

.field private static final DEFAULT_GC_MIN_INTERVAL:J = 0xea60L

.field private static final DEFAULT_GC_TIMEOUT:J = 0x1388L

.field private static final DEFAULT_MAX_CACHED_PROCESSES:I

.field private static final DEFAULT_MAX_SERVICE_INACTIVITY:J = 0x1b7740L

.field private static final DEFAULT_POWER_CHECK_INTERVAL:J

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_1:I = 0x19

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_2:I = 0x19

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_3:I = 0xa

.field private static final DEFAULT_POWER_CHECK_MAX_CPU_4:I = 0x2

.field private static final DEFAULT_PROCESS_START_ASYNC:Z = true

.field private static final DEFAULT_SERVICE_MIN_RESTART_TIME_BETWEEN:J = 0x2710L

.field private static final DEFAULT_SERVICE_RESET_RUN_DURATION:J = 0xea60L

.field private static final DEFAULT_SERVICE_RESTART_DURATION:J = 0x3e8L

.field private static final DEFAULT_SERVICE_RESTART_DURATION_FACTOR:I = 0x4

.field private static final DEFAULT_SERVICE_USAGE_INTERACTION_TIME:J = 0x1b7740L

.field private static final DEFAULT_USAGE_STATS_INTERACTION_INTERVAL:J = 0x6ddd00L

.field static final EMPTY_APP_PERCENT:I

.field private static final KEY_BACKGROUND_SETTLE_TIME:Ljava/lang/String; = "background_settle_time"

.field static final KEY_BG_START_TIMEOUT:Ljava/lang/String; = "service_bg_start_timeout"

.field static final KEY_BOUND_SERVICE_CRASH_MAX_RETRY:Ljava/lang/String; = "service_crash_max_retry"

.field static final KEY_BOUND_SERVICE_CRASH_RESTART_DURATION:Ljava/lang/String; = "service_crash_restart_duration"

.field private static final KEY_CONTENT_PROVIDER_RETAIN_TIME:Ljava/lang/String; = "content_provider_retain_time"

.field private static final KEY_FGSERVICE_MIN_REPORT_TIME:Ljava/lang/String; = "fgservice_min_report_time"

.field private static final KEY_FGSERVICE_MIN_SHOWN_TIME:Ljava/lang/String; = "fgservice_min_shown_time"

.field private static final KEY_FGSERVICE_SCREEN_ON_AFTER_TIME:Ljava/lang/String; = "fgservice_screen_on_after_time"

.field private static final KEY_FGSERVICE_SCREEN_ON_BEFORE_TIME:Ljava/lang/String; = "fgservice_screen_on_before_time"

.field private static final KEY_FULL_PSS_LOWERED_INTERVAL:Ljava/lang/String; = "full_pss_lowered_interval"

.field private static final KEY_FULL_PSS_MIN_INTERVAL:Ljava/lang/String; = "full_pss_min_interval"

.field private static final KEY_GC_MIN_INTERVAL:Ljava/lang/String; = "gc_min_interval"

.field private static final KEY_GC_TIMEOUT:Ljava/lang/String; = "gc_timeout"

.field private static final KEY_MAX_CACHED_PROCESSES:Ljava/lang/String; = "max_cached_processes"

.field static final KEY_MAX_SERVICE_INACTIVITY:Ljava/lang/String; = "service_max_inactivity"

.field private static final KEY_POWER_CHECK_INTERVAL:Ljava/lang/String; = "power_check_interval"

.field private static final KEY_POWER_CHECK_MAX_CPU_1:Ljava/lang/String; = "power_check_max_cpu_1"

.field private static final KEY_POWER_CHECK_MAX_CPU_2:Ljava/lang/String; = "power_check_max_cpu_2"

.field private static final KEY_POWER_CHECK_MAX_CPU_3:Ljava/lang/String; = "power_check_max_cpu_3"

.field private static final KEY_POWER_CHECK_MAX_CPU_4:Ljava/lang/String; = "power_check_max_cpu_4"

.field static final KEY_PROCESS_START_ASYNC:Ljava/lang/String; = "process_start_async"

.field static final KEY_SERVICE_MIN_RESTART_TIME_BETWEEN:Ljava/lang/String; = "service_min_restart_time_between"

.field static final KEY_SERVICE_RESET_RUN_DURATION:Ljava/lang/String; = "service_reset_run_duration"

.field static final KEY_SERVICE_RESTART_DURATION:Ljava/lang/String; = "service_restart_duration"

.field static final KEY_SERVICE_RESTART_DURATION_FACTOR:Ljava/lang/String; = "service_restart_duration_factor"

.field private static final KEY_SERVICE_USAGE_INTERACTION_TIME:Ljava/lang/String; = "service_usage_interaction_time"

.field private static final KEY_USAGE_STATS_INTERACTION_INTERVAL:Ljava/lang/String; = "usage_stats_interaction_interval"

.field static final TRIM_CACHE_PERCENT:I

.field static final TRIM_EMPTY_PERCENT:I

.field static final TRIM_ENABLE_MEMORY:J

.field static final USE_TRIM_SETTINGS:Z


# instance fields
.field public BACKGROUND_SETTLE_TIME:J

.field public BG_START_TIMEOUT:J

.field public BOUND_SERVICE_CRASH_RESTART_DURATION:J

.field public BOUND_SERVICE_MAX_CRASH_RETRY:J

.field CONTENT_PROVIDER_RETAIN_TIME:J

.field public CUR_MAX_CACHED_PROCESSES:I

.field public CUR_MAX_EMPTY_PROCESSES:I

.field public CUR_TRIM_CACHED_PROCESSES:I

.field public CUR_TRIM_EMPTY_PROCESSES:I

.field public FGSERVICE_MIN_REPORT_TIME:J

.field public FGSERVICE_MIN_SHOWN_TIME:J

.field public FGSERVICE_SCREEN_ON_AFTER_TIME:J

.field public FGSERVICE_SCREEN_ON_BEFORE_TIME:J

.field public FLAG_PROCESS_START_ASYNC:Z

.field FULL_PSS_LOWERED_INTERVAL:J

.field FULL_PSS_MIN_INTERVAL:J

.field GC_MIN_INTERVAL:J

.field GC_TIMEOUT:J

.field public MAX_CACHED_PROCESSES:I

.field public MAX_SERVICE_INACTIVITY:J

.field POWER_CHECK_INTERVAL:J

.field POWER_CHECK_MAX_CPU_1:I

.field POWER_CHECK_MAX_CPU_2:I

.field POWER_CHECK_MAX_CPU_3:I

.field POWER_CHECK_MAX_CPU_4:I

.field public SERVICE_MIN_RESTART_TIME_BETWEEN:J

.field public SERVICE_RESET_RUN_DURATION:J

.field public SERVICE_RESTART_DURATION:J

.field public SERVICE_RESTART_DURATION_FACTOR:I

.field SERVICE_USAGE_INTERACTION_TIME:J

.field USAGE_STATS_INTERACTION_INTERVAL:J

.field private mOverrideMaxCachedProcesses:I

.field private final mParser:Landroid/util/KeyValueListParser;

.field private mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.vendor.qti.sys.fw.bg_apps_limit"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    sput-wide v2, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    const-string/jumbo v0, "ro.vendor.qti.sys.fw.use_trim_settings"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    const-string/jumbo v0, "ro.vendor.qti.sys.fw.empty_app_percent"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_APP_PERCENT:I

    const-string/jumbo v0, "ro.vendor.qti.sys.fw.trim_empty_percent"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_EMPTY_PERCENT:I

    const-string/jumbo v0, "ro.vendor.qti.sys.fw.trim_cache_percent"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_CACHE_PERCENT:I

    const-string/jumbo v0, "ro.vendor.qti.sys.fw.trim_enable_memory"

    const-wide/32 v1, 0x40000000

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_ENABLE_MEMORY:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V
    .locals 8

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    const-wide/16 v2, 0x7d0

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    const-wide/16 v2, 0xbb8

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    const-wide/16 v4, 0x1388

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    const-wide/16 v6, 0x4e20

    iput-wide v6, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    const-wide/32 v4, 0x124f80

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    const-wide/32 v4, 0x493e0

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    sget-wide v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    const/16 v4, 0x19

    iput v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    iput v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    const-wide/32 v4, 0x1b7740

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    const-wide/32 v6, 0x6ddd00

    iput-wide v6, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    iput-wide v4, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    const-wide/16 v0, 0x10

    iput-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public static allowTrim()Z
    .locals 4

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/ActivityManagerConstants;->TRIM_ENABLE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_APP_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0

    :cond_0
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeTrimCachedApps(II)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_CACHE_PERCENT:I

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    return v0

    :cond_0
    sub-int v0, p1, p0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static computeTrimEmptyApps(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/am/ActivityManagerConstants;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerConstants;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/am/ActivityManagerConstants;->TRIM_EMPTY_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0

    :cond_0
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private updateConstants()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "activity_manager_constants"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerConstants;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "ActivityManagerConstants"

    const-string v4, "Bad activity manager config settings"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "max_cached_processes"

    sget v4, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "background_settle_time"

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fgservice_min_shown_time"

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fgservice_min_report_time"

    const-wide/16 v6, 0xbb8

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fgservice_screen_on_before_time"

    const-wide/16 v6, 0x3e8

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "fgservice_screen_on_after_time"

    const-wide/16 v8, 0x1388

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "content_provider_retain_time"

    const-wide/16 v10, 0x4e20

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "gc_timeout"

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "gc_min_interval"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "full_pss_min_interval"

    const-wide/32 v8, 0x124f80

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string v3, "full_pss_lowered_interval"

    const-wide/32 v8, 0x493e0

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_interval"

    sget-wide v8, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_POWER_CHECK_INTERVAL:J

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_max_cpu_1"

    const/16 v8, 0x19

    invoke-virtual {v2, v3, v8}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_max_cpu_2"

    invoke-virtual {v2, v3, v8}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_max_cpu_3"

    const/16 v8, 0xa

    invoke-virtual {v2, v3, v8}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "power_check_max_cpu_4"

    const/4 v8, 0x2

    invoke-virtual {v2, v3, v8}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_usage_interaction_time"

    const-wide/32 v8, 0x1b7740

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "usage_stats_interaction_interval"

    const-wide/32 v10, 0x6ddd00

    invoke-virtual {v2, v3, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_restart_duration"

    invoke-virtual {v2, v3, v6, v7}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_reset_run_duration"

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_restart_duration_factor"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_min_restart_time_between"

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_max_inactivity"

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_bg_start_timeout"

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v3, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_crash_restart_duration"

    invoke-virtual {v2, v3, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_CRASH_RESTART_DURATION:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "service_crash_max_retry"

    const/16 v4, 0x10

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/server/am/ActivityManagerConstants;->BOUND_SERVICE_MAX_CRASH_RETRY:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerConstants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v3, "process_start_async"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private updateMaxCachedProcesses()V
    .locals 2

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    :goto_0
    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeEmptyProcessLimit(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimEmptyApps(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    iget v1, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerConstants;->computeTrimCachedApps(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "ACTIVITY MANAGER SETTINGS (dumpsys activity settings) activity_manager_constants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_cached_processes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "background_settle_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgservice_min_shown_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_SHOWN_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgservice_min_report_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_MIN_REPORT_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgservice_screen_on_before_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_BEFORE_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "fgservice_screen_on_after_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FGSERVICE_SCREEN_ON_AFTER_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "content_provider_retain_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "gc_timeout"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_TIMEOUT:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "gc_min_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->GC_MIN_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "full_pss_min_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_MIN_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "full_pss_lowered_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->FULL_PSS_LOWERED_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_max_cpu_1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_1:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_max_cpu_2"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_2:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_max_cpu_3"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_3:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "power_check_max_cpu_4"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_MAX_CPU_4:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_usage_interaction_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "usage_stats_interaction_interval"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_restart_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_reset_run_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESET_RUN_DURATION:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_restart_duration_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_RESTART_DURATION_FACTOR:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_min_restart_time_between"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_MIN_RESTART_TIME_BETWEEN:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_max_inactivity"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service_bg_start_timeout"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/ActivityManagerConstants;->BG_START_TIMEOUT:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    if-ltz v0, :cond_0

    const-string v0, "  mOverrideMaxCachedProcesses="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_0
    const-string v0, "  CUR_MAX_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_MAX_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_TRIM_EMPTY_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  CUR_TRIM_CACHED_PROCESSES="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_CACHED_PROCESSES:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public getOverrideMaxCachedProcesses()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    return-void
.end method

.method public setOverrideMaxCachedProcesses(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mOverrideMaxCachedProcesses:I

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateMaxCachedProcesses()V

    return-void
.end method

.method public start(Landroid/content/ContentResolver;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerConstants;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "activity_manager_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerConstants;->updateConstants()V

    return-void
.end method
