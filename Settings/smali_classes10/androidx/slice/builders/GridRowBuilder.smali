.class public Landroidx/slice/builders/GridRowBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "GridRowBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    }
.end annotation


# instance fields
.field private mHasSeeMore:Z

.field private mImpl:Landroidx/slice/builders/impl/GridRowBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->getImpl()Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createGridBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/impl/GridRowBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    return-object v0
.end method


# virtual methods
.method public addCell(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/GridRowBuilder;
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
            "Landroidx/slice/builders/GridRowBuilder$CellBuilder;",
            ">;)",
            "Landroidx/slice/builders/GridRowBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;-><init>(Landroidx/slice/builders/GridRowBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/GridRowBuilder;->addCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/GridRowBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/GridRowBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/GridRowBuilder$CellBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-static {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->access$000(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/GridRowBuilder;->addCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-object p0
.end method

.method public addSeeMoreAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/GridRowBuilder;
    .locals 2
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add see more action when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSeeMoreCell(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/GridRowBuilder;
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
            "Landroidx/slice/builders/GridRowBuilder$CellBuilder;",
            ">;)",
            "Landroidx/slice/builders/GridRowBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;-><init>(Landroidx/slice/builders/GridRowBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/GridRowBuilder;->addSeeMoreCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/GridRowBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addSeeMoreCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/GridRowBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/GridRowBuilder$CellBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-static {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->access$000(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/GridRowBuilder;->setSeeMoreCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add see more cell when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImpl()Landroidx/slice/builders/impl/GridRowBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridRowBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/GridRowBuilder;

    iput-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    return-void
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/GridRowBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder;->setLayoutDirection(I)V

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/GridRowBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    return-object p0
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/GridRowBuilder;
    .locals 2
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add see more action when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeeMoreCell(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/GridRowBuilder;
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
            "Landroidx/slice/builders/GridRowBuilder$CellBuilder;",
            ">;)",
            "Landroidx/slice/builders/GridRowBuilder;"
        }
    .end annotation

    new-instance v0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;-><init>(Landroidx/slice/builders/GridRowBuilder;)V

    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroidx/slice/builders/GridRowBuilder;->setSeeMoreCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/GridRowBuilder;

    move-result-object v1

    return-object v1
.end method

.method public setSeeMoreCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/GridRowBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/GridRowBuilder$CellBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-static {p1}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->access$000(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/GridRowBuilder;->setSeeMoreCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add see more cell when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
