.class public Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Backend"
.end annotation


# static fields
.field static sINM:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHighPriority(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLedDisabled(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1}, Landroid/app/INotificationManager;->isNotificationLedEnabled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "OPNotificationAppList"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getNotificationsBanned(Ljava/lang/String;I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "OPNotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public getSensitive(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setHighPriority(Ljava/lang/String;IZ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setLedDisabled(Ljava/lang/String;Z)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    invoke-interface {v0, p1, p2}, Landroid/app/INotificationManager;->setNotificationLedStatus(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "OPNotificationAppList"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setNotificationsBanned(Ljava/lang/String;IZ)Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->sINM:Landroid/app/INotificationManager;

    xor-int/lit8 v1, p3, 0x1

    invoke-interface {v0, p1, p2, v1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "OPNotificationAppList"

    const-string v2, "Error calling NoMan"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setSensitive(Ljava/lang/String;IZ)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
