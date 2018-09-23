.class public Landroidx/slice/builders/ListBuilder$RangeBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeBuilder"
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 1
    .param p1    # Landroidx/slice/builders/ListBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    return-object v0
.end method


# virtual methods
.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    return-void
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setLayoutDirection(I)V

    return-object p0
.end method

.method public setMax(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setMax(I)V

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setSubtitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setTitle(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setValue(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setValue(I)V

    return-object p0
.end method
