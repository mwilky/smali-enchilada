.class Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;
.super Landroid/os/Handler;
.source "OnePlusIdleWhiltelistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusIdleWhiltelistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnePlusIdleWhiltelistHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->access$200(Lcom/android/server/am/OnePlusIdleWhiltelistManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "UidIdle"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/OnePlusIdleWhiltelistManager$OnePlusIdleWhiltelistHandler;->this$0:Lcom/android/server/am/OnePlusIdleWhiltelistManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusIdleWhiltelistManager;->access$100(Lcom/android/server/am/OnePlusIdleWhiltelistManager;Lorg/json/JSONArray;)V

    nop

    :goto_0
    return-void
.end method
