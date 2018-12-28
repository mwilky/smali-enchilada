.class public Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;
.super Ljava/lang/Object;
.source "OnePlusAppBootRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootRecorder$Record;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecordBuild"
.end annotation


# instance fields
.field public mRecord:Lcom/android/server/am/OnePlusAppBootRecorder$Record;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/am/OnePlusAppBootRecorder$Record;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/am/OnePlusAppBootRecorder$Record;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/OnePlusAppBootRecorder$1;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;->mRecord:Lcom/android/server/am/OnePlusAppBootRecorder$Record;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/am/OnePlusAppBootRecorder$Record;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;->mRecord:Lcom/android/server/am/OnePlusAppBootRecorder$Record;

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;->mRecord:Lcom/android/server/am/OnePlusAppBootRecorder$Record;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusAppBootRecorder$Record;->access$102(Lcom/android/server/am/OnePlusAppBootRecorder$Record;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setCanal(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;->mRecord:Lcom/android/server/am/OnePlusAppBootRecorder$Record;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusAppBootRecorder$Record;->access$302(Lcom/android/server/am/OnePlusAppBootRecorder$Record;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setDetail(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;->mRecord:Lcom/android/server/am/OnePlusAppBootRecorder$Record;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootRecorder$Record;->access$200(Lcom/android/server/am/OnePlusAppBootRecorder$Record;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;->mRecord:Lcom/android/server/am/OnePlusAppBootRecorder$Record;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootRecorder$Record;->access$202(Lcom/android/server/am/OnePlusAppBootRecorder$Record;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;->mRecord:Lcom/android/server/am/OnePlusAppBootRecorder$Record;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusAppBootRecorder$Record;->access$202(Lcom/android/server/am/OnePlusAppBootRecorder$Record;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public setLevel(I)Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootRecorder$Record$RecordBuild;->mRecord:Lcom/android/server/am/OnePlusAppBootRecorder$Record;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusAppBootRecorder$Record;->access$402(Lcom/android/server/am/OnePlusAppBootRecorder$Record;I)I

    return-object p0
.end method
