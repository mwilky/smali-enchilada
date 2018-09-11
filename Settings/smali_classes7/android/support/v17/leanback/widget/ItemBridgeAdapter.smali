.class public Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ItemBridgeAdapter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/FacetProviderAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;,
        Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "ItemBridgeAdapter"


# instance fields
.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field private mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mPresenters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field

.field mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;-><init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;-><init>(Landroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/ObjectAdapter;Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;
    .param p2, "presenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 191
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$1;-><init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 192
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 193
    iput-object p2, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 194
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 260
    return-void
.end method

.method public getFacetProvider(I)Landroid/support/v17/leanback/widget/FacetProvider;
    .locals 1
    .param p1, "type"    # I

    .line 452
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/FacetProvider;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 447
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .line 283
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 284
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    .line 285
    .local v0, "presenterSelector":Landroid/support/v17/leanback/widget/PresenterSelector;
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 286
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    .line 287
    .local v2, "presenter":Landroid/support/v17/leanback/widget/Presenter;
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 288
    .local v3, "type":I
    if-gez v3, :cond_1

    .line 289
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 292
    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    .line 293
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v4, :cond_1

    .line 294
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v4, v2, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V

    .line 297
    :cond_1
    return v3
.end method

.method public getPresenterMapper()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getWrapper()Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;
    .locals 1

    .line 247
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    return-object v0
.end method

.method protected onAddPresenter(Landroid/support/v17/leanback/widget/Presenter;I)V
    .locals 0
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;
    .param p2, "type"    # I

    .line 304
    return-void
.end method

.method protected onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 328
    return-void
.end method

.method protected onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 316
    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 382
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 383
    .local v0, "viewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    .line 385
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 387
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 388
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 391
    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I
    .param p3, "payloads"    # Ljava/util/List;

    .line 397
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 398
    .local v0, "viewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    .line 400
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, p3}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Ljava/util/List;)V

    .line 402
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 403
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v0, p3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;Ljava/util/List;)V

    .line 406
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 310
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 344
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/Presenter;

    .line 347
    .local v0, "presenter":Landroid/support/v17/leanback/widget/Presenter;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;->createWrapper(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 349
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    .line 350
    .local v2, "presenterVh":Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    iget-object v3, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    iget-object v4, v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v3, v1, v4}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;->wrap(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 352
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "presenterVh":Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    .line 353
    .restart local v2    # "presenterVh":Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    iget-object v1, v2, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 355
    .restart local v1    # "view":Landroid/view/View;
    :goto_0
    new-instance v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    invoke-direct {v3, p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;Landroid/support/v17/leanback/widget/Presenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 356
    .local v3, "viewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 357
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v4, :cond_1

    .line 358
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 360
    :cond_1
    iget-object v4, v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    .line 361
    .local v4, "presenterView":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 362
    iget-object v5, v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mFocusChangeListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    .line 363
    invoke-virtual {v4}, Landroid/view/View;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;->mChainedListener:Landroid/view/View$OnFocusChangeListener;

    .line 364
    iget-object v5, v3, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mFocusChangeListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 366
    :cond_2
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    if-eqz v5, :cond_3

    .line 367
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    invoke-interface {v5, v1}, Landroid/support/v17/leanback/widget/FocusHighlightHandler;->onInitializeView(Landroid/view/View;)V

    .line 369
    :cond_3
    return-object v3
.end method

.method protected onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 334
    return-void
.end method

.method public final onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 421
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 422
    const/4 v0, 0x0

    return v0
.end method

.method protected onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 322
    return-void
.end method

.method public final onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 427
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 428
    .local v0, "viewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 429
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    .line 430
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 432
    :cond_0
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 433
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 437
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 438
    .local v0, "viewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 439
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 440
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 443
    :cond_0
    return-void
.end method

.method public final onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 410
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 411
    .local v0, "viewHolder":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 412
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 413
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;->onUnbind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    .line 416
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->mItem:Ljava/lang/Object;

    .line 417
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 207
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-ne p1, v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 213
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 214
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_2

    .line 215
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    .line 216
    return-void

    .line 219
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mDataObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 220
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->hasStableIds()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->hasStableIds()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 221
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->hasStableIds()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setHasStableIds(Z)V

    .line 223
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    .line 224
    return-void
.end method

.method public setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 376
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 377
    return-void
.end method

.method setFocusHighlight(Landroid/support/v17/leanback/widget/FocusHighlightHandler;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    .line 251
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    .line 253
    return-void
.end method

.method public setPresenter(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 0
    .param p1, "presenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 232
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 233
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->notifyDataSetChanged()V

    .line 234
    return-void
.end method

.method public setPresenterMapper(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;)V"
        }
    .end annotation

    .line 266
    .local p1, "presenters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v17/leanback/widget/Presenter;>;"
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mPresenters:Ljava/util/ArrayList;

    .line 267
    return-void
.end method

.method public setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V
    .locals 0
    .param p1, "wrapper"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 240
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 241
    return-void
.end method
