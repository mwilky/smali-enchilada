.class Landroid/app/usage/NetworkStatsManager$CallbackHandler;
.super Landroid/os/Handler;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# instance fields
.field private mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field private final mNetworkType:I

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/os/Looper;ILjava/lang/String;Landroid/app/usage/NetworkStatsManager$UsageCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput p2, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    iput-object p3, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    return-void
.end method

.method private static getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "DataUsageRequest"

    invoke-static {p1, v0}, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->getObject(Landroid/os/Message;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DataUsageRequest;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mCallback:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    iget v2, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mNetworkType:I

    iget-object v3, p0, Landroid/app/usage/NetworkStatsManager$CallbackHandler;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->onThresholdReached(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "NetworkStatsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "limit reached with released callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
