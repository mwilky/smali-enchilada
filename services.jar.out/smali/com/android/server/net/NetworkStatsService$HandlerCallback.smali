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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsService;->access$900(Lcom/android/server/net/NetworkStatsService;)V

    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/net/NetworkStatsService;->access$1900(Lcom/android/server/net/NetworkStatsService;[Landroid/net/Network;)V

    return v1

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v2, v0}, Lcom/android/server/net/NetworkStatsService;->access$800(Lcom/android/server/net/NetworkStatsService;I)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
