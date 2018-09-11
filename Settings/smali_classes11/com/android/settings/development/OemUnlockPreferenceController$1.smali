.class Lcom/android/settings/development/OemUnlockPreferenceController$1;
.super Ljava/lang/Object;
.source "OemUnlockPreferenceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 292
    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 295
    const-string v0, "OemUnlockPreferenceController"

    const-string v1, "mSimlockConnection service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {p2}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$002(Lcom/android/settings/development/OemUnlockPreferenceController;Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$000(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {v1}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$100(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;->registerCallback(Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;)I

    .line 299
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController$1;->this$0:Lcom/android/settings/development/OemUnlockPreferenceController;

    invoke-static {v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->access$000(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;->uimRemoteSimlockGetSimlockStatus(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 306
    const-string v0, "OemUnlockPreferenceController"

    const-string v1, "mSimlockConnection service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-void
.end method
