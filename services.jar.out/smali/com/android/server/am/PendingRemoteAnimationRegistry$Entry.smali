.class Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;
.super Ljava/lang/Object;
.source "PendingRemoteAnimationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingRemoteAnimationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field final adapter:Landroid/view/RemoteAnimationAdapter;

.field final packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/PendingRemoteAnimationRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/am/PendingRemoteAnimationRegistry;Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;->adapter:Landroid/view/RemoteAnimationAdapter;

    invoke-static {p1}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->access$000(Lcom/android/server/am/PendingRemoteAnimationRegistry;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/am/-$$Lambda$PendingRemoteAnimationRegistry$Entry$nMsaTjyghAPVeCjs7XjsdMM78mc;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/-$$Lambda$PendingRemoteAnimationRegistry$Entry$nMsaTjyghAPVeCjs7XjsdMM78mc;-><init>(Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    invoke-static {v0}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->access$100(Lcom/android/server/am/PendingRemoteAnimationRegistry;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    invoke-static {v1}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->access$200(Lcom/android/server/am/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;

    if-ne v1, p0, :cond_0

    iget-object v2, p0, Lcom/android/server/am/PendingRemoteAnimationRegistry$Entry;->this$0:Lcom/android/server/am/PendingRemoteAnimationRegistry;

    invoke-static {v2}, Lcom/android/server/am/PendingRemoteAnimationRegistry;->access$200(Lcom/android/server/am/PendingRemoteAnimationRegistry;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
