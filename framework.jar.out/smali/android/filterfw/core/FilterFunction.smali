.class public Landroid/filterfw/core/FilterFunction;
.super Ljava/lang/Object;
.source "FilterFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/FilterFunction$FrameHolderPort;
    }
.end annotation


# instance fields
.field private mFilter:Landroid/filterfw/core/Filter;

.field private mFilterContext:Landroid/filterfw/core/FilterContext;

.field private mFilterIsSetup:Z

.field private mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/Filter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterfw/core/FilterFunction;->mFilterIsSetup:Z

    iput-object p1, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    iput-object p2, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    return-void
.end method

.method private connectFilterOutputs()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getNumberOfOutputs()I

    move-result v1

    new-array v1, v1, [Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    iput-object v1, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v1}, Landroid/filterfw/core/Filter;->getOutputPorts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/core/OutputPort;

    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    new-instance v4, Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    invoke-direct {v4, p0}, Landroid/filterfw/core/FilterFunction$FrameHolderPort;-><init>(Landroid/filterfw/core/FilterFunction;)V

    aput-object v4, v3, v0

    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/filterfw/core/OutputPort;->connectTo(Landroid/filterfw/core/InputPort;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->performClose(Landroid/filterfw/core/FilterContext;)V

    return-void
.end method

.method public execute(Landroid/filterfw/core/KeyValueMap;)Landroid/filterfw/core/Frame;
    .locals 9

    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getNumberOfOutputs()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_7

    iget-boolean v2, p0, Landroid/filterfw/core/FilterFunction;->mFilterIsSetup:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Landroid/filterfw/core/FilterFunction;->connectFilterOutputs()V

    iput-boolean v1, p0, Landroid/filterfw/core/FilterFunction;->mFilterIsSetup:Z

    :cond_0
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v3}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/filterfw/core/GLEnvironment;->isActive()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/filterfw/core/GLEnvironment;->activate()V

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/KeyValueMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/filterfw/core/Frame;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/filterfw/core/Frame;

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/Filter;->pushInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    goto :goto_1

    :cond_2
    iget-object v6, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/Filter;->pushInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v4}, Landroid/filterfw/core/Filter;->getStatus()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v4}, Landroid/filterfw/core/Filter;->openOutputs()V

    :cond_4
    iget-object v4, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v5, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v4, v5}, Landroid/filterfw/core/Filter;->performProcess(Landroid/filterfw/core/FilterContext;)V

    const/4 v4, 0x0

    if-ne v0, v1, :cond_5

    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/filterfw/core/FilterFunction$FrameHolderPort;->hasFrame()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mResultHolders:[Landroid/filterfw/core/FilterFunction$FrameHolderPort;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/filterfw/core/FilterFunction$FrameHolderPort;->pullFrame()Landroid/filterfw/core/Frame;

    move-result-object v4

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v3}, Landroid/filterfw/core/GLEnvironment;->deactivate()V

    :cond_6
    return-object v4

    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling execute on filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with multiple outputs! Use executeMulti() instead!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;
    .locals 1

    invoke-static {p1}, Landroid/filterfw/core/KeyValueMap;->fromKeyValues([Ljava/lang/Object;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/filterfw/core/FilterFunction;->execute(Landroid/filterfw/core/KeyValueMap;)Landroid/filterfw/core/Frame;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/filterfw/core/FilterContext;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object v0
.end method

.method public getFilter()Landroid/filterfw/core/Filter;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    return-object v0
.end method

.method public setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/Filter;->setInputFrame(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    return-void
.end method

.method public setInputValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0, p1, p2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public tearDown()V
    .locals 2

    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    iget-object v1, p0, Landroid/filterfw/core/FilterFunction;->mFilterContext:Landroid/filterfw/core/FilterContext;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/Filter;->performTearDown(Landroid/filterfw/core/FilterContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/filterfw/core/FilterFunction;->mFilter:Landroid/filterfw/core/Filter;

    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
