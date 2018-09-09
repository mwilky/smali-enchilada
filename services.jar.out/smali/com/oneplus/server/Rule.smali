.class public Lcom/oneplus/server/Rule;
.super Ljava/lang/Object;
.source "Rule.java"


# static fields
.field public static final FLAG_CMD_CONFIG:I = 0x2

.field public static final FLAG_LOCAL_CONFIG:I = 0x0

.field public static final FLAG_ONLINE_CONFIG:I = 0x1

.field public static final FLAG_TEST_MODE_CONFIG:I = 0x3

.field static final FUNC_CONFIG:I = 0x3

.field static final FUNC_DISABLE:I = 0x2

.field static final FUNC_ENABLE:I = 0x1

.field static final FUNC_NO_ACT:I


# instance fields
.field private func:Lcom/oneplus/server/OPFunction;

.field private mHashCode:I

.field private modes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;"
        }
    .end annotation
.end field

.field private request:I

.field private rinfo:Ljava/lang/Object;

.field private sourceFlag:I

.field private startConfig:Ljava/lang/String;

.field private stopConfig:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ILcom/oneplus/server/OPFunction;)V
    .locals 2
    .param p2, "request"    # I
    .param p3, "func"    # Lcom/oneplus/server/OPFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;I",
            "Lcom/oneplus/server/OPFunction;",
            ")V"
        }
    .end annotation

    .line 35
    .local p1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/Rule;->startConfig:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/oneplus/server/Rule;->stopConfig:Ljava/lang/String;

    .line 36
    invoke-direct {p0, p1}, Lcom/oneplus/server/Rule;->modesSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    .line 37
    iput p2, p0, Lcom/oneplus/server/Rule;->request:I

    .line 38
    iput-object p3, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    .line 39
    iput-object v0, p0, Lcom/oneplus/server/Rule;->rinfo:Ljava/lang/Object;

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    .line 41
    iput-object v0, p0, Lcom/oneplus/server/Rule;->startConfig:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/oneplus/server/Rule;->stopConfig:Ljava/lang/String;

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;ILcom/oneplus/server/OPFunction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "request"    # I
    .param p3, "func"    # Lcom/oneplus/server/OPFunction;
    .param p4, "startConfig"    # Ljava/lang/String;
    .param p5, "stopConfig"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;I",
            "Lcom/oneplus/server/OPFunction;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    .local p1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/Rule;->startConfig:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/oneplus/server/Rule;->stopConfig:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/oneplus/server/Rule;->modesSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    .line 47
    iput p2, p0, Lcom/oneplus/server/Rule;->request:I

    .line 48
    iput-object p3, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    .line 49
    iput-object v0, p0, Lcom/oneplus/server/Rule;->rinfo:Ljava/lang/Object;

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    .line 51
    iput-object p4, p0, Lcom/oneplus/server/Rule;->startConfig:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/oneplus/server/Rule;->stopConfig:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private modesSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;"
        }
    .end annotation

    .line 56
    .local p1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 58
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    .line 59
    move v2, v1

    .line 60
    .local v2, "minIndex":I
    add-int/lit8 v3, v1, 0x1

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 61
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v4}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v5}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_0

    .line 62
    move v2, v3

    .line 60
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 65
    .end local v3    # "j":I
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    .line 66
    .local v3, "temp":Lcom/oneplus/server/SceneMode;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/server/SceneMode;

    invoke-virtual {p1, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    .end local v3    # "temp":Lcom/oneplus/server/SceneMode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    .end local v2    # "minIndex":I
    :cond_2
    return-object p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/server/Rule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 154
    return v0

    .line 157
    :cond_0
    instance-of v1, p1, Lcom/oneplus/server/Rule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 159
    return v2

    .line 162
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/oneplus/server/Rule;

    .line 163
    .local v1, "r":Lcom/oneplus/server/Rule;
    iget-object v3, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 164
    .local v3, "size":I
    iget-object v4, v1, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 165
    return v2

    .line 168
    :cond_2
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 169
    iget-object v5, v1, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/server/SceneMode;

    iget-object v6, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v5, v6}, Lcom/oneplus/server/SceneMode;->equals(Lcom/oneplus/server/SceneMode;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 170
    return v2

    .line 168
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    invoke-virtual {v1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/server/OPFunction;->equals(Lcom/oneplus/server/OPFunction;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 175
    return v2

    .line 177
    :cond_5
    iget v4, p0, Lcom/oneplus/server/Rule;->request:I

    iget v5, v1, Lcom/oneplus/server/Rule;->request:I

    if-eq v4, v5, :cond_6

    .line 178
    return v2

    .line 180
    :cond_6
    return v0
.end method

.method public getFunc()Lcom/oneplus/server/OPFunction;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    return-object v0
.end method

.method public getModes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/server/SceneMode;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRequest()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/oneplus/server/Rule;->request:I

    return v0
.end method

.method public getRinfo()Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/oneplus/server/Rule;->rinfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getRulePrio()I
    .locals 4

    .line 74
    const/4 v0, 0x4

    .line 75
    .local v0, "hprio":I
    iget-object v1, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/SceneMode;

    .line 76
    .local v2, "mode":Lcom/oneplus/server/SceneMode;
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getPrio()I

    move-result v3

    invoke-static {v3, v0}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v3

    if-lez v3, :cond_0

    .line 77
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getPrio()I

    move-result v0

    .line 78
    .end local v2    # "mode":Lcom/oneplus/server/SceneMode;
    :cond_0
    goto :goto_0

    .line 80
    :cond_1
    return v0
.end method

.method public getSourceFlag()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/oneplus/server/Rule;->sourceFlag:I

    return v0
.end method

.method public getStartConfig()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/oneplus/server/Rule;->startConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getStopConfig()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/oneplus/server/Rule;->stopConfig:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 186
    iget v0, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    .line 187
    .local v0, "result":I
    if-nez v0, :cond_1

    .line 188
    iget v1, p0, Lcom/oneplus/server/Rule;->request:I

    mul-int/lit8 v1, v1, 0x2

    .line 189
    .end local v0    # "result":I
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 190
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v3}, Lcom/oneplus/server/SceneMode;->hashCode()I

    move-result v3

    add-int v1, v2, v3

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "i":I
    :cond_0
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    invoke-virtual {v2}, Lcom/oneplus/server/OPFunction;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 193
    .end local v1    # "result":I
    .local v0, "result":I
    iput v0, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    .line 196
    :cond_1
    iget v1, p0, Lcom/oneplus/server/Rule;->mHashCode:I

    return v1
.end method

.method public isRunnable()Z
    .locals 4

    .line 142
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 144
    return v0

    .line 142
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setRinfo(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 92
    iput-object p1, p0, Lcom/oneplus/server/Rule;->rinfo:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method public setSourceFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 84
    iput p1, p0, Lcom/oneplus/server/Rule;->sourceFlag:I

    .line 85
    return-void
.end method

.method public setStartConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "_startConfig"    # Ljava/lang/String;

    .line 112
    iput-object p1, p0, Lcom/oneplus/server/Rule;->startConfig:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setStopConfig(Ljava/lang/String;)V
    .locals 0
    .param p1, "_stopConfig"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/oneplus/server/Rule;->stopConfig:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "function:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/Rule;->func:Lcom/oneplus/server/OPFunction;

    invoke-virtual {v2}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget v1, p0, Lcom/oneplus/server/Rule;->request:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, ", ENABLE, modes: "

    goto :goto_0

    :cond_0
    const-string v1, ", DISABLE, modes: "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/server/Rule;->modes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v3}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", sourceFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/Rule;->sourceFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
