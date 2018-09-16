.class Lcom/android/server/net/NetworkStatsService$HandlerCallback;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlerCallback"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/net/NetworkStatsService;

    .line 1695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1696
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    .line 1697
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1701
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1716
    const/4 v0, 0x0

    return v0

    .line 1712
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$1000(Lcom/android/server/net/NetworkStatsService;)V

    .line 1713
    return v1

    .line 1708
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkStatsService;->access$2000(Lcom/android/server/net/NetworkStatsService;[Landroid/net/Network;)V

    .line 1709
    return v1

    .line 1703
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1704
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2, v0}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;I)V

    .line 1705
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
