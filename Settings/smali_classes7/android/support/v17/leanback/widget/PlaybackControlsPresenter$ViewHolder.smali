.class Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;
.super Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;
.source "PlaybackControlsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field final mCurrentTime:Landroid/widget/TextView;

.field mCurrentTimeInMs:J

.field mCurrentTimeMarginStart:I

.field mCurrentTimeStringBuilder:Ljava/lang/StringBuilder;

.field mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mMoreActionsDock:Landroid/widget/FrameLayout;

.field mMoreActionsObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

.field mMoreActionsShowing:Z

.field mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

.field final mProgressBar:Landroid/widget/ProgressBar;

.field mSecondaryProgressInMs:J

.field final mTotalTime:Landroid/widget/TextView;

.field mTotalTimeInMs:J

.field mTotalTimeMarginEnd:I

.field mTotalTimeStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;Landroid/view/View;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/ControlBarPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/ControlBarPresenter;Landroid/view/View;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeInMs:J

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mSecondaryProgressInMs:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeStringBuilder:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeStringBuilder:Ljava/lang/StringBuilder;

    sget v0, Landroid/support/v17/leanback/R$id;->more_actions_dock:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    sget v0, Landroid/support/v17/leanback/R$id;->current_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    sget v0, Landroid/support/v17/leanback/R$id;->total_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    sget v0, Landroid/support/v17/leanback/R$id;->playback_progress:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsObserver:Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeMarginStart:I

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeMarginEnd:I

    return-void
.end method


# virtual methods
.method getChildMarginFromCenter(Landroid/content/Context;I)I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getControlIconWidth(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getChildMarginBiggest(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ge p2, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getChildMarginBigger(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->getChildMarginDefault(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method getCurrentTime()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    return-wide v0
.end method

.method getDisplayedAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    :goto_0
    return-object v0
.end method

.method getSecondaryProgress()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mSecondaryProgressInMs:J

    return-wide v0
.end method

.method getTotalTime()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    return-wide v0
.end method

.method setCurrentTime(J)V
    .locals 8

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeInMs:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_0

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeInMs:J

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTime:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mCurrentTimeInMs:J

    long-to-double v2, v2

    iget-wide v4, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v4, v2

    iget-object v6, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    double-to-int v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method setSecondaryProgress(J)V
    .locals 6

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mSecondaryProgressInMs:J

    long-to-double v0, p1

    iget-wide v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v2, v0

    iget-object v4, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    double-to-int v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    return-void
.end method

.method setTotalTime(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeInMs:J

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v2}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;->formatTime(JLjava/lang/StringBuilder;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTime:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mTotalTimeStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :goto_0
    return-void
.end method

.method showMoreActions(Z)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MoreActions;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$MoreActions;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/Presenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    invoke-virtual {v1, v2, v0}, Landroid/support/v17/leanback/widget/Presenter;->onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    new-instance v3, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$2;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$2;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/Presenter;->setOnClickListener(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsDock:Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method toggleMoreActions()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->showControls(Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method
