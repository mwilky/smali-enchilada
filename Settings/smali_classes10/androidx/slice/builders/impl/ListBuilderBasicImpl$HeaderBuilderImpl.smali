.class public Landroidx/slice/builders/impl/ListBuilderBasicImpl$HeaderBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBuilderImpl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 335
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 336
    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/ListBuilderBasicImpl;)V
    .locals 2
    .param p1, "parent"    # Landroidx/slice/builders/impl/ListBuilderBasicImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 329
    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 330
    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 343
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 376
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .line 381
    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;

    .line 371
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "subtitle"    # Ljava/lang/CharSequence;
    .param p2, "isLoading"    # Z

    .line 357
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "summarySubtitle"    # Ljava/lang/CharSequence;
    .param p2, "isLoading"    # Z

    .line 364
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "isLoading"    # Z

    .line 350
    return-void
.end method
