.class public Lcom/android/systemui/qs/customize/QSEditPageManager;
.super Ljava/lang/Object;
.source "QSEditPageManager.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAllTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCanRemoveTile:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDragLabel:Landroid/widget/TextView;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

.field private mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mLowerTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSource:Landroid/support/v7/widget/RecyclerView;

.field mTarget:Landroid/support/v7/widget/RecyclerView;

.field private mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

.field private mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

.field private mUpperTiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "QSEditPageManager"

    sput-object v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/customize/QSEditViewPager;Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/widget/TextView;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mSource:Landroid/support/v7/widget/RecyclerView;

    iput-object v1, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mTarget:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mDragLabel:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07055f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07055d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07055e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iget-object v7, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0077

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    iget-object v7, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0078

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    iget-object v7, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0079

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    new-instance v12, Lcom/android/systemui/qs/customize/ItemLocations;

    move-object v7, v12

    move v8, v5

    move v9, v6

    move v10, v13

    move v11, v14

    move-object v1, v12

    move v12, v15

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/customize/ItemLocations;-><init>(IIIII)V

    iput-object v1, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    new-instance v1, Lcom/android/systemui/qs/customize/ItemLocations;

    move-object v7, v1

    move/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/qs/customize/ItemLocations;-><init>(IIIII)V

    iput-object v1, v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSEditPageManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addPage(Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->addPage(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->updateIndicator()V

    return-void
.end method

.method private fillPager(Lcom/android/systemui/qs/customize/QSEditViewPager;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/customize/QSEditViewPager;",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Lcom/android/systemui/qs/customize/ItemLocations;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v1, v1

    int-to-double v3, v0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    new-instance v2, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-direct {v2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;-><init>()V

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v4, Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    mul-int v5, v3, v0

    add-int v6, v5, v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p2, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4, v7, p3, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_0

    add-int v7, v5, v0

    if-ne v6, v7, :cond_0

    new-instance v7, Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, p3, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v3, Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3, v4, p3, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    :cond_2
    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private getAndRemoveLower(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 5

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v1, v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    nop

    const/4 v1, 0x0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAndRemoveLower: number of tiles="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->printTiles(Ljava/util/List;)V

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->printTiles(Ljava/util/List;)V

    throw v1
.end method

.method private getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->getPage(I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method private getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method private getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    return-object v0
.end method

.method private printTiles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, ":tile "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "NULL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "printTiles: tiles size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removePage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->removePage(I)V

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->updateIndicator()V

    return-void
.end method

.method private setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView;",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;",
            "Lcom/android/systemui/qs/customize/ItemLocations;",
            "Lcom/android/systemui/qs/customize/QSEditViewPager;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-direct {v0, p2, p3, p0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;-><init>(Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditPageManager;)V

    new-instance v1, Lcom/android/systemui/qs/customize/QSEditPageManager$1;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/android/systemui/qs/customize/ItemLocations;->getColumns()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager$1;-><init>(Lcom/android/systemui/qs/customize/QSEditPageManager;Landroid/content/Context;I)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getDragInstance()Lcom/android/systemui/qs/customize/QSEditTileAdapter$DragListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-direct {p0, p4, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->addPage(Lcom/android/systemui/qs/customize/QSEditViewPager;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public beginDragAndDrop(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginDragAndDrop isUpperPage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "itemCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " pageCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const/4 v3, 0x6

    if-gt v1, v3, :cond_1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    :goto_0
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beginDragAndDrop mCanRemoveTile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public calculateItemLocation()V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    iget-object v6, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getWidth()I

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/systemui/qs/customize/ItemLocations;->setParentLocation(III)V

    sget-object v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUpperPager="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    aget v3, v0, v2

    aget v5, v0, v4

    iget-object v6, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getWidth()I

    move-result v6

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/systemui/qs/customize/ItemLocations;->setParentLocation(III)V

    sget-object v1, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLowerPager="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v0, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public canRemoveTile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCanRemoveTile:Z

    return v0
.end method

.method public canScrollToNextPage()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageEmpty(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public endDragAndDrop()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mDragLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f11024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getDragLabel()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mDragLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getItemLocations(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemLocations()Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object v0

    return-object v0
.end method

.method public isInLowerPage(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->containsPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    return v0
.end method

.method public isInUpperPage(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditPageAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/QSEditPageAdapter;->containsPage(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    return v0
.end method

.method public isPageEmpty(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->isPageEmpty()Z

    move-result v0

    return v0
.end method

.method public isPageFull(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->isPageFull()Z

    move-result v0

    return v0
.end method

.method public isPageMoreThanFull(Landroid/support/v7/widget/RecyclerView;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->isPageMoreThanFull()Z

    move-result v0

    return v0
.end method

.method public onAfterItemAdded(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getItemLocations(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onAfterItemAdded:items="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    const-string v4, "onAfterItemAdded:page is full, add an empty page"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v1, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAfterItemRemoved(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    const-string v4, "onAfterItemRemoved:remove the empty page"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->removePage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)V

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onBeforeItemAdded(Landroid/support/v7/widget/RecyclerView;)V
    .locals 11

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getItemLocations(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBeforeItemAdded:items="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    const-string v3, "onBeforeItemAdded:page is full, move last item to the next page"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    add-int/lit8 v5, v3, -0x1

    invoke-direct {p0, v0, v5}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    const/4 v7, 0x0

    add-int/lit8 v8, v2, 0x1

    if-ne v3, v8, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v9

    if-le v8, v9, :cond_1

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v9

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    :cond_1
    :goto_1
    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    if-eqz v7, :cond_2

    invoke-virtual {v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v10, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v8, v10}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onBeforeItemRemoved(Landroid/support/v7/widget/RecyclerView;)V
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemCount()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-virtual {v5, v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTilesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    return-void
.end method

.method public rebuildPager(Landroid/support/v7/widget/RecyclerView;)I
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPager(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/QSEditViewPager;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getItemLocations(Landroid/support/v7/widget/RecyclerView;)Lcom/android/systemui/qs/customize/ItemLocations;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_0
    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    add-int/lit8 v8, v3, 0x1

    invoke-direct {p0, v0, v8}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageMoreThanFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v7}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/ItemLocations;->getMaxItems()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    invoke-virtual {v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v4, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v9, v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    const/4 v5, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/customize/QSEditPageManager;->isPageFull(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v9}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    invoke-virtual {v9, v4}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemRemoved(I)V

    invoke-virtual {v7}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v7, v11}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->notifyItemInserted(I)V

    const/4 v5, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public recalcSpecs()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mAllTiles:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getAndRemoveLower(Ljava/lang/String;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    nop

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-boolean v3, v2, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isSystem:Z

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperTiles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->fillPager(Lcom/android/systemui/qs/customize/QSEditViewPager;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerTiles:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->fillPager(Lcom/android/systemui/qs/customize/QSEditViewPager;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public resetTileSpecs(Lcom/android/systemui/qs/QSTileHost;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetTileSpecs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/customize/QSEditPageManager;->setTileSpecs(Ljava/util/List;)V

    return-void
.end method

.method public saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPageCount(Lcom/android/systemui/qs/customize/QSEditViewPager;)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-direct {p0, v4, v3}, Lcom/android/systemui/qs/customize/QSEditPageManager;->getPage(Lcom/android/systemui/qs/customize/QSEditViewPager;I)Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-virtual {v5}, Lcom/android/systemui/qs/customize/QSEditTileAdapter;->getItemList()Ljava/util/List;

    move-result-object v6

    move v7, v2

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v8, v8, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->spec:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/systemui/qs/customize/QSEditPageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newSpecs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p1, v2, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method public scrollNextPage()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public scrollPrevPage()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSEditViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperPager:Lcom/android/systemui/qs/customize/QSEditViewPager;

    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/qs/customize/QSEditViewPager;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setLayoutRTL(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mUpperLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/ItemLocations;->setLayoutRTL(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mLowerLocations:Lcom/android/systemui/qs/customize/ItemLocations;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/ItemLocations;->setLayoutRTL(Z)V

    return-void
.end method

.method public setTileSpecs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager;->mCurrentSpecs:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSEditPageManager;->recalcSpecs()V

    return-void
.end method
