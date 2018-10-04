.class public Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
.super Ljava/lang/Object;
.source "PendingTransactionActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/PendingTransactionActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopInfo"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityStopInfo"


# instance fields
.field private mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

.field private mDescription:Ljava/lang/CharSequence;

.field private mPersistentState:Landroid/os/PersistableBundle;

.field private mState:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    sget-boolean v0, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityStopInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting activity stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v2, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    iget-object v3, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/util/LogWriter;

    const/4 v2, 0x5

    const-string v3, "ActivityStopInfo"

    invoke-direct {v1, v2, v3}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v3, "Bundle stats:"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    invoke-static {v2, v3}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    const-string v3, "PersistableBundle stats:"

    invoke-virtual {v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-static {v2, v3}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    instance-of v3, v0, Landroid/os/TransactionTooLargeException;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v3, v3, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    invoke-virtual {v3}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x18

    if-ge v3, v4, :cond_1

    const-string v3, "ActivityStopInfo"

    const-string v4, "App sent too much data in instance state, so it was ignored"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPersistentState(Landroid/os/PersistableBundle;)V
    .locals 0

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    return-void
.end method

.method public setState(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    return-void
.end method
