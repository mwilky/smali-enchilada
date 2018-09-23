.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;,
        Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LINUX_FOUNDATION_VID:I = 0x1d6b

.field private static final MAX_CONNECT_RECORDS:I = 0x20

.field private static final OP_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final OTG_AUTO_SHUTDOWN_ENABLE:Z

.field private static final OTG_AUTO_SHUT_DOWN_INTENT:Ljava/lang/String; = "oneplus.intent.action.otg_auto_shutdown"

.field private static final OTG_AUTO_SHUT_DOWN_MS:J = 0x927c0L

.field private static final OTG_AUTO_SHUT_DOWN_OFF:I = 0x0

.field private static final OTG_AUTO_SHUT_DOWN_REQUEST:I = 0x1

.field private static OTG_HOST_INSERTED:I = 0x0

.field private static final OTG_HOST_MATCH_FOR_845:Ljava/lang/String; = "DEVPATH=/devices/platform/soc/a600000.ssusb/a600000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_MATCH_FOR_8996:Ljava/lang/String; = "DEVPATH=/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_MATCH_FOR_8998:Ljava/lang/String; = "DEVPATH=/devices/soc/a800000.ssusb/a800000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_PATH_FOR_845:Ljava/lang/String; = "/sys/devices/platform/soc/a600000.ssusb/a600000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_PATH_FOR_8996:Ljava/lang/String; = "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final OTG_HOST_PATH_FOR_8998:Ljava/lang/String; = "/sys/devices/soc/a800000.ssusb/a800000.dwc3/xhci-hcd.0.auto/usb2"

.field private static final TAG:Ljava/lang/String;

.field static final sFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/usb/UsbHostManager$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private final mDevices:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerLock:Ljava/lang/Object;

