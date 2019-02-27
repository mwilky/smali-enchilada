.class public Landroid/hardware/usb/UsbManager;
.super Ljava/lang/Object;
.source "UsbManager.java"


# static fields
.field public static final ACTION_USB_ACCESSORY_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

.field public static final ACTION_USB_ACCESSORY_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

.field public static final ACTION_USB_DEVICE_ATTACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_ATTACHED"

.field public static final ACTION_USB_DEVICE_DETACHED:Ljava/lang/String; = "android.hardware.usb.action.USB_DEVICE_DETACHED"

.field public static final ACTION_USB_PORT_CHANGED:Ljava/lang/String; = "android.hardware.usb.action.USB_PORT_CHANGED"

.field public static final ACTION_USB_STATE:Ljava/lang/String; = "android.hardware.usb.action.USB_STATE"

.field public static final EXTRA_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final EXTRA_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERMISSION_GRANTED:Ljava/lang/String; = "permission"

.field public static final EXTRA_PORT:Ljava/lang/String; = "port"

.field public static final EXTRA_PORT_STATUS:Ljava/lang/String; = "portStatus"

.field public static final FUNCTION_ACCESSORY:J = 0x2L

.field public static final FUNCTION_ADB:J = 0x1L

.field public static final FUNCTION_AUDIO_SOURCE:J = 0x40L

.field public static final FUNCTION_MIDI:J = 0x8L

.field public static final FUNCTION_MTP:J = 0x4L

.field private static final FUNCTION_NAME_TO_CODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final FUNCTION_NONE:J = 0x0L

.field public static final FUNCTION_PTP:J = 0x10L

.field public static final FUNCTION_RNDIS:J = 0x20L

.field private static final SETTABLE_FUNCTIONS:J = 0x3cL

.field private static final TAG:Ljava/lang/String; = "UsbManager"

.field public static final USB_CONFIGURED:Ljava/lang/String; = "configured"

.field public static final USB_CONNECTED:Ljava/lang/String; = "connected"

.field public static final USB_DATA_UNLOCKED:Ljava/lang/String; = "unlocked"

.field public static final USB_FUNCTION_ACCESSORY:Ljava/lang/String; = "accessory"

.field public static final USB_FUNCTION_ADB:Ljava/lang/String; = "adb"

.field public static final USB_FUNCTION_AUDIO_SOURCE:Ljava/lang/String; = "audio_source"

.field public static final USB_FUNCTION_MIDI:Ljava/lang/String; = "midi"

.field public static final USB_FUNCTION_MTP:Ljava/lang/String; = "mtp"

.field public static final USB_FUNCTION_NONE:Ljava/lang/String; = "none"

.field public static final USB_FUNCTION_PTP:Ljava/lang/String; = "ptp"

.field public static final USB_FUNCTION_RNDIS:Ljava/lang/String; = "rndis"

.field public static final USB_FUNCTION_RNDIS_CTA:Ljava/lang/String; = "rndis,serial_cdev,diag"

.field public static final USB_HOST_CONNECTED:Ljava/lang/String; = "host_connected"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-string/jumbo v1, "mtp"

    const-wide/16 v2, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-string/jumbo v1, "ptp"

    const-wide/16 v2, 0x10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-string/jumbo v1, "rndis"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-string/jumbo v1, "midi"

    const-wide/16 v2, 0x8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-string v1, "accessory"

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-string v1, "audio_source"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    const-string v1, "adb"

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    return-void
.end method

.method public static areSettableFunctions(J)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-wide/16 v4, -0x3d

    and-long/2addr v4, p0

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    nop

    :cond_1
    :goto_0
    return v3
.end method

.method public static usbFunctionsFromString(Ljava/lang/String;)J
    .locals 8

    if-eqz p0, :cond_4

    const-string/jumbo v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v0, 0x0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    sget-object v6, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/hardware/usb/UsbManager;->FUNCTION_NAME_TO_CODE:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v0, v6

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_2

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid usb function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-wide v0

    :cond_4
    :goto_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static usbFunctionsToString(J)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-wide/16 v1, 0x4

    and-long/2addr v1, p0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mtp"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_0
    const-wide/16 v1, 0x10

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ptp"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    const-wide/16 v1, 0x20

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    const-string/jumbo v1, "rndis"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_2
    const-wide/16 v1, 0x8

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    const-string/jumbo v1, "midi"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    const-wide/16 v1, 0x2

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    const-string v1, "accessory"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4
    const-wide/16 v1, 0x40

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const-string v1, "audio_source"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_5
    const-wide/16 v1, 0x1

    and-long/2addr v1, p0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    const-string v1, "adb"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_6
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAccessoryList()[Landroid/hardware/usb/UsbAccessory;
    .locals 3

    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/hardware/usb/UsbAccessory;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCurrentFunctions()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getCurrentFunctions()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDeviceList()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v2, v1}, Landroid/hardware/usb/IUsbManager;->getDeviceList(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public getPortStatus(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/UsbPortStatus;
    .locals 2

    const-string/jumbo v0, "port must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/usb/IUsbManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPorts()[Landroid/hardware/usb/UsbPort;
    .locals 2

    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getScreenUnlockedFunctions()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0}, Landroid/hardware/usb/IUsbManager;->getScreenUnlockedFunctions()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public grantPermission(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/usb/UsbManager;->grantPermission(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method public grantPermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public grantPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/usb/UsbManager;->grantPermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UsbManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public hasPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasPermission(Landroid/hardware/usb/UsbDevice;)Z
    .locals 2

    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/usb/IUsbManager;->hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->isFunctionEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/hardware/usb/IUsbManager;->openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {v2, p1}, Landroid/hardware/usb/UsbDeviceConnection;-><init>(Landroid/hardware/usb/UsbDevice;)V

    iget-object v3, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1, v3}, Landroid/hardware/usb/UsbDeviceConnection;->open(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UsbManager"

    const-string v2, "exception in UsbManager.openDevice"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestPermission(Landroid/hardware/usb/UsbAccessory;Landroid/app/PendingIntent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/hardware/usb/IUsbManager;->requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/hardware/usb/IUsbManager;->requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->setCurrentFunction(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCurrentFunctions(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->setCurrentFunctions(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setOtgEnabled(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->setOtgEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setPortRoles(Landroid/hardware/usb/UsbPort;II)V
    .locals 3

    const-string/jumbo v0, "port must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    const-string v0, "UsbManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPortRoles Package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/usb/UsbManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/hardware/usb/IUsbManager;->setPortRoles(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setScreenUnlockedFunctions(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/usb/IUsbManager;->setScreenUnlockedFunctions(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/usb/UsbManager;->mService:Landroid/hardware/usb/IUsbManager;

    invoke-interface {v0, p1}, Landroid/hardware/usb/IUsbManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
