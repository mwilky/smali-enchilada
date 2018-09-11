.class public Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/PlaybackSeekUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

.field final mControlsDock:Landroid/view/ViewGroup;

.field mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

.field final mCurrentTime:Landroid/widget/TextView;

.field mCurrentTimeInMs:J

.field final mDescriptionDock:Landroid/view/ViewGroup;

.field final mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mImageView:Landroid/widget/ImageView;

.field mInSeek:Z

.field final mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

.field mPlayPauseAction:Landroid/support/v17/leanback/widget/PlaybackControlsRow$PlayPauseAction;

.field mPositions:[J

.field mPositionsLength:I

.field final mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

.field mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

.field final mSecondaryControlsDock:Landroid/view/ViewGroup;

.field mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

.field mSecondaryProgressInMs:J

.field mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

.field mSelectedItem:Ljava/lang/Object;

.field mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mTempBuilder:Ljava/lang/StringBuilder;

.field mThumbHeroIndex:I

.field mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

.field final mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

.field final mTotalTime:Landroid/widget/TextView;

.field mTotalTimeInMs:J

.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;Landroid/view/View;Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 2
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "descriptionPresenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 265
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    .line 266
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 68
    iput-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    .line 73
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    .line 74
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryBoundData:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    .line 86
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mListener:Landroid/support/v17/leanback/widget/PlaybackControlsRow$OnPlaybackProgressCallback;

    .line 232
    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    .line 267
    sget v0, Landroid/support/v17/leanback/R$id;->image:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 268
    sget v0, Landroid/support/v17/leanback/R$id;->description_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    .line 269
    sget v0, Landroid/support/v17/leanback/R$id;->current_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    .line 270
    sget v0, Landroid/support/v17/leanback/R$id;->total_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    .line 271
    sget v0, Landroid/support/v17/leanback/R$id;->playback_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/SeekBar;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$3;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SeekBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$4;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 327
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    new-instance v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;

    invoke-direct {v1, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder$5;-><init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SeekBar;->setAccessibilitySeekListener(Landroid/support/v17/leanback/widget/SeekBar$AccessibilitySeekListener;)V

    .line 338
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SeekBar;->setMax(I)V

    .line 339
    sget v0, Landroid/support/v17/leanback/R$id;->controls_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsDock:Landroid/view/ViewGroup;

    .line 340
    sget v0, Landroid/support/v17/leanback/R$id;->secondary_controls_dock:I

    .line 341
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsDock:Landroid/view/ViewGroup;

    .line 342
    if-nez p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    .line 343
    invoke-virtual {p3, v0}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 344
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionDock:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 347
    :cond_1
    sget v0, Landroid/support/v17/leanback/R$id;->thumbs_row:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ThumbsBar;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    .line 348
    return-void
.end method


# virtual methods
.method dispatchItemSelection()V
    .locals 4

    .line 412
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-nez v0, :cond_1

    .line 416
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    .line 418
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v1

    .line 417
    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, p0, v1}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 422
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewSelectedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    .line 423
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v3

    .line 422
    invoke-interface {v0, v1, v2, p0, v3}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 426
    :cond_2
    :goto_0
    return-void
.end method

.method public final getCurrentPositionView()Landroid/widget/TextView;
    .locals 1

    .line 477
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getDescriptionViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 1

    .line 354
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    return-object v0
.end method

.method public final getDurationView()Landroid/widget/TextView;
    .locals 1

    .line 449
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    return-object v0
.end method

.method getPresenter(Z)Landroid/support/v17/leanback/widget/Presenter;
    .locals 3
    .param p1, "primary"    # Z

    .line 429
    if-eqz p1, :cond_0

    .line 430
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getPrimaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getSecondaryActionsAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    .line 432
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ObjectAdapter;
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 433
    return-object v1

    .line 435
    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v2

    instance-of v2, v2, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    if-eqz v2, :cond_2

    .line 436
    nop

    .line 437
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;

    .line 438
    .local v1, "selector":Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;
    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;->getSecondaryPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    return-object v2

    .line 440
    .end local v1    # "selector":Landroid/support/v17/leanback/widget/ControlButtonPresenterSelector;
    :cond_2
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    :cond_3
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    return-object v1
.end method

.method onBackward()Z
    .locals 2

    .line 253
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 254
    return v1

    .line 256
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method onForward()Z
    .locals 1

    .line 245
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->startSeek()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    return v0

    .line 248
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateProgressInSeek(Z)V

    .line 249
    return v0
.end method

.method protected onSetCurrentPositionLabel(J)V
    .locals 2
    .param p1, "currentTimeMs"    # J

    .line 486
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    .line 488
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    :cond_0
    return-void
.end method

.method protected onSetDurationLabel(J)V
    .locals 2
    .param p1, "totalTimeMs"    # J

    .line 458
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-static {p1, p2, v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    .line 460
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTempBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_0
    return-void
.end method

.method setBufferedPosition(J)V
    .locals 6
    .param p1, "progressMs"    # J

    .line 509
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryProgressInMs:J

    .line 511
    long-to-double v0, p1

    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 512
    .local v0, "ratio":D
    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v2, v0

    .line 513
    .local v2, "progressRatio":D
    iget-object v4, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    double-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/SeekBar;->setSecondaryProgress(I)V

    .line 514
    return-void
.end method

.method setCurrentPosition(J)V
    .locals 5
    .param p1, "currentTimeMs"    # J

    .line 493
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 494
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 495
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onSetCurrentPositionLabel(J)V

    .line 497
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez v0, :cond_2

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "progressRatio":I
    iget-wide v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 501
    iget-wide v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    long-to-double v1, v1

    iget-wide v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v3, v3

    div-double/2addr v1, v3

    .line 502
    .local v1, "ratio":D
    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v3, v1

    double-to-int v0, v3

    .line 504
    .end local v1    # "ratio":D
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SeekBar;->setProgress(I)V

    .line 506
    .end local v0    # "progressRatio":I
    :cond_2
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 0
    .param p1, "client"    # Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 359
    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 360
    return-void
.end method

.method setTotalTime(J)V
    .locals 2
    .param p1, "totalTimeMs"    # J

    .line 465
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 466
    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 467
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->onSetDurationLabel(J)V

    .line 469
    :cond_0
    return-void
.end method

.method startSeek()Z
    .locals 7

    .line 363
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 364
    return v1

    .line 366
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->isSeekEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    goto :goto_3

    .line 370
    :cond_1
    iput-boolean v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    .line 371
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekStarted()V

    .line 372
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->getPlaybackSeekDataProvider()Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    .line 373
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->getSeekPositions()[J

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    .line 374
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    if-eqz v0, :cond_4

    .line 375
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    iget-wide v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 376
    .local v0, "pos":I
    if-ltz v0, :cond_3

    .line 377
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    goto :goto_1

    .line 379
    :cond_3
    rsub-int/lit8 v3, v0, -0x1

    iput v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    .line 381
    .end local v0    # "pos":I
    :goto_1
    goto :goto_2

    .line 382
    :cond_4
    iput v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    .line 384
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 386
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 387
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->setVisibility(I)V

    .line 388
    return v1

    .line 368
    :cond_5
    :goto_3
    return v2
.end method

.method stopSeek(Z)V
    .locals 2
    .param p1, "cancelled"    # Z

    .line 392
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    if-nez v0, :cond_0

    .line 393
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mInSeek:Z

    .line 396
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekFinished(Z)V

    .line 397
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->reset()V

    .line 400
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    .line 401
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->clearThumbBitmaps()V

    .line 402
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    .line 403
    iput-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    .line 404
    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    .line 405
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 406
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSecondaryControlsVh:Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 407
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mDescriptionViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ThumbsBar;->setVisibility(I)V

    .line 409
    return-void
.end method

.method updateProgressInSeek(Z)V
    .locals 11
    .param p1, "forward"    # Z

    .line 106
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mCurrentTimeInMs:J

    .line 107
    .local v0, "pos":J
    iget v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    if-lez v2, :cond_8

    .line 108
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    iget v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v0, v1}, Ljava/util/Arrays;->binarySearch([JIIJ)I

    move-result v2

    .line 110
    .local v2, "index":I
    if-eqz p1, :cond_4

    .line 111
    if-ltz v2, :cond_1

    .line 113
    iget v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 114
    iget-object v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v4, v2, 0x1

    aget-wide v3, v3, v4

    .line 115
    .local v3, "newPos":J
    add-int/lit8 v5, v2, 0x1

    .local v5, "thumbHeroIndex":I
    :goto_0
    goto :goto_3

    .line 117
    .end local v3    # "newPos":J
    .end local v5    # "thumbHeroIndex":I
    :cond_0
    iget-wide v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 118
    .restart local v3    # "newPos":J
    move v5, v2

    goto :goto_0

    .line 122
    .end local v3    # "newPos":J
    :cond_1
    rsub-int/lit8 v3, v2, -0x1

    .line 123
    .local v3, "insertIndex":I
    iget v5, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_2

    .line 124
    iget-object v4, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    aget-wide v4, v4, v3

    .line 125
    .local v4, "newPos":J
    move v6, v3

    .line 128
    .local v6, "thumbHeroIndex":I
    move-wide v9, v4

    move v4, v6

    move-wide v5, v9

    goto :goto_1

    .line 127
    .end local v4    # "newPos":J
    .end local v6    # "thumbHeroIndex":I
    :cond_2
    iget-wide v5, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 128
    .local v5, "newPos":J
    if-lez v3, :cond_3

    add-int/lit8 v4, v3, -0x1

    nop

    .line 130
    .end local v3    # "insertIndex":I
    .local v4, "thumbHeroIndex":I
    :cond_3
    :goto_1
    goto :goto_2

    .line 132
    .end local v4    # "thumbHeroIndex":I
    .end local v5    # "newPos":J
    :cond_4
    if-ltz v2, :cond_6

    .line 134
    if-lez v2, :cond_5

    .line 135
    iget-object v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v4, v2, -0x1

    aget-wide v3, v3, v4

    .line 136
    .local v3, "newPos":J
    add-int/lit8 v5, v2, -0x1

    goto :goto_0

    .line 138
    .end local v3    # "newPos":J
    :cond_5
    const-wide/16 v3, 0x0

    .line 139
    .restart local v3    # "newPos":J
    const/4 v5, 0x0

    goto :goto_0

    .line 143
    .end local v3    # "newPos":J
    :cond_6
    rsub-int/lit8 v3, v2, -0x1

    .line 144
    .local v3, "insertIndex":I
    if-lez v3, :cond_7

    .line 145
    iget-object v4, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositions:[J

    add-int/lit8 v5, v3, -0x1

    aget-wide v4, v4, v5

    .line 146
    .local v4, "newPos":J
    add-int/lit8 v6, v3, -0x1

    .line 149
    .restart local v6    # "thumbHeroIndex":I
    move-wide v3, v4

    move v5, v6

    goto :goto_3

    .line 148
    .end local v4    # "newPos":J
    .end local v6    # "thumbHeroIndex":I
    :cond_7
    const-wide/16 v5, 0x0

    .line 149
    .restart local v5    # "newPos":J
    nop

    .local v3, "newPos":J
    .local v5, "thumbHeroIndex":I
    :goto_2
    move-wide v9, v5

    move v5, v4

    move-wide v3, v9

    .line 153
    :goto_3
    invoke-virtual {p0, v5, p1}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->updateThumbsInSeek(IZ)V

    .line 154
    .end local v2    # "index":I
    .end local v5    # "thumbHeroIndex":I
    goto :goto_5

    .line 155
    .end local v3    # "newPos":J
    :cond_8
    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-float v2, v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->getDefaultSeekIncrement()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 156
    .local v2, "interval":J
    if-eqz p1, :cond_9

    move-wide v4, v2

    goto :goto_4

    :cond_9
    neg-long v4, v2

    :goto_4
    add-long/2addr v4, v0

    .line 157
    .restart local v4    # "newPos":J
    iget-wide v6, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    cmp-long v6, v4, v6

    if-lez v6, :cond_b

    .line 158
    iget-wide v4, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    .line 163
    .end local v2    # "interval":J
    .end local v4    # "newPos":J
    .restart local v3    # "newPos":J
    :cond_a
    move-wide v3, v4

    goto :goto_5

    .line 159
    .end local v3    # "newPos":J
    .restart local v2    # "interval":J
    .restart local v4    # "newPos":J
    :cond_b
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_a

    .line 160
    const-wide/16 v3, 0x0

    .line 163
    .end local v2    # "interval":J
    .end local v4    # "newPos":J
    .restart local v3    # "newPos":J
    :goto_5
    long-to-double v5, v3

    iget-wide v7, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v7, v7

    div-double/2addr v5, v7

    .line 164
    .local v5, "ratio":D
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mProgressBar:Landroid/support/v17/leanback/widget/SeekBar;

    const-wide v7, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v7, v5

    double-to-int v7, v7

    invoke-virtual {v2, v7}, Landroid/support/v17/leanback/widget/SeekBar;->setProgress(I)V

    .line 165
    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-virtual {v2, v3, v4}, Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;->onSeekPositionChanged(J)V

    .line 166
    return-void
.end method

.method updateThumbsInSeek(IZ)V
    .locals 18
    .param p1, "thumbHeroIndex"    # I
    .param p2, "forward"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 169
    iget v2, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-ne v2, v1, :cond_0

    .line 170
    return-void

    .line 173
    :cond_0
    iget-object v2, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ThumbsBar;->getChildCount()I

    move-result v2

    .line 174
    .local v2, "totalNum":I
    if-ltz v2, :cond_a

    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_a

    .line 177
    div-int/lit8 v3, v2, 0x2

    .line 178
    .local v3, "heroChildIndex":I
    div-int/lit8 v4, v2, 0x2

    sub-int v4, v1, v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 179
    .local v4, "start":I
    div-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v1

    iget v7, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 183
    .local v6, "end":I
    iget v7, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-gez v7, :cond_1

    .line 185
    move v7, v4

    .line 186
    .local v7, "newRequestStart":I
    move v9, v6

    .line 211
    .local v9, "newRequestEnd":I
    move v11, v7

    move v12, v9

    move/from16 v7, p2

    goto/16 :goto_3

    .line 188
    .end local v7    # "newRequestStart":I
    .end local v9    # "newRequestEnd":I
    :cond_1
    iget v7, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    if-le v1, v7, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v5

    .line 189
    .end local p2    # "forward":Z
    .local v7, "forward":Z
    :goto_0
    iget v9, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    div-int/lit8 v10, v2, 0x2

    sub-int/2addr v9, v10

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 190
    .local v9, "oldStart":I
    iget v10, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    div-int/lit8 v11, v2, 0x2

    add-int/2addr v10, v11

    iget v11, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mPositionsLength:I

    sub-int/2addr v11, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 192
    .local v10, "oldEnd":I
    if-eqz v7, :cond_3

    .line 193
    add-int/lit8 v11, v10, 0x1

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 194
    .local v11, "newRequestStart":I
    move v12, v6

    .line 196
    .local v12, "newRequestEnd":I
    move v13, v4

    .local v13, "i":I
    :goto_1
    add-int/lit8 v14, v11, -0x1

    if-gt v13, v14, :cond_5

    .line 197
    iget-object v14, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    sub-int v15, v13, v1

    add-int/2addr v15, v3

    iget-object v5, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    iget v8, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v8, v13, v8

    add-int/2addr v8, v3

    .line 198
    invoke-virtual {v5, v8}, Landroid/support/v17/leanback/widget/ThumbsBar;->getThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 197
    invoke-virtual {v14, v15, v5}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    .line 196
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_1

    .line 201
    .end local v11    # "newRequestStart":I
    .end local v12    # "newRequestEnd":I
    .end local v13    # "i":I
    :cond_3
    add-int/lit8 v5, v9, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 202
    .local v5, "newRequestEnd":I
    move v8, v4

    .line 204
    .local v8, "newRequestStart":I
    move v11, v6

    .local v11, "i":I
    :goto_2
    add-int/lit8 v12, v5, 0x1

    if-lt v11, v12, :cond_4

    .line 205
    iget-object v12, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    sub-int v13, v11, v1

    add-int/2addr v13, v3

    iget-object v14, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    iget v15, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v15, v11, v15

    add-int/2addr v15, v3

    .line 206
    invoke-virtual {v14, v15}, Landroid/support/v17/leanback/widget/ThumbsBar;->getThumbBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 205
    invoke-virtual {v12, v13, v14}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    .line 204
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 211
    .end local v9    # "oldStart":I
    .end local v10    # "oldEnd":I
    .end local v11    # "i":I
    :cond_4
    move v12, v5

    move v11, v8

    .end local v5    # "newRequestEnd":I
    .end local v8    # "newRequestStart":I
    .local v11, "newRequestStart":I
    .restart local v12    # "newRequestEnd":I
    :cond_5
    :goto_3
    iput v1, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    .line 212
    if-eqz v7, :cond_6

    .line 213
    move v5, v11

    .local v5, "i":I
    :goto_4
    if-gt v5, v12, :cond_7

    .line 214
    iget-object v8, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    iget-object v9, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    invoke-virtual {v8, v5, v9}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->getThumbnail(ILandroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    .line 213
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 217
    .end local v5    # "i":I
    :cond_6
    move v5, v12

    .restart local v5    # "i":I
    :goto_5
    if-lt v5, v11, :cond_7

    .line 218
    iget-object v8, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mSeekDataProvider:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;

    iget-object v9, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbResult:Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;

    invoke-virtual {v8, v5, v9}, Landroid/support/v17/leanback/widget/PlaybackSeekDataProvider;->getThumbnail(ILandroid/support/v17/leanback/widget/PlaybackSeekDataProvider$ResultCallback;)V

    .line 217
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 222
    .end local v5    # "i":I
    :cond_7
    const/16 v16, 0x0

    .local v16, "childIndex":I
    :goto_6
    move/from16 v5, v16

    .end local v16    # "childIndex":I
    .local v5, "childIndex":I
    iget v8, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int v8, v3, v8

    add-int/2addr v8, v4

    const/4 v9, 0x0

    if-ge v5, v8, :cond_8

    .line 224
    iget-object v8, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v8, v5, v9}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    .line 223
    add-int/lit8 v16, v5, 0x1

    .end local v5    # "childIndex":I
    .restart local v16    # "childIndex":I
    goto :goto_6

    .line 226
    .end local v16    # "childIndex":I
    :cond_8
    add-int v5, v3, v6

    iget v8, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbHeroIndex:I

    sub-int/2addr v5, v8

    const/4 v8, 0x1

    add-int/2addr v5, v8

    .line 227
    .restart local v5    # "childIndex":I
    :goto_7
    if-ge v5, v2, :cond_9

    .line 228
    iget-object v8, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->mThumbsBar:Landroid/support/v17/leanback/widget/ThumbsBar;

    invoke-virtual {v8, v5, v9}, Landroid/support/v17/leanback/widget/ThumbsBar;->setThumbBitmap(ILandroid/graphics/Bitmap;)V

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 230
    .end local v5    # "childIndex":I
    :cond_9
    return-void

    .line 175
    .end local v3    # "heroChildIndex":I
    .end local v4    # "start":I
    .end local v6    # "end":I
    .end local v7    # "forward":Z
    .end local v11    # "newRequestStart":I
    .end local v12    # "newRequestEnd":I
    .restart local p2    # "forward":Z
    :cond_a
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3
.end method
