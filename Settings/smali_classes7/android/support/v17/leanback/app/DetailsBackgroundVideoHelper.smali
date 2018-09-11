.class final Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;
.super Ljava/lang/Object;
.source "DetailsBackgroundVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;
    }
.end annotation


# static fields
.field private static final BACKGROUND_CROSS_FADE_DURATION:J = 0x1f4L

.field private static final CROSSFADE_DELAY:J = 0x3e8L

.field static final INITIAL:I = 0x0

.field static final NO_VIDEO:I = 0x2

.field static final PLAY_VIDEO:I = 0x1


# instance fields
.field private mBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawableVisible:Z

.field mControlStateCallback:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

.field private mCurrentState:I

.field private final mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

.field private mParallaxEffect:Landroid/support/v17/leanback/widget/ParallaxEffect;

.field private mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackGlue;Landroid/support/v17/leanback/widget/DetailsParallax;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "playbackGlue"    # Landroid/support/v17/leanback/media/PlaybackGlue;
    .param p2, "detailsParallax"    # Landroid/support/v17/leanback/widget/DetailsParallax;
    .param p3, "backgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    .line 245
    new-instance v0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;-><init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    .line 77
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 78
    iput-object p2, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    .line 79
    iput-object p3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawableVisible:Z

    .line 81
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 82
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->startParallax()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;
    .param p1, "x1"    # I

    .line 39
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->updateState(I)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    .line 39
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 39
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    .line 39
    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->internalStartPlayback()V

    return-void
.end method

.method private applyState()V
    .locals 2

    .line 126
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(Z)V

    .line 140
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->removePlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V

    .line 142
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->pause()V

    goto :goto_0

    .line 128
    :pswitch_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->internalStartPlayback()V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->addPlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(Z)V

    .line 137
    nop

    .line 146
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private internalStartPlayback()V
    .locals 4

    .line 157
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->play()V

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsParallax;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$2;-><init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/RecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    return-void
.end method

.method private updateState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 118
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    if-ne p1, v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    .line 122
    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->applyState()V

    .line 123
    return-void
.end method


# virtual methods
.method crossFadeBackgroundToVideo(Z)V
    .locals 1
    .param p1, "crossFadeToVideo"    # Z

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V

    .line 170
    return-void
.end method

.method crossFadeBackgroundToVideo(ZZ)V
    .locals 6
    .param p1, "crossFadeToVideo"    # Z
    .param p2, "immediate"    # Z

    .line 173
    xor-int/lit8 v0, p1, 0x1

    .line 174
    .local v0, "newVisible":Z
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawableVisible:Z

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v1, v0, :cond_3

    .line 175
    if-eqz p2, :cond_2

    .line 176
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 178
    iput-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 180
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 181
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    move v2, v4

    nop

    :cond_1
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 182
    return-void

    .line 185
    :cond_2
    return-void

    .line 187
    :cond_3
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawableVisible:Z

    .line 188
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 189
    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 190
    iput-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 193
    :cond_4
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_5

    move v5, v3

    goto :goto_0

    :cond_5
    move v5, v1

    .line 194
    .local v5, "startAlpha":F
    :goto_0
    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v3

    .line 196
    .local v1, "endAlpha":F
    :goto_1
    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_7

    .line 197
    return-void

    .line 199
    :cond_7
    if-eqz p2, :cond_9

    .line 200
    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_8

    move v2, v4

    nop

    :cond_8
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 201
    return-void

    .line 203
    :cond_9
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v5, v2, v4

    const/4 v3, 0x1

    aput v1, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 204
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 205
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$3;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$3;-><init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$4;

    invoke-direct {v3, p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$4;-><init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 232
    iget-object v2, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 233
    return-void
.end method

.method isVideoVisible()Z
    .locals 2

    .line 114
    iget v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mCurrentState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method setPlaybackGlue(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 2
    .param p1, "playbackGlue"    # Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 149
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mControlStateCallback:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->removePlayerCallback(Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;)V

    .line 152
    :cond_0
    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mPlaybackGlue:Landroid/support/v17/leanback/media/PlaybackGlue;

    .line 153
    invoke-direct {p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->applyState()V

    .line 154
    return-void
.end method

.method startParallax()V
    .locals 7

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mParallaxEffect:Landroid/support/v17/leanback/widget/ParallaxEffect;

    if-eqz v0, :cond_0

    .line 87
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsParallax;->getOverviewRowTop()Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    move-result-object v0

    .line 90
    .local v0, "frameTop":Landroid/support/v17/leanback/widget/Parallax$IntProperty;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 91
    .local v1, "maxFrameTop":F
    const/4 v2, 0x0

    .line 92
    .local v2, "minFrameTop":F
    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 93
    invoke-virtual {v0, v6}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->atFraction(F)Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->atFraction(F)Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/DetailsParallax;->addEffect([Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;)Landroid/support/v17/leanback/widget/ParallaxEffect;

    move-result-object v3

    new-instance v4, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;

    invoke-direct {v4, p0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$1;-><init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    .line 94
    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/ParallaxEffect;->target(Landroid/support/v17/leanback/widget/ParallaxTarget;)Landroid/support/v17/leanback/widget/ParallaxEffect;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mParallaxEffect:Landroid/support/v17/leanback/widget/ParallaxEffect;

    .line 106
    iget-object v3, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/DetailsParallax;->updateValues()V

    .line 107
    return-void
.end method

.method stopParallax()V
    .locals 2

    .line 110
    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mDetailsParallax:Landroid/support/v17/leanback/widget/DetailsParallax;

    iget-object v1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->mParallaxEffect:Landroid/support/v17/leanback/widget/ParallaxEffect;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/DetailsParallax;->removeEffect(Landroid/support/v17/leanback/widget/ParallaxEffect;)V

    .line 111
    return-void
.end method
