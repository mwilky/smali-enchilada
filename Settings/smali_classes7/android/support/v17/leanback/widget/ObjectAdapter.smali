.class public abstract Landroid/support/v17/leanback/widget/ObjectAdapter;
.super Ljava/lang/Object;
.source "ObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;,
        Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
    }
.end annotation


# static fields
.field public static final NO_ID:I = -0x1


# instance fields
.field private mHasStableIds:Z

.field private final mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    .line 160
    new-instance v0, Landroid/support/v17/leanback/widget/SinglePresenterSelector;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/SinglePresenterSelector;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1
    .param p1, "presenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    .line 153
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 154
    return-void
.end method


# virtual methods
.method public abstract get(I)Ljava/lang/Object;
.end method

.method public getId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 343
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Presenter selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public final hasObserver()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 222
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->hasObserver()Z

    move-result v0

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method protected final notifyChanged()V
    .locals 1

    .line 287
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyChanged()V

    .line 288
    return-void
.end method

.method protected final notifyItemMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 280
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemMoved(II)V

    .line 281
    return-void
.end method

.method public final notifyItemRangeChanged(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 239
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeChanged(II)V

    .line 240
    return-void
.end method

.method public final notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 251
    return-void
.end method

.method protected final notifyItemRangeInserted(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 260
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeInserted(II)V

    .line 261
    return-void
.end method

.method protected final notifyItemRangeRemoved(II)V
    .locals 1
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 270
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->notifyItemRangeRemoved(II)V

    .line 271
    return-void
.end method

.method protected onHasStableIdsChanged()V
    .locals 0

    .line 317
    return-void
.end method

.method protected onPresenterSelectorChanged()V
    .locals 0

    .line 194
    return-void
.end method

.method public final registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 207
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->registerObserver(Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public final setHasStableIds(Z)V
    .locals 1
    .param p1, "hasStableIds"    # Z

    .line 304
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 305
    .local v0, "changed":Z
    :goto_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mHasStableIds:Z

    .line 307
    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->onHasStableIdsChanged()V

    .line 310
    :cond_1
    return-void
.end method

.method public final setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 4
    .param p1, "presenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 173
    if-eqz p1, :cond_4

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 177
    .local v0, "update":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eq v3, p1, :cond_1

    move v1, v2

    nop

    .line 179
    .local v1, "selectorChanged":Z
    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 181
    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->onPresenterSelectorChanged()V

    .line 184
    :cond_2
    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->notifyChanged()V

    .line 187
    :cond_3
    return-void

    .line 174
    .end local v0    # "update":Z
    .end local v1    # "selectorChanged":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Presenter selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract size()I
.end method

.method public final unregisterAllObservers()V
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->unregisterAll()V

    .line 230
    return-void
.end method

.method public final unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    .line 214
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter;->mObservable:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 215
    return-void
.end method
