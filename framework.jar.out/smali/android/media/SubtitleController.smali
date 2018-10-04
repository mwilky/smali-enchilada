.class public Landroid/media/SubtitleController;
.super Ljava/lang/Object;
.source "SubtitleController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleController$Listener;,
        Landroid/media/SubtitleController$Anchor;,
        Landroid/media/SubtitleController$Renderer;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final WHAT_HIDE:I = 0x2

.field private static final WHAT_SELECT_DEFAULT_TRACK:I = 0x4

.field private static final WHAT_SELECT_TRACK:I = 0x3

.field private static final WHAT_SHOW:I = 0x1


# instance fields
.field private mAnchor:Landroid/media/SubtitleController$Anchor;

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/SubtitleController$Listener;

.field private mRenderers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleController$Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTrack:Landroid/media/SubtitleTrack;

.field private mShowing:Z

.field private mTimeProvider:Landroid/media/MediaTimeProvider;

.field private mTrackIsExplicit:Z

.field private mTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/SubtitleTrack;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityIsExplicit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/SubtitleController$1;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$1;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/media/SubtitleController$2;

    invoke-direct {v0, p0}, Landroid/media/SubtitleController$2;-><init>(Landroid/media/SubtitleController;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    iput-object p2, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    iput-object p3, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    const-string v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    return-void
.end method

.method static synthetic access$000(Landroid/media/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleController;->doShow()V

    return-void
.end method

.method static synthetic access$100(Landroid/media/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleController;->doHide()V

    return-void
.end method

.method static synthetic access$200(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/SubtitleController;->doSelectTrack(Landroid/media/SubtitleTrack;)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/SubtitleController;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/SubtitleController;->doSelectDefaultTrack()V

    return-void
.end method

.method private checkAnchorLooper()V
    .locals 0

    nop

    nop

    return-void
.end method

.method private doHide()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    return-void
.end method

.method private doSelectDefaultTrack()V
    .locals 3

    iget-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v2, "is-forced-subtitle"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getTrackType()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    :cond_2
    :goto_1
    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/media/SubtitleController;->getDefaultTrack()Landroid/media/SubtitleTrack;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    iput-boolean v1, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    iget-boolean v2, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/media/SubtitleController;->show()V

    iput-boolean v1, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    :cond_5
    return-void
.end method

.method private doSelectTrack(Landroid/media/SubtitleTrack;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->hide()V

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    :cond_2
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    iget-object v1, p0, Landroid/media/SubtitleController;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack;->setTimeProvider(Landroid/media/MediaTimeProvider;)V

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    :cond_3
    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/SubtitleController;->mListener:Landroid/media/SubtitleController$Listener;

    invoke-interface {v0, p1}, Landroid/media/SubtitleController$Listener;->onSubtitleTrackSelected(Landroid/media/SubtitleTrack;)V

    :cond_4
    return-void
.end method

.method private doShow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mShowing:Z

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->show()V

    :cond_0
    return-void
.end method

.method private getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
    .locals 1

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    invoke-virtual {v0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    return-object v0
.end method

.method private processOnAnchor(Landroid/os/Message;)V
    .locals 2

    nop

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;
    .locals 6

    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleController$Renderer;

    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->createTrack(Landroid/media/MediaFormat;)Landroid/media/SubtitleTrack;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v5, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v4, v5}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    :cond_0
    iget-object v4, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDefaultTrack()Landroid/media/SubtitleTrack;
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v0, v1, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v4

    move-object v0, v4

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :cond_0
    move-object v5, v0

    iget-object v0, v1, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    move v7, v0

    iget-object v8, v1, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v8

    :try_start_0
    iget-object v0, v1, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/SubtitleTrack;

    invoke-virtual {v9}, Landroid/media/SubtitleTrack;->getFormat()Landroid/media/MediaFormat;

    move-result-object v10

    const-string/jumbo v11, "language"

    invoke-virtual {v10, v11}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "is-forced-subtitle"

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    move v12, v6

    goto :goto_1

    :cond_1
    move v12, v13

    :goto_1
    const-string v14, "is-autoselect"

    invoke-virtual {v10, v14, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_2

    move v14, v6

    goto :goto_2

    :cond_2
    move v14, v13

    :goto_2
    const-string v15, "is-default"

    invoke-virtual {v10, v15, v13}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_3

    move v15, v6

    goto :goto_3

    :cond_3
    move v15, v13

    :goto_3
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v13, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v6, 0x1

    :goto_5
    if-eqz v12, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    const/16 v13, 0x8

    :goto_6
    if-nez v4, :cond_7

    if-eqz v15, :cond_7

    const/16 v17, 0x4

    goto :goto_7

    :cond_7
    const/16 v17, 0x0

    :goto_7
    add-int v13, v13, v17

    if-eqz v14, :cond_8

    const/16 v17, 0x0

    goto :goto_8

    :cond_8
    const/16 v17, 0x2

    :goto_8
    add-int v13, v13, v17

    if-eqz v6, :cond_9

    const/16 v16, 0x1

    goto :goto_9

    :cond_9
    const/16 v16, 0x0

    :goto_9
    add-int v13, v13, v16

    if-eqz v7, :cond_a

    if-nez v12, :cond_a

    nop

    :goto_a
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_a
    if-nez v4, :cond_b

    if-nez v15, :cond_c

    :cond_b
    if-eqz v6, :cond_d

    if-nez v14, :cond_c

    if-nez v12, :cond_c

    if-eqz v4, :cond_d

    :cond_c
    if-le v13, v3, :cond_d

    move v3, v13

    move-object v2, v9

    :cond_d
    goto :goto_a

    :cond_e
    monitor-exit v8

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSelectedTrack()Landroid/media/SubtitleTrack;
    .locals 1

    iget-object v0, p0, Landroid/media/SubtitleController;->mSelectedTrack:Landroid/media/SubtitleTrack;

    return-object v0
.end method

.method public getTracks()[Landroid/media/SubtitleTrack;
    .locals 3

    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/media/SubtitleTrack;

    iget-object v2, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasRendererFor(Landroid/media/MediaFormat;)Z
    .locals 4

    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/SubtitleController$Renderer;

    invoke-virtual {v2, p1}, Landroid/media/SubtitleController$Renderer;->supports(Landroid/media/MediaFormat;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method

.method public registerRenderer(Landroid/media/SubtitleController$Renderer;)V
    .locals 2

    iget-object v0, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/SubtitleController;->mRenderers:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset()V
    .locals 2

    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    invoke-virtual {p0}, Landroid/media/SubtitleController;->hide()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/SubtitleController;->selectTrack(Landroid/media/SubtitleTrack;)Z

    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mTrackIsExplicit:Z

    iput-boolean v0, p0, Landroid/media/SubtitleController;->mVisibilityIsExplicit:Z

    iget-object v0, p0, Landroid/media/SubtitleController;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v1, p0, Landroid/media/SubtitleController;->mCaptioningChangeListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    return-void
.end method

.method public selectDefaultTrack()V
    .locals 2

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    goto :goto_0

    :cond_0
    const-string v0, "SubtitleController"

    const-string/jumbo v1, "selectDefaultTrack: mHandler is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public selectTrack(Landroid/media/SubtitleTrack;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/SubtitleController;->mTracks:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setAnchor(Landroid/media/SubtitleController$Anchor;)V
    .locals 3

    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    iput-object v1, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-interface {v1}, Landroid/media/SubtitleController$Anchor;->getSubtitleLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleController;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/media/SubtitleController;->checkAnchorLooper()V

    iget-object v0, p0, Landroid/media/SubtitleController;->mAnchor:Landroid/media/SubtitleController$Anchor;

    invoke-direct {p0}, Landroid/media/SubtitleController;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/SubtitleController$Anchor;->setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V

    :cond_2
    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Landroid/media/SubtitleController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/SubtitleController;->processOnAnchor(Landroid/os/Message;)V

    return-void
.end method
