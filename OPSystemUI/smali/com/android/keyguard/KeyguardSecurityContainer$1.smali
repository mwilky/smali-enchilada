.class Lcom/android/keyguard/KeyguardSecurityContainer$1;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->dismiss(ZI)Z

    return-void
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public hideSecurityIcon()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$700(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    return-void
.end method

.method public reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pass"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$600(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    const-string p2, "password"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$600(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    const-string p2, "pin"

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reportMDMEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reportUnlockAttempt(IZI)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$200(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/16 v1, 0x40

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/StatsLog;->write(II)I

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFailedUnlockAttempts()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$300(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$400(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/util/StatsLog;->write(II)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v1, p1, p3}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$500(Lcom/android/keyguard/KeyguardSecurityContainer;II)V

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->reset()V

    return-void
.end method

.method public tryToStartFaceLockFromBouncer()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->tryToStartFaceLockFromBouncer()V

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method
