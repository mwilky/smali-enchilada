.class final Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HotplugDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method public onHotplug(JIZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    if-eqz p4, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$300(Lcom/android/server/display/LocalDisplayAdapter;I)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1, p3}, Lcom/android/server/display/LocalDisplayAdapter;->access$400(Lcom/android/server/display/LocalDisplayAdapter;I)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
