.class final Lcom/android/server/notification/ZenModeHelper$H;
.super Landroid/os/Handler;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;
    }
.end annotation


# static fields
.field private static final METRICS_PERIOD_MS:J = 0x1499700L

.field private static final MSG_APPLY_CONFIG:I = 0x4

.field private static final MSG_DISPATCH:I = 0x1

.field private static final MSG_METRICS:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper$H;-><init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postMetricsTimer()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/ZenModeHelper$H;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$H;->postDispatchOnZenModeChanged()V

    return-void
.end method

.method private postApplyConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;-><init>(Lcom/android/server/notification/ZenModeHelper$H;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/android/server/notification/ZenModeHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private postDispatchOnZenModeChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method private postMetricsTimer()V
    .locals 3

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$H;->removeMessages(I)V

    const-wide/32 v1, 0x1499700

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)Lcom/android/server/notification/ZenModeHelper$Metrics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper$Metrics;->access$1100(Lcom/android/server/notification/ZenModeHelper$Metrics;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$H;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v2, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->config:Landroid/service/notification/ZenModeConfig;

    iget-object v3, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->reason:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/server/notification/ZenModeHelper$H$ConfigMessageData;->setRingerMode:Z

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->access$1200(Lcom/android/server/notification/ZenModeHelper;Landroid/service/notification/ZenModeConfig;Ljava/lang/String;Z)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
