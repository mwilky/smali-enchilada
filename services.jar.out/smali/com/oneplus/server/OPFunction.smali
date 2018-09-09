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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "func"    # Lcom/oneplus/oimc/IOPFunction;
    .param p3, "flag"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/server/OPFunction;->r:Lcom/oneplus/server/Rule;

    .line 39
    iput-object p1, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    .line 40
    iput p3, p0, Lcom/oneplus/server/OPFunction;->flag:I

    .line 41
    iput-object p2, p0, Lcom/oneplus/server/OPFunction;->func:Lcom/oneplus/oimc/IOPFunction;

    .line 42
    iput v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    .line 43
    iput-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "providerKey"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    .line 35
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/server/OPFunction;->r:Lcom/oneplus/server/Rule;

    .line 48
    iput-object p1, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/oneplus/server/OPFunction;->flag:I

    .line 50
    iput-object p2, p0, Lcom/oneplus/server/OPFunction;->settingProviderKey:Ljava/lang/String;

    .line 51
    iput v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    .line 53
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
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

    .line 92
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public equals(Lcom/oneplus/server/OPFunction;)Z
    .locals 2
    .param p1, "f"    # Lcom/oneplus/server/OPFunction;

    .line 98
    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getActionRule()Lcom/oneplus/server/Rule;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->r:Lcom/oneplus/server/Rule;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/oneplus/server/OPFunction;->flag:I

    return v0
.end method

.method public getFunc()Lcom/oneplus/oimc/IOPFunction;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->func:Lcom/oneplus/oimc/IOPFunction;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderKey()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->settingProviderKey:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/oneplus/server/OPFunction;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public incCount()V
    .locals 1

    .line 64
    iget v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OPFunction;->rcount:I

    .line 65
    return-void
.end method

.method public isRemoteFunc()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/oneplus/server/OPFunction;->isRemoteFunc:Z

    return v0
.end method

.method public setActionRule(Lcom/oneplus/server/Rule;)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/server/Rule;

    .line 80
    iput-object p1, p0, Lcom/oneplus/server/OPFunction;->r:Lcom/oneplus/server/Rule;

    .line 81
    return-void
.end method
