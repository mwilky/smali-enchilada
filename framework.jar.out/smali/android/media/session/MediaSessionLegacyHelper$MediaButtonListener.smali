.class final Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionLegacyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaButtonListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/content/Context;)V
    .locals 0
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "context"    # Landroid/content/Context;

    .line 347
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 348
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    .line 349
    iput-object p2, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    .line 350
    return-void
.end method

.method private sendKeyEvent(I)V
    .locals 5
    .param p1, "keyCode"    # I

    .line 394
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 395
    .local v0, "ke":Landroid/view/KeyEvent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 396
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 398
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 399
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Landroid/media/session/MediaSessionLegacyHelper;->access$000(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    .line 401
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v0, v2

    .line 402
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 403
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1}, Landroid/media/session/MediaSessionLegacyHelper;->access$000(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    .line 405
    invoke-static {}, Landroid/media/session/MediaSessionLegacyHelper;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const-string v2, "MediaSessionHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to pending intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method public onFastForward()V
    .locals 1

    .line 380
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 381
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 354
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Landroid/media/session/MediaSessionLegacyHelper;->access$000(Landroid/app/PendingIntent;Landroid/content/Context;Landroid/content/Intent;)V

    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 365
    const/16 v0, 0x7f

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 366
    return-void
.end method

.method public onPlay()V
    .locals 1

    .line 360
    const/16 v0, 0x7e

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 361
    return-void
.end method

.method public onRewind()V
    .locals 1

    .line 385
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 386
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .line 370
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 371
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .line 375
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 376
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 390
    const/16 v0, 0x56

    invoke-direct {p0, v0}, Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;->sendKeyEvent(I)V

    .line 391
    return-void
.end method
