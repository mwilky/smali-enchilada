.class public Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "QSEditTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSEditTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileViewHolder"
.end annotation


# instance fields
.field private mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

.field private mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSEditTileAdapter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->this$0:Lcom/android/systemui/qs/customize/QSEditTileAdapter;

    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    instance-of v1, p2, Lcom/android/systemui/qs/customize/CustomizeTileView;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/systemui/qs/customize/CustomizeTileView;

    iput-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/CustomizeTileView;->getIcon()Lcom/android/systemui/plugins/qs/QSIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugins/qs/QSIconView;->disableAnimation()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/CustomizeTileView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;)Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    return-object v0
.end method


# virtual methods
.method public setData(Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iget-boolean v0, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->setVisible(Z)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mData:Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;

    iput-boolean p1, v0, Lcom/android/systemui/qs/customize/TileQueryHelper$TileInfo;->isVisible:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSEditTileAdapter$TileViewHolder;->mTileView:Lcom/android/systemui/qs/customize/CustomizeTileView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizeTileView;->setVisibility(I)V

    :goto_0
    return-void
.end method
