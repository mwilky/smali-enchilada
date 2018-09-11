.class Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;
.super Ljava/lang/Object;
.source "SetupFaceUnlockEnrollIntroduction.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;

    .line 68
    iput-object p1, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 71
    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    const-string v1, "Oneplus face unlock service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->access$002(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 74
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;

    invoke-static {v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->access$100(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 80
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 83
    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    const-string v1, "Oneplus face unlock service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->access$002(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 85
    return-void
.end method
