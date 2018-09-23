.class public Lcom/oneplus/server/OPFunction;
.super Ljava/lang/Object;
.source "OPFunction.java"


# instance fields
.field private flag:I

.field private func:Lcom/oneplus/oimc/IOPFunction;

.field private isRemoteFunc:Z

.field private final name:Ljava/lang/String;

.field private r:Lcom/oneplus/server/Rule;

.field private rcount:I

.field private settingProviderKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/server/OPFunction;->r:Lcom/oneplus/server/Rule;

    iput-object p1, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/server/OPFunction;->flag:I

    iput-object p2, p0, Lcom/oneplus/server/OPFunction;->func:Lcom/oneplus/oimc/IOPFunction;

    iput v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    iput-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/server/OPFunction;->r:Lcom/oneplus/server/Rule;

    iput-object p1, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/server/OPFunction;->flag:I

    iput-object p2, p0, Lcom/oneplus/server/OPFunction;->settingProviderKey:Ljava/lang/String;

    iput v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/OPFunction;->flag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "REPEAT"

    goto :goto_0

    :cond_0
    const-string v1, "ONESHOT"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Start Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Lcom/oneplus/server/OPFunction;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActionRule()Lcom/oneplus/server/Rule;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->r:Lcom/oneplus/server/Rule;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    iget v0, p0, Lcom/oneplus/server/OPFunction;->flag:I

    return v0
.end method

.method public getFunc()Lcom/oneplus/oimc/IOPFunction;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->func:Lcom/oneplus/oimc/IOPFunction;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->settingProviderKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public incCount()V
    .locals 1

    iget v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    return-void
.end method

.method public isRemoteFunc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    return v0
.end method

.method public setActionRule(Lcom/oneplus/server/Rule;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/OPFunction;->r:Lcom/oneplus/server/Rule;

    return-void
.end method
