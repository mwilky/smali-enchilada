.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;
.super Ljava/lang/Object;
.source "OPFaceUnlockSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "OPFaceUnlockSettings"

    const-string v1, "Oneplus face unlock service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$002(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$100(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "OPFaceUnlockSettings"

    const-string v1, "Oneplus face unlock service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$1;->this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$002(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-void
.end method
