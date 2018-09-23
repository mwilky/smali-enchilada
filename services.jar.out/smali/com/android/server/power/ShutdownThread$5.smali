.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$200()Landroid/util/TimingsTraceLog;

    move-result-object v0

    const-string/jumbo v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    if-nez v4, :cond_2

    const-string v5, "ShutdownThread"

    const-string v6, "Turning off cellular radios..."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/power/ShutdownThread;->access$400(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    nop

    const-string v5, "ShutdownThread"

    const-string v6, "RemoteException during radio shutdown"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    move v4, v3

    goto :goto_4

    :cond_2
    :goto_3
    nop

    :goto_4
    nop

    const-string v5, "ShutdownThread"

    const-string v6, "Waiting for Radio..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v5, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    :goto_5
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$500()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v7, v7

    sub-long/2addr v7, v5

    long-to-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v7, v9

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    mul-double/2addr v7, v9

    iget v9, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-double v9, v9

    div-double/2addr v7, v9

    double-to-int v7, v7

    add-int/lit8 v7, v7, 0x6

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Lcom/android/server/power/ShutdownThread;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v7, v9}, Lcom/android/server/power/ShutdownThread;->access$700(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    :cond_3
    if-nez v4, :cond_4

    :try_start_1
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    xor-int/2addr v7, v3

    move v4, v7

    goto :goto_6

    :catch_1
    move-exception v7

    const-string v8, "ShutdownThread"

    const-string v9, "RemoteException during radio shutdown"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_4

    const-string v7, "ShutdownThread"

    const-string v8, "Radio turned off."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/power/ShutdownThread;->access$800(Ljava/lang/String;)V

    const-string v7, "ShutdownRadio"

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$900()Landroid/util/ArrayMap;

    move-result-object v8

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    :cond_4
    if-eqz v4, :cond_5

    const-string v7, "ShutdownThread"

    const-string v8, "Radio shutdown complete."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v3, v7, v2

    goto :goto_7

    :cond_5
    const-wide/16 v7, 0x64

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long v5, v7, v9

    goto :goto_5

    :cond_6
    :goto_7
    return-void
.end method
