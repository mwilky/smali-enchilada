.class final Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityMetricsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WindowingModeTransitionInfoSnapshot"
.end annotation


# instance fields
.field private final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field private final bindApplicationDelayMs:I

.field private final launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

.field private final launchedActivityLaunchToken:Ljava/lang/String;

.field private final launchedActivityLaunchedFromPackage:Ljava/lang/String;

.field private final launchedActivityName:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final processName:Ljava/lang/String;

.field private final processRecord:Lcom/android/server/am/ProcessRecord;

.field private final reason:I

.field private final startingWindowDelayMs:I

.field final synthetic this$0:Lcom/android/server/am/ActivityMetricsLogger;

.field private final type:I

.field private final windowsDrawnDelayMs:I


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->this$0:Lcom/android/server/am/ActivityMetricsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->requiredAbi:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->access$600(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/ActivityMetricsLogger;->access$700(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/am/ProcessRecord;

    invoke-static {p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityMetricsLogger$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->reason:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->startingWindowDelayMs:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->bindApplicationDelayMs:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/am/ProcessRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processRecord:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->processName:Ljava/lang/String;

    return-object v0
.end method
