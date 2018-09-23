.class final Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
.super Lcom/android/internal/util/RingBuffer;
.source "NetworkPolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/RingBuffer<",
        "Lcom/android/server/net/NetworkPolicyLogger$Data;",
        ">;"
    }
.end annotation


# static fields
.field private static final sDate:Ljava/util/Date;

.field private static final sFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const-class v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    sget-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    sget-object v1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public appIdleStateChanged(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v1, 0x8

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public deviceIdleModeEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v1, 0x7

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public event(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput-object p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public firewallChainEnabled(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v1, 0xc

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;
    .locals 3

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    packed-switch v0, :pswitch_data_0

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$1000(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->access$900(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$800(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyLogger;->access$700(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$600(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyLogger;->access$500(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_6
    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$400(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_7
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyLogger;->access$300(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$200(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_9
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v0, v1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->access$100(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyLogger;->access$000(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_c
    iget-object v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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

.method public meterednessChanged(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public networkBlocked(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public paroleStateChanged(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v1, 0x9

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public restrictBackgroundChanged(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v1, 0x6

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/net/NetworkPolicyLogger$Data;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v2, v0, v1

    if-nez v2, :cond_0

    const-string v2, "NULL"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    aget-object v2, v0, v1

    iget-wide v2, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public tempPowerSaveWlChanged(IZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v1, 0xa

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidFirewallRuleChanged(III)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v1, 0xb

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iput p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidPolicyChanged(III)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iput p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidStateChanged(IIJ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iput-wide p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public userRemoved(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method
