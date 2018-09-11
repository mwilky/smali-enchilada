.class public Landroidx/slice/SliceMetadata;
.super Ljava/lang/Object;
.source "SliceMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/SliceMetadata$SliceLoadingState;
    }
.end annotation


# static fields
.field public static final LOADED_ALL:I = 0x2

.field public static final LOADED_NONE:I = 0x0

.field public static final LOADED_PARTIAL:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExpiry:J

.field private mHeaderItem:Landroidx/slice/SliceItem;

.field private mLastUpdated:J

.field private mListContent:Landroidx/slice/widget/ListContent;

.field private mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

.field private mSlice:Landroidx/slice/Slice;

.field private mSliceActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplateType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "slice"    # Landroidx/slice/Slice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p2, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    .line 126
    iput-object p1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    .line 127
    const-string v0, "long"

    const-string v1, "ttl"

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 128
    .local v0, "ttlItem":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    .line 131
    :cond_0
    const-string v1, "long"

    const-string v3, "last_updated"

    invoke-static {p2, v1, v3, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    .line 132
    .local v1, "updatedItem":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    .line 136
    :cond_1
    new-instance v2, Landroidx/slice/widget/ListContent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Landroidx/slice/widget/ListContent;-><init>(Landroid/content/Context;Landroidx/slice/Slice;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    .line 137
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getHeaderItem()Landroidx/slice/SliceItem;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    .line 138
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getHeaderTemplateType()I

    move-result v2

    iput v2, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    .line 139
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getSliceActions()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    .line 141
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 142
    .local v2, "action":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_2

    .line 143
    new-instance v3, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v3, v2}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v3, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    .line 145
    :cond_2
    return-void
.end method

.method public static from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "slice"    # Landroidx/slice/Slice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    new-instance v0, Landroidx/slice/SliceMetadata;

    invoke-direct {v0, p0, p1}, Landroidx/slice/SliceMetadata;-><init>(Landroid/content/Context;Landroidx/slice/Slice;)V

    return-object v0
.end method

.method public static getSliceActions(Landroidx/slice/Slice;)Ljava/util/List;
    .locals 7
    .param p0, "slice"    # Landroidx/slice/Slice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/slice/Slice;",
            ")",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 434
    const-string v0, "slice"

    const-string v1, "actions"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 435
    .local v0, "actionGroup":Landroidx/slice/SliceItem;
    const-string v1, "actions"

    const-string v3, "shortcut"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, "hints":[Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "slice"

    .line 437
    invoke-static {v0, v3, v1, v2}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 439
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    :goto_0
    if-eqz v3, :cond_2

    .line 440
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 441
    .local v2, "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 442
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/slice/SliceItem;

    .line 443
    .local v5, "item":Landroidx/slice/SliceItem;
    new-instance v6, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v6, v5}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    .end local v5    # "item":Landroidx/slice/SliceItem;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 445
    .end local v4    # "i":I
    :cond_1
    return-object v2

    .line 447
    .end local v2    # "actions":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getExpiry()J
    .locals 2

    .line 394
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mExpiry:J

    return-wide v0
.end method

.method public getHeaderType()I
    .locals 1

    .line 205
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    return v0
.end method

.method public getInputRangeAction()Landroid/app/PendingIntent;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 267
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 268
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 269
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 270
    .local v1, "range":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2

    .line 274
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    .end local v1    # "range":Landroidx/slice/SliceItem;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastUpdatedTime()J
    .locals 2

    .line 402
    iget-wide v0, p0, Landroidx/slice/SliceMetadata;->mLastUpdated:J

    return-wide v0
.end method

.method public getLoadingState()I
    .locals 4

    .line 372
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "partial"

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 373
    .local v0, "hasHintPartial":Z
    :goto_0
    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v3}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 375
    return v1

    .line 376
    :cond_1
    if-eqz v0, :cond_2

    .line 378
    return v2

    .line 381
    :cond_2
    const/4 v1, 0x2

    return v1
.end method

.method public getPrimaryAction()Landroidx/slice/core/SliceAction;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 198
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    return-object v0
.end method

