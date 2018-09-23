.class public Lcom/oneplus/server/SceneMode;
.super Ljava/lang/Object;
.source "SceneMode.java"


# static fields
.field static final MODE_ENTERED:I = 0x2

.field static final MODE_EXITED:I = 0x1

.field static final MODE_PRIO_1:I = 0x1

.field static final MODE_PRIO_2:I = 0x2

.field static final MODE_PRIO_3:I = 0x3

.field static final MODE_PRIO_4:I = 0x4

.field static final MODE_PRIO_HIGHEST:I = 0x1

.field static final MODE_PRIO_INVALID:I = 0xff

.field static final MODE_PRIO_LOWEST:I = 0x4


# instance fields
.field private ecount:I

.field private final name:Ljava/lang/String;

.field private prio:I

.field private rinfo:Ljava/lang/Object;

.field private status:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/oneplus/server/SceneMode;->prio:I

    iput-object p1, p0, Lcom/oneplus/server/SceneMode;->name:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/server/SceneMode;->status:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/SceneMode;->rinfo:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/server/SceneMode;->ecount:I

    return-void
.end method

.method public static comparePrio(II)I
    .locals 1

    if-ge p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/server/SceneMode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Priority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/SceneMode;->prio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Enter Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/SceneMode;->ecount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Lcom/oneplus/server/SceneMode;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/SceneMode;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/SceneMode;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrio()I
    .locals 1

    iget v0, p0, Lcom/oneplus/server/SceneMode;->prio:I

    return v0
.end method

.method public getRinfo()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/SceneMode;->rinfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/oneplus/server/SceneMode;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/SceneMode;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setPrio(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/server/SceneMode;->prio:I

    return-void
.end method

.method public setRinfo(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/SceneMode;->rinfo:Ljava/lang/Object;

    return-void
.end method

.method public setStatus(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/server/SceneMode;->status:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/server/SceneMode;->ecount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/SceneMode;->ecount:I

    :cond_0
    return-void
.end method
