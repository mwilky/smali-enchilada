.class Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p2

    const/4 v3, 0x1

    aget-object v0, p3, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/NsdService$ClientInfo;

    const/4 v0, 0x2

    const/4 v6, 0x0

    if-nez v5, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "NsdService"

    const-string/jumbo v9, "id %d for %s has no client mapping"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v0, v6

    aput-object v7, v0, v3

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-static {v5, v4}, Lcom/android/server/NsdService$ClientInfo;->access$2400(Lcom/android/server/NsdService$ClientInfo;I)I

    move-result v7

    if-gez v7, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "NsdService"

    const-string v10, "Notification %s for listener id %d that is no longer active"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v8, v0, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v0, v3

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/android/server/NsdService$NativeResponseCode;->nameOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "NsdService"

    const-string v10, "Native daemon message %s: %s"

    new-array v11, v0, [Ljava/lang/Object;

    aput-object v8, v11, v6

    aput-object v2, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const v10, 0x60013

    const/4 v11, 0x0

    packed-switch p1, :pswitch_data_0

    return v6

    :pswitch_0
    :try_start_0
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v0

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/net/nsd/NsdServiceInfo;->setHost(Ljava/net/InetAddress;)V

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v8, 0x60014

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v9

    invoke-virtual {v0, v8, v6, v7, v9}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v8

    invoke-virtual {v8, v10, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    :goto_0
    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v4}, Lcom/android/server/NsdService;->access$2900(Lcom/android/server/NsdService;I)Z

    invoke-direct {v1, v7, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    invoke-static {v5, v11}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v4}, Lcom/android/server/NsdService;->access$2900(Lcom/android/server/NsdService;I)Z

    invoke-direct {v1, v7, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    invoke-static {v5, v11}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, v10, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto/16 :goto_2

    :pswitch_2
    goto/16 :goto_2

    :pswitch_3
    goto/16 :goto_2

    :pswitch_4
    move v12, v6

    :goto_1
    aget-object v13, p3, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_3

    aget-object v13, p3, v0

    invoke-virtual {v13, v12}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v11, 0x2e

    if-eq v13, v11, :cond_3

    aget-object v11, p3, v0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v13, 0x5c

    if-ne v11, v13, :cond_2

    add-int/lit8 v12, v12, 0x1

    :cond_2
    add-int/2addr v12, v3

    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    aget-object v11, p3, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lt v12, v11, :cond_4

    const-string v0, "NsdService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid service found "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    aget-object v11, p3, v0

    invoke-virtual {v11, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aget-object v0, p3, v0

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v13, ".local."

    const-string v3, ""

    invoke-virtual {v0, v13, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iget-object v13, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v13, v11}, Lcom/android/server/NsdService;->access$2600(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/net/nsd/NsdServiceInfo;->setServiceName(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v13

    aget-object v8, p3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v13, v8}, Landroid/net/nsd/NsdServiceInfo;->setPort(I)V

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v8

    const/4 v13, 0x6

    aget-object v13, p3, v13

    invoke-virtual {v8, v13}, Landroid/net/nsd/NsdServiceInfo;->setTxtRecords(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v8, v8, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v8, v4}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;I)Z

    invoke-direct {v1, v7, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    iget-object v8, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v8, v8, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v8}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v8

    iget-object v13, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v13, v13, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    aget-object v9, p3, v9

    invoke-static {v13, v8, v9}, Lcom/android/server/NsdService;->access$2800(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const v6, 0x60012

    invoke-direct {v1, v7, v8, v5, v6}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_2

    :cond_5
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v9

    invoke-virtual {v9, v10, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    const/4 v9, 0x0

    invoke-static {v5, v9}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    goto/16 :goto_2

    :pswitch_5
    move-object v9, v11

    iget-object v0, v1, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0, v4}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;I)Z

    invoke-direct {v1, v7, v4, v5}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    invoke-static {v5, v9}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-virtual {v0, v10, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2

    :pswitch_6
    move-object v9, v11

    new-instance v3, Landroid/net/nsd/NsdServiceInfo;

    aget-object v0, p3, v0

    invoke-direct {v3, v0, v9}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v6, 0x6000b

    invoke-virtual {v3, v6, v4, v7, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2

    :pswitch_7
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v3, 0x6000a

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    goto :goto_2

    :pswitch_8
    new-instance v3, Landroid/net/nsd/NsdServiceInfo;

    aget-object v0, p3, v0

    aget-object v8, p3, v9

    invoke-direct {v3, v0, v8}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v8, 0x60005

    invoke-virtual {v3, v8, v6, v7, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2

    :pswitch_9
    new-instance v3, Landroid/net/nsd/NsdServiceInfo;

    aget-object v0, p3, v0

    aget-object v8, p3, v9

    invoke-direct {v3, v0, v8}, Landroid/net/nsd/NsdServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v8, 0x60004

    invoke-virtual {v3, v8, v6, v7, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_2

    :pswitch_a
    invoke-static {v5}, Lcom/android/server/NsdService$ClientInfo;->access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v3, 0x60003

    invoke-virtual {v0, v3, v6, v7}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    nop

    :goto_2
    const/4 v3, 0x1

    return v3

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x25a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V
    .locals 1

    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z
    .locals 3

    invoke-static {p1}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const-string v0, "NsdService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exceeded max outstanding requests "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V
    .locals 1

    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {p3}, Lcom/android/server/NsdService$ClientInfo;->access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/NsdService;->access$900(Lcom/android/server/NsdService;Z)V

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->start()V

    :cond_0
    return-void
.end method

.method public exit()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->stop()V

    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    return v2

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/NsdService$NativeEvent;

    iget v1, v0, Lcom/android/server/NsdService$NativeEvent;->code:I

    iget-object v3, v0, Lcom/android/server/NsdService$NativeEvent;->raw:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/NsdService$NativeEvent;->cooked:[Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->handleNativeEvent(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-static {v1}, Lcom/android/server/NsdService$NsdStateMachine;->access$1400(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "NsdService"

    const-string v1, "Resolve service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NsdService$ClientInfo;

    invoke-static {v1}, Lcom/android/server/NsdService$ClientInfo;->access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;

    move-result-object v3

    const v4, 0x60013

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const/4 v3, 0x3

    invoke-static {v2, p1, v4, v3}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v3

    iget-object v5, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v5, v5, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v5, v3, v0}, Lcom/android/server/NsdService;->access$2300(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v2, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v2}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-static {v1, v2}, Lcom/android/server/NsdService$ClientInfo;->access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v5, v5, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v5, p1, v4, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "NsdService"

    const-string/jumbo v1, "unregister service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    const v1, 0x6000d

    :try_start_0
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v4, v3}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x6000e

    invoke-static {v1, p1, v2}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v4, p1, v1, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v4, p1, v1, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "NsdService"

    const-string v3, "Register service"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    invoke-direct {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v3

    const v4, 0x6000a

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2, p1, v4, v1}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/nsd/NsdServiceInfo;

    invoke-static {v3, v1, v5}, Lcom/android/server/NsdService;->access$2000(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "NsdService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Register "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, v1}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3, p1, v4, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "NsdService"

    const-string v1, "Stop service discovery"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    const v1, 0x60007

    :try_start_1
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    nop

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v3, v0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->removeRequestMap(IILcom/android/server/NsdService$ClientInfo;)V

    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v4, v3}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v2, 0x60008

    invoke-static {v1, p1, v2}, Lcom/android/server/NsdService;->access$1900(Lcom/android/server/NsdService;Landroid/os/Message;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v4, p1, v1, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :catch_1
    move-exception v3

    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v4, p1, v1, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "NsdService"

    const-string v3, "Discover services"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/nsd/NsdServiceInfo;

    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v3}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NsdService$ClientInfo;

    invoke-direct {p0, v3}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->requestLimitReached(Lcom/android/server/NsdService$ClientInfo;)Z

    move-result v4

    const v5, 0x60003

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2, p1, v5, v1}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->access$1500(Lcom/android/server/NsdService;)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-virtual {v0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v1, v6}, Lcom/android/server/NsdService;->access$1600(Lcom/android/server/NsdService;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v2, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Discover "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->storeRequestMap(IILcom/android/server/NsdService$ClientInfo;I)V

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v4, 0x60002

    invoke-static {v2, p1, v4, v0}, Lcom/android/server/NsdService;->access$1700(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v4, v1}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;I)Z

    iget-object v4, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v4, v4, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v4, p1, v5, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    nop

    :cond_8
    :goto_0
    const/4 v0, 0x1

    return v0

    :sswitch_7
    return v2

    :sswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v0, v0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->start()V

    :cond_9
    return v2

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_8
        0x11004 -> :sswitch_7
        0x60001 -> :sswitch_6
        0x60006 -> :sswitch_5
        0x60009 -> :sswitch_4
        0x6000c -> :sswitch_3
        0x60012 -> :sswitch_2
        0x60019 -> :sswitch_1
        0x6001a -> :sswitch_0
    .end sparse-switch
.end method
