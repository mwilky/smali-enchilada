.class Lcom/android/server/usage/AppStandbyController$2;
.super Ljava/lang/Object;
.source "AppStandbyController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->isDisplayOn()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v1}, Lcom/android/server/usage/AppStandbyController;->access$600(Lcom/android/server/usage/AppStandbyController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-static {v2}, Lcom/android/server/usage/AppStandbyController;->access$700(Lcom/android/server/usage/AppStandbyController;)Lcom/android/server/usage/AppIdleHistory;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usage/AppStandbyController$2;->this$0:Lcom/android/server/usage/AppStandbyController;

    iget-object v3, v3, Lcom/android/server/usage/AppStandbyController;->mInjector:Lcom/android/server/usage/AppStandbyController$Injector;

    invoke-virtual {v3}, Lcom/android/server/usage/AppStandbyController$Injector;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->updateDisplay(ZJ)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :goto_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
