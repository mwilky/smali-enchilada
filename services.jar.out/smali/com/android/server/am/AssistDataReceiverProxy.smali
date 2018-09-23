.class Lcom/android/server/am/AssistDataReceiverProxy;
.super Ljava/lang/Object;
.source "AssistDataReceiverProxy.java"

# interfaces
.implements Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mCallerPackage:Ljava/lang/String;

.field private mReceiver:Landroid/app/IAssistDataReceiver;


# direct methods
.method public constructor <init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    iput-object p2, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/server/am/AssistDataReceiverProxy;->linkToDeath()V

    return-void
.end method

.method private linkToDeath()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0}, Landroid/app/IAssistDataReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    const-string v2, "Could not link to client death"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private unlinkToDeath()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0}, Landroid/app/IAssistDataReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AssistDataReceiverProxy;->unlinkToDeath()V

    return-void
.end method

.method public canHandleReceivedAssistDataLocked()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to proxy assist data to receiver in package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onAssistRequestCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AssistDataReceiverProxy;->unlinkToDeath()V

    return-void
.end method

.method public onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mReceiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v0, p1}, Landroid/app/IAssistDataReceiver;->onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to proxy assist screenshot to receiver in package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/AssistDataReceiverProxy;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
