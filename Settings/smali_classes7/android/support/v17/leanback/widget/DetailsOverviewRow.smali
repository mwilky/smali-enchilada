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
    .param p1, "item"    # Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/Row;-><init>(Landroid/support/v17/leanback/widget/HeaderItem;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    .line 75
    new-instance v0, Landroid/support/v17/leanback/widget/ActionPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ActionPresenterSelector;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 76
    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 85
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    .line 86
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->verify()V

    .line 87
    return-void
.end method

.method private getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    .locals 1

    .line 259
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    return-object v0
.end method

.method private verify()V
    .locals 2

    .line 354
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 357
    return-void

    .line 355
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addAction(ILandroid/support/v17/leanback/widget/Action;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "action"    # Landroid/support/v17/leanback/widget/Action;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(ILjava/lang/Object;)V

    .line 286
    return-void
.end method

.method public final addAction(Landroid/support/v17/leanback/widget/Action;)V
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/Action;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 271
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method final addListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 3
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    .line 93
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    goto :goto_2

    .line 96
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 97
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    .line 98
    .local v1, "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    if-nez v1, :cond_1

    .line 99
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 101
    :cond_1
    if-ne v1, p1, :cond_2

    .line 102
    return-void

    .line 104
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 106
    .end local v1    # "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    :goto_1
    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public getActionForKeyCode(I)Landroid/support/v17/leanback/widget/Action;
    .locals 4
    .param p1, "keyCode"    # I

    .line 341
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    .line 342
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ObjectAdapter;
    if-eqz v0, :cond_1

    .line 343
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 344
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/Action;

    .line 345
    .local v2, "action":Landroid/support/v17/leanback/widget/Action;
    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/widget/Action;->respondsToKeyCode(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 346
    return-object v2

    .line 343
    .end local v2    # "action":Landroid/support/v17/leanback/widget/Action;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "i":I
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

    .line 311
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->unmodifiableList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 318
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getItem()Ljava/lang/Object;
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    return-object v0
.end method

.method public isImageScaleUpAllowed()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    return v0
.end method

.method final notifyActionsAdapterChanged()V
    .locals 3

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 170
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 171
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    .line 172
    .local v1, "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    if-nez v1, :cond_0

    .line 173
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;->onActionsAdapterChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    .line 178
    .end local v1    # "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    :goto_1
    goto :goto_0

    .line 180
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method final notifyImageDrawableChanged()V
    .locals 3

    .line 152
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 154
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    .line 155
    .local v1, "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    if-nez v1, :cond_0

    .line 156
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 158
    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;->onImageDrawableChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V

    .line 159
    add-int/lit8 v0, v0, 0x1

    .line 161
    .end local v1    # "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    :goto_1
    goto :goto_0

    .line 163
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method final notifyItemChanged()V
    .locals 3

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 137
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    .line 138
    .local v1, "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    if-nez v1, :cond_0

    .line 139
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 141
    :cond_0
    invoke-virtual {v1, p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;->onItemChanged(Landroid/support/v17/leanback/widget/DetailsOverviewRow;)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 144
    .end local v1    # "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    :goto_1
    goto :goto_0

    .line 146
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public final removeAction(Landroid/support/v17/leanback/widget/Action;)Z
    .locals 1
    .param p1, "action"    # Landroid/support/v17/leanback/widget/Action;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 298
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getArrayObjectAdapter()Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final removeListener(Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;)V
    .locals 3
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    .line 115
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 117
    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;

    .line 118
    .local v1, "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    if-nez v1, :cond_0

    .line 119
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_0
    if-ne v1, p1, :cond_1

    .line 122
    iget-object v2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    return-void

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 127
    .end local v1    # "l":Landroid/support/v17/leanback/widget/DetailsOverviewRow$Listener;
    :goto_1
    goto :goto_0

    .line 129
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public final setActionsAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 328
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq p1, v0, :cond_1

    .line 329
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 330
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mDefaultActionPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 333
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyActionsAdapterChanged()V

    .line 335
    :cond_1
    return-void
.end method

.method public final setImageBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;

    .line 221
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    .line 223
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 208
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 209
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    .line 211
    :cond_0
    return-void
.end method

.method public setImageScaleUpAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .line 241
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    if-eq p1, v0, :cond_0

    .line 242
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mImageScaleUpAllowed:Z

    .line 243
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyImageDrawableChanged()V

    .line 245
    :cond_0
    return-void
.end method

.method public final setItem(Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    .line 195
    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->mItem:Ljava/lang/Object;

    .line 196
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->notifyItemChanged()V

    .line 198
    :cond_0
    return-void
.end method
