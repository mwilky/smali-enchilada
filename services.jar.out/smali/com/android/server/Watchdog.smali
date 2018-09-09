.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field public static final CHECK_INTERVAL:J = 0x7530L

.field static final COMPLETED:I = 0x0

.field static final DB:Z = false

.field public static final DEFAULT_TIMEOUT:J = 0xea60L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OVERDUE:I = 0x3

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field static final WAITED_HALF:I = 0x2

.field static final WAITING:I = 0x1

.field static sWatchdog:Lcom/android/server/Watchdog;


# instance fields
.field mActivity:Lcom/android/server/am/ActivityManagerService;

.field mAllowRestart:Z

.field mController:Landroid/app/IActivityController;

.field final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mPhonePid:I

.field mResolver:Landroid/content/ContentResolver;

.field mTraceDateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 87
    const-string v0, "/system/bin/audioserver"

    const-string v1, "/system/bin/cameraserver"

    const-string v2, "/system/bin/drmserver"

    const-string v3, "/system/bin/mediadrmserver"

    const-string v4, "/system/bin/mediaserver"

    const-string v5, "/system/bin/sdcard"

    const-string v6, "/system/bin/surfaceflinger"

    const-string/jumbo v7, "media.extractor"

    const-string/jumbo v8, "media.metrics"

    const-string/jumbo v9, "media.codec"

    const-string v10, "com.android.bluetooth"

    const-string/jumbo v11, "statsd"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 102
    const-string v1, "android.hardware.audio@2.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v3, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v4, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v5, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v6, "android.hardware.media.omx@1.0::IOmx"

    const-string v7, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v8, "android.hardware.sensors@1.0::ISensors"

    const-string v9, "android.hardware.vr@1.0::IVr"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 261
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 125
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd_MMM_HH_mm_ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 269
    new-instance v0, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string v5, "foreground thread"

    const-wide/32 v6, 0xea60

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 271
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v4, "main thread"

    const-wide/32 v5, 0xea60

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "ui thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string/jumbo v4, "i/o thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const-string v4, "display thread"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v0, Lcom/android/server/Watchdog$BinderThreadMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 289
    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    .line 294
    return-void
.end method

