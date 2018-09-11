.class public final Landroidx/slice/builders/impl/GridRowBuilderBasicImpl$CellBuilder;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "GridRowBuilderBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/GridRowBuilder$CellBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/GridRowBuilderBasicImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellBuilder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 117
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/GridRowBuilderBasicImpl;)V
    .locals 2
    .param p1, "parent"    # Landroidx/slice/builders/impl/GridRowBuilderBasicImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 111
    invoke-virtual {p1}, Landroidx/slice/builders/impl/GridRowBuilderBasicImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 112
    return-void
.end method


# virtual methods
.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;I)V
    .locals 0
    .param p1, "image"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 152
    return-void
.end method

.method public addImage(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V
    .locals 0
    .param p1, "image"    # Landroid/support/v4/graphics/drawable/IconCompat;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "imageMode"    # I
    .param p3, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 159
    return-void
.end method

.method public addText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 125
    return-void
.end method

.method public addText(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z

    .line 131
    return-void
.end method

.method public addTitleText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 138
    return-void
.end method

.method public addTitleText(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "isLoading"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 145
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 179
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 172
    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 166
    return-void
.end method
