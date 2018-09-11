.class public Landroidx/slice/builders/ListBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/ListBuilder$HeaderBuilder;,
        Landroidx/slice/builders/ListBuilder$RowBuilder;,
        Landroidx/slice/builders/ListBuilder$InputRangeBuilder;,
        Landroidx/slice/builders/ListBuilder$RangeBuilder;,
        Landroidx/slice/builders/ListBuilder$LayoutDirection;,
        Landroidx/slice/builders/ListBuilder$ImageMode;
    }
.end annotation


# static fields
.field public static final ICON_IMAGE:I = 0x0

.field public static final INFINITY:J = -0x1L

.field public static final LARGE_IMAGE:I = 0x2

.field public static final SMALL_IMAGE:I = 0x1

.field public static final UNKNOWN_IMAGE:I = 0x3


# instance fields
.field private mHasSeeMore:Z

.field private mImpl:Landroidx/slice/builders/impl/ListBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "ttl"    # J

    .line 189
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 190
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p3, p4}, Landroidx/slice/builders/impl/ListBuilder;->setTtl(J)V

    .line 191
    return-void
.end method

.method static synthetic access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/ListBuilder;

    .line 118
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-object v0
.end method


# virtual methods
.method public addAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 321
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->addAction(Landroidx/slice/builders/SliceAction;)V

    .line 322
    return-object p0
.end method

.method public addGrid(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
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
            "Landroidx/slice/builders/GridBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/GridBuilder;>;"
    new-instance v0, Landroidx/slice/builders/GridBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/GridBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 238
    .local v0, "b":Landroidx/slice/builders/GridBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addGrid(Landroidx/slice/builders/GridBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addGrid(Landroidx/slice/builders/GridBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/GridBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-virtual {p1}, Landroidx/slice/builders/GridBuilder;->getImpl()Landroidx/slice/builders/impl/GridRowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addGridRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 226
    return-object p0
.end method

.method public addGridRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
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
            "Landroidx/slice/builders/GridRowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 256
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/GridRowBuilder;>;"
    new-instance v0, Landroidx/slice/builders/GridRowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/GridRowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 257
    .local v0, "b":Landroidx/slice/builders/GridRowBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addGridRow(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addGridRow(Landroidx/slice/builders/GridRowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/GridRowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 247
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-virtual {p1}, Landroidx/slice/builders/GridRowBuilder;->getImpl()Landroidx/slice/builders/impl/GridRowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addGridRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 248
    return-object p0
.end method

.method public addInputRange(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
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
            "Landroidx/slice/builders/ListBuilder$InputRangeBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 574
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/ListBuilder$InputRangeBuilder;>;"
    new-instance v0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 575
    .local v0, "inputRangeBuilder":Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "b"    # Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 561
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->access$200(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addInputRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 562
    return-object p0
.end method

.method public addRange(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
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
            "Landroidx/slice/builders/ListBuilder$RangeBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 599
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/ListBuilder$RangeBuilder;>;"
    new-instance v0, Landroidx/slice/builders/ListBuilder$RangeBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RangeBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 600
    .local v0, "rangeBuilder":Landroidx/slice/builders/ListBuilder$RangeBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 601
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRange(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addRange(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "rangeBuilder"    # Landroidx/slice/builders/ListBuilder$RangeBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 587
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RangeBuilder;->access$300(Landroidx/slice/builders/ListBuilder$RangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 588
    return-object p0
.end method

.method public addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
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
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 212
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/ListBuilder$RowBuilder;>;"
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 213
    .local v0, "b":Landroidx/slice/builders/ListBuilder$RowBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/ListBuilder$RowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 203
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 204
    return-object p0
.end method

.method public addSeeMoreAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 511
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    .line 516
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    .line 517
    return-object p0

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add see more action when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addSeeMoreRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
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
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 492
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/ListBuilder$RowBuilder;>;"
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 493
    .local v0, "b":Landroidx/slice/builders/ListBuilder$RowBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 494
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->setSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/ListBuilder$RowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 464
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    .line 470
    return-object p0

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add see more row when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImpl()Landroidx/slice/builders/impl/ListBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-object v0
.end method

.method protected selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 4
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 536
    sget-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getClock()Landroidx/slice/Clock;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/builders/impl/ListBuilderV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-object v0

    .line 538
    :cond_0
    sget-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    .line 541
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAccentColor(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 348
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    .line 349
    return-object p0
.end method

.method public setColor(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setHeader(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
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
            "Landroidx/slice/builders/ListBuilder$HeaderBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 301
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/ListBuilder$HeaderBuilder;>;"
    new-instance v0, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 302
    .local v0, "b":Landroidx/slice/builders/ListBuilder$HeaderBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 303
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/ListBuilder$HeaderBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 279
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->access$100(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/impl/ListBuilder$HeaderBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->setHeader(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 280
    return-object p0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 195
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 196
    return-void
.end method

.method public setIsError(Z)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1, "isError"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 526
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setIsError(Z)V

    .line 527
    return-object p0
.end method

.method public setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 357
    .local p1, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/List;)V

    .line 358
    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1, "layoutDirection"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 369
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setLayoutDirection(I)V

    .line 370
    return-object p0
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 435
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreAction(Landroid/app/PendingIntent;)V

    .line 440
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    .line 441
    return-object p0

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add see more action when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeeMoreRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
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
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 419
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/ListBuilder$RowBuilder;>;"
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 420
    .local v0, "b":Landroidx/slice/builders/ListBuilder$RowBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public setSeeMoreRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/ListBuilder$RowBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 392
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->setSeeMoreRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder;->mHasSeeMore:Z

    .line 398
    return-object p0

    .line 393
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add see more row when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
