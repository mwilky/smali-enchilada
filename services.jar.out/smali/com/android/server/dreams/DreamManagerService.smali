.class public final Lcom/android/server/dreams/DreamManagerService;
.super Lcom/android/server/SystemService;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/dreams/DreamManagerService$LocalService;,
        Lcom/android/server/dreams/DreamManagerService$BinderService;,
        Lcom/android/server/dreams/DreamManagerService$DreamHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DreamManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/server/dreams/DreamController;

.field private final mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

.field private mCurrentDreamCanDoze:Z

.field private mCurrentDreamDozeScreenBrightness:I

.field private mCurrentDreamDozeScreenState:I

.field private mCurrentDreamIsDozing:Z

.field private mCurrentDreamIsTest:Z

.field private mCurrentDreamIsWaking:Z

.field private mCurrentDreamName:Landroid/content/ComponentName;

.field private mCurrentDreamToken:Landroid/os/Binder;

.field private mCurrentDreamUserId:I

.field private mDozeConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mDozeEnabledObserver:Landroid/database/ContentObserver;

.field private final mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mSystemPropertiesChanged:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$4;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$5;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamManagerService$6;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v0, Lcom/android/server/dreams/DreamController;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mControllerListener:Lcom/android/server/dreams/DreamController$Listener;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/dreams/DreamController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/dreams/DreamController$Listener;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "DreamManagerService"

    const/16 v2, 0x40

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->checkPermission(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/dreams/DreamManagerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->isDreamingInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestDreamInternal()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->testDreamInternal(Landroid/content/ComponentName;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->requestAwakenInternal()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->finishSelfInternal(Landroid/os/IBinder;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->startDozingInternal(Landroid/os/IBinder;II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDozingInternal(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->startDreamInternal(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/dreams/DreamManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/ComponentName;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/dreams/DreamManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private chooseDreamForUser(ZI)Landroid/content/ComponentName;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    nop

    :cond_0
    return-object v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    aget-object v0, v1, v0

    nop

    :cond_2
    return-object v0
.end method

.method private cleanupDreamLocked()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    iput-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    return-void
.end method

.method private static componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 7

    const-string v0, "DREAM MANAGER (dumpsys dreams)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamCanDoze="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamIsWaking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamDozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentDreamDozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDozeComponent()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v2, Lcom/android/server/dreams/DreamManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/dreams/DreamManagerService$2;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    const-string v4, ""

    const-wide/16 v5, 0xc8

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/DumpUtils;->dumpAsync(Landroid/os/Handler;Lcom/android/internal/util/DumpUtils$Dump;Ljava/io/PrintWriter;Ljava/lang/String;J)V

    return-void
.end method

.method private finishSelfInternal(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_default_component"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getDozeComponent()Landroid/content/ComponentName;
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getDozeComponent(I)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0, p1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->enabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->ambientDisplayComponent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .locals 7

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->componentsFromString(Ljava/lang/String;)[Landroid/content/ComponentName;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    invoke-direct {p0, v5}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, "DreamManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Falling back to default dream "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/ComponentName;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ComponentName;

    return-object v3
.end method

.method private getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    return-object v0

    :cond_0
    nop

    :goto_0
    return-object v0
.end method

.method private isDreamingInternal()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$startDreamLocked$0(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mController:Lcom/android/server/dreams/DreamController;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/dreams/DreamController;->startDream(Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method private requestAwakenInternal()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    invoke-direct {p0, v3}, Lcom/android/server/dreams/DreamManagerService;->stopDreamInternal(Z)V

    return-void
.end method

.method private requestDreamInternal()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v0, v1}, Landroid/os/PowerManager;->nap(J)V

    return-void
.end method

.method private setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_components"

    invoke-static {p2}, Lcom/android/server/dreams/DreamManagerService;->componentsToString([Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private startDozingInternal(Landroid/os/IBinder;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-eqz v1, :cond_0

    iput p2, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenState:I

    iput p3, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamDozeScreenBrightness:I

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, p2, p3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startDreamInternal(Z)V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->chooseDreamForUser(ZI)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v1, v3, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_0
    :goto_0
    return-void
.end method

.method private startDreamLocked(Landroid/content/ComponentName;ZZI)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    iget-object v0, v8, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    invoke-static {v0, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, v8, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    if-ne v0, v10, :cond_0

    iget-boolean v0, v8, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    if-ne v0, v11, :cond_0

    iget v0, v8, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    if-ne v0, v12, :cond_0

    const-string v0, "DreamManagerService"

    const-string v1, "Already in target dream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {v8, v0}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    const-string v1, "DreamManagerService"

    const-string v2, "Entering dreamland."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    move-object v13, v1

    iput-object v13, v8, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    iput-object v9, v8, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamName:Landroid/content/ComponentName;

    iput-boolean v10, v8, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsTest:Z

    iput-boolean v11, v8, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamCanDoze:Z

    iput v12, v8, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamUserId:I

    iget-object v1, v8, Lcom/android/server/dreams/DreamManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v2, "startDream"

    invoke-virtual {v1, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    iget-object v15, v8, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v7, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;

    move-object v0, v7

    move-object v1, v8

    move-object v2, v13

    move-object v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    move-object v8, v7

    move-object v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/dreams/-$$Lambda$DreamManagerService$f7cEVKQvPKMm_Ir9dq0e6PSOkX8;-><init>(Lcom/android/server/dreams/DreamManagerService;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V

    invoke-virtual {v14, v8}, Landroid/os/PowerManager$WakeLock;->wrap(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopDozingInternal(Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsDozing:Z

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManagerInternal;->setDozeOverrideFromDreamManager(II)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopDreamInternal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopDreamLocked(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamToken:Landroid/os/Binder;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const-string v0, "DreamManagerService"

    const-string v1, "Leaving dreamland."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->cleanupDreamLocked()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "DreamManagerService"

    const-string v1, "Gently waking up from dream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/dreams/DreamManagerService;->mCurrentDreamIsWaking:Z

    :goto_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/dreams/DreamManagerService$3;-><init>(Lcom/android/server/dreams/DreamManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/dreams/DreamManagerService$DreamHandler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private testDreamInternal(Landroid/content/ComponentName;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/server/dreams/DreamManagerService;->startDreamLocked(Landroid/content/ComponentName;ZZI)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private validateDream(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->getServiceInfo(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "DreamManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const-string v2, "android.permission.BIND_DREAM_SERVICE"

    iget-object v3, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DreamManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not available because its manifest is missing the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.permission.BIND_DREAM_SERVICE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " permission on the dream service declaration."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private writePulseGestureEnabled()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->getDozeComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/dreams/DreamManagerService;->validateDream(Landroid/content/ComponentName;)Z

    move-result v1

    const-class v2, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManagerInternal;

    invoke-virtual {v2, v1}, Landroid/hardware/input/InputManagerInternal;->setPulseGestureEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 5

    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mSystemPropertiesChanged:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamManagerService$1;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService;->mHandler:Lcom/android/server/dreams/DreamManagerService$DreamHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "doze_pulse_on_double_tap"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService;->mDozeEnabledObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/dreams/DreamManagerService;->writePulseGestureEnabled()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "dreams"

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    new-instance v1, Lcom/android/server/dreams/DreamManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/dreams/DreamManagerService$LocalService;-><init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
