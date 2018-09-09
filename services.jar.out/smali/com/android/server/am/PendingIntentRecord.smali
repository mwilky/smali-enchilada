.class final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .locals 1
    .param p1, "_owner"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .line 191
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 192
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    .line 193
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 194
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 195
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 196
    return-void
.end method


# virtual methods
.method public completeFinalize()V
    .locals 4

    .line 426
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 427
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 428
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 429
    .local v1, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .end local v1    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 433
    return-void

    .line 432
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 233
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 234
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 436
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 437
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 441
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 442
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 445
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 446
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 449
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_6

    .line 453
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 454
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 456
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_9

    .line 457
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    const-string/jumbo v0, "whitelistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    move v0, v1

    .line 459
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 460
    if-eqz v0, :cond_7

    .line 461
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 463
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 464
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 459
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "i":I
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 469
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_a

    .line 470
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    nop

    .line 471
    .local v1, "i":I
    :goto_1
    move v0, v1

    .line 471
    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 472
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 471
    add-int/lit8 v1, v0, 0x1

    .line 471
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 476
    .end local v1    # "i":I
    :cond_a
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 416
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 422
    nop

    .line 423
    return-void

    .line 421
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 215
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 219
    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 239
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    .line 241
    return-void
.end method

.method sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 49
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "flagsMask"    # I
    .param p11, "flagsValues"    # I
    .param p12, "options"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 253
    move-object/from16 v15, p12

    const/4 v0, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 254
    :cond_0
    if-eqz v15, :cond_1

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 256
    :cond_1
    iget-object v14, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 257
    iget-boolean v3, v1, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v3, :cond_18

    .line 258
    iput-boolean v0, v1, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 259
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 260
    :try_start_1
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v1, v0}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 409
    :catchall_0
    move-exception v0

    move-object/from16 v34, p3

    move/from16 v35, p10

    move/from16 v36, p11

    .line 409
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .local v34, "resolvedType":Ljava/lang/String;
    .local v35, "flagsMask":I
    .local v36, "flagsValues":I
    :goto_0
    move-object/from16 v18, v14

    goto/16 :goto_19

    .line 263
    .end local v34    # "resolvedType":Ljava/lang/String;
    .end local v35    # "flagsMask":I
    .end local v36    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :cond_2
    :goto_1
    :try_start_2
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    if-eqz v3, :cond_3

    .line 264
    :try_start_3
    new-instance v3, Landroid/content/Intent;

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_4
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    :goto_2
    move-object v12, v3

    .line 266
    .local v12, "finalIntent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/high16 v4, 0x4000000

    and-int/2addr v3, v4

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    move v3, v0

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    move/from16 v33, v3

    .line 267
    .local v33, "immutable":Z
    if-nez v33, :cond_7

    .line 268
    if-eqz v2, :cond_6

    .line 269
    :try_start_5
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v3

    .line 270
    .local v3, "changes":I
    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_5

    .line 271
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v5

    .line 271
    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v3, "resolvedType":Ljava/lang/String;
    goto :goto_4

    .line 273
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_5
    move-object/from16 v3, p3

    .line 273
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 274
    .end local v3    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_6
    :try_start_6
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 276
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    :goto_5
    move/from16 v5, p10

    and-int/lit16 v5, v5, -0xc4

    .line 277
    .end local p10    # "flagsMask":I
    .local v5, "flagsMask":I
    and-int v6, p11, v5

    .line 278
    .end local p11    # "flagsValues":I
    .local v6, "flagsValues":I
    :try_start_7
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    move-result v7

    not-int v8, v5

    and-int/2addr v7, v8

    or-int/2addr v7, v6

    invoke-virtual {v12, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 283
    move-object/from16 v34, v3

    move/from16 v35, v5

    move/from16 v36, v6

    goto :goto_6

    .line 409
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v33    # "immutable":Z
    :catchall_1
    move-exception v0

    move-object/from16 v34, v3

    move/from16 v35, v5

    move/from16 v36, v6

    goto :goto_0

    .line 409
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local v5    # "flagsMask":I
    .end local v6    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_2
    move-exception v0

    move/from16 v5, p10

    move-object/from16 v34, p3

    move/from16 v36, p11

    move/from16 v35, v5

    goto :goto_0

    .line 280
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v33    # "immutable":Z
    :cond_7
    move/from16 v5, p10

    :try_start_8
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 283
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v3    # "resolvedType":Ljava/lang/String;
    move/from16 v36, p11

    move-object/from16 v34, v3

    move/from16 v35, v5

    .line 283
    .end local v3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .restart local v34    # "resolvedType":Ljava/lang/String;
    .restart local v35    # "flagsMask":I
    .restart local v36    # "flagsValues":I
    :goto_6
    :try_start_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move v11, v3

    .line 284
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v38

    .line 287
    .local v38, "callingPid":I
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/am/SafeActivityOptions;

    .line 288
    .local v3, "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    if-nez v3, :cond_8

    .line 289
    invoke-static/range {p12 .. p12}, Lcom/android/server/am/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/am/SafeActivityOptions;

    move-result-object v5

    move-object v3, v5

    .line 294
    .end local v3    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .local v44, "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :goto_7
    move-object/from16 v44, v3

    goto :goto_8

    .line 291
    .end local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .restart local v3    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :cond_8
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V

    goto :goto_7

    .line 294
    .end local v3    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    .restart local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :goto_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v9, v5

    .line 296
    .local v9, "origId":J
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v3, :cond_d

    .line 297
    :try_start_a
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-object/from16 v8, p4

    :try_start_b
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 298
    .local v3, "duration":Ljava/lang/Long;
    if-eqz v3, :cond_e

    .line 299
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v5

    .line 300
    .local v5, "procState":I
    invoke-static {v5}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v6

    if-nez v6, :cond_c

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 302
    .local v6, "tag":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "pendingintent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {v6, v11}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 304
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 306
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 307
    :cond_9
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 308
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_9

    .line 309
    :cond_a
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 310
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    :cond_b
    :goto_9
    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v13, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 313
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 312
    move-object/from16 v37, v7

    move/from16 v39, v11

    move/from16 v40, v13

    invoke-virtual/range {v37 .. v43}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistForPendingIntentLocked(IIIJLjava/lang/String;)V

    .line 314
    .end local v6    # "tag":Ljava/lang/StringBuilder;
    goto :goto_a

    .line 315
    :cond_c
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Not doing whitelist "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ": caller state="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "duration":Ljava/lang/Long;
    .end local v5    # "procState":I
    goto :goto_a

    .line 409
    .end local v9    # "origId":J
    .end local v11    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v33    # "immutable":Z
    .end local v38    # "callingPid":I
    .end local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :catchall_3
    move-exception v0

    move-object/from16 v8, p4

    goto/16 :goto_0

    .line 321
    .restart local v9    # "origId":J
    .restart local v11    # "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v33    # "immutable":Z
    .restart local v38    # "callingPid":I
    .restart local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :cond_d
    move-object/from16 v8, p4

    :cond_e
    :goto_a
    if-eqz p5, :cond_f

    move v3, v0

    goto :goto_b

    :cond_f
    move v3, v4

    :goto_b
    move/from16 v37, v3

    .line 322
    .local v37, "sendFinish":Z
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 323
    .local v3, "userId":I
    const/4 v5, -0x2

    if-ne v3, v5, :cond_10

    .line 324
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v5}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v5

    move v3, v5

    .line 326
    .end local v3    # "userId":I
    .local v39, "userId":I
    :cond_10
    move/from16 v39, v3

    const/16 v40, 0x0

    .line 327
    .local v40, "res":I
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    packed-switch v3, :pswitch_data_0

    .line 397
    move-wide/from16 v45, v9

    move/from16 v17, v11

    move-object/from16 v47, v12

    move-object/from16 v18, v14

    .line 397
    .end local v9    # "origId":J
    .end local v11    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .local v17, "callingUid":I
    .local v45, "origId":J
    .local v47, "finalIntent":Landroid/content/Intent;
    goto/16 :goto_14

    .line 386
    .end local v17    # "callingUid":I
    .end local v45    # "origId":J
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v9    # "origId":J
    .restart local v11    # "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :pswitch_0
    :try_start_c
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget v5, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_11

    goto :goto_c

    :cond_11
    move v0, v4

    :goto_c
    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v13, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-object v4, v3

    move-object v6, v12

    move-object/from16 v7, v34

    move v8, v0

    move-wide/from16 v45, v9

    move-object v9, v13

    .end local v9    # "origId":J
    .restart local v45    # "origId":J
    move/from16 v10, v39

    :try_start_d
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityManagerService;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;I)Landroid/content/ComponentName;
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_1
    .catch Landroid/os/TransactionTooLargeException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_10

    .line 391
    :catch_0
    move-exception v0

    goto :goto_d

    .line 389
    :catch_1
    move-exception v0

    goto :goto_f

    .line 391
    .end local v45    # "origId":J
    .restart local v9    # "origId":J
    :catch_2
    move-exception v0

    move-wide/from16 v45, v9

    .line 392
    .end local v9    # "origId":J
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    .restart local v45    # "origId":J
    :goto_d
    const/16 v40, -0x60

    .line 397
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v40    # "res":I
    .local v11, "res":I
    .restart local v17    # "callingUid":I
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :cond_12
    :goto_e
    move/from16 v17, v11

    move-object/from16 v47, v12

    move-object/from16 v18, v14

    goto/16 :goto_14

    .line 389
    .end local v17    # "callingUid":I
    .end local v45    # "origId":J
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v9    # "origId":J
    .local v11, "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v40    # "res":I
    :catch_3
    move-exception v0

    move-wide/from16 v45, v9

    .line 390
    .end local v9    # "origId":J
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v45    # "origId":J
    :goto_f
    :try_start_e
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startService intent"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v17    # "callingUid":I
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :goto_10
    goto :goto_e

    .line 362
    .end local v17    # "callingUid":I
    .end local v45    # "origId":J
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v9    # "origId":J
    .restart local v11    # "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :pswitch_1
    move-wide/from16 v45, v9

    .line 362
    .end local v9    # "origId":J
    .restart local v45    # "origId":J
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 363
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_12

    .line 364
    const/4 v5, -0x1

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v3, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v3, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object v4, v0

    move/from16 v9, p1

    move-object v10, v12

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_e

    .line 334
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v45    # "origId":J
    .restart local v9    # "origId":J
    :pswitch_2
    move-wide/from16 v45, v9

    .line 334
    .end local v9    # "origId":J
    .restart local v45    # "origId":J
    :try_start_f
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v3, :cond_14

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    if-le v3, v0, :cond_14

    .line 335
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v3, v3

    new-array v3, v3, [Landroid/content/Intent;

    .line 336
    .local v3, "allIntents":[Landroid/content/Intent;
    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    .line 337
    .local v5, "allResolvedTypes":[Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v7, v7

    invoke-static {v6, v4, v3, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v6, :cond_13

    .line 340
    iget-object v6, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v6, v4, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    :cond_13
    array-length v4, v3

    sub-int/2addr v4, v0

    aput-object v12, v3, v4

    .line 344
    array-length v4, v5

    sub-int/2addr v4, v0

    aput-object v34, v5, v4

    .line 346
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v17

    iget v0, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/16 v25, 0x0

    move/from16 v18, v0

    move-object/from16 v19, v4

    move-object/from16 v20, v3

    move-object/from16 v21, v5

    move-object/from16 v22, p7

    move-object/from16 v23, v44

    move/from16 v24, v39

    invoke-virtual/range {v17 .. v25}, Lcom/android/server/am/ActivityStartController;->startActivitiesInPackage(ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/am/SafeActivityOptions;IZ)I

    move-result v0

    .line 350
    .end local v3    # "allIntents":[Landroid/content/Intent;
    .end local v5    # "allResolvedTypes":[Ljava/lang/String;
    .end local v40    # "res":I
    .local v0, "res":I
    goto :goto_11

    .line 351
    .end local v0    # "res":I
    .restart local v40    # "res":I
    :cond_14
    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v17

    iget v0, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    const/16 v27, 0x0

    const/16 v30, 0x0

    const-string v31, "PendingIntentRecord"

    const/16 v32, 0x0

    move/from16 v18, v0

    move/from16 v19, v38

    move/from16 v20, v11

    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-object/from16 v23, v34

    move-object/from16 v24, p7

    move-object/from16 v25, p8

    move/from16 v26, p9

    move-object/from16 v28, v44

    move/from16 v29, v39

    invoke-virtual/range {v17 .. v32}, Lcom/android/server/am/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/am/SafeActivityOptions;ILcom/android/server/am/TaskRecord;Ljava/lang/String;Z)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 359
    :goto_11
    move/from16 v40, v0

    goto/16 :goto_e

    .line 357
    :catch_4
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_10
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startActivity intent"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 360
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_e

    .line 372
    .end local v45    # "origId":J
    .restart local v9    # "origId":J
    :pswitch_3
    move-wide/from16 v45, v9

    .line 372
    .end local v9    # "origId":J
    .restart local v45    # "origId":J
    :try_start_11
    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    const/4 v10, 0x0

    const/4 v13, 0x0

    if-eqz p5, :cond_15

    goto :goto_12

    :cond_15
    move v0, v4

    :goto_12
    const/16 v16, 0x0

    move-object v4, v5

    move v5, v6

    move-object v6, v12

    move-object/from16 v7, v34

    move-object/from16 v8, p5

    move/from16 v9, p1

    move/from16 v17, v11

    move-object v11, v13

    .end local v11    # "callingUid":I
    .restart local v17    # "callingUid":I
    move-object v13, v12

    move-object/from16 v12, p6

    .line 372
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .local v13, "finalIntent":Landroid/content/Intent;
    move-object/from16 v47, v13

    move-object v13, v15

    .line 372
    .end local v13    # "finalIntent":Landroid/content/Intent;
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v18, v14

    move v14, v0

    move/from16 v15, v16

    move/from16 v16, v39

    :try_start_12
    invoke-virtual/range {v3 .. v16}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 376
    .local v0, "sent":I
    if-nez v0, :cond_16

    .line 377
    const/16 v37, 0x0

    .line 381
    .end local v0    # "sent":I
    :cond_16
    goto :goto_14

    .line 379
    :catch_5
    move-exception v0

    goto :goto_13

    .line 379
    .end local v17    # "callingUid":I
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :catch_6
    move-exception v0

    move/from16 v17, v11

    move-object/from16 v47, v12

    move-object/from16 v18, v14

    .line 380
    .end local v11    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v17    # "callingUid":I
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :goto_13
    :try_start_13
    const-string v3, "ActivityManager"

    const-string v4, "Unable to send startActivity intent"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 382
    .end local v0    # "e":Ljava/lang/RuntimeException;
    nop

    .line 397
    .end local v40    # "res":I
    .local v11, "res":I
    :goto_14
    move/from16 v11, v40

    if-eqz v37, :cond_17

    const/16 v3, -0x60

    if-eq v11, v3, :cond_17

    .line 399
    :try_start_14
    new-instance v4, Landroid/content/Intent;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_8
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    move-object/from16 v12, v47

    :try_start_15
    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 399
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, v1, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v10, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v3, p5

    invoke-interface/range {v3 .. v10}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_7
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 402
    goto :goto_16

    .line 401
    :catch_7
    move-exception v0

    goto :goto_15

    .line 401
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :catch_8
    move-exception v0

    move-object/from16 v12, v47

    .line 401
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :goto_15
    goto :goto_16

    .line 405
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v47    # "finalIntent":Landroid/content/Intent;
    :cond_17
    move-object/from16 v12, v47

    .line 405
    .end local v47    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :goto_16
    move-wide/from16 v3, v45

    :try_start_16
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 407
    .end local v45    # "origId":J
    .local v3, "origId":J
    monitor-exit v18
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v11

    .line 409
    .end local v3    # "origId":J
    .end local v11    # "res":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v17    # "callingUid":I
    .end local v33    # "immutable":Z
    .end local v37    # "sendFinish":Z
    .end local v38    # "callingPid":I
    .end local v39    # "userId":I
    .end local v44    # "mergedOptions":Lcom/android/server/am/SafeActivityOptions;
    :catchall_4
    move-exception v0

    goto/16 :goto_0

    .line 409
    .end local v34    # "resolvedType":Ljava/lang/String;
    .end local v35    # "flagsMask":I
    .end local v36    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_5
    move-exception v0

    goto :goto_17

    :cond_18
    move/from16 v5, p10

    move-object/from16 v18, v14

    const/16 v3, -0x60

    :try_start_17
    monitor-exit v18
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 410
    return v3

    .line 409
    :catchall_6
    move-exception v0

    goto :goto_18

    :catchall_7
    move-exception v0

    move/from16 v5, p10

    .line 409
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .restart local v34    # "resolvedType":Ljava/lang/String;
    .restart local v35    # "flagsMask":I
    .restart local v36    # "flagsValues":I
    :goto_17
    move-object/from16 v18, v14

    :goto_18
    move-object/from16 v34, p3

    move/from16 v36, p11

    move/from16 v35, v5

    :goto_19
    :try_start_18
    monitor-exit v18
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_19

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 13
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 245
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method setWhitelistDurationLocked(Landroid/os/IBinder;J)V
    .locals 3
    .param p1, "whitelistToken"    # Landroid/os/IBinder;
    .param p2, "duration"    # J

    .line 199
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 207
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 211
    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 483
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    .line 490
    const-string v1, " (whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 492
    if-eqz v1, :cond_1

    .line 493
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    .end local v1    # "i":I
    :cond_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_3
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .locals 1
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 222
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 226
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 229
    :cond_1
    return-void
.end method
