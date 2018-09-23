.class public final Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "GridRowBuilderListV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBuilder"
.end annotation


# instance fields
.field private mContentIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;I)V
    .locals 1
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    return-void
.end method

.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V
    .locals 3
    .param p1    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    const-string v1, "no_tint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const-string v1, "large"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "partial"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;Ljava/util/List;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public addText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->addText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public addText(Ljava/lang/CharSequence;Z)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    const-string v0, "partial"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public addTitleText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->addTitleText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public addTitleText(Ljava/lang/CharSequence;Z)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_0

    const-string v0, "partial"

    const-string v1, "title"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "horizontal"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    iget-object v0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->mContentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :goto_0
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "content_description"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/impl/GridRowBuilderListV1Impl$CellBuilder;->mContentIntent:Landroid/app/PendingIntent;

    return-void
.end method
