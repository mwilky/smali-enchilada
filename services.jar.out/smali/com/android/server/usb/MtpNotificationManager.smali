.class Lcom/android/server/usb/MtpNotificationManager;
.super Ljava/lang/Object;
.source "MtpNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;,
        Lcom/android/server/usb/MtpNotificationManager$Receiver;
    }
.end annotation


# static fields
.field private static final ACTION_OPEN_IN_APPS:Ljava/lang/String; = "com.android.server.usb.ACTION_OPEN_IN_APPS"

.field private static final PROTOCOL_MTP:I = 0x0

.field private static final PROTOCOL_PTP:I = 0x1

.field private static final SUBCLASS_MTP:I = 0xff

.field private static final SUBCLASS_STILL_IMAGE_CAPTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UsbMtpNotificationManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    new-instance v0, Lcom/android/server/usb/MtpNotificationManager$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/MtpNotificationManager$Receiver;-><init>(Lcom/android/server/usb/MtpNotificationManager;Lcom/android/server/usb/MtpNotificationManager$1;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usb/MtpNotificationManager;)Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mListener:Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    return-object v0
.end method

.method private static isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    if-ne v3, v5, :cond_0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    if-ne v3, v5, :cond_0

    return v5

    :cond_0
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "MTP"

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static shouldShowNotification(Landroid/content/pm/PackageManager;Landroid/hardware/usb/UsbDevice;)Z
    .locals 1

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/server/usb/MtpNotificationManager;->isMtpDevice(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method hideNotification(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method showNotification(Landroid/hardware/usb/UsbDevice;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x10406a3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x10406a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->USB:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x10807ba

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string/jumbo v4, "sys"

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "device"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v5, 0x50000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v6

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v8, 0x8000000

    invoke-static {v5, v6, v4, v8, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/lit16 v7, v7, 0x100

    iput v7, v6, Landroid/app/Notification;->flags:I

    iget-object v7, p0, Lcom/android/server/usb/MtpNotificationManager;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/NotificationManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x19

    invoke-virtual {v7, v8, v9, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method
