.class Lcom/android/server/usage/UsageStatsService$2;
.super Landroid/app/IUidObserver$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 3

    const/16 v0, 0x13

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usage/UsageStatsService$2;->onUidStateChanged(IIJ)V

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService$2;->this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
