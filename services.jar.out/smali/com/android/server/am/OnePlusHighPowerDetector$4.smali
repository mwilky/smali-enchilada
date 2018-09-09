.class Lcom/android/server/am/OnePlusHighPowerDetector$4;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;->handleMyMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 1141
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$4;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$4;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceUpdateOnlineConfigImmediately()V

    .line 1145
    return-void
.end method
