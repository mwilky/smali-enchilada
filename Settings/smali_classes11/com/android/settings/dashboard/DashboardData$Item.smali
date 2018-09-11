.class Lcom/android/settings/dashboard/DashboardData$Item;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardData$Item$ItemTypes;
    }
.end annotation


# static fields
.field private static final TYPE_CONDITION_CONTAINER:I = 0x7f0d0050

.field private static final TYPE_CONDITION_FOOTER:I = 0x7f0d0051

.field private static final TYPE_CONDITION_HEADER:I = 0x7f0d0052

.field private static final TYPE_DASHBOARD_TILE:I = 0x7f0d0071

.field private static final TYPE_SUGGESTION_CONDITION_DIVIDER:I = 0x7f0d00a4

.field private static final TYPE_SUGGESTION_CONTAINER:I = 0x7f0d0260


# instance fields
.field public final entity:Ljava/lang/Object;

.field public final id:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0
    .param p1, "entity"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "id"    # I

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    .line 388
    iput p2, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    .line 389
    iput p3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    .line 390
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 400
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 401
    return v0

    .line 404
    :cond_0
    instance-of v1, p1, Lcom/android/settings/dashboard/DashboardData$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 405
    return v2

    .line 408
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/settings/dashboard/DashboardData$Item;

    .line 409
    .local v1, "targetItem":Lcom/android/settings/dashboard/DashboardData$Item;
    iget v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    iget v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    if-ne v3, v4, :cond_9

    iget v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    iget v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    if-eq v3, v4, :cond_2

    goto :goto_3

    .line 413
    :cond_2
    iget v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    const v4, 0x7f0d0050

    if-eq v3, v4, :cond_5

    const v4, 0x7f0d0071

    if-eq v3, v4, :cond_3

    const v4, 0x7f0d0260

    if-eq v3, v4, :cond_5

    goto :goto_1

    .line 415
    :cond_3
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    .line 416
    .local v3, "localTile":Lcom/android/settingslib/drawer/Tile;
    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 419
    .local v4, "targetTile":Lcom/android/settingslib/drawer/Tile;
    iget-object v5, v3, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 420
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 419
    :cond_4
    move v0, v2

    :goto_0
    return v0

    .line 424
    .end local v3    # "localTile":Lcom/android/settingslib/drawer/Tile;
    .end local v4    # "targetTile":Lcom/android/settingslib/drawer/Tile;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 425
    .local v3, "entities":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 426
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 427
    .local v4, "firstEntity":Ljava/lang/Object;
    instance-of v5, v4, Lcom/android/settingslib/drawer/Tile;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_6

    .line 429
    return v2

    .line 434
    .end local v3    # "entities":Ljava/util/List;
    .end local v4    # "firstEntity":Ljava/lang/Object;
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    if-nez v3, :cond_8

    iget-object v3, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_2

    .line 435
    :cond_8
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 434
    :goto_2
    return v0

    .line 410
    :cond_9
    :goto_3
    return v2
.end method
