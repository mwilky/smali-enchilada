.class public Lcom/android/settings/dashboard/DashboardData;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;,
        Lcom/android/settings/dashboard/DashboardData$Item;,
        Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;,
        Lcom/android/settings/dashboard/DashboardData$Builder;
    }
.end annotation


# static fields
.field public static final MAX_SUGGESTION_COUNT:I = 0x2

.field public static final POSITION_NOT_FOUND:I = -0x1

.field static final STABLE_ID_CONDITION_CONTAINER:I = 0x4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STABLE_ID_CONDITION_FOOTER:I = 0x3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STABLE_ID_CONDITION_HEADER:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STABLE_ID_SERCH_LAYOUT:I = 0x5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final STABLE_ID_SUGGESTION_CONDITION_DIVIDER:I = 0x1

.field static final STABLE_ID_SUGGESTION_CONTAINER:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

.field private final mConditionExpanded:Z

.field private final mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardData$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/settings/dashboard/DashboardData$Builder;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$000(Lcom/android/settings/dashboard/DashboardData$Builder;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    .line 70
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$100(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    .line 71
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$200(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    .line 72
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$300(Lcom/android/settings/dashboard/DashboardData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    .line 75
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardData;->buildItemsData()V

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardData$Builder;Lcom/android/settings/dashboard/DashboardData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/dashboard/DashboardData$Builder;
    .param p2, "x1"    # Lcom/android/settings/dashboard/DashboardData$1;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardData;-><init>(Lcom/android/settings/dashboard/DashboardData$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/DashboardData;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData;

    .line 42
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData;

    .line 42
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData;

    .line 42
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/dashboard/DashboardData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData;

    .line 42
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    return v0
.end method

.method static synthetic access$900(Ljava/util/List;)I
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .line 42
    invoke-static {p0}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private addToItemList(Ljava/lang/Object;IIZ)V
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "stableId"    # I
    .param p4, "add"    # Z

    .line 179
    if-eqz p4, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Item;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardData$Item;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_0
    return-void
.end method

.method private buildItemsData()V
    .locals 12

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0d01aa

    const/4 v3, 0x5

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 194
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/settings/dashboard/DashboardData;->getConditionsToShow(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 195
    .local v2, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    invoke-static {v2}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    .line 197
    .local v3, "hasConditions":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/settings/dashboard/DashboardData;->getSuggestionsToShow(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 198
    .local v5, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    invoke-static {v5}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v4

    .line 202
    .local v6, "hasSuggestions":Z
    :goto_1
    const v7, 0x7f0d0261

    invoke-direct {p0, v5, v7, v4, v6}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 206
    const v7, 0x7f0d00a4

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    move v8, v1

    goto :goto_2

    :cond_2
    move v8, v4

    :goto_2
    invoke-direct {p0, v0, v7, v1, v8}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 210
    new-instance v7, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;

    invoke-direct {v7, v2}, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;-><init>(Ljava/util/List;)V

    const v8, 0x7f0d0052

    const/4 v9, 0x2

    if-eqz v3, :cond_3

    iget-boolean v10, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    if-nez v10, :cond_3

    move v10, v1

    goto :goto_3

    :cond_3
    move v10, v4

    :goto_3
    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 216
    const v7, 0x7f0d0050

    const/4 v8, 0x4

    if-eqz v3, :cond_4

    iget-boolean v9, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    if-eqz v9, :cond_4

    move v9, v1

    goto :goto_4

    :cond_4
    move v9, v4

    :goto_4
    invoke-direct {p0, v2, v7, v8, v9}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 220
    const v7, 0x7f0d0051

    const/4 v8, 0x3

    if-eqz v3, :cond_5

    iget-boolean v9, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    if-eqz v9, :cond_5

    move v9, v1

    goto :goto_5

    :cond_5
    move v9, v4

    :goto_5
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 223
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    if-eqz v0, :cond_6

    .line 224
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    move v7, v4

    .local v7, "i":I
    :goto_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 226
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/Tile;

    .line 227
    .local v8, "tile":Lcom/android/settingslib/drawer/Tile;
    const v9, 0x7f0d0071

    new-array v10, v1, [Ljava/lang/Object;

    iget-object v11, v8, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    aput-object v11, v10, v4

    invoke-static {v10}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v10

    invoke-direct {p0, v8, v9, v10, v1}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 225
    .end local v8    # "tile":Lcom/android/settingslib/drawer/Tile;
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 231
    .end local v0    # "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    .end local v7    # "i":I
    :cond_6
    return-void
.end method

.method private getConditionsToShow(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    .line 238
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    if-nez p1, :cond_0

    .line 239
    const/4 v0, 0x0

    return-object v0

    .line 241
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 243
    .local v2, "size":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 244
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/conditional/Condition;

    .line 245
    .local v3, "condition":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v3    # "condition":Lcom/android/settings/dashboard/conditional/Condition;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 249
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private getSuggestionsToShow(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .line 253
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    if-nez p1, :cond_0

    .line 254
    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 257
    return-object p1

    .line 259
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 260
    .local v0, "suggestionsToShow":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 261
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/settings/suggestions/Suggestion;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private static sizeOf(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 234
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCategory()Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    return-object v0
.end method

.method public getConditions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    return-object v0
.end method

.method public getItemEntityById(J)Ljava/lang/Object;
    .locals 4
    .param p1, "id"    # J

    .line 99
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/DashboardData$Item;

    .line 100
    .local v1, "item":Lcom/android/settings/dashboard/DashboardData$Item;
    iget v2, v1, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 101
    iget-object v0, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    return-object v0

    .line 103
    .end local v1    # "item":Lcom/android/settings/dashboard/DashboardData$Item;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemEntityByPosition(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 87
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemIdByPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 79
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getItemTypeByPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 83
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    return v0
.end method

.method public getPositionByEntity(Ljava/lang/Object;)I
    .locals 5
    .param p1, "entity"    # Ljava/lang/Object;

    .line 134
    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 137
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 138
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v3, v3, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    .line 139
    .local v3, "item":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    return v2

    .line 137
    .end local v3    # "item":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method public getPositionByTile(Lcom/android/settingslib/drawer/Tile;)I
    .locals 5
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .line 157
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 158
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 159
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    .line 160
    .local v2, "entity":Ljava/lang/Object;
    if-ne v2, p1, :cond_0

    .line 161
    return v1

    .line 162
    :cond_0
    instance-of v3, v2, Lcom/android/settingslib/drawer/Tile;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    move-object v4, v2

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    return v1

    .line 158
    .end local v2    # "entity":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public hasSuggestion()Z
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConditionExpanded()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    return v0
.end method

.method public size()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
