.class public Landroid/support/v17/leanback/widget/DetailsOverviewRow;
.super Landroid/support/v17/leanback/widget/Row;
.source "DetailsOverviewRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    }
.end annotation


# instance fields
.field private mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private mImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mImageScaleUpAllowed:Z

.field private mItem:Ljava/lang/Object;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/Row;-><init>(Landroid/support/v17/leanback/widget/HeaderItem;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    new-instance v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ActionPresenterSelector;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->verify()V

    return-void
.end method

.method private getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    return-object v0
.end method

.method private verify()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addAction(ILandroid/support/v17/leanback/widget/Action;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final addAction(Landroid/support/v17/leanback/widget/Action;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method final addListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-ne v1, p1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActionForKeyCode(I)Landroid/support/v17/leanback/widget/Action;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/Action;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/widget/Action;->respondsToKeyCode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public final getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/Action;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->unmodifiableList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public isImageScaleUpAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    return v0
.end method

.method final notifyActionsAdapterChanged()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;->onActionsAdapterChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V

    add-int/lit8 v0, v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method final notifyImageDrawableChanged()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;->onImageDrawableChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V

    add-int/lit8 v0, v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method final notifyItemChanged()V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;->onItemChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V

    add-int/lit8 v0, v0, 0x1

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method public final removeAction(Landroid/support/v17/leanback/widget/Action;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final removeListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-ne v1, p1, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyActionsAdapterChanged()V

    :cond_1
    return-void
.end method

.method public final setImageBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    :cond_0
    return-void
.end method

.method public setImageScaleUpAllowed(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    :cond_0
    return-void
.end method

.method public final setItem(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyItemChanged()V

    :cond_0
    return-void
.end method
