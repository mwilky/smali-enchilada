.class final Lcom/android/server/am/IntentBindRecord;
.super Ljava/lang/Object;
.source "IntentBindRecord.java"


# instance fields
.field final apps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/am/ProcessRecord;",
            "Lcom/android/server/am/AppBindRecord;",
            ">;"
        }
    .end annotation
.end field

.field binder:Landroid/os/IBinder;

.field doRebind:Z

.field hasBound:Z

.field final intent:Landroid/content/Intent$FilterComparison;

.field received:Z

.field requested:Z

.field final service:Lcom/android/server/am/ServiceRecord;

.field stringName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent$FilterComparison;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/am/IntentBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    return-void
.end method


# virtual methods
.method collectFlags()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBindRecord;

    iget-object v2, v2, Lcom/android/server/am/AppBindRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget v4, v4, Lcom/android/server/am/ConnectionRecord;->flags:I

    or-int/2addr v0, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "service="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/IntentBindRecord;->dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method dumpInService(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "intent={"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v0}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "binder="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "requested="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " received="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/IntentBindRecord;->received:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " hasBound="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " doRebind="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    nop

    :goto_0
    move v1, v2

    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBindRecord;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "* Client AppBindRecord{"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    iget-object v3, v2, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/AppBindRecord;->dumpInIntentBind(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/IntentBindRecord;->stringName:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "IntentBindRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const-string v1, "CR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/IntentBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->shortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/IntentBindRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->intent:Landroid/content/Intent$FilterComparison;

    invoke-virtual {v2}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-wide v5, 0x10b00000001L

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    if-eqz v2, :cond_1

    const-wide v2, 0x10900000002L

    iget-object v4, p0, Lcom/android/server/am/IntentBindRecord;->binder:Landroid/os/IBinder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_1
    const-wide v2, 0x10800000003L

    invoke-virtual {p0}, Lcom/android/server/am/IntentBindRecord;->collectFlags()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    invoke-virtual {p1, v2, v3, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000004L

    iget-boolean v4, p0, Lcom/android/server/am/IntentBindRecord;->requested:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000005L

    iget-boolean v4, p0, Lcom/android/server/am/IntentBindRecord;->received:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Lcom/android/server/am/IntentBindRecord;->hasBound:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/am/IntentBindRecord;->doRebind:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    nop

    :goto_1
    move v3, v6

    if-ge v3, v2, :cond_4

    iget-object v4, p0, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBindRecord;

    if-eqz v4, :cond_3

    const-wide v5, 0x20b00000008L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/AppBindRecord;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_3
    add-int/lit8 v6, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
