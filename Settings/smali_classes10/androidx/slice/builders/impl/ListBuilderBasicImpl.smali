.class public Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderBasicImpl.java"

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
        Landroidx/slice/builders/impl/ListBuilderBasicImpl$HeaderBuilderImpl;,
        Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;
    }
.end annotation


# instance fields
.field mIsError:Z


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public addAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    return-void
.end method

.method public addGridRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    return-void
.end method

.method public addInputRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    return-void
.end method

.method public addRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    return-void
.end method

.method public addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIsError:Z

    if-eqz v0, :cond_0

    const-string v0, "error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_0
    return-void
.end method

.method public createGridBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderBasicImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderBasicImpl;-><init>(Landroidx/slice/builders/impl/ListBuilderBasicImpl;)V

    return-object v0
.end method

.method public createHeaderBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl$HeaderBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl$HeaderBuilderImpl;-><init>(Landroidx/slice/builders/impl/ListBuilderBasicImpl;)V

    return-object v0
.end method

.method public createHeaderBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl$HeaderBuilderImpl;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl$HeaderBuilderImpl;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public createInputRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 2

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    return-object v0
.end method

.method public createRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 2

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    return-object v0
.end method

.method public createRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;-><init>(Landroidx/slice/builders/impl/ListBuilderBasicImpl;)V

    return-object v0
.end method

.method public createRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    return-void
.end method

.method public setHeader(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    return-void
.end method

.method public setIsError(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIsError:Z

    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

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
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

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
    .locals 0

    return-void
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public setSeeMoreRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    return-void
.end method

.method public setTtl(J)V
    .locals 0

    return-void
.end method
