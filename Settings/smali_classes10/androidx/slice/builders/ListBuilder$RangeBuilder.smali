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
    .param p1, "parent"    # Landroidx/slice/builders/ListBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 624
    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 625
    return-void
.end method

.method static synthetic access$300(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/ListBuilder$RangeBuilder;

    .line 612
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    return-object v0
.end method


# virtual methods
.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 683
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 684
    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 700
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    .line 701
    return-void
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 694
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setLayoutDirection(I)V

    .line 695
    return-object p0
.end method

.method public setMax(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1, "max"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 632
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setMax(I)V

    .line 633
    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 674
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    .line 675
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 661
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 662
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 652
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setTitle(Ljava/lang/CharSequence;)V

    .line 653
    return-object p0
.end method

.method public setValue(I)Landroidx/slice/builders/ListBuilder$RangeBuilder;
    .locals 1
    .param p1, "value"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 643
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;->setValue(I)V

    .line 644
    return-object p0
.end method
