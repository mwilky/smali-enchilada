.class public Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilder"
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/ListBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 724
    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createInputRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 725
    return-void
.end method

.method static synthetic access$200(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 712
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    return-object v0
.end method


# virtual methods
.method public setAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 783
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)V

    .line 784
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 834
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 835
    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 851
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    .line 852
    return-void
.end method

.method public setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "action"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 792
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)V

    .line 793
    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 845
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setLayoutDirection(I)V

    .line 846
    return-object p0
.end method

.method public setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "max"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 741
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setMax(I)V

    .line 742
    return-object p0
.end method

.method public setMin(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "min"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 732
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setMin(I)V

    .line 733
    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 825
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    .line 826
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 771
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 772
    return-object p0
.end method

.method public setThumb(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "thumb"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 802
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setThumb(Landroid/support/v4/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setThumb(Landroid/support/v4/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "thumb"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 810
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setThumb(Landroid/support/v4/graphics/drawable/IconCompat;)V

    .line 811
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 762
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)V

    .line 763
    return-object p0
.end method

.method public setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1, "value"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 753
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;->setValue(I)V

    .line 754
    return-object p0
.end method
