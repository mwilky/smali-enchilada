.class public Landroidx/slice/builders/impl/ListBuilderV1Impl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;,
        Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;,
        Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;,
        Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;
    }
.end annotation


# instance fields
.field private mIsError:Z

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/Slice;",
            ">;"
        }
    .end annotation
.end field

.field private mSliceHeader:Landroidx/slice/Slice;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 1

    new-instance v0, Landroidx/slice/SystemClock;

    invoke-direct {v0}, Landroidx/slice/SystemClock;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-void
.end method


# virtual methods
.method public addAction(Landroidx/slice/builders/SliceAction;)V
    .locals 3
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceActions:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceActions:Ljava/util/List;

    :cond_0
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v1, "actions"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addGridRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/impl/TemplateBuilderImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "list_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public addInputRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v1

    const-string v2, "range"

    invoke-virtual {v0, v1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public addRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v1

    const-string v2, "range"

    invoke-virtual {v0, v1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/impl/TemplateBuilderImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "list_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "millis"

    const-string v3, "last_updated"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/slice/Slice$Builder;->addLong(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceHeader:Landroidx/slice/Slice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceHeader:Landroidx/slice/Slice;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceActions:Ljava/util/List;

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/Slice;

    invoke-virtual {v0, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "actions"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :cond_2
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mIsError:Z

    if-eqz v0, :cond_3

    const-string v0, "error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_3
    return-void
.end method

.method public createGridBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;-><init>(Landroidx/slice/builders/impl/ListBuilderV1Impl;)V

    return-object v0
.end method

.method public createHeaderBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;-><init>(Landroidx/slice/builders/impl/ListBuilderV1Impl;)V

    return-object v0
.end method

.method public createHeaderBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public createInputRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 2

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    return-object v0
.end method

.method public createRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 2

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    return-object v0
.end method

.method public createRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;-><init>(Landroidx/slice/builders/impl/ListBuilderV1Impl;)V

    return-object v0
.end method

.method public createRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RowBuilderImpl;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public setColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "color"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setHeader(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/impl/TemplateBuilderImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mSliceHeader:Landroidx/slice/Slice;

    return-void
.end method

.method public setIsError(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl;->mIsError:Z

    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    const-string v2, "keywords"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "layout_direction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    new-instance v1, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v2, "see_more"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v3, "see_more"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setSeeMoreRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 2

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "see_more"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->build()Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setTtl(J)V
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getClock()Landroidx/slice/Clock;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/Clock;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    const-string v3, "millis"

    const-string v4, "ttl"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroidx/slice/Slice$Builder;->addTimestamp(JLjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method
