.class public final Landroid/renderscript/ScriptGroup;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Builder2;,
        Landroid/renderscript/ScriptGroup$Binding;,
        Landroid/renderscript/ScriptGroup$Builder;,
        Landroid/renderscript/ScriptGroup$Input;,
        Landroid/renderscript/ScriptGroup$Future;,
        Landroid/renderscript/ScriptGroup$Closure;,
        Landroid/renderscript/ScriptGroup$Node;,
        Landroid/renderscript/ScriptGroup$ConnectLine;,
        Landroid/renderscript/ScriptGroup$IO;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScriptGroup"


# instance fields
.field private mClosures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;"
        }
    .end annotation
.end field

.field mInputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mInputs2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field mOutputs:[Landroid/renderscript/ScriptGroup$IO;

.field private mOutputs2:[Landroid/renderscript/ScriptGroup$Future;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[Landroid/renderscript/ScriptGroup$Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Closure;",
            ">;",
            "Ljava/util/List<",
            "Landroid/renderscript/ScriptGroup$Input;",
            ">;[",
            "Landroid/renderscript/ScriptGroup$Future;",
            ")V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    iput-object p2, p0, Landroid/renderscript/ScriptGroup;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    iput-object p4, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    iput-object p5, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/renderscript/ScriptGroup$Closure;

    invoke-virtual {v2, p1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/renderscript/RenderScript;->getCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1, v0}, Landroid/renderscript/RenderScript;->nScriptGroup2Create(Ljava/lang/String;Ljava/lang/String;[J)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Landroid/renderscript/ScriptGroup;->setID(J)V

    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->guard:Ldalvik/system/CloseGuard;

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mClosures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/renderscript/ScriptGroup$Closure;

    invoke-virtual {v1}, Landroid/renderscript/ScriptGroup$Closure;->destroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execute()V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptGroupExecute(J)V

    return-void
.end method

.method public varargs execute([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8

    array-length v0, p1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const-string v0, "ScriptGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " receives "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " inputs, less than expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    array-length v0, p1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    const-string v0, "ScriptGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " receives "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " inputs, more than expected "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    aget-object v3, p1, v1

    instance-of v4, v3, Landroid/renderscript/ScriptGroup$Future;

    if-nez v4, :cond_3

    instance-of v4, v3, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Landroid/renderscript/ScriptGroup;->mInputs2:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/renderscript/ScriptGroup$Input;

    invoke-virtual {v4, v3}, Landroid/renderscript/ScriptGroup$Input;->set(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, "ScriptGroup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": input "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is a future or unbound value"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nScriptGroup2Execute(J)V

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/renderscript/ScriptGroup;->mOutputs2:[Landroid/renderscript/ScriptGroup$Future;

    array-length v4, v3

    :goto_2
    if-ge v0, v4, :cond_6

    aget-object v5, v3, v0

    invoke-virtual {v5}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v7, :cond_5

    move-object v7, v6

    check-cast v7, Landroid/renderscript/ScriptGroup$Input;

    invoke-virtual {v7}, Landroid/renderscript/ScriptGroup$Input;->get()Ljava/lang/Object;

    move-result-object v6

    :cond_5
    add-int/lit8 v7, v2, 0x1

    aput-object v6, v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v7

    goto :goto_2

    :cond_6
    return-object v1
.end method

.method public setInput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mInputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v1}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nScriptGroupSetInput(JJJ)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Script not found"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Landroid/renderscript/Script$KernelID;Landroid/renderscript/Allocation;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/renderscript/ScriptGroup$IO;->mKID:Landroid/renderscript/Script$KernelID;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mOutputs:[Landroid/renderscript/ScriptGroup$IO;

    aget-object v1, v1, v0

    iput-object p2, v1, Landroid/renderscript/ScriptGroup$IO;->mAllocation:Landroid/renderscript/Allocation;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/ScriptGroup;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v1}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v1, p0, Landroid/renderscript/ScriptGroup;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, p2}, Landroid/renderscript/RenderScript;->safeID(Landroid/renderscript/BaseObj;)J

    move-result-wide v7

    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nScriptGroupSetOutput(JJJ)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    const-string v1, "Script not found"

    invoke-direct {v0, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
