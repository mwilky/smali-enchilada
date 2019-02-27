.class Landroid/hardware/fingerprint/FingerprintManager$MyHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;)V

    return-void
.end method

.method private sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1200(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1200(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentProgress(I)V

    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1300(Landroid/hardware/fingerprint/FingerprintManager;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1300(Landroid/hardware/fingerprint/FingerprintManager;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintEnrollResult()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintManager"

    const-string v2, "Unable to hide fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private sendEnumeratedResult(JII)V
    .locals 8

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1100(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$1100(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;

    move-result-object v0

    new-instance v7, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v2, 0x0

    move-object v1, v7

    move v3, p4

    move v4, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v0, v7}, Landroid/hardware/fingerprint/FingerprintManager$EnumerateCallback;->onEnumerate(Landroid/hardware/fingerprint/Fingerprint;)V

    :cond_0
    return-void
.end method

.method private sendRemovedResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 7

    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$900(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "FingerprintManager"

    const-string v1, "Received MSG_REMOVED, but fingerprint is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v1}, Landroid/hardware/fingerprint/FingerprintManager;->access$1000(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finger id didn\'t match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v3}, Landroid/hardware/fingerprint/FingerprintManager;->access$1000(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v3

    if-eq v2, v3, :cond_3

    const-string v4, "FingerprintManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Group id didn\'t match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v4}, Landroid/hardware/fingerprint/FingerprintManager;->access$900(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendEnumeratedResult(JII)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendRemovedResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->access$800(Landroid/hardware/fingerprint/FingerprintManager;JII)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$700(Landroid/hardware/fingerprint/FingerprintManager;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->access$600(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/Fingerprint;I)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->access$500(Landroid/hardware/fingerprint/FingerprintManager;JII)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;->sendEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
