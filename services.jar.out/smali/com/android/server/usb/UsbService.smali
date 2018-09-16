.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbService"

.field private static mProject:Ljava/lang/String;


# instance fields
.field private final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field mDialog:Landroid/app/AlertDialog;

.field private mHostManager:Lcom/android/server/usb/UsbHostManager;

.field private final mLock:Ljava/lang/Object;

.field private mPortManager:Lcom/android/server/usb/UsbPortManager;

.field private final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private notShowAgain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 131
    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbService;->mProject:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 149
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbService;->notShowAgain:Z

    .line 133
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDialog:Landroid/app/AlertDialog;

    .line 143
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 150
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 152
    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 153
    new-instance v2, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 154
    new-instance v2, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 156
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 157
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    new-instance v3, Lcom/android/server/usb/UsbHostManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v3, p1, v4, v5}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 160
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 161
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v3, p1, v4, v5}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 163
    :cond_1
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v3, :cond_3

    .line 164
    :cond_2
    new-instance v3, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v3, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 167
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 169
    new-instance v0, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 182
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v3, "filter":Landroid/content/IntentFilter;
    const/16 v4, 0x3e8

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 184
    const-string v4, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0, v3, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # I

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Landroid/os/UserHandle;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 78
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 78
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/usb/UsbService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;

    .line 78
    iget-boolean v0, p0, Lcom/android/server/usb/UsbService;->notShowAgain:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/usb/UsbService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbService;
    .param p1, "x1"    # Z

    .line 78
    iput-boolean p1, p0, Lcom/android/server/usb/UsbService;->notShowAgain:Z

    return p1
.end method

