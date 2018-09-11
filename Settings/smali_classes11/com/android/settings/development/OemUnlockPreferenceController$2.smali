.class Lcom/android/settings/development/OemUnlockPreferenceController$2;
.super Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;
.source "OemUnlockPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/OemUnlockPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/OemUnlockPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/OemUnlockPreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 310
    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {p0}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public uimRemoteSimlockGenerateHMACResponse(II[B)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "hmacData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    const-string v0, "OemUnlockPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uimRemoteSimlockGenerateHMACResponse token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method public uimRemoteSimlockGetSharedKeyResponse(II[B)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "encryptedKey"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    const-string v0, "OemUnlockPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uimRemoteSimlockProcessSimlockDataResponse token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void
.end method

.method public uimRemoteSimlockGetSimlockStatusResponse(IIIJ)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "unlockStatus"    # I
    .param p4, "unlockTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    const-string v0, "OemUnlockPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uimRemoteSimlockGetSimlockStatusResponse token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unlockStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", unlockTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$202(Lcom/android/settings/development/OemUnlockPreferenceController;Z)Z

    goto :goto_1

    .line 315
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {v1, v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$202(Lcom/android/settings/development/OemUnlockPreferenceController;Z)Z

    .line 319
    :goto_1
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController$2;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$400(Lcom/android/settings/development/OemUnlockPreferenceController;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/OemUnlockPreferenceController$2$1;-><init>(Lcom/android/settings/development/OemUnlockPreferenceController$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public uimRemoteSimlockGetVersionResponse(IIII)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "majorVersion"    # I
    .param p4, "minorVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    const-string v0, "OemUnlockPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uimRemoteSimlockGetVersionResponse token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", majorVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", minorVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-void
.end method

.method public uimRemoteSimlockProcessSimlockDataResponse(II[B)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "responseCode"    # I
    .param p3, "simlockResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    const-string v0, "OemUnlockPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uimRemoteSimlockProcessSimlockDataResponse token:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", responseCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method
