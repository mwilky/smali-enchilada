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
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/ListBuilderBasicImpl;)V
    .locals 2
    .param p1, "parent"    # Landroidx/slice/builders/impl/ListBuilderBasicImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 191
    return-void
.end method


# virtual methods
.method public addEndItem(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 297
    return-void
.end method

.method public addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;I)V
    .locals 0
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "imageMode"    # I

    .line 304
    return-void
.end method

.method public addEndItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V
    .locals 0
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "imageMode"    # I
    .param p3, "isLoading"    # Z

    .line 311
    return-void
.end method

.method public addEndItem(Landroidx/slice/builders/SliceAction;)V
    .locals 0
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;

    .line 204
    return-void
.end method

.method public addEndItem(Landroidx/slice/builders/SliceAction;Z)V
    .locals 0
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;
    .param p2, "isLoading"    # Z

    .line 211
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 318
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 218
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 223
    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;

    .line 264
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 283
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;
    .param p2, "isLoading"    # Z

    .line 290
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 270
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "isLoading"    # Z

    .line 277
    return-void
.end method

.method public setTitleItem(J)V
    .locals 0
    .param p1, "timeStamp"    # J

    .line 230
    return-void
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)V
    .locals 0
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "imageMode"    # I

    .line 237
    return-void
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V
    .locals 0
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "imageMode"    # I
    .param p3, "isLoading"    # Z

    .line 244
    return-void
.end method

.method public setTitleItem(Landroidx/slice/builders/SliceAction;)V
    .locals 0
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;

    .line 250
    return-void
.end method

.method public setTitleItem(Landroidx/slice/builders/SliceAction;Z)V
    .locals 0
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;
    .param p2, "isLoading"    # Z

    .line 257
    return-void
.end method