.method private appendFile(Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "writeTo"    # Ljava/io/File;
    .param p2, "copyFrom"    # Ljava/io/File;

    .line 724
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 725
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 726
    .local v1, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 729
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    .line 730
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 731
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 734
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "out":Ljava/io/FileWriter;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_1

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Exception while writing watchdog traces to new file!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 739
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private binderStateRead()V
    .locals 4

    .line 743
    :try_start_0
    const-string v0, "Watchdog"

    const-string v1, "Collecting Binder Transaction Status Information"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/kernel/debug/binder/state"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 746
    .local v0, "in":Ljava/io/BufferedReader;
    new-instance v1, Ljava/io/FileWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/anr/BinderTraces_pid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 748
    .local v1, "out":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 751
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    .line 752
    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 753
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(I)V

    goto :goto_0

    .line 755
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 756
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    .end local v0    # "in":Ljava/io/BufferedReader;
    .end local v1    # "out":Ljava/io/FileWriter;
    .end local v2    # "line":Ljava/lang/String;
    goto :goto_1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to collect state file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 760
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method private cleanupProcesses(J)V
    .locals 4
    .param p1, "timeout"    # J

    .line 694
    new-instance v0, Lcom/android/server/Watchdog$2;

    const-string/jumbo v1, "watchdogKillerThread"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;J)V

    .line 703
    .local v0, "cleanupThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 705
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    goto :goto_0

    :catch_0
    move-exception v3

    .line 707
    :goto_0
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 708
    return-void
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 381
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 382
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 383
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 384
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .locals 3
    .param p1, "c"    # C

    .line 714
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 715
    .local v0, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 716
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    .end local v0    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 720
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .locals 4

    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 364
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 362
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 373
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 374
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .locals 1

    .line 253
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 257
    :cond_0
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private getInterestingHalPids()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 393
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 394
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 395
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 396
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 397
    .local v2, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 398
    .local v4, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 399
    goto :goto_0

    .line 402
    :cond_0
    sget-object v5, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 403
    goto :goto_0

    .line 406
    :cond_1
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 407
    .end local v4    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    goto :goto_0

    .line 408
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 409
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v2    # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private getInterestingNativePids()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    .line 417
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 418
    .local v1, "nativePids":[I
    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 420
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, v1, v3

    .line 421
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 425
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .locals 2
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .line 326
    monitor-enter p0

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 331
    monitor-exit p0

    .line 332
    return-void

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Monitors can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "thread"    # Landroid/os/Handler;

    .line 335
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 336
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .locals 8
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .line 339
    monitor-enter p0

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/Watchdog;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    .end local v4    # "name":Ljava/lang/String;
    monitor-exit p0

    .line 346
    return-void

    .line 341
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Threads can\'t be added once the Watchdog is running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    .line 298
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 300
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 303
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 306
    monitor-enter p0

    .line 307
    :try_start_0
    const-string v0, "com.android.phone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    iput p2, p0, Lcom/android/server/Watchdog;->mPhonePid:I

    .line 310
    :cond_0
    monitor-exit p0

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebootSystem(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 352
    const-string v0, "Watchdog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rebooting system because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 355
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    goto :goto_0

    .line 356
    :catch_0
    move-exception v1

    .line 358
    :goto_0
    return-void
.end method

.method public run()V
    .locals 24

    .line 430
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 431
    .local v0, "waitedHalf":Z
    const/4 v2, 0x0

    move v3, v0

    move-object v0, v2

    .line 431
    .local v0, "initialStack":Ljava/io/File;
    .local v3, "waitedHalf":Z
    :goto_0
    move-object v4, v0

    .line 436
    .end local v0    # "initialStack":Ljava/io/File;
    .local v4, "initialStack":Ljava/io/File;
    const/4 v5, 0x0

    .line 437
    .local v5, "debuggerWasConnected":I
    monitor-enter p0

    .line 438
    const-wide/16 v6, 0x7530

    .line 441
    .local v6, "timeout":J
    const/4 v8, 0x0

    move v0, v8

    .line 441
    .local v0, "i":I
    :goto_1
    :try_start_0
    iget-object v9, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v0, v9, :cond_0

    .line 442
    :try_start_1
    iget-object v9, v1, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/Watchdog$HandlerChecker;

    .line 443
    .local v9, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v9}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 441
    .end local v9    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    .end local v0    # "i":I
    :cond_0
    if-lez v5, :cond_1

    .line 447
    add-int/lit8 v5, v5, -0x1

    .line 454
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 455
    .local v9, "start":J
    :goto_2
    const-wide/16 v11, 0x0

    cmp-long v0, v6, v11

    const-wide/16 v11, 0x7530

    if-lez v0, :cond_4

    .line 456
    :try_start_3
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    .line 457
    const/4 v0, 0x2

    .line 460
    .end local v5    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    move v5, v0

    .line 460
    .end local v0    # "debuggerWasConnected":I
    .restart local v5    # "debuggerWasConnected":I
    :cond_2
    :try_start_4
    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 463
    goto :goto_3

    .line 461
    :catch_0
    move-exception v0

    move-object v13, v0

    .line 462
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_5
    const-string v13, "Watchdog"

    invoke-static {v13, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 465
    const/4 v0, 0x2

    .line 467
    .end local v5    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    move v5, v0

    .line 467
    .end local v0    # "debuggerWasConnected":I
    .restart local v5    # "debuggerWasConnected":I
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sub-long/2addr v13, v9

    sub-long v6, v11, v13

    goto :goto_2

    .line 470
    :cond_4
    const/4 v0, 0x0

    .line 471
    .local v0, "fdLimitTriggered":Z
    :try_start_6
    iget-object v13, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v13, :cond_5

    .line 472
    :try_start_7
    iget-object v13, v1, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    invoke-virtual {v13}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v13

    move v0, v13

    .line 475
    :cond_5
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-nez v0, :cond_a

    .line 476
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v15

    .line 477
    .local v15, "waitState":I
    if-nez v15, :cond_6

    .line 479
    const/4 v3, 0x0

    .line 480
    monitor-exit p0

    .line 431
    :goto_4
    move-object v0, v4

    goto :goto_0

    .line 481
    :cond_6
    if-ne v15, v14, :cond_7

    .line 483
    monitor-exit p0

    goto :goto_4

    .line 484
    :cond_7
    if-ne v15, v13, :cond_9

    .line 485
    if-nez v3, :cond_8

    .line 488
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 489
    .local v13, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    nop

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v11

    .line 490
    invoke-static {v14, v13, v2, v2, v11}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v11

    move-object v4, v11

    .line 492
    const/4 v3, 0x1

    .line 495
    const-string/jumbo v11, "sys.debug.watchdog"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_8

    .line 496
    const-wide/16 v11, 0x7530

    invoke-direct {v1, v11, v12}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    .line 500
    .end local v13    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_8
    monitor-exit p0

    goto :goto_4

    .line 504
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v11

    .line 505
    .local v11, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    invoke-direct {v1, v11}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 506
    .end local v15    # "waitState":I
    .local v12, "subject":Ljava/lang/String;
    goto :goto_5

    .line 507
    .end local v11    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v12    # "subject":Ljava/lang/String;
    :cond_a
    :try_start_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    .line 508
    .restart local v11    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string v12, "Open FD high water mark reached"

    .line 510
    .restart local v12    # "subject":Ljava/lang/String;
    :goto_5
    iget-boolean v15, v1, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 510
    .end local v0    # "fdLimitTriggered":Z
    .end local v6    # "timeout":J
    .end local v9    # "start":J
    move v6, v15

    .line 511
    .local v6, "allowRestart":Z
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v7, v11

    .line 516
    .end local v11    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v7, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/16 v0, 0xaf2

    invoke-static {v0, v12}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 519
    .local v9, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    iget v0, v1, Lcom/android/server/Watchdog;->mPhonePid:I

    if-lez v0, :cond_b

    iget v0, v1, Lcom/android/server/Watchdog;->mPhonePid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_b
    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    move v14, v8

    .line 524
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v0

    .line 523
    invoke-static {v14, v9, v2, v2, v0}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;)Ljava/io/File;

    move-result-object v10

    .line 527
    .local v10, "finalStack":Ljava/io/File;
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_d

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->binderStateRead()V

    .line 533
    :cond_d
    const-wide/16 v14, 0x7d0

    invoke-static {v14, v15}, Landroid/os/SystemClock;->sleep(J)V

    .line 535
    const-string v0, "dalvik.vm.stack-trace-dir"

    const-string v11, ""

    invoke-static {v0, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 537
    .local v11, "tracesDirProp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "traces_SystemServer_WDT"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 538
    invoke-virtual {v13, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "_pid"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 540
    .local v13, "newTracesPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 542
    .local v0, "oldTraceMechanism":Z
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    const/4 v15, -0x1

    if-eqz v14, :cond_f

    .line 545
    const-string v14, "dalvik.vm.stack-trace-file"

    invoke-static {v14, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 546
    .local v14, "tracesPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 547
    .local v2, "lpos":I
    if-eq v15, v2, :cond_e

    .line 548
    new-instance v15, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    add-int/lit8 v0, v2, 0x1

    .line 549
    .end local v0    # "oldTraceMechanism":Z
    .local v18, "oldTraceMechanism":Z
    move/from16 v19, v2

    const/4 v2, 0x0

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 549
    .end local v2    # "lpos":I
    .local v19, "lpos":I
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v15

    .line 549
    .local v0, "watchdogTraces":Ljava/io/File;
    goto :goto_7

    .line 551
    .end local v18    # "oldTraceMechanism":Z
    .end local v19    # "lpos":I
    .local v0, "oldTraceMechanism":Z
    .restart local v2    # "lpos":I
    :cond_e
    move/from16 v18, v0

    move/from16 v19, v2

    .line 551
    .end local v0    # "oldTraceMechanism":Z
    .end local v2    # "lpos":I
    .restart local v18    # "oldTraceMechanism":Z
    .restart local v19    # "lpos":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, "watchdogTraces":Ljava/io/File;
    :goto_7
    const/4 v2, 0x1

    .line 554
    .end local v14    # "tracesPath":Ljava/lang/String;
    .end local v18    # "oldTraceMechanism":Z
    .end local v19    # "lpos":I
    .local v2, "oldTraceMechanism":Z
    goto :goto_8

    .line 556
    .end local v2    # "oldTraceMechanism":Z
    .local v0, "oldTraceMechanism":Z
    :cond_f
    move/from16 v18, v0

    .line 556
    .end local v0    # "oldTraceMechanism":Z
    .restart local v18    # "oldTraceMechanism":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "tracesDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    .end local v0    # "tracesDir":Ljava/io/File;
    move-object v0, v2

    move/from16 v2, v18

    .line 557
    .end local v18    # "oldTraceMechanism":Z
    .local v0, "watchdogTraces":Ljava/io/File;
    .restart local v2    # "oldTraceMechanism":Z
    :goto_8
    move-object v8, v0

    .line 560
    .end local v0    # "watchdogTraces":Ljava/io/File;
    .local v8, "watchdogTraces":Ljava/io/File;
    :try_start_9
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 561
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v14, 0x180

    const/4 v15, -0x1

    invoke-static {v0, v14, v15, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 567
    if-eqz v4, :cond_11

    if-nez v2, :cond_11

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 572
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    sub-long v14, v14, v16

    .line 573
    .local v14, "age":J
    const-wide/32 v16, 0x493e0

    .line 574
    .local v16, "FIVE_MINUTES_IN_MILLIS":J
    const-wide/32 v18, 0x493e0

    cmp-long v0, v14, v18

    if-gez v0, :cond_10

    .line 575
    const-string v0, "Watchdog"
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move/from16 v20, v2

    :try_start_a
    new-instance v2, Ljava/lang/StringBuilder;

    .line 575
    .end local v2    # "oldTraceMechanism":Z
    .local v20, "oldTraceMechanism":Z
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move/from16 v21, v3

    :try_start_b
    const-string v3, "First set of traces taken from "

    .line 575
    .end local v3    # "waitedHalf":Z
    .local v21, "waitedHalf":Z
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 575
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-direct {v1, v8, v4}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_9

    .line 596
    .end local v14    # "age":J
    .end local v16    # "FIVE_MINUTES_IN_MILLIS":J
    .end local v21    # "waitedHalf":Z
    .restart local v3    # "waitedHalf":Z
    :catch_1
    move-exception v0

    move/from16 v21, v3

    .line 596
    .end local v3    # "waitedHalf":Z
    .restart local v21    # "waitedHalf":Z
    goto :goto_c

    .line 579
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .restart local v2    # "oldTraceMechanism":Z
    .restart local v3    # "waitedHalf":Z
    .restart local v14    # "age":J
    .restart local v16    # "FIVE_MINUTES_IN_MILLIS":J
    :cond_10
    move/from16 v20, v2

    move/from16 v21, v3

    .line 579
    .end local v2    # "oldTraceMechanism":Z
    .end local v3    # "waitedHalf":Z
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    const-string v0, "Watchdog"

    const-string v2, "First set of traces were collected more than 5 minutes ago, ignoring ..."

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .end local v14    # "age":J
    .end local v16    # "FIVE_MINUTES_IN_MILLIS":J
    :goto_9
    goto :goto_a

    .line 583
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .restart local v2    # "oldTraceMechanism":Z
    .restart local v3    # "waitedHalf":Z
    :cond_11
    move/from16 v20, v2

    move/from16 v21, v3

    .line 583
    .end local v2    # "oldTraceMechanism":Z
    .end local v3    # "waitedHalf":Z
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    const-string v0, "Watchdog"

    const-string v2, "First set of traces are empty!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :goto_a
    if-eqz v10, :cond_12

    .line 587
    const-string v0, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Second set of traces taken from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    invoke-direct {v1, v8, v10}, Lcom/android/server/Watchdog;->appendFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_b

    .line 591
    :cond_12
    const-string v0, "Watchdog"

    const-string v2, "Second set of traces are empty!"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 594
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .restart local v2    # "oldTraceMechanism":Z
    .restart local v3    # "waitedHalf":Z
    :cond_13
    move/from16 v20, v2

    move/from16 v21, v3

    .line 594
    .end local v2    # "oldTraceMechanism":Z
    .end local v3    # "waitedHalf":Z
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    const-string v0, "Watchdog"

    const-string v2, "Unable to create Watchdog dump file: createNewFile failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 600
    :goto_b
    goto :goto_d

    .line 596
    :catch_2
    move-exception v0

    goto :goto_c

    .line 596
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .restart local v2    # "oldTraceMechanism":Z
    .restart local v3    # "waitedHalf":Z
    :catch_3
    move-exception v0

    move/from16 v20, v2

    move/from16 v21, v3

    .line 599
    .end local v2    # "oldTraceMechanism":Z
    .end local v3    # "waitedHalf":Z
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    :goto_c
    const-string v2, "Watchdog"

    const-string v3, "Exception creating Watchdog dump file:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string/jumbo v2, "watchdogWriteToDropbox"

    invoke-direct {v0, v1, v2, v12, v10}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    move-object v2, v0

    .line 612
    .local v2, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 614
    const-wide/16 v14, 0x7d0

    :try_start_c
    invoke-virtual {v2, v14, v15}, Ljava/lang/Thread;->join(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4

    .line 615
    goto :goto_e

    :catch_4
    move-exception v0

    .line 620
    :goto_e
    const-string/jumbo v0, "persist.sys.crashOnWatchdog"

    .line 621
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 622
    .local v14, "crashOnWatchdog":Z
    if-eqz v14, :cond_14

    .line 625
    const-string v0, "Watchdog"

    const-string v3, "Triggering SysRq for system_server watchdog"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const/16 v0, 0x77

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 627
    const/16 v0, 0x6c

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 630
    move-object/from16 v22, v2

    const-wide/16 v2, 0xbb8

    .line 630
    .end local v2    # "dropboxThread":Ljava/lang/Thread;
    .local v22, "dropboxThread":Ljava/lang/Thread;
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 632
    const/16 v0, 0x63

    invoke-direct {v1, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    goto :goto_f

    .line 636
    .end local v22    # "dropboxThread":Ljava/lang/Thread;
    .restart local v2    # "dropboxThread":Ljava/lang/Thread;
    :cond_14
    move-object/from16 v22, v2

    .line 636
    .end local v2    # "dropboxThread":Ljava/lang/Thread;
    .restart local v22    # "dropboxThread":Ljava/lang/Thread;
    :goto_f
    monitor-enter p0

    .line 637
    :try_start_d
    iget-object v0, v1, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object v2, v0

    .line 638
    .local v2, "controller":Landroid/app/IActivityController;
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 639
    if-eqz v2, :cond_16

    .line 640
    const-string v0, "Watchdog"

    const-string v3, "Reporting stuck state to activity controller"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :try_start_e
    invoke-interface {v2, v12}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    .line 648
    .local v0, "res":I
    if-ltz v0, :cond_15

    .line 649
    const-string v3, "Watchdog"

    const-string v15, "Activity controller requested to coninue to wait"

    invoke-static {v3, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_5

    .line 650
    const/4 v3, 0x0

    .line 651
    .end local v21    # "waitedHalf":Z
    .restart local v3    # "waitedHalf":Z
    goto/16 :goto_13

    .line 654
    .end local v0    # "res":I
    .end local v3    # "waitedHalf":Z
    .restart local v21    # "waitedHalf":Z
    :cond_15
    goto :goto_10

    .line 653
    :catch_5
    move-exception v0

    .line 658
    :cond_16
    :goto_10
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 659
    const/4 v5, 0x2

    .line 661
    :cond_17
    const/4 v3, 0x2

    if-lt v5, v3, :cond_18

    .line 662
    const-string v0, "Watchdog"

    const-string v3, "Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    .end local v2    # "controller":Landroid/app/IActivityController;
    .local v23, "controller":Landroid/app/IActivityController;
    :goto_11
    move-object/from16 v23, v2

    goto :goto_12

    .line 663
    .end local v23    # "controller":Landroid/app/IActivityController;
    .restart local v2    # "controller":Landroid/app/IActivityController;
    :cond_18
    if-lez v5, :cond_19

    .line 664
    const-string v0, "Watchdog"

    const-string v3, "Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 665
    :cond_19
    if-nez v6, :cond_1a

    .line 666
    const-string v0, "Watchdog"

    const-string v3, "Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 668
    :cond_1a
    const-string v0, "Watchdog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {v7}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 672
    const-string/jumbo v0, "sys.debug.watchdog"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 673
    const/4 v3, 0x0

    .line 674
    .end local v21    # "waitedHalf":Z
    .restart local v3    # "waitedHalf":Z
    goto :goto_13

    .line 676
    .end local v3    # "waitedHalf":Z
    .restart local v21    # "waitedHalf":Z
    :cond_1b
    move-object/from16 v23, v2

    const-wide/32 v2, 0xea60

    .line 676
    .end local v2    # "controller":Landroid/app/IActivityController;
    .restart local v23    # "controller":Landroid/app/IActivityController;
    invoke-direct {v1, v2, v3}, Lcom/android/server/Watchdog;->cleanupProcesses(J)V

    .line 677
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v0

    if-eqz v0, :cond_1c

    .line 678
    const-string v0, "Watchdog"

    const-string v2, "*** GOODBYE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 680
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_12

    .line 682
    :cond_1c
    const-string v0, "Watchdog"

    const-string/jumbo v2, "the status is completed after KillingAllProcessesByWatchdog skip killing system_server"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_12
    const/4 v3, 0x0

    .line 688
    .end local v5    # "debuggerWasConnected":I
    .end local v6    # "allowRestart":Z
    .end local v7    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v8    # "watchdogTraces":Ljava/io/File;
    .end local v9    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "finalStack":Ljava/io/File;
    .end local v11    # "tracesDirProp":Ljava/lang/String;
    .end local v12    # "subject":Ljava/lang/String;
    .end local v13    # "newTracesPath":Ljava/lang/String;
    .end local v14    # "crashOnWatchdog":Z
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .end local v22    # "dropboxThread":Ljava/lang/Thread;
    .end local v23    # "controller":Landroid/app/IActivityController;
    .restart local v3    # "waitedHalf":Z
    nop

    .line 431
    .end local v4    # "initialStack":Ljava/io/File;
    .local v0, "initialStack":Ljava/io/File;
    :goto_13
    move-object v0, v4

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 638
    .end local v0    # "initialStack":Ljava/io/File;
    .end local v3    # "waitedHalf":Z
    .restart local v4    # "initialStack":Ljava/io/File;
    .restart local v5    # "debuggerWasConnected":I
    .restart local v6    # "allowRestart":Z
    .restart local v7    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v8    # "watchdogTraces":Ljava/io/File;
    .restart local v9    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "finalStack":Ljava/io/File;
    .restart local v11    # "tracesDirProp":Ljava/lang/String;
    .restart local v12    # "subject":Ljava/lang/String;
    .restart local v13    # "newTracesPath":Ljava/lang/String;
    .restart local v14    # "crashOnWatchdog":Z
    .restart local v20    # "oldTraceMechanism":Z
    .restart local v21    # "waitedHalf":Z
    .restart local v22    # "dropboxThread":Ljava/lang/Thread;
    :catchall_0
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    throw v0

    .line 511
    .end local v6    # "allowRestart":Z
    .end local v7    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v8    # "watchdogTraces":Ljava/io/File;
    .end local v9    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "finalStack":Ljava/io/File;
    .end local v11    # "tracesDirProp":Ljava/lang/String;
    .end local v12    # "subject":Ljava/lang/String;
    .end local v13    # "newTracesPath":Ljava/lang/String;
    .end local v14    # "crashOnWatchdog":Z
    .end local v20    # "oldTraceMechanism":Z
    .end local v21    # "waitedHalf":Z
    .end local v22    # "dropboxThread":Ljava/lang/Thread;
    .restart local v3    # "waitedHalf":Z
    :catchall_1
    move-exception v0

    move/from16 v21, v3

    :goto_14
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_14
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 1
    .param p1, "controller"    # Landroid/app/IActivityController;

    .line 314
    monitor-enter p0

    .line 315
    :try_start_0
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 316
    monitor-exit p0

    .line 317
    return-void

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAllowRestart(Z)V
    .locals 1
    .param p1, "allowRestart"    # Z

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 322
    monitor-exit p0

    .line 323
    return-void

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
