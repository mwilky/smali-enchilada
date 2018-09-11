.class public Landroid/support/v17/leanback/widget/VerticalGridPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "VerticalGridPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "GridPresenter"


# instance fields
.field private mFocusZoomFactor:I

.field private mKeepChildForeground:Z

.field private mNumColumns:I

.field private mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

.field private mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

.field private mRoundedCornersEnabled:Z

.field private mShadowEnabled:Z

.field mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

.field private mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

.field private mUseFocusDimmer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;-><init>(I)V

    .line 112
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "focusZoomFactor"    # I

    .line 126
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;-><init>(IZ)V

    .line 127
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "focusZoomFactor"    # I
    .param p2, "useFocusDimmer"    # Z

    .line 140
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    .line 98
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    .line 101
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    .line 141
    iput p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    .line 142
    iput-boolean p2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    .line 143
    return-void
.end method


# virtual methods
.method public final areChildRoundedCornersEnabled()Z
    .locals 1

    .line 203
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    return v0
.end method

.method protected createGridViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 249
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_vertical_grid:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, "root":Landroid/view/View;
    new-instance v1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    sget v2, Landroid/support/v17/leanback/R$id;->browse_grid:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    return-object v1
.end method

.method protected createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;
    .locals 1

    .line 330
    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-object v0
.end method

.method public final enableChildRoundedCorners(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 196
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mRoundedCornersEnabled:Z

    .line 197
    return-void
.end method

.method public final getFocusZoomFactor()I
    .locals 1

    .line 223
    iget v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    return v0
.end method

.method public final getKeepChildForeground()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    return v0
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 161
    iget v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    return v0
.end method

.method public final getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/OnItemViewClickedListener;
    .locals 1

    .line 378
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    return-object v0
.end method

.method public final getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;
    .locals 1

    .line 361
    iget-object v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    return-object v0
.end method

.method public final getShadowEnabled()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    return v0
.end method

.method protected initializeGridViewHolder(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V
    .locals 5
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 262
    iget v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 266
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setNumColumns(I)V

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    .line 269
    iget-object v1, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 270
    .local v1, "context":Landroid/content/Context;
    iget-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    if-nez v2, :cond_0

    .line 271
    new-instance v2, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;-><init>()V

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    .line 272
    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 273
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->needsDefaultShadow()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 274
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->areChildRoundedCornersEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 275
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->isUsingZOrder(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    .line 276
    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 277
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->createShadowOverlayOptions()Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;

    move-result-object v2

    .line 278
    invoke-virtual {v2, v1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->build(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    .line 279
    iget-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->needsWrapper()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    new-instance v2, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;-><init>(Landroid/support/v17/leanback/widget/ShadowOverlayHelper;)V

    iput-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 284
    :cond_0
    iget-object v2, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    .line 285
    iget-object v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    iget-object v3, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->prepareParentForShadow(Landroid/view/ViewGroup;)V

    .line 286
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowOverlayHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->getShadowType()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusDrawingOrderEnabled(Z)V

    .line 288
    iget-object v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget v2, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mFocusZoomFactor:I

    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    invoke-static {v0, v2, v3}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupBrowseItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;IZ)V

    .line 291
    move-object v0, p1

    .line 292
    .local v0, "gridViewHolder":Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    new-instance v3, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;

    invoke-direct {v3, p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$1;-><init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter;Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    .line 298
    return-void

    .line 263
    .end local v0    # "gridViewHolder":Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    .end local v1    # "context":Landroid/content/Context;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Number of columns must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isFocusDimmerUsed()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mUseFocusDimmer:Z

    return v0
.end method

.method public isUsingDefaultShadow()Z
    .locals 1

    .line 188
    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsShadow()Z

    move-result v0

    return v0
.end method

.method public isUsingZOrder(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 212
    invoke-static {p1}, Landroid/support/v17/leanback/system/Settings;->getInstance(Landroid/content/Context;)Landroid/support/v17/leanback/system/Settings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/system/Settings;->preferStaticShadows()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method final needsDefaultShadow()Z
    .locals 1

    .line 216
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->isUsingDefaultShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getShadowEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 336
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 337
    .local v0, "vh":Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-object v2, p2

    check-cast v2, Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 338
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    iget-object v2, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 339
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 235
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->createGridViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    move-result-object v0

    .line 236
    .local v0, "vh":Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    .line 237
    new-instance v1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$VerticalGridItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/VerticalGridPresenter;)V

    iput-object v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 238
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->initializeGridViewHolder(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;)V

    .line 239
    iget-boolean v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 242
    return-object v0

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "super.initializeGridViewHolder() must be called"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 344
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;

    .line 345
    .local v0, "vh":Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mItemBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 346
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 347
    return-void
.end method

.method selectChildView(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Landroid/view/View;)V
    .locals 5
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .line 382
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 384
    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->getGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 385
    .local v1, "ibh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    :goto_0
    if-nez v1, :cond_1

    .line 386
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    move-result-object v2

    invoke-interface {v2, v0, v0, v0, v0}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_1

    .line 388
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    move-result-object v2

    iget-object v3, v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v4, v1, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v0, v0}, Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 391
    .end local v1    # "ibh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    :cond_2
    :goto_1
    return-void
.end method

.method public setEntranceTransitionState(Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;Z)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;
    .param p2, "afterEntrance"    # Z

    .line 404
    iget-object v0, p1, Landroid/support/v17/leanback/widget/VerticalGridPresenter$ViewHolder;->mGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setChildrenVisibility(I)V

    .line 405
    return-void
.end method

.method public final setKeepChildForeground(Z)V
    .locals 0
    .param p1, "keep"    # Z

    .line 307
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mKeepChildForeground:Z

    .line 308
    return-void
.end method

.method public setNumberOfColumns(I)V
    .locals 2
    .param p1, "numColumns"    # I

    .line 149
    if-ltz p1, :cond_1

    .line 152
    iget v0, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    if-eq v0, p1, :cond_0

    .line 153
    iput p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mNumColumns:I

    .line 155
    :cond_0
    return-void

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid number of columns"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/OnItemViewClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 371
    iput-object p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/OnItemViewClickedListener;

    .line 372
    return-void
.end method

.method public final setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 354
    iput-object p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/OnItemViewSelectedListener;

    .line 355
    return-void
.end method

.method public final setShadowEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 170
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/VerticalGridPresenter;->mShadowEnabled:Z

    .line 171
    return-void
.end method
