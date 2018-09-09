.class public Lcom/android/server/am/OnePlusBGController$MyHandler;
.super Landroid/os/Handler;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BATT_SNAPSHOT_ON_END:I = 0x101d2

.field public static final MSG_BATT_SNAPSHOT_ON_START:I = 0x101d1

.field public static final MSG_EXECUTION_BGPOWER:I = 0x101d5

.field public static final MSG_FGBG_CHANGE:I = 0x101d3

.field public static final MSG_INFO_BGPOWER:I = 0x101d4

.field public static final MSG_INIT:I = 0x101d0

.field public static final MSG_RESET_KILLED_BUDGET:I = 0x101d6

.field public static final MSG_UPDATE_TRAFFIC_WHEN_SOFF:I = 0x101d7


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusBGController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 259
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    .line 260
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 261
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x101d0

    if-eq v0, v1, :cond_3

    const v1, 0x101d3

    if-eq v0, v1, :cond_2

    const v1, 0x101d6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_RESET_KILLED_BUDGET== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 287
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    .line 288
    .local v0, "killedUidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v1, "KilledUidlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusBGController;->access$200(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V

    .line 293
    .end local v0    # "killedUidSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v1    # "KilledUidlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_0

    .line 273
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_FGBG_CHANGE== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 275
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 276
    .local v0, "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->fromValue(I)Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    move-result-object v1

    .line 277
    .local v1, "type":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBGController;->access$000(Lcom/android/server/am/OnePlusBGController;I)D

    move-result-wide v2

    .line 280
    .local v2, "mAh":D
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mAh: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$100(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    .line 284
    .end local v0    # "uid":I
    .end local v1    # "type":Lcom/android/server/am/OnePlusBGController$PROC_TYPE;
    .end local v2    # "mAh":D
    goto :goto_0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->retrieveSensorHandle()V

    .line 269
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->registerOnlineConfig()V

    .line 270
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->grabOnlineConfig()V

    .line 271
    nop

    .line 297
    :goto_0
    return-void
.end method
