.class Lcom/oneplus/server/OIMCService$SyncRunnable;
.super Ljava/lang/Object;
.source "OIMCService.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncRunnable"
.end annotation


# instance fields
.field private done:Z

.field final synthetic this$0:Lcom/oneplus/server/OIMCService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/OIMCService$SyncRunnable;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/server/OIMCService$SyncRunnable;->done:Z

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/server/OIMCService$SyncRunnable;->done:Z

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/oneplus/server/OIMCService$SyncRunnable;->done:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
