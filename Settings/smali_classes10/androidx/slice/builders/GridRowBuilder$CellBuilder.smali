.class public Landroidx/slice/builders/GridRowBuilder$CellBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "GridRowBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/GridRowBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CellBuilder"
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/GridRowBuilder;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/GridRowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 335
    invoke-static {p1}, Landroidx/slice/builders/GridRowBuilder;->access$100(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/impl/GridRowBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/GridRowBuilder;->createGridRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 336
    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/GridRowBuilder;Landroid/net/Uri;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/GridRowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 343
    invoke-static {p1}, Landroidx/slice/builders/GridRowBuilder;->access$100(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/impl/GridRowBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/slice/builders/impl/GridRowBuilder;->createGridRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 344
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    .line 327
    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    return-object v0
.end method


# virtual methods
.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .param p1, "image"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 417
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .param p1, "image"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .param p3, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 439
    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1, p2, p3}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    .line 440
    return-object p0
.end method

.method public addText(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->addText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 372
    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->addText(Ljava/lang/CharSequence;Z)V

    .line 373
    return-object p0
.end method

.method public addTitleText(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->addTitleText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTitleText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 399
    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->addTitleText(Ljava/lang/CharSequence;Z)V

    .line 400
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 457
    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 458
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 448
    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->setContentIntent(Landroid/app/PendingIntent;)V

    .line 449
    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 348
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    iput-object v0, p0, Landroidx/slice/builders/GridRowBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    .line 349
    return-void
.end method