.method private getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .locals 1
    .param p1, "userIdInt"    # I

    .line 146
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v0

    return-object v0
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private isCallerInCurrentUserProfileGroupLocked()Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 263
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 265
    .local v0, "userIdInt":I
    invoke-static {}, Lcom/android/server/usb/UsbService;->clearCallingIdentity()J

    move-result-wide v1

    .line 267
    .local v1, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v3, v0, v4}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-static {v1, v2}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    .line 267
    return v3

    .line 269
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Lcom/android/server/usb/UsbService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private onStopUser(Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "stoppedUser"    # Landroid/os/UserHandle;

    .line 217
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    .line 218
    return-void
.end method

.method private onSwitchUser(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .line 194
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 200
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 201
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    .line 202
    .local v1, "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbHostManager;->setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 208
    .end local v1    # "settings":Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    :cond_1
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 837
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public allowUsbDebugging(ZLjava/lang/String;)V
    .locals 3
    .param p1, "alwaysAllow"    # Z
    .param p2, "publicKey"    # Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->allowUsbDebugging(ZLjava/lang/String;)V

    .line 525
    return-void
.end method

.method public bootCompleted()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 238
    :cond_0
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 411
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 416
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 417
    return-void
.end method

.method public clearUsbDebuggingKeys()V
    .locals 3

    .line 535
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->clearUsbDebuggingKeys()V

    .line 537
    return-void
.end method

.method public denyUsbDebugging()V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->denyUsbDebugging()V

    .line 531
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 24
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 597
    move-object/from16 v3, p3

    iget-object v0, v1, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v4, "UsbService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 599
    :cond_0
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v0, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v4, v0

    .line 600
    .local v4, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v14, v5

    .line 602
    .local v14, "ident":J
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 603
    .local v0, "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 605
    const/4 v5, 0x0

    .line 606
    .local v5, "dumpAsProto":Z
    const-string v6, "--proto"

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    if-eqz v6, :cond_1

    .line 607
    const/4 v5, 0x1

    .line 610
    .end local v5    # "dumpAsProto":Z
    .local v16, "dumpAsProto":Z
    :cond_1
    move/from16 v16, v5

    if-eqz v3, :cond_2a

    :try_start_1
    array-length v5, v3

    if-eqz v5, :cond_2a

    const/4 v5, 0x0

    aget-object v6, v3, v5

    const-string v7, "-a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2a

    if-eqz v16, :cond_2

    .line 612
    move-wide v10, v14

    goto/16 :goto_1e

    .line 634
    :cond_2
    const-string/jumbo v6, "set-port-roles"

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    const v10, -0x4f94e1aa

    const v11, -0x356f97e5    # -4731917.5f

    const/4 v12, 0x4

    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    const/4 v13, 0x2

    const/4 v5, 0x1

    if-eqz v6, :cond_c

    :try_start_2
    array-length v6, v3

    if-ne v6, v12, :cond_c

    .line 635
    aget-object v6, v3, v5

    .line 637
    .local v6, "portId":Ljava/lang/String;
    aget-object v12, v3, v13

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-eq v5, v11, :cond_5

    const v11, -0x1a426a07

    if-eq v5, v11, :cond_4

    const v11, 0x35de93

    if-eq v5, v11, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "sink"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "no-power"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    move v5, v13

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "source"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v5, -0x1

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 648
    new-instance v5, Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 645
    :pswitch_0
    const/4 v5, 0x0

    .line 646
    .local v5, "powerRole":I
    goto :goto_2

    .line 642
    .end local v5    # "powerRole":I
    :pswitch_1
    const/4 v5, 0x2

    .line 643
    .restart local v5    # "powerRole":I
    goto :goto_2

    .line 639
    .end local v5    # "powerRole":I
    :pswitch_2
    const/4 v5, 0x1

    .line 640
    .restart local v5    # "powerRole":I
    nop

    .line 649
    :goto_2
    nop

    .line 652
    aget-object v11, v3, v7

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v12, v10, :cond_9

    const v10, 0x30f5a8

    if-eq v12, v10, :cond_8

    const v10, 0x7b007436

    if-eq v12, v10, :cond_7

    goto :goto_3

    :cond_7
    const-string/jumbo v10, "no-data"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_4

    :cond_8
    const-string/jumbo v10, "host"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v13, 0x0

    goto :goto_4

    :cond_9
    const-string v10, "device"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v13, 0x1

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v13, -0x1

    :goto_4
    packed-switch v13, :pswitch_data_1

    .line 663
    new-instance v8, Ljava/lang/StringBuilder;

    goto :goto_6

    .line 660
    :pswitch_3
    const/4 v7, 0x0

    .line 661
    .local v7, "dataRole":I
    goto :goto_5

    .line 657
    .end local v7    # "dataRole":I
    :pswitch_4
    const/4 v7, 0x2

    .line 658
    .restart local v7    # "dataRole":I
    goto :goto_5

    .line 654
    .end local v7    # "dataRole":I
    :pswitch_5
    const/4 v7, 0x1

    .line 655
    .restart local v7    # "dataRole":I
    nop

    .line 664
    :goto_5
    nop

    .line 666
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v10, :cond_b

    .line 667
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v10, v6, v5, v7, v4}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 673
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 674
    iget-object v10, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v11, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v13, "  "

    invoke-direct {v12, v4, v13}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v12, ""

    invoke-virtual {v10, v11, v12, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 677
    .end local v5    # "powerRole":I
    .end local v6    # "portId":Ljava/lang/String;
    .end local v7    # "dataRole":I
    :cond_b
    goto/16 :goto_b

    .line 663
    .restart local v5    # "powerRole":I
    .restart local v6    # "portId":Ljava/lang/String;
    :goto_6
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid data role: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 825
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    return-void

    .line 648
    .end local v5    # "powerRole":I
    :goto_7
    :try_start_3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid power role: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v13

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 825
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 649
    return-void

    .line 825
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "portId":Ljava/lang/String;
    .end local v16    # "dumpAsProto":Z
    :catchall_0
    move-exception v0

    move-object/from16 v7, p1

    move-wide v10, v14

    goto/16 :goto_21

    .line 677
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "dumpAsProto":Z
    :cond_c
    :try_start_4
    const-string v5, "add-port"

    const/4 v6, 0x0

    aget-object v10, v3, v6

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const v10, 0x1c3ff

    const v6, 0x1842e

    if-eqz v5, :cond_13

    :try_start_5
    array-length v5, v3

    if-ne v5, v7, :cond_13

    .line 678
    const/4 v5, 0x1

    aget-object v11, v3, v5

    move-object v5, v11

    .line 680
    .local v5, "portId":Ljava/lang/String;
    aget-object v11, v3, v13

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    if-eq v12, v6, :cond_10

    if-eq v12, v10, :cond_f

    const v6, 0x2f387c

    if-eq v12, v6, :cond_e

    const v6, 0x33af38

    if-eq v12, v6, :cond_d

    goto :goto_8

    :cond_d
    const-string/jumbo v6, "none"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move/from16 v18, v7

    goto :goto_9

    :cond_e
    const-string v6, "dual"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    move/from16 v18, v13

    goto :goto_9

    :cond_f
    const-string/jumbo v6, "ufp"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v18, 0x0

    goto :goto_9

    :cond_10
    const-string v6, "dfp"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/16 v18, 0x1

    goto :goto_9

    :cond_11
    :goto_8
    const/16 v18, -0x1

    :goto_9
    packed-switch v18, :pswitch_data_2

    .line 694
    new-instance v6, Ljava/lang/StringBuilder;

    goto :goto_c

    .line 691
    :pswitch_6
    const/4 v6, 0x0

    .line 692
    .local v6, "supportedModes":I
    goto :goto_a

    .line 688
    .end local v6    # "supportedModes":I
    :pswitch_7
    const/4 v6, 0x3

    .line 689
    .restart local v6    # "supportedModes":I
    goto :goto_a

    .line 685
    .end local v6    # "supportedModes":I
    :pswitch_8
    const/4 v6, 0x2

    .line 686
    .restart local v6    # "supportedModes":I
    goto :goto_a

    .line 682
    .end local v6    # "supportedModes":I
    :pswitch_9
    const/4 v6, 0x1

    .line 683
    .restart local v6    # "supportedModes":I
    nop

    .line 695
    :goto_a
    nop

    .line 697
    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_12

    .line 698
    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v7, v5, v6, v4}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 699
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 700
    iget-object v7, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v10, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v11, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    invoke-direct {v11, v4, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v11, ""

    invoke-virtual {v7, v10, v11, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 703
    .end local v5    # "portId":Ljava/lang/String;
    .end local v6    # "supportedModes":I
    :cond_12
    nop

    .line 825
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "ident":J
    .end local v16    # "dumpAsProto":Z
    .local v10, "ident":J
    :goto_b
    move-object/from16 v7, p1

    move-wide v10, v14

    goto/16 :goto_20

    .line 694
    .end local v10    # "ident":J
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v5    # "portId":Ljava/lang/String;
    .restart local v14    # "ident":J
    .restart local v16    # "dumpAsProto":Z
    :goto_c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 825
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 695
    return-void

    .line 703
    .end local v5    # "portId":Ljava/lang/String;
    :cond_13
    :try_start_6
    const-string v5, "connect-port"

    const/16 v19, 0x0

    aget-object v6, v3, v19

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    array-length v5, v3

    const/4 v6, 0x5

    if-ne v5, v6, :cond_21

    .line 704
    const/4 v5, 0x1

    aget-object v6, v3, v5

    const v5, 0x1842e

    .line 706
    .local v6, "portId":Ljava/lang/String;
    aget-object v7, v3, v13

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move/from16 v20, v7

    .line 707
    .local v20, "canChangeMode":Z
    if-eqz v20, :cond_14

    :try_start_7
    aget-object v7, v3, v13

    invoke-static {v7}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_d

    :cond_14
    :try_start_8
    aget-object v7, v3, v13

    :goto_d
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eq v8, v5, :cond_16

    if-eq v8, v10, :cond_15

    goto :goto_e

    :cond_15
    :try_start_9
    const-string/jumbo v5, "ufp"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    goto :goto_f

    :cond_16
    :try_start_a
    const-string v5, "dfp"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v5, :cond_17

    const/4 v5, 0x1

    goto :goto_f

    :cond_17
    :goto_e
    const/4 v5, -0x1

    :goto_f
    packed-switch v5, :pswitch_data_3

    .line 715
    move-wide v10, v14

    .line 715
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/16 :goto_1c

    .line 712
    .end local v10    # "ident":J
    .restart local v14    # "ident":J
    :pswitch_a
    const/4 v5, 0x2

    .line 713
    .local v5, "mode":I
    goto :goto_10

    .line 709
    .end local v5    # "mode":I
    :pswitch_b
    const/4 v5, 0x1

    .line 710
    .restart local v5    # "mode":I
    nop

    .line 716
    .end local v5    # "mode":I
    .local v7, "mode":I
    :goto_10
    move v7, v5

    const/4 v5, 0x3

    .line 719
    :try_start_c
    aget-object v8, v3, v5

    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move/from16 v21, v8

    .line 720
    .local v21, "canChangePowerRole":Z
    if-eqz v21, :cond_18

    :try_start_d
    aget-object v8, v3, v5

    invoke-static {v8}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_11

    :cond_18
    :try_start_e
    aget-object v8, v3, v5

    :goto_11
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eq v9, v11, :cond_1a

    const v10, 0x35de93

    if-eq v9, v10, :cond_19

    goto :goto_12

    :cond_19
    :try_start_f
    const-string/jumbo v9, "sink"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v8, :cond_1b

    const/4 v8, 0x1

    goto :goto_13

    :cond_1a
    :try_start_10
    const-string/jumbo v9, "source"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v8, :cond_1b

    const/4 v8, 0x0

    goto :goto_13

    :cond_1b
    :goto_12
    const/4 v8, -0x1

    :goto_13
    packed-switch v8, :pswitch_data_4

    .line 728
    move-wide v10, v14

    .line 728
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :try_start_11
    new-instance v8, Ljava/lang/StringBuilder;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto/16 :goto_1b

    .line 725
    .end local v10    # "ident":J
    .restart local v14    # "ident":J
    :pswitch_c
    const/4 v5, 0x2

    .line 726
    .local v5, "powerRole":I
    goto :goto_14

    .line 722
    .end local v5    # "powerRole":I
    :pswitch_d
    const/4 v5, 0x1

    .line 723
    .restart local v5    # "powerRole":I
    nop

    .line 729
    .end local v5    # "powerRole":I
    .local v9, "powerRole":I
    :goto_14
    move v9, v5

    const-wide/16 v10, 0x0

    .line 732
    :try_start_12
    aget-object v5, v3, v12

    const-string v8, "?"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    move/from16 v17, v5

    .line 733
    .local v17, "canChangeDataRole":Z
    if-eqz v17, :cond_1c

    :try_start_13
    aget-object v5, v3, v12

    invoke-static {v5}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_15

    :cond_1c
    :try_start_14
    aget-object v5, v3, v12

    :goto_15
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    const v13, -0x4f94e1aa

    if-eq v8, v13, :cond_1e

    const v13, 0x30f5a8

    if-eq v8, v13, :cond_1d

    goto :goto_16

    :cond_1d
    :try_start_15
    const-string/jumbo v8, "host"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v5, :cond_1f

    const/16 v18, 0x0

    goto :goto_17

    :cond_1e
    :try_start_16
    const-string v8, "device"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    if-eqz v5, :cond_1f

    const/16 v18, 0x1

    goto :goto_17

    :cond_1f
    :goto_16
    const/16 v18, -0x1

    :goto_17
    packed-switch v18, :pswitch_data_5

    .line 741
    move-wide/from16 v22, v14

    .line 741
    .end local v14    # "ident":J
    .local v22, "ident":J
    :try_start_17
    new-instance v5, Ljava/lang/StringBuilder;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    goto :goto_1a

    .line 738
    .end local v22    # "ident":J
    .restart local v14    # "ident":J
    :pswitch_e
    const/4 v5, 0x2

    .line 739
    .local v5, "dataRole":I
    goto :goto_18

    .line 735
    .end local v5    # "dataRole":I
    :pswitch_f
    const/4 v5, 0x1

    .line 736
    .restart local v5    # "dataRole":I
    nop

    .line 742
    :goto_18
    move-wide v12, v10

    move v11, v5

    .line 744
    .end local v5    # "dataRole":I
    .local v11, "dataRole":I
    :try_start_18
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_20

    .line 745
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    move/from16 v8, v20

    move/from16 v10, v21

    move-wide/from16 v22, v14

    move-wide v14, v12

    move/from16 v12, v17

    .line 745
    .end local v14    # "ident":J
    .restart local v22    # "ident":J
    move-object v13, v4

    :try_start_19
    invoke-virtual/range {v5 .. v13}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 747
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 748
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v10, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v12, "  "

    invoke-direct {v10, v4, v12}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v8, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v10, ""

    invoke-virtual {v5, v8, v10, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .end local v6    # "portId":Ljava/lang/String;
    .end local v7    # "mode":I
    .end local v9    # "powerRole":I
    .end local v11    # "dataRole":I
    .end local v17    # "canChangeDataRole":Z
    .end local v20    # "canChangeMode":Z
    .end local v21    # "canChangePowerRole":Z
    goto :goto_19

    .line 825
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    move-wide/from16 v10, v22

    goto/16 :goto_21

    .line 751
    .end local v22    # "ident":J
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v14    # "ident":J
    .restart local v16    # "dumpAsProto":Z
    :cond_20
    move-wide/from16 v22, v14

    .line 825
    .end local v14    # "ident":J
    .restart local v22    # "ident":J
    :goto_19
    move-object/from16 v7, p1

    move-wide/from16 v10, v22

    goto/16 :goto_20

    .line 825
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    .end local v22    # "ident":J
    .restart local v14    # "ident":J
    :catchall_2
    move-exception v0

    move-object/from16 v7, p1

    move-wide v10, v14

    .line 825
    .end local v14    # "ident":J
    .restart local v22    # "ident":J
    goto/16 :goto_21

    .line 741
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "portId":Ljava/lang/String;
    .restart local v7    # "mode":I
    .restart local v9    # "powerRole":I
    .restart local v16    # "dumpAsProto":Z
    .restart local v17    # "canChangeDataRole":Z
    .restart local v20    # "canChangeMode":Z
    .restart local v21    # "canChangePowerRole":Z
    :goto_1a
    :try_start_1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid data role: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v12

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 825
    move-wide/from16 v10, v22

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    .end local v22    # "ident":J
    .restart local v10    # "ident":J
    return-void

    .line 825
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "portId":Ljava/lang/String;
    .end local v7    # "mode":I
    .end local v9    # "powerRole":I
    .end local v10    # "ident":J
    .end local v16    # "dumpAsProto":Z
    .end local v17    # "canChangeDataRole":Z
    .end local v20    # "canChangeMode":Z
    .end local v21    # "canChangePowerRole":Z
    .restart local v22    # "ident":J
    :catchall_3
    move-exception v0

    move-wide/from16 v10, v22

    move-object/from16 v7, p1

    .line 825
    .end local v22    # "ident":J
    .restart local v10    # "ident":J
    goto/16 :goto_21

    .line 728
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6    # "portId":Ljava/lang/String;
    .restart local v7    # "mode":I
    .restart local v16    # "dumpAsProto":Z
    .restart local v20    # "canChangeMode":Z
    .restart local v21    # "canChangePowerRole":Z
    :goto_1b
    :try_start_1b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid power role: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v3, v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 825
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 729
    return-void

    .line 715
    .end local v7    # "mode":I
    .end local v21    # "canChangePowerRole":Z
    :goto_1c
    :try_start_1c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid mode: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v3, v13

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    .line 825
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    return-void

    .line 751
    .end local v6    # "portId":Ljava/lang/String;
    .end local v10    # "ident":J
    .end local v20    # "canChangeMode":Z
    .restart local v14    # "ident":J
    :cond_21
    move-wide v10, v14

    move-wide v14, v8

    .line 751
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :try_start_1d
    const-string v5, "disconnect-port"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    array-length v5, v3

    if-ne v5, v13, :cond_24

    .line 752
    const/4 v5, 0x1

    aget-object v5, v3, v5

    .line 753
    .local v5, "portId":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_22

    .line 754
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 755
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 756
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v7, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 759
    .end local v5    # "portId":Ljava/lang/String;
    :cond_22
    nop

    .line 825
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    :cond_23
    :goto_1d
    move-object/from16 v7, p1

    goto/16 :goto_20

    .line 759
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "dumpAsProto":Z
    :cond_24
    const-string/jumbo v5, "remove-port"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    array-length v5, v3

    if-ne v5, v13, :cond_26

    .line 760
    const/4 v5, 0x1

    aget-object v5, v3, v5

    .line 761
    .restart local v5    # "portId":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_25

    .line 762
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 763
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 764
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v7, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v8, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v9, "  "

    invoke-direct {v8, v4, v9}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v8, ""

    invoke-virtual {v6, v7, v8, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 767
    .end local v5    # "portId":Ljava/lang/String;
    :cond_25
    goto :goto_1d

    :cond_26
    const-string/jumbo v5, "reset"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    .line 768
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_23

    .line 769
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v5, v4}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 770
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 771
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v6, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "  "

    invoke-direct {v7, v4, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v7, ""

    invoke-virtual {v5, v6, v7, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_1d

    .line 774
    :cond_27
    const-string/jumbo v5, "ports"

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    array-length v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_28

    .line 775
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v5, :cond_23

    .line 776
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v6, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "  "

    invoke-direct {v7, v4, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    const-string v7, ""

    invoke-virtual {v5, v6, v7, v14, v15}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1d

    .line 779
    :cond_28
    const-string v5, "dump-descriptors"

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 780
    iget-object v5, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v5, v4, v3}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 782
    :cond_29
    const-string v5, "Dump current USB state or issue command:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 783
    const-string v5, "  ports"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 784
    const-string v5, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 785
    const-string v5, "  add-port <id> <ufp|dfp|dual|none>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 786
    const-string v5, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 787
    const-string v5, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 788
    const-string v5, "  disconnect-port <id>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 789
    const-string v5, "  remove-port <id>"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 790
    const-string v5, "  reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 791
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 792
    const-string v5, "Example USB type C port role switch:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 793
    const-string v5, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 795
    const-string v5, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 796
    const-string v5, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 797
    const-string v5, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 798
    const-string v5, "  dumpsys usb ports"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 799
    const-string v5, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 800
    const-string v5, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 801
    const-string v5, "  dumpsys usb reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 802
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 803
    const-string v5, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 804
    const-string v5, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 805
    const-string v5, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 806
    const-string v5, "  dumpsys usb reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 807
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 808
    const-string v5, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 809
    const-string v5, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 810
    const-string v5, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 811
    const-string v5, "  dumpsys usb reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 813
    const-string v5, "Example USB device-only port:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 814
    const-string v5, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 815
    const-string v5, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 816
    const-string v5, "  dumpsys usb reset"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 818
    const-string v5, "Example USB device descriptors:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 819
    const-string v5, "  dumpsys usb dump-descriptors -dump-short"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 820
    const-string v5, "  dumpsys usb dump-descriptors -dump-tree"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 821
    const-string v5, "  dumpsys usb dump-descriptors -dump-list"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 822
    const-string v5, "  dumpsys usb dump-descriptors -dump-raw"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 822
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    goto/16 :goto_1d

    .line 825
    .end local v10    # "ident":J
    .restart local v14    # "ident":J
    :catchall_4
    move-exception v0

    move-wide v10, v14

    move-object/from16 v7, p1

    goto/16 :goto_21

    .line 612
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "dumpAsProto":Z
    :cond_2a
    move-wide v10, v14

    .line 612
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :goto_1e
    if-eqz v16, :cond_2b

    .line 613
    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Landroid/util/proto/ProtoOutputStream;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    move-object/from16 v7, p1

    :try_start_1e
    invoke-direct {v6, v7}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .line 613
    .local v5, "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_1f

    .line 825
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .end local v16    # "dumpAsProto":Z
    :catchall_5
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_21

    .line 615
    .restart local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v16    # "dumpAsProto":Z
    :cond_2b
    move-object/from16 v7, p1

    const-string v5, "USB MANAGER STATE (dumpsys usb):"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 617
    new-instance v5, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v8, "  "

    invoke-direct {v6, v4, v8}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 620
    .restart local v5    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_1f
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v6, :cond_2c

    .line 621
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v8, "device_manager"

    const-wide v12, 0x10b00000001L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 623
    :cond_2c
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v6, :cond_2d

    .line 624
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const-string/jumbo v8, "host_manager"

    const-wide v12, 0x10b00000002L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 626
    :cond_2d
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v6, :cond_2e

    .line 627
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    const-string/jumbo v8, "port_manager"

    const-wide v12, 0x10b00000003L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 629
    :cond_2e
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v8, "alsa_manager"

    const-wide v12, 0x10b00000004L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 631
    iget-object v6, v1, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo v8, "settings_manager"

    const-wide v12, 0x10b00000005L

    invoke-virtual {v6, v5, v8, v12, v13}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 633
    invoke-virtual {v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    .line 634
    .end local v5    # "dump":Lcom/android/internal/util/dump/DualDumpOutputStream;
    nop

    .line 825
    .end local v0    # "argsSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v16    # "dumpAsProto":Z
    :goto_20
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    nop

    .line 827
    return-void

    .line 825
    :catchall_6
    move-exception v0

    goto :goto_21

    .line 825
    .end local v10    # "ident":J
    .restart local v14    # "ident":J
    :catchall_7
    move-exception v0

    move-object/from16 v7, p1

    move-wide v10, v14

    .line 825
    .end local v14    # "ident":J
    .restart local v10    # "ident":J
    :goto_21
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "function"    # J

    .line 332
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MTP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    return-object v0

    .line 304
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentFunctions()J
    .locals 3

    .line 500
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "devices"    # Landroid/os/Bundle;

    .line 250
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    .line 253
    :cond_0
    return-void
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;

    .line 553
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 558
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 560
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    return-object v2

    .line 560
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 4

    .line 541
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 545
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v2}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    .line 547
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 545
    return-object v2

    .line 547
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getScreenUnlockedFunctions()J
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 518
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "uid"    # I

    .line 394
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 396
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 397
    return-void
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "uid"    # I

    .line 387
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 389
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 390
    return-void
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 2
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 367
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 368
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v1

    return v1
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 401
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 406
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 360
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 361
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    .line 362
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 361
    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/usb/UsbUserSettingsManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .line 495
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "user"    # I

    .line 242
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onUnlockUser(I)V

    .line 245
    :cond_0
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;

    .line 311
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_1

    .line 312
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 314
    .local v0, "userIdInt":I
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isCallerInCurrentUserProfileGroupLocked()Z

    move-result v2

    .line 317
    .local v2, "isCurrentUser":Z
    if-eqz v2, :cond_0

    .line 318
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserSettingsManager;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    monitor-exit v1

    return-object v3

    .line 320
    :cond_0
    const-string v3, "UsbService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as user is not active."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    .end local v2    # "isCurrentUser":Z
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 326
    .end local v0    # "userIdInt":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_2

    .line 279
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    if-eqz p1, :cond_1

    .line 281
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 282
    .local v2, "userIdInt":I
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->isCallerInCurrentUserProfileGroupLocked()Z

    move-result v3

    .line 284
    .local v3, "isCurrentUser":Z
    if-eqz v3, :cond_0

    .line 285
    iget-object v4, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v5

    .line 286
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 285
    invoke-virtual {v4, p1, v5, p2, v6}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserSettingsManager;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 288
    :cond_0
    const-string v4, "UsbService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " as user is not active."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "userIdInt":I
    .end local v3    # "isCurrentUser":Z
    goto :goto_0

    .line 292
    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 295
    :cond_2
    :goto_2
    return-object v0
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 381
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 382
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 383
    return-void
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 373
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 374
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v1

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 374
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/usb/UsbUserSettingsManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 376
    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .locals 3
    .param p1, "accessory"    # Landroid/hardware/usb/UsbAccessory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 349
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 351
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 354
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 356
    return-void
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "usbDataUnlocked"    # Z

    .line 490
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V

    .line 491
    return-void
.end method

.method public setCurrentFunctions(J)V
    .locals 5
    .param p1, "functions"    # J

    .line 427
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 431
    sget-object v0, Lcom/android/server/usb/UsbService;->mProject:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/usb/UsbService;->mProject:Ljava/lang/String;

    const-string v3, "18811"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 432
    invoke-direct {p0}, Lcom/android/server/usb/UsbService;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 433
    .local v0, "mgr":Landroid/net/wifi/WifiManager;
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "rndis"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 434
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tether_checkbox_not_show_again"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    nop

    .line 435
    .local v1, "skipShowDialog":Z
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_2

    .line 436
    new-instance v2, Lcom/android/server/usb/UsbService$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/usb/UsbService$2;-><init>(Lcom/android/server/usb/UsbService;Landroid/net/wifi/WifiManager;J)V

    .line 474
    invoke-virtual {v2}, Lcom/android/server/usb/UsbService$2;->start()V

    goto :goto_1

    .line 476
    :cond_2
    invoke-virtual {v0, v2, v2}, Landroid/net/wifi/WifiManager;->setTetherState(IZ)V

    .line 477
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 479
    .end local v1    # "skipShowDialog":Z
    :goto_1
    goto :goto_2

    .line 480
    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->setTetherState(IZ)V

    .line 481
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 483
    .end local v0    # "mgr":Landroid/net/wifi/WifiManager;
    :goto_2
    goto :goto_3

    .line 485
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    .line 486
    :goto_3
    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 338
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 340
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 343
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 345
    return-void
.end method

.method public setOtgEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 832
    const-string/jumbo v0, "persist.sys.oem.otg_support"

    if-eqz p1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .locals 4
    .param p1, "portId"    # Ljava/lang/String;
    .param p2, "powerRole"    # I
    .param p3, "dataRole"    # I

    .line 566
    const-string/jumbo v0, "portId must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 568
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 572
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    .line 573
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v3, p1, p2, p3, v2}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 577
    nop

    .line 578
    return-void

    .line 576
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setScreenUnlockedFunctions(J)V
    .locals 3
    .param p1, "functions"    # J

    .line 507
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 511
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    .line 512
    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "usbDeviceConnectionHandler"    # Landroid/content/ComponentName;

    .line 582
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_0
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 585
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v1, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 592
    :cond_0
    monitor-exit v0

    .line 593
    return-void

    .line 589
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only the current user can register a usb connection handler"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 223
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    .line 232
    :cond_2
    return-void
.end method