.field private final mHostBlacklist:[Ljava/lang/String;

.field private mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

.field private mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

.field private final mLock:Ljava/lang/Object;

.field private mNumConnects:I

.field private final mOTGUEventObserver:Landroid/os/UEventObserver;

.field private mOtgAutoShutDownObserver:Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;

.field private mSettingsLock:Ljava/lang/Object;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private mUsbDeviceConnectionHandler:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mHandlerLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/usb/UsbHostManager;->OTG_HOST_INSERTED:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x24

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbHostManager;->OTG_AUTO_SHUTDOWN_ENABLE:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mOTGUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iput-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    :cond_0
    sget-boolean v1, Lcom/android/server/usb/UsbHostManager;->OTG_AUTO_SHUTDOWN_ENABLE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "oneplus.intent.action.otg_auto_shutdown"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "OtgAutoShutDown"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;-><init>(Lcom/android/server/usb/UsbHostManager;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mOtgAutoShutDownObserver:Lcom/android/server/usb/UsbHostManager$OtgAutoShutDownObserver;

    const-string/jumbo v3, "ro.board.platform"

    const-string/jumbo v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "msm8998"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mOTGUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/soc/a800000.ssusb/a800000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "msm8996"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mOTGUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "sdm845"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mOTGUEventObserver:Landroid/os/UEventObserver;

    const-string v5, "DEVPATH=/devices/platform/soc/a600000.ssusb/a600000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-virtual {v4, v5}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/usb/UsbHostManager;->OTG_AUTO_SHUTDOWN_ENABLE:Z

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0

    sput p0, Lcom/android/server/usb/UsbHostManager;->OTG_HOST_INSERTED:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->resetAlarmTrigger()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbHostManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addConnectionRecord(Ljava/lang/String;I[B)V
    .locals 2

    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;-><init>(Lcom/android/server/usb/UsbHostManager;Ljava/lang/String;I[B)V

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    :cond_1
    return-void
.end method

.method private getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getUsbDeviceConnectionHandler()Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isBlackListed(II)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isBlackListed(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mHostBlacklist:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static synthetic lambda$XT3F5aQci4H6VWSBYBQQNSzpnvs(Lcom/android/server/usb/UsbHostManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method private logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .locals 20

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "<unknown>"

    const-string v4, "<unknown>"

    const-string v5, "<unknown>"

    const-string v6, "<unknown>"

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v1

    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v2

    invoke-virtual {v7, v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const/16 v8, 0x1d6b

    if-ne v1, v8, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v10

    const-string v11, "USB device attached: "

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "vidpid %04x:%04x"

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v18, 0x1

    aput-object v16, v15, v18

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " mfg/product/ver/serial %s/%s/%s/%s"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v3, v15, v17

    aput-object v4, v15, v18

    aput-object v5, v15, v14

    const/4 v14, 0x3

    aput-object v6, v15, v14

    invoke-static {v13, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " hasAudio/HID/Storage: %b/%b/%b"

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v17

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v18

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    invoke-static {v12, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method

.method private resetAlarmTrigger()V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_otg_auto_disable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    sget v1, Lcom/android/server/usb/UsbHostManager;->OTG_HOST_INSERTED:I

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set otg auto shutdown alarm trigger with duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, v0

    const-wide/32 v7, 0x927c0

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cancel otg auto shutdown alarm trigger with duration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mIntentOtgAutoShutDown:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private usbDeviceAdded(Ljava/lang/String;II[B)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-direct {v0, p1, p4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbHostManager;->logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    invoke-direct {p0, p2, p3}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(II)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device already on mDevices list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->toAndroidUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v4, "Couldn\'t create UsbDevice object."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object v4

    invoke-direct {p0, p1, v1, v4}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getUsbDeviceConnectionHandler()Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V

    :goto_0
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v5, p1, v3, v0}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    nop

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object v5

    invoke-direct {p0, p1, v1, v5}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    :goto_1
    monitor-exit v2

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private usbDeviceRemoved(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemoved(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " was already gone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 9

    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    const-string v3, "default_usb_host_connection_handler"

    const-wide v4, 0x10b00000001L

    iget-object v6, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    invoke-static {p1, v3, v4, v5, v6}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "devices"

    const-wide v6, 0x20b00000002L

    iget-object v8, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1, v5, v6, v7, v8}, Lcom/android/internal/usb/DumpUtils;->writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "num_connects"

    const-wide v4, 0x10500000003L

    iget v6, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    invoke-virtual {p1, v2, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    const-string v5, "connections"

    const-wide v6, 0x20b00000004L

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    if-eqz v0, :cond_4

    const-string v0, "Last Connected USB Device:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    aget-object v0, p2, v1

    const-string v2, "-dump-short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    aget-object v0, p2, v1

    const-string v2, "-dump-tree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpTree(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1

    :cond_1
    aget-object v0, p2, v1

    const-string v2, "-dump-list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpList(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1

    :cond_2
    aget-object v0, p2, v1

    const-string v1, "-dump-raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpRaw(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpShort(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_1

    :cond_4
    const-string v0, "No USB Devices have been connected."

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

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

.method public openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 5

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isBlackListed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1, p3, p4}, Lcom/android/server/usb/UsbUserSettingsManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist or is restricted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "USB device is on a restricted bus"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/usb/UsbHostManager;->OTG_AUTO_SHUTDOWN_ENABLE:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oneplus_otg_auto_disable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v3, 0x0

    const-string/jumbo v4, "ro.board.platform"

    const-string/jumbo v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "msm8998"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/devices/soc/a800000.ssusb/a800000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_0

    :cond_0
    const-string/jumbo v5, "msm8996"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "sdm845"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/io/File;

    const-string v6, "/sys/devices/platform/soc/a600000.ssusb/a600000.dwc3/xhci-hcd.0.auto/usb2"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v6, "System ready and otg host inserted..."

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/android/server/usb/UsbHostManager;->OTG_HOST_INSERTED:I

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v5, "System ready and otg turn on, resetAlarmTrigger..."

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->resetAlarmTrigger()V

    :cond_4
    :goto_1
    new-instance v1, Lcom/android/server/usb/-$$Lambda$UsbHostManager$XT3F5aQci4H6VWSBYBQQNSzpnvs;

    invoke-direct {v1, p0}, Lcom/android/server/usb/-$$Lambda$UsbHostManager$XT3F5aQci4H6VWSBYBQQNSzpnvs;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
