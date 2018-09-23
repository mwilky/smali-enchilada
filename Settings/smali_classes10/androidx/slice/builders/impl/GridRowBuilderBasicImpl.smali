.class public Landroidx/slice/builders/impl/GridRowBuilderBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "GridRowBuilderBasicImpl.java"

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
        Landroidx/slice/builders/impl/GridRowBuilderBasicImpl$CellBuilder;
    }
.end annotation


# direct methods
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
.method public addCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0

    return-void
.end method

.method public createGridRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderBasicImpl$CellBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/GridRowBuilderBasicImpl$CellBuilder;-><init>(Landroidx/slice/builders/impl/GridRowBuilderBasicImpl;)V

    return-object v0
.end method

.method public createGridRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    new-instance v0, Landroidx/slice/builders/impl/GridRowBuilderBasicImpl$CellBuilder;

    invoke-direct {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilderBasicImpl$CellBuilder;-><init>(Landroid/net/Uri;)V

    return-object v0
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

.method public setSeeMoreAction(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public setSeeMoreCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0

    return-void
.end method
