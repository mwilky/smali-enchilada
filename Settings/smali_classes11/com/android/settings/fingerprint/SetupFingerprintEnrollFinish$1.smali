.class Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish$1;
.super Ljava/lang/Object;
.source "SetupFingerprintEnrollFinish.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish$1;->this$0:Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "SetupFingerprintEnrollFinish"

    const-string v1, "Oneplus face unlock service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish$1;->this$0:Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->access$002(Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "SetupFingerprintEnrollFinish"

    const-string v1, "Oneplus face unlock service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish$1;->this$0:Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->access$002(Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-void
.end method
