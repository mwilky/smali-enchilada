.class final Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
.super Landroid/os/Handler;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->handleMyMessage(Landroid/os/Message;)V

    return-void
.end method
