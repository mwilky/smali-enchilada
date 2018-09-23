.class public Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderBuilderImpl"
.end annotation


# instance fields
.field private mContentDescr:Ljava/lang/CharSequence;

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitleItem:Landroidx/slice/SliceItem;

.field private mSummaryItem:Landroidx/slice/SliceItem;

.field private mTitleItem:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method

.method public constructor <init>(Landroidx/slice/builders/impl/ListBuilderV1Impl;)V
    .locals 2
    .param p1    # Landroidx/slice/builders/impl/ListBuilderV1Impl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl;->createChildBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_0
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSummaryItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSummaryItem:Landroidx/slice/SliceItem;

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addItem(Landroidx/slice/SliceItem;)Landroidx/slice/Slice$Builder;

    :cond_2
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    const-string v1, "content_description"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_3
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v1, "title"

    const-string v2, "shortcut"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v1, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    :cond_4
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v0

    const-string v1, "layout_direction"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)V
    .locals 4

    new-instance v0, Landroidx/slice/SliceItem;

    const-string v1, "text"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSubtitleItem:Landroidx/slice/SliceItem;

    const-string v1, "partial"

    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;Z)V
    .locals 4

    new-instance v0, Landroidx/slice/SliceItem;

    const-string v1, "text"

    const-string v2, "summary"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSummaryItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mSummaryItem:Landroidx/slice/SliceItem;

    const-string v1, "partial"

    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Z)V
    .locals 4

    new-instance v0, Landroidx/slice/SliceItem;

    const-string v1, "text"

    const-string v2, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$HeaderBuilderImpl;->mTitleItem:Landroidx/slice/SliceItem;

    const-string v1, "partial"

    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->addHint(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