.method public getRange()Landroid/support/v4/util/Pair;
    .locals 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 308
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 310
    :cond_1
    :goto_0
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 311
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 312
    .local v1, "range":Landroidx/slice/SliceItem;
    const-string v2, "int"

    const-string v3, "max"

    invoke-static {v1, v2, v3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    .line 313
    .local v2, "maxItem":Landroidx/slice/SliceItem;
    const-string v3, "int"

    const-string v4, "min"

    invoke-static {v1, v3, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 314
    .local v3, "minItem":Landroidx/slice/SliceItem;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    goto :goto_1

    :cond_2
    const/16 v4, 0x64

    .line 315
    .local v4, "max":I
    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 316
    .local v5, "min":I
    :goto_2
    new-instance v6, Landroid/support/v4/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method public getRangeValue()I
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 329
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, -0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    return v1

    .line 331
    :cond_1
    :goto_0
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 332
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v2

    .line 333
    .local v2, "range":Landroidx/slice/SliceItem;
    const-string v3, "int"

    const-string v4, "value"

    invoke-static {v2, v3, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    .line 334
    .local v3, "currentItem":Landroidx/slice/SliceItem;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v1

    nop

    :cond_2
    return v1
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    return-object v0
.end method

.method public getSliceKeywords()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "slice"

    const-string v2, "keywords"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    .line 347
    .local v0, "keywordGroup":Landroidx/slice/SliceItem;
    if-eqz v0, :cond_2

    .line 348
    const-string v1, "text"

    invoke-static {v0, v1}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 349
    .local v1, "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    if-eqz v1, :cond_2

    .line 350
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v2, "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 352
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 353
    .local v4, "keyword":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 354
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    .end local v4    # "keyword":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    .end local v3    # "i":I
    :cond_1
    return-object v2

    .line 360
    .end local v1    # "itemList":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/SliceItem;>;"
    .end local v2    # "stringList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 176
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const-string v1, "horizontal"

    invoke-virtual {v0, v1}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 178
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 182
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const-string v2, "horizontal"

    invoke-virtual {v1, v2}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Landroidx/slice/widget/GridContent;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    invoke-direct {v1, v2, v3}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    .line 156
    .local v1, "gc":Landroidx/slice/widget/GridContent;
    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 157
    .end local v1    # "gc":Landroidx/slice/widget/GridContent;
    goto :goto_0

    .line 158
    :cond_0
    new-instance v1, Landroidx/slice/widget/RowContent;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 159
    .local v1, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 160
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 164
    .end local v1    # "rc":Landroidx/slice/widget/RowContent;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v1, :cond_2

    .line 165
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 168
    :cond_2
    return-object v0
.end method

.method public getToggles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "toggles":Ljava/util/List;, "Ljava/util/List<Landroidx/slice/core/SliceAction;>;"
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mPrimaryAction:Landroidx/slice/core/SliceActionImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_0
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 230
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 231
    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mSliceActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/core/SliceAction;

    .line 232
    .local v2, "action":Landroidx/slice/core/SliceAction;
    invoke-interface {v2}, Landroidx/slice/core/SliceAction;->isToggle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    .end local v2    # "action":Landroidx/slice/core/SliceAction;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Landroidx/slice/widget/RowContent;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 238
    .local v1, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getToggleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    .end local v1    # "rc":Landroidx/slice/widget/RowContent;
    :cond_3
    :goto_1
    return-object v0
.end method

.method public hasLargeMode()Z
    .locals 6

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "isHeaderFullGrid":Z
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const-string v4, "horizontal"

    invoke-virtual {v1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    new-instance v1, Landroidx/slice/widget/GridContent;

    iget-object v4, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    invoke-direct {v1, v4, v5}, Landroidx/slice/widget/GridContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;)V

    .line 216
    .local v1, "gc":Landroidx/slice/widget/GridContent;
    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroidx/slice/widget/GridContent;->getMaxCellLineCount()I

    move-result v4

    if-le v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v0, v4

    .line 218
    .end local v1    # "gc":Landroidx/slice/widget/GridContent;
    :cond_1
    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v1}, Landroidx/slice/widget/ListContent;->getRowItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    return v2
.end method

.method public isErrorSlice()Z
    .locals 2

    .line 424
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermissionSlice()Z
    .locals 2

    .line 414
    iget-object v0, p0, Landroidx/slice/SliceMetadata;->mSlice:Landroidx/slice/Slice;

    const-string v1, "permission_request"

    invoke-virtual {v0, v1}, Landroidx/slice/Slice;->hasHint(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public sendInputRangeAction(I)Z
    .locals 7
    .param p1, "newValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 284
    iget v0, p0, Landroidx/slice/SliceMetadata;->mTemplateType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 285
    new-instance v0, Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroidx/slice/SliceMetadata;->mHeaderItem:Landroidx/slice/SliceItem;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/widget/RowContent;-><init>(Landroid/content/Context;Landroidx/slice/SliceItem;Z)V

    .line 286
    .local v0, "rc":Landroidx/slice/widget/RowContent;
    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    .line 287
    .local v1, "range":Landroidx/slice/SliceItem;
    if-eqz v1, :cond_0

    .line 289
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getRange()Landroid/support/v4/util/Pair;

    move-result-object v2

    .line 290
    .local v2, "validRange":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v4, v2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {p1, v4, v5}, Landroid/support/v4/math/MathUtils;->clamp(III)I

    move-result v4

    .line 291
    .local v4, "adjustedValue":I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.app.slice.extra.RANGE_VALUE"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 292
    .local v5, "intent":Landroid/content/Intent;
    iget-object v6, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6, v5}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    .line 293
    return v3

    .line 296
    .end local v0    # "rc":Landroidx/slice/widget/RowContent;
    .end local v1    # "range":Landroidx/slice/SliceItem;
    .end local v2    # "validRange":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4    # "adjustedValue":I
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendToggleAction(Landroidx/slice/core/SliceAction;Z)Z
    .locals 8
    .param p1, "toggleAction"    # Landroidx/slice/core/SliceAction;
    .param p2, "toggleValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 252
    if-eqz p1, :cond_0

    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    invoke-interface {p1}, Landroidx/slice/core/SliceAction;->getAction()Landroid/app/PendingIntent;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/SliceMetadata;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 255
    const/4 v1, 0x1

    return v1

    .line 257
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
