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

.field private static final TYPE_SUGGESTION_CONTAINER:I = 0x7f0d0272


# instance fields
.field public final entity:Ljava/lang/Object;

.field public final id:I

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    iput p2, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    iput p3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/dashboard/DashboardData$Item;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    iget v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    if-ne v3, v4, :cond_9

    iget v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    iget v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    if-eq v3, v4, :cond_2

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    const v4, 0x7f0d0050

    if-eq v3, v4, :cond_5

    const v4, 0x7f0d0071

    if-eq v3, v4, :cond_3

    const v4, 0x7f0d0272

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v3, Lcom/android/settingslib/drawer/Tile;

    iget-object v4, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v3, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0

    :cond_5
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/android/settingslib/drawer/Tile;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, v5, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz v5, :cond_6

    return v2

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

    :cond_8
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    return v0

    :cond_9
    :goto_3
    return v2
.end method
