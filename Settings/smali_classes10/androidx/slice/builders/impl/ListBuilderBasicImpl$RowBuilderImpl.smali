.class public Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder$RowBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilderImpl"
.end annotation


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

.method public constructor <init>(Landroidx/slice/builders/impl/ListBuilderBasicImpl;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/impl/ListBuilderBasicImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public addEndItem(J)V
    .locals 0

    return-void
.end method

.method public addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;I)V
    .locals 0

    return-void
.end method

.method public addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V
    .locals 0

    return-void
.end method

.method public addEndItem(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    return-void
.end method

.method public addEndItem(Landroidx/slice/builders/SliceAction;Z)V
    .locals 0

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0

    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 0

    return-void
.end method

.method public setTitleItem(J)V
    .locals 0

    return-void
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)V
    .locals 0

    return-void
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V
    .locals 0

    return-void
.end method

.method public setTitleItem(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    return-void
.end method

.method public setTitleItem(Landroidx/slice/builders/SliceAction;Z)V
    .locals 0

    return-void
.end method
