.class Lcom/android/server/fingerprint/AuthenticationClient$1;
.super Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;
.source "AuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/AuthenticationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/AuthenticationClient;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricPromptReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogDismissed(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$000(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iget-boolean v0, v0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v0}, Lcom/android/server/fingerprint/AuthenticationClient;->access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-static {v1}, Lcom/android/server/fingerprint/AuthenticationClient;->access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    iput-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string v3, "Unable to notify dialog dismissed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient$1;->this$0:Lcom/android/server/fingerprint/AuthenticationClient;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    :cond_2
    return-void
.end method
