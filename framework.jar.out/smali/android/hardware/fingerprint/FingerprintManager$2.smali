.class Landroid/hardware/fingerprint/FingerprintManager$2;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onAcquired$0(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->access$500(Landroid/hardware/fingerprint/FingerprintManager;JII)V

    return-void
.end method

.method public static synthetic lambda$onAuthenticationFailed$2(Landroid/hardware/fingerprint/FingerprintManager$2;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$700(Landroid/hardware/fingerprint/FingerprintManager;)V

    return-void
.end method

.method public static synthetic lambda$onAuthenticationSucceeded$1(Landroid/hardware/fingerprint/FingerprintManager$2;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->access$600(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method

.method public static synthetic lambda$onError$3(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;JII)V

    return-void
.end method

.method public static synthetic lambda$onError$4(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;JII)V

    return-void
.end method

.method public static synthetic lambda$onError$5(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$DBgvtkIDrK5T5S0UgEanHtoKmOA;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$DBgvtkIDrK5T5S0UgEanHtoKmOA;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAcquired(JII)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$-CkUh5EAfiFsfsEamQtkeaLZq6M;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$-CkUh5EAfiFsfsEamQtkeaLZq6M;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$ycpCnXGQKksU_rpxKvBm1XDbloE;

    invoke-direct {v1, p0}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$ycpCnXGQKksU_rpxKvBm1XDbloE;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;

    invoke-direct {v1, p0, p3, p4}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$O5sigT8DLDwmCzdvD-k13MacOBU;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v2, 0x0

    move-object v1, v7

    move v3, p4

    move v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnumerated(JIII)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x6a

    invoke-virtual {v0, v2, p3, p4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(JII)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    if-eq p3, v0, :cond_1

    const/4 v0, 0x5

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$n67wlbYWr0PNZwBB3xLLO4RgAq4;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$n67wlbYWr0PNZwBB3xLLO4RgAq4;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v7, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1500(Landroid/hardware/fingerprint/FingerprintManager;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$iiSGvjInjtzVqJ-wXw-4RQIjKDs;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/-$$Lambda$FingerprintManager$2$iiSGvjInjtzVqJ-wXw-4RQIjKDs;-><init>(Landroid/hardware/fingerprint/FingerprintManager$2;JII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method

.method public onRemoved(JIII)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v2, 0x0

    move-object v1, v7

    move v3, p4

    move v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
