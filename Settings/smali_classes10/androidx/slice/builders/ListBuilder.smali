.class public Landroidx/slice/builders/ListBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/ListBuilder$HeaderBuilder;,
        Landroidx/slice/builders/ListBuilder$RowBuilder;,
        Landroidx/slice/builders/ListBuilder$InputRangeBuilder;,
        Landroidx/slice/builders/ListBuilder$RangeBuilder;,
        Landroidx/slice/builders/ListBuilder$LayoutDirection;,
        Landroidx/slice/builders/ListBuilder$ImageMode;
    }
.end annotation


# static fields
.field public static final ICON_IMAGE:I = 0x0

.field public static final INFINITY:J = -0x1L

.field public static final LARGE_IMAGE:I = 0x2

.field public static final SMALL_IMAGE:I = 0x1

.field public static final UNKNOWN_IMAGE:I = 0x3


# instance fields
.field private mHasSeeMore:Z

.field private mImpl:Landroidx/slice/builders/impl/ListBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p3, p4}, Landroidx/slice/builders/impl/ListBuilder;->setTtl(J)V

    return-void
.end method

.method static synthetic access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-object v0
.end method


# virtual methods
.method public addAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->addAction(Landroidx/slice/builders/SliceAction;)V

    return-object p0
.end method

.method public addGrid(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/util/Consumer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/GridBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/slice/builders/GridBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/GridBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addGrid(Landroidx/slice/builders/GridBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addGrid(Landroidx/slice/builders/GridBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/GridBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-virtual {p1}, Landroidx/slice/builders/GridBuilder;->getImpl()Landroidx/slice/builders/impl/GridRowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addGridRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-object p0
.end method

.method public addGridRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/util/Consumer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/GridRowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/GridRowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/GridRowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addGridRow(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addGridRow(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/GridRowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder;->getImpl()Landroidx/slice/builders/impl/GridRowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addGridRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-object p0
.end method

.method public addInputRange(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/util/Consumer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$InputRangeBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->access$200(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addInputRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-object p0
.end method

.method public addRange(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/util/Consumer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$RangeBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/ListBuilder$RangeBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RangeBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRange(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addRange(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/ListBuilder$RangeBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->access$300(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-object p0
.end method

.method public addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/util/Consumer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/ListBuilder$RowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-object p0
.end method

.method public addSeeMoreAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add see more action when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSeeMoreRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/util/Consumer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->setSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/ListBuilder$RowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add see more row when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImpl()Landroidx/slice/builders/impl/ListBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-object v0
.end method

.method protected selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    sget-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getClock()Landroidx/slice/Clock;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/builders/impl/ListBuilderV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-object v0

    :cond_0
    sget-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAccentColor(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    return-object p0
.end method

.method public setColor(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/util/Consumer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$HeaderBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/ListBuilder$HeaderBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->access$100(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->setHeader(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-void
.end method

.method public setIsError(Z)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setIsError(Z)V

    return-object p0
.end method

.method public setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/List;)V

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setLayoutDirection(I)V

    return-object p0
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add see more action when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeeMoreRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroid/support/v4/util/Consumer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public setSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/ListBuilder$RowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add see more row when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
