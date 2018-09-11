.class public Landroidx/slice/builders/GridBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "GridBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/GridBuilder$CellBuilder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ICON_IMAGE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LARGE_IMAGE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SMALL_IMAGE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mHasSeeMore:Z

.field private mImpl:Landroidx/slice/builders/impl/GridRowBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/ListBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    invoke-virtual {p1}, Landroidx/slice/builders/ListBuilder;->getImpl()Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createGridBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 76
    return-void
.end method

.method static synthetic access$100(Landroidx/slice/builders/GridBuilder;)Landroidx/slice/builders/impl/GridRowBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/GridBuilder;

    .line 43
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    return-object v0
.end method


# virtual methods
.method public addCell(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/GridBuilder;
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
            "Landroidx/slice/builders/GridBuilder$CellBuilder;",
            ">;)",
            "Landroidx/slice/builders/GridBuilder;"
        }
    .end annotation

    .line 97
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/GridBuilder$CellBuilder;>;"
    new-instance v0, Landroidx/slice/builders/GridBuilder$CellBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/GridBuilder$CellBuilder;-><init>(Landroidx/slice/builders/GridBuilder;)V

    .line 98
    .local v0, "b":Landroidx/slice/builders/GridBuilder$CellBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 99
    invoke-virtual {p0, v0}, Landroidx/slice/builders/GridBuilder;->addCell(Landroidx/slice/builders/GridBuilder$CellBuilder;)Landroidx/slice/builders/GridBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addCell(Landroidx/slice/builders/GridBuilder$CellBuilder;)Landroidx/slice/builders/GridBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/GridBuilder$CellBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 88
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-static {p1}, Landroidx/slice/builders/GridBuilder$CellBuilder;->access$000(Landroidx/slice/builders/GridBuilder$CellBuilder;)Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/GridRowBuilder;->addCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 89
    return-object p0
.end method

.method public addSeeMoreAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/GridBuilder;
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 161
    iget-boolean v0, p0, Landroidx/slice/builders/GridBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/GridBuilder;->mHasSeeMore:Z

    .line 167
    return-object p0

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add see more action when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSeeMoreCell(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/GridBuilder;
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
            "Landroidx/slice/builders/GridBuilder$CellBuilder;",
            ">;)",
            "Landroidx/slice/builders/GridBuilder;"
        }
    .end annotation

    .line 145
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/GridBuilder$CellBuilder;>;"
    new-instance v0, Landroidx/slice/builders/GridBuilder$CellBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/GridBuilder$CellBuilder;-><init>(Landroidx/slice/builders/GridBuilder;)V

    .line 146
    .local v0, "b":Landroidx/slice/builders/GridBuilder$CellBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0, v0}, Landroidx/slice/builders/GridBuilder;->addSeeMoreCell(Landroidx/slice/builders/GridBuilder$CellBuilder;)Landroidx/slice/builders/GridBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addSeeMoreCell(Landroidx/slice/builders/GridBuilder$CellBuilder;)Landroidx/slice/builders/GridBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/GridBuilder$CellBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 119
    iget-boolean v0, p0, Landroidx/slice/builders/GridBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-static {p1}, Landroidx/slice/builders/GridBuilder$CellBuilder;->access$000(Landroidx/slice/builders/GridBuilder$CellBuilder;)Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/GridRowBuilder;->setSeeMoreCell(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/GridBuilder;->mHasSeeMore:Z

    .line 125
    return-object p0

    .line 120
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

    .line 193
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridBuilder;
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 184
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 80
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/GridRowBuilder;

    iput-object v0, p0, Landroidx/slice/builders/GridBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    .line 81
    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/GridBuilder;
    .locals 1
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 175
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    .line 176
    return-object p0
.end method
