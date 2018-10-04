.class public Landroid/media/effect/FilterGraphEffect;
.super Landroid/media/effect/FilterEffect;
.source "FilterGraphEffect.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterGraphEffect"


# instance fields
.field protected mGraph:Landroid/filterfw/core/FilterGraph;

.field protected mInputName:Ljava/lang/String;

.field protected mOutputName:Ljava/lang/String;

.field protected mRunner:Landroid/filterfw/core/GraphRunner;

.field protected mSchedulerClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/effect/FilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V

    iput-object p4, p0, Landroid/media/effect/FilterGraphEffect;->mInputName:Ljava/lang/String;

    iput-object p5, p0, Landroid/media/effect/FilterGraphEffect;->mOutputName:Ljava/lang/String;

    iput-object p6, p0, Landroid/media/effect/FilterGraphEffect;->mSchedulerClass:Ljava/lang/Class;

    invoke-direct {p0, p3}, Landroid/media/effect/FilterGraphEffect;->createGraph(Ljava/lang/String;)V

    return-void
.end method

.method private createGraph(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/filterfw/io/TextGraphReader;

    invoke-direct {v0}, Landroid/filterfw/io/TextGraphReader;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/filterfw/io/GraphReader;->readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;

    move-result-object v1

    iput-object v1, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;
    :try_end_0
    .catch Landroid/filterfw/io/GraphIOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/filterfw/core/SyncRunner;

    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v2

    iget-object v3, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v4, p0, Landroid/media/effect/FilterGraphEffect;->mSchedulerClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    iput-object v1, p0, Landroid/media/effect/FilterGraphEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not setup effect"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not setup effect"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public apply(IIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->beginGLEffect()V

    iget-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v1, p0, Landroid/media/effect/FilterGraphEffect;->mInputName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "texId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v1, "width"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "height"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    iget-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mOutputName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "texId"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v2, p0, Landroid/media/effect/FilterGraphEffect;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->endGLEffect()V

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Internal error applying effect: "

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error applying effect"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error applying effect"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    invoke-virtual {p0}, Landroid/media/effect/FilterGraphEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->tearDown(Landroid/filterfw/core/FilterContext;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/effect/FilterGraphEffect;->mGraph:Landroid/filterfw/core/FilterGraph;

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
