.class Lcom/android/server/media/MediaSessionRecord$SessionCb;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionCb"
.end annotation


# instance fields
.field private final mCb:Landroid/media/session/ISessionCallback;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/ISessionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaSessionRecord$SessionCb;)Landroid/media/session/ISessionCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    return-object v0
.end method

.method private createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZI)V
    .locals 7

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p6

    invoke-interface/range {v1 .. v6}, Landroid/media/session/ISessionCallback;->onAdjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in adjustVolume."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public fastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onFastForward(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in fastForward."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public next(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onNext(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in next."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public pause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPause(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in pause."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public play(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPlay(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in play."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPlayFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in playFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPlayFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in playFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public playFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPlayFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in playFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public prepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPrepare(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in prepare."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPrepareFromMediaId(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in prepareFromMediaId."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPrepareFromSearch(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in prepareFromSearch."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public prepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onPrepareFromUri(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in prepareFromUri."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public previous(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onPrevious(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in previous."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public rate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onRate(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/media/Rating;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in rate."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public rewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onRewind(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in rewind."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public seekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onSeekTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in seekTo."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/media/session/ISessionCallback;->onCommand(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendCommand."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onCustomAction(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendCustomAction."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public sendMediaButton(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZLandroid/view/KeyEvent;)Z
    .locals 7

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-direct {p0, p6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-direct {p0, p6}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v6

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/media/session/ISessionCallback;->onMediaButtonFromController(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :goto_1
    nop

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendMediaRequest."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)Z
    .locals 8

    if-eqz p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->access$2600(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/16 v3, 0x3e8

    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v4

    move v5, p6

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-direct {p0, p5}, Lcom/android/server/media/MediaSessionRecord$SessionCb;->createMediaButtonIntent(Landroid/view/KeyEvent;)Landroid/content/Intent;

    move-result-object v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v1 .. v7}, Landroid/media/session/ISessionCallback;->onMediaButton(Ljava/lang/String;IILandroid/content/Intent;ILandroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :goto_1
    nop

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in sendMediaRequest."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/media/session/ISessionCallback;->onSetVolumeTo(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in setVolumeTo."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public skipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/media/session/ISessionCallback;->onSkipToTrack(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in skipToTrack"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionCb;->mCb:Landroid/media/session/ISessionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/media/session/ISessionCallback;->onStop(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionRecord"

    const-string v2, "Remote failure in stop."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
