.class public Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "GridRowBuilderListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/GridRowBuilder;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;
    }
.end annotation


# instance fields
.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/impl/ListBuilderV1Impl;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/impl/ListBuilderV1Impl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public addCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 2

    const-string v0, "horizontal"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget-object v0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v1, "title"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :cond_0
    return-void
.end method

.method public createGridRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;-><init>(Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;)V

    return-object v0
.end method

.method public createGridRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;-><init>(Landroid/net/Uri;)V

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "content_description"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "layout_direction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-void
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    new-instance v1, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v2, "see_more"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    new-instance v2, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

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

.method public setSeeMoreCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/impl/TemplateBuilderImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "see_more"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    return-void
.end method
