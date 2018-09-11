.class public final Landroidx/slice/builders/GridBuilder$CellBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "GridBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/GridBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBuilder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/GridBuilder;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/GridBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 224
    invoke-static {p1}, Landroidx/slice/builders/GridBuilder;->access$100(Landroidx/slice/builders/GridBuilder;)Landroidx/slice/builders/impl/GridRowBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/GridRowBuilder;->createGridRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 225
    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/GridBuilder;Landroid/net/Uri;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/GridBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 232
    invoke-static {p1}, Landroidx/slice/builders/GridBuilder;->access$100(Landroidx/slice/builders/GridBuilder;)Landroidx/slice/builders/impl/GridRowBuilder;

    move-result-object v0

    invoke-interface {v0, p2}, Landroidx/slice/builders/impl/GridRowBuilder;->createGridRowBuilder(Landroid/net/Uri;)Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 233
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/GridBuilder$CellBuilder;)Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/GridBuilder$CellBuilder;

    .line 216
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    return-object v0
.end method


# virtual methods
.method public addImage(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 2
    .param p1, "image"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/slice/builders/GridBuilder$CellBuilder;->addImage(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/GridBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/graphics/drawable/Icon;I)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/GridBuilder$CellBuilder;->addImage(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/GridBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 2
    .param p1, "image"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .param p3, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    .line 364
    return-object p0
.end method

.method public addImage(Landroid/graphics/drawable/Icon;Z)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/slice/builders/GridBuilder$CellBuilder;->addImage(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/GridBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "image"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/builders/GridBuilder$CellBuilder;->addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/GridBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "image"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .param p3, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 404
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1, p2, p3}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    .line 405
    return-object p0
.end method

.method public addLargeImage(Landroid/graphics/drawable/Icon;)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 2
    .param p1, "image"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/slice/builders/GridBuilder$CellBuilder;->addImage(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/GridBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addLargeImage(Landroid/graphics/drawable/Icon;Z)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Icon;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0, p2}, Landroidx/slice/builders/GridBuilder$CellBuilder;->addImage(Landroid/graphics/drawable/Icon;IZ)Landroidx/slice/builders/GridBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/GridBuilder$CellBuilder;->addText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 261
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->addText(Ljava/lang/CharSequence;Z)V

    .line 262
    return-object p0
.end method

.method public addTitleText(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 272
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/GridBuilder$CellBuilder;->addTitleText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridBuilder$CellBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTitleText(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 288
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->addTitleText(Ljava/lang/CharSequence;Z)V

    .line 289
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 422
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 423
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroidx/slice/builders/GridBuilder$CellBuilder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 413
    iget-object v0, p0, Landroidx/slice/builders/GridBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;->setContentIntent(Landroid/app/PendingIntent;)V

    .line 414
    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 237
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    iput-object v0, p0, Landroidx/slice/builders/GridBuilder$CellBuilder;->mImpl:Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;

    .line 238
    return-void
.end method
