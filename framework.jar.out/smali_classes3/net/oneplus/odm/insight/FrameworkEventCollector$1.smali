.class Lnet/oneplus/odm/insight/FrameworkEventCollector$1;
.super Landroid/os/Handler;
.source "FrameworkEventCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/odm/insight/FrameworkEventCollector;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;


# direct methods
.method constructor <init>(Lnet/oneplus/odm/insight/FrameworkEventCollector;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/odm/insight/FrameworkEventCollector;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 264
    iput-object p1, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 267
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 270
    .local v1, "event":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v2

    .line 271
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 272
    const-string v3, "hashmap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    .line 274
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    const-string v3, "appId"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "appId":Ljava/lang/String;
    iget-object v4, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-static {v4}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->access$000(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v4

    if-nez v4, :cond_1

    .line 286
    iget-object v4, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    new-instance v5, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v6, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-static {v6}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->access$100(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->access$002(Lnet/oneplus/odm/insight/FrameworkEventCollector;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 288
    :cond_1
    iget-object v4, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-static {v4}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->access$000(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .end local v3    # "appId":Ljava/lang/String;
    goto :goto_0

    .line 276
    :pswitch_1
    iget-object v3, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-static {v3}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->access$000(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v3

    if-nez v3, :cond_2

    .line 277
    iget-object v3, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    new-instance v4, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v5, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-static {v5}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->access$100(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->access$002(Lnet/oneplus/odm/insight/FrameworkEventCollector;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 279
    :cond_2
    iget-object v3, p0, Lnet/oneplus/odm/insight/FrameworkEventCollector$1;->this$0:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-static {v3}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->access$000(Lnet/oneplus/odm/insight/FrameworkEventCollector;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 280
    nop

    .line 292
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
