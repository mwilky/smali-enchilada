.class Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;
.super Landroid/support/v17/leanback/widget/ControlBarPresenter;
.source "PlaybackControlsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;,
        Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;
    }
.end annotation


# static fields
.field private static sChildMarginBigger:I

.field private static sChildMarginBiggest:I


# instance fields
.field private mMoreActionsEnabled:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "layoutResourceId"    # I

    .line 219
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;-><init>(I)V

    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    .line 220
    return-void
.end method

.method static formatTime(JLjava/lang/StringBuilder;)V
    .locals 9
    .param p0, "seconds"    # J
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .line 190
    const-wide/16 v0, 0x3c

    div-long v2, p0, v0

    .line 191
    .local v2, "minutes":J
    div-long v4, v2, v0

    .line 192
    .local v4, "hours":J
    mul-long v6, v2, v0

    sub-long/2addr p0, v6

    .line 193
    mul-long/2addr v0, v4

    sub-long/2addr v2, v0

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 196
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    const/16 v1, 0x30

    const-wide/16 v6, 0xa

    const/16 v8, 0x3a

    if-lez v0, :cond_0

    .line 197
    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    .line 199
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :cond_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    cmp-long v0, p0, v6

    if-gez v0, :cond_1

    .line 204
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    return-void
.end method


# virtual methods
.method public areMoreActionsEnabled()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    return v0
.end method

.method public enableSecondaryActions(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 228
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    .line 229
    return-void
.end method

.method public enableTimeMargins(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;Z)V
    .locals 3
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    .param p2, "enable"    # Z

    .line 305
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 306
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeMarginStart:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 307
    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v2, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 310
    if-eqz p2, :cond_1

    iget v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeMarginEnd:I

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 311
    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    return-void
.end method

.method getChildMarginBigger(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 348
    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_child_margin_bigger:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    .line 352
    :cond_0
    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBigger:I

    return v0
.end method

.method getChildMarginBiggest(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 356
    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_child_margin_biggest:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    .line 360
    :cond_0
    sget v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->sChildMarginBiggest:I

    return v0
.end method

.method public getCurrentTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)I
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 270
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 274
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->getCurrentTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSecondaryProgress(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)I
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 286
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 290
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->getSecondaryProgress()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)I
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 254
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/support/v17/leanback/util/MathUtil;->safeLongToInt(J)I

    move-result v0

    return v0
.end method

.method public getTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)J
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 258
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->getTotalTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 323
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 324
    .local v0, "vh":Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    move-object v1, p2

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;

    .line 327
    .local v1, "data":Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;
    iget-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;->secondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v2, v3, :cond_0

    .line 328
    iget-object v2, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$BoundData;->secondaryActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iput-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 329
    iget-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v3, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 330
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    .line 333
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    .line 334
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->mMoreActionsEnabled:Z

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->showMoreActions(Z)V

    .line 335
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 316
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 317
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getLayoutResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 318
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;Landroid/view/View;)V

    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 339
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/ControlBarPresenter;->onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 340
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 341
    .local v0, "vh":Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    iget-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->unregisterObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    .line 343
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 345
    :cond_0
    return-void
.end method

.method public resetFocus(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 300
    iget-object v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mControlBar:Landroid/support/v17/leanback/widget/ControlBar;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ControlBar;->requestFocus()Z

    .line 301
    return-void
.end method

.method public setCurrentTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    .param p2, "ms"    # I

    .line 262
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    .line 263
    return-void
.end method

.method public setCurrentTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 0
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    .param p2, "ms"    # J

    .line 266
    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->setCurrentTime(J)V

    .line 267
    return-void
.end method

.method public setProgressColor(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 4
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 239
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 241
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 242
    const v2, 0x102000d

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 243
    return-void
.end method

.method public setSecondaryProgress(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    .param p2, "progressMs"    # I

    .line 278
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    .line 279
    return-void
.end method

.method public setSecondaryProgressLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 0
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    .param p2, "progressMs"    # J

    .line 282
    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->setSecondaryProgress(J)V

    .line 283
    return-void
.end method

.method public setTotalTime(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;I)V
    .locals 2
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    .param p2, "ms"    # I

    .line 246
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->setTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V

    .line 247
    return-void
.end method

.method public setTotalTimeLong(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;J)V
    .locals 0
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
    .param p2, "ms"    # J

    .line 250
    invoke-virtual {p1, p2, p3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->setTotalTime(J)V

    .line 251
    return-void
.end method

.method public showPrimaryActions(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 1
    .param p1, "vh"    # Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    .line 294
    iget-boolean v0, p1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->toggleMoreActions()V

    .line 297
    :cond_0
    return-void
.end method
