.class Lcom/android/server/dreams/DreamManagerService$4;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Lcom/android/server/dreams/DreamController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamStopped(Landroid/os/Binder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$300(Lcom/android/server/dreams/DreamManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->access$600(Lcom/android/server/dreams/DreamManagerService;)Landroid/os/Binder;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/dreams/DreamManagerService$4;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v1}, Lcom/android/server/dreams/DreamManagerService;->access$700(Lcom/android/server/dreams/DreamManagerService;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
