.class Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
.super Ljava/lang/Object;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;
    }
.end annotation


# instance fields
.field public mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

.field public mFlags:I

.field public mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

.field public final mPi:Landroid/app/PendingIntent;

.field public mRccListener:Landroid/media/session/MediaSession$Callback;

.field public final mSession:Landroid/media/session/MediaSession;

.field final synthetic this$0:Landroid/media/session/MediaSessionLegacyHelper;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSession;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "session"    # Landroid/media/session/MediaSession;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .line 420
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    .line 422
    iput-object p3, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mPi:Landroid/app/PendingIntent;

    .line 423
    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 426
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 428
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 429
    iput-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    .line 430
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->access$200(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mPi:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    if-nez v0, :cond_1

    .line 432
    new-instance v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;-><init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;Landroid/media/session/MediaSessionLegacyHelper$1;)V

    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    .line 433
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 434
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 436
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    :goto_0
    return-void
.end method
