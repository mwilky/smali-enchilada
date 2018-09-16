.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.super Landroid/media/session/ISessionManager$Stub;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SessionManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;,
        Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;
    }
.end annotation


# static fields
.field private static final EXTRA_WAKELOCK_ACQUIRED:Ljava/lang/String; = "android.media.AudioService.WAKELOCK_ACQUIRED"

.field private static final WAKELOCK_RELEASE_ON_FINISHED:I = 0x7bc


# instance fields
.field mKeyEventDone:Landroid/content/BroadcastReceiver;

.field private mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

.field private mVoiceButtonDown:Z

.field private mVoiceButtonHandled:Z

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionService;

    .line 1000
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/session/ISessionManager$Stub;-><init>()V

    .line 1005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1006
    iput-boolean v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 2117
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 2187
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$5;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;)V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventDone:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # I

    .line 1000
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/view/KeyEvent;
    .param p6, "x6"    # Z

    .line 1000
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Landroid/view/KeyEvent;
    .param p6, "x6"    # Z

    .line 1000
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method private dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V
    .locals 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "suggestedStream"    # I
    .param p6, "direction"    # I
    .param p7, "flags"    # I

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v11, p6

    .line 1833
    move/from16 v12, p7

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    goto :goto_0

    .line 1834
    :cond_0
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionStack;->getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    :goto_0
    move-object v13, v2

    .line 1836
    .local v13, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v2, 0x0

    .line 1837
    .local v2, "preferSuggestedStream":Z
    invoke-direct {v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isValidLocalStreamType(I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 1838
    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1839
    const/4 v2, 0x1

    .line 1842
    .end local v2    # "preferSuggestedStream":Z
    .local v14, "preferSuggestedStream":Z
    :cond_1
    move v14, v2

    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adjusting "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p1

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "session: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " by "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". flags="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", suggestedStream="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", preferSuggestedStream="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    .line 1845
    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1842
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    if-eqz v13, :cond_3

    if-eqz v14, :cond_2

    goto :goto_1

    .line 1881
    :cond_2
    const/4 v6, 0x0

    const/4 v10, 0x1

    move-object v2, v13

    move-object v3, v15

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p4

    move v8, v11

    move v9, v12

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/media/MediaSessionRecord;->adjustVolume(Ljava/lang/String;IILandroid/media/session/ISessionControllerCallback;ZIIZ)V

    goto :goto_2

    .line 1848
    :cond_3
    :goto_1
    and-int/lit16 v2, v12, 0x200

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    .line 1849
    invoke-static {v2, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1850
    sget-boolean v2, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1851
    const-string v2, "MediaSessionService"

    const-string v3, "No active session to adjust, skipping media only volume event"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    :cond_4
    return-void

    .line 1861
    :cond_5
    iget-object v2, v0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;

    invoke-direct {v3, v0, v11, v1, v12}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;III)V

    invoke-virtual {v2, v3}, Lcom/android/server/media/MediaSessionService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1884
    :goto_2
    return-void
.end method

.method private dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z

    move-object v1, p0

    move-object/from16 v10, p5

    .line 1915
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v11

    .line 1916
    .local v11, "session":Lcom/android/server/media/MediaSessionRecord;
    const/4 v0, -0x1

    if-eqz v11, :cond_3

    .line 1918
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    if-eqz p6, :cond_0

    .line 1921
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1925
    :cond_0
    if-eqz v11, :cond_1

    .line 1926
    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    const-string v3, "MediaSession"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1931
    :cond_1
    nop

    .line 1932
    if-eqz p6, :cond_2

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$5300(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    :goto_0
    move v8, v0

    goto :goto_1

    :cond_2
    goto :goto_0

    :goto_1
    iget-object v9, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    .line 1931
    move-object v2, v11

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object v7, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/media/MediaSessionRecord;->sendMediaButton(Ljava/lang/String;IIZLandroid/view/KeyEvent;ILandroid/os/ResultReceiver;)V

    .line 1934
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1936
    :try_start_0
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    new-instance v2, Landroid/media/session/MediaSession$Token;

    .line 1937
    invoke-virtual {v11}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    .line 1936
    invoke-interface {v0, v10, v2}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaSession(Landroid/view/KeyEvent;Landroid/media/session/MediaSession$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1938
    :catch_0
    move-exception v0

    .line 1939
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaSessionService"

    const-string v3, "Failed to send callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1940
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    goto/16 :goto_5

    .line 1942
    :cond_3
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1943
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 1944
    :cond_4
    if-eqz p6, :cond_5

    .line 1945
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->aquireWakeLockLocked()V

    .line 1949
    :cond_5
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1950
    iget-object v2, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1951
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    const-string v3, "MediaSession"

    .line 1950
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 1955
    :cond_6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1956
    .local v2, "mediaButtonIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1957
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v2, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1960
    if-eqz p4, :cond_7

    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    move-object v4, p1

    :goto_3
    move-object v12, v4

    .line 1961
    .local v12, "callerPackageName":Ljava/lang/String;
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1963
    :try_start_1
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1964
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v4

    move-object v13, v4

    .line 1966
    .local v13, "receiver":Landroid/app/PendingIntent;
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to the last known PendingIntent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1970
    if-eqz p6, :cond_8

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;->access$5300(Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;)I

    move-result v0

    nop

    :cond_8
    move v6, v0

    iget-object v8, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mKeyEventReceiver:Lcom/android/server/media/MediaSessionService$SessionManagerImpl$KeyEventWakeLockReceiver;

    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1971
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v9

    .line 1969
    move-object v4, v13

    move-object v7, v2

    invoke-virtual/range {v4 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1972
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1973
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 1974
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1975
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_9

    .line 1976
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v4

    .line 1977
    invoke-interface {v4, v10, v0}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V

    .line 1981
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "receiver":Landroid/app/PendingIntent;
    :cond_9
    goto/16 :goto_4

    .line 1982
    :cond_a
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1983
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1985
    .local v0, "receiver":Landroid/content/ComponentName;
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to the restored intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1989
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1990
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v5

    .line 1991
    invoke-static {v5}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$5500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v5

    .line 1990
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1989
    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1992
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1993
    iget-object v4, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v4

    .line 1994
    invoke-interface {v4, v10, v0}, Landroid/media/session/ICallback;->onMediaKeyEventDispatchedToMediaButtonReceiver(Landroid/view/KeyEvent;Landroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0    # "receiver":Landroid/content/ComponentName;
    goto :goto_4

    .line 2001
    :catch_1
    move-exception v0

    .line 2002
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MediaSessionService"

    const-string v5, "Failed to send callback"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v12    # "callerPackageName":Ljava/lang/String;
    goto :goto_5

    .line 1998
    .restart local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .restart local v12    # "callerPackageName":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 1999
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error sending key event to media button receiver "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2000
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1999
    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2003
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v2    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v12    # "callerPackageName":Ljava/lang/String;
    :cond_b
    :goto_4
    nop

    .line 2005
    :cond_c
    :goto_5
    return-void
.end method

.method private dispatchVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "stream"    # I
    .param p7, "musicOnly"    # Z

    .line 1450
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1451
    .local v0, "down":Z
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    nop

    .line 1452
    .local v1, "up":Z
    :cond_1
    const/4 v2, 0x0

    .line 1453
    .local v2, "direction":I
    const/4 v3, 0x0

    .line 1454
    .local v3, "isMute":Z
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/16 v5, 0xa4

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 1459
    :pswitch_0
    const/4 v2, -0x1

    .line 1460
    goto :goto_1

    .line 1456
    :pswitch_1
    const/4 v2, 0x1

    .line 1457
    goto :goto_1

    .line 1462
    :cond_2
    const/4 v3, 0x1

    .line 1466
    :goto_1
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispatchVolumeKeyEventLocked  keyEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    if-nez v0, :cond_3

    if-eqz v1, :cond_8

    .line 1469
    :cond_3
    const/16 v4, 0x1000

    .line 1470
    .local v4, "flags":I
    if-eqz p7, :cond_4

    .line 1472
    or-int/lit16 v4, v4, 0x200

    goto :goto_2

    .line 1475
    :cond_4
    if-eqz v1, :cond_5

    .line 1476
    or-int/lit8 v4, v4, 0x14

    goto :goto_2

    .line 1478
    :cond_5
    or-int/lit8 v4, v4, 0x11

    .line 1481
    :goto_2
    if-eqz v2, :cond_7

    .line 1483
    if-eqz v1, :cond_6

    .line 1484
    const/4 v2, 0x0

    .line 1486
    :cond_6
    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p6

    move v13, v2

    move v14, v4

    invoke-direct/range {v7 .. v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V

    goto :goto_3

    .line 1488
    :cond_7
    if-eqz v3, :cond_8

    .line 1489
    if-eqz v0, :cond_8

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_8

    .line 1490
    const/16 v13, 0x65

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p6

    move v14, v4

    invoke-direct/range {v7 .. v14}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V

    .line 1495
    .end local v4    # "flags":I
    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "asSystemService"    # Z
    .param p5, "keyEvent"    # Landroid/view/KeyEvent;
    .param p6, "needWakeLock"    # Z

    move-object v7, p0

    .line 1888
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    .line 1889
    .local v8, "action":I
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v9, v0

    .line 1890
    .local v9, "isLongPress":Z
    if-nez v8, :cond_3

    .line 1891
    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1892
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1893
    iput-boolean v1, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 1911
    move-object/from16 v11, p5

    move/from16 v10, p6

    goto :goto_2

    .line 1894
    :cond_1
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v0, :cond_2

    if-eqz v9, :cond_2

    .line 1895
    iput-boolean v2, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    .line 1896
    move/from16 v10, p6

    invoke-direct {v7, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->startVoiceInput(Z)V

    goto :goto_1

    .line 1911
    :cond_2
    move/from16 v10, p6

    goto :goto_1

    .line 1898
    :cond_3
    move/from16 v10, p6

    if-ne v8, v2, :cond_4

    .line 1899
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    if-eqz v0, :cond_4

    .line 1900
    iput-boolean v1, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonDown:Z

    .line 1901
    iget-boolean v0, v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mVoiceButtonHandled:Z

    if-nez v0, :cond_4

    invoke-virtual/range {p5 .. p5}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1903
    move-object/from16 v11, p5

    invoke-static {v11, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v12

    .line 1904
    .local v12, "downEvent":Landroid/view/KeyEvent;
    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1906
    invoke-direct/range {p0 .. p6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .end local v12    # "downEvent":Landroid/view/KeyEvent;
    goto :goto_2

    .line 1911
    :cond_4
    :goto_1
    move-object/from16 v11, p5

    :goto_2
    return-void
.end method

.method private hasMediaControlPermission(ILjava/lang/String;II)Z
    .locals 6
    .param p1, "resolvedUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1791
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p3, p4}, Lcom/android/server/media/MediaSessionService;->access$4900(Lcom/android/server/media/MediaSessionService;II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1792
    return v1

    .line 1798
    :cond_0
    const/16 v0, 0x3e8

    if-eq p4, v0, :cond_7

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.MEDIA_CONTENT_CONTROL"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 1802
    :cond_1
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1803
    const-string v0, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") hasn\'t granted MEDIA_CONTENT_CONTROL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    :cond_2
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1808
    .local v0, "userId":I
    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    .line 1809
    return v2

    .line 1814
    :cond_3
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1815
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5000(Lcom/android/server/media/MediaSessionService;)Landroid/app/INotificationManager;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/app/INotificationManager;->getEnabledNotificationListeners(I)Ljava/util/List;

    move-result-object v3

    .line 1816
    .local v3, "enabledNotificationListeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v3, :cond_5

    .line 1817
    move v4, v2

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 1818
    nop

    .line 1819
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1818
    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1820
    return v1

    .line 1817
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1824
    .end local v4    # "i":I
    :cond_5
    sget-boolean v1, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 1825
    const-string v1, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") doesn\'t have an enabled notification listener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :cond_6
    return v2

    .line 1801
    .end local v0    # "userId":I
    .end local v3    # "enabledNotificationListeners":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_7
    :goto_1
    return v1
.end method

.method private isUserSetupComplete()Z
    .locals 4

    .line 2051
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isValidLocalStreamType(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .line 2057
    if-ltz p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isVoiceKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .line 2046
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2047
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$5800(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x55

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2046
    :goto_1
    return v0
.end method

.method private startVoiceInput(Z)V
    .locals 7
    .param p1, "needWakeLock"    # Z

    .line 2008
    const/4 v0, 0x0

    .line 2014
    .local v0, "voiceIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 2015
    .local v1, "pm":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$5600(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$5600(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 2016
    .local v2, "isLocked":Z
    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2017
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.WEB_SEARCH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 2018
    const-string v3, "MediaSessionService"

    const-string/jumbo v4, "voice-based interactions: about to use ACTION_WEB_SEARCH"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2020
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 2021
    const-string v5, "android.speech.extras.EXTRA_SECURE"

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 2022
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$5600(Lcom/android/server/media/MediaSessionService;)Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2021
    move v3, v4

    goto :goto_1

    .line 2022
    :cond_2
    nop

    .line 2021
    :goto_1
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2023
    const-string v3, "MediaSessionService"

    const-string/jumbo v4, "voice-based interactions: about to use ACTION_VOICE_SEARCH_HANDS_FREE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :goto_2
    if-eqz p1, :cond_3

    .line 2027
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5700(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2030
    :cond_3
    nop

    .line 2031
    const/high16 v3, 0x10800000

    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2033
    sget-boolean v3, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "voiceIntent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    :cond_4
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 2039
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 2036
    :catch_0
    move-exception v3

    .line 2037
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    :try_start_1
    const-string v4, "MediaSessionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No activity for search: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2039
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    if-eqz p1, :cond_6

    goto :goto_5

    :goto_3
    if-eqz p1, :cond_5

    .line 2040
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$5700(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    throw v3

    .line 2039
    :goto_4
    if-eqz p1, :cond_6

    .line 2040
    :goto_5
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5700(Lcom/android/server/media/MediaSessionService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2043
    :cond_6
    return-void
.end method

.method private verifySessionsRequest(Landroid/content/ComponentName;III)I
    .locals 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 1754
    const/4 v0, 0x0

    .line 1755
    .local v0, "packageName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1758
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1759
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, v0, p4}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1763
    :cond_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "getSessions"

    move v2, p3

    move v3, p4

    move v4, p2

    move-object v8, v0

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1767
    .local v1, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2, p1, p3, p4, v1}, Lcom/android/server/media/MediaSessionService;->access$4800(Lcom/android/server/media/MediaSessionService;Landroid/content/ComponentName;III)V

    .line 1768
    return v1
.end method

.method private verifySessionsRequest2(ILjava/lang/String;II)I
    .locals 7
    .param p1, "targetUserId"    # I
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "callerPid"    # I
    .param p4, "callerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1775
    const-string v5, "getSessionTokens"

    const/4 v3, 0x1

    const/4 v4, 0x1

    move v0, p3

    move v1, p4

    move v2, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1780
    .local v0, "resolvedUserId":I
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasMediaControlPermission(ILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1784
    return v0

    .line 1782
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Missing permission to control media."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addSessionTokensListener(Landroid/media/ISessionTokensListener;ILjava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/ISessionTokensListener;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1700
    return-void
.end method

.method public addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V
    .locals 17
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1052
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1053
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1054
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v11, v2

    .line 1057
    .local v11, "token":J
    move-object/from16 v13, p2

    move/from16 v14, p3

    :try_start_0
    invoke-direct {v1, v13, v14, v9, v10}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v6

    .line 1058
    .local v6, "resolvedUserId":I
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1059
    :try_start_1
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object/from16 v8, p1

    invoke-static {v0, v8}, Lcom/android/server/media/MediaSessionService;->access$2700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v0

    move v7, v0

    .line 1060
    .local v7, "index":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 1061
    const-string v0, "MediaSessionService"

    const-string v2, "ActiveSessionsListener is already added, ignoring"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1075
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1062
    return-void

    .line 1064
    :cond_0
    :try_start_2
    new-instance v0, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;

    iget-object v3, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move-object v2, v0

    move-object v4, v8

    move-object v5, v13

    move/from16 v16, v7

    move v7, v9

    .end local v7    # "index":I
    .local v16, "index":I
    move v8, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;-><init>(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;III)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v0

    .line 1067
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_3
    invoke-interface/range {p1 .. p1}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1071
    nop

    .line 1072
    :try_start_4
    iget-object v0, v1, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v16    # "index":I
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1075
    .end local v6    # "resolvedUserId":I
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1076
    nop

    .line 1077
    return-void

    .line 1068
    .restart local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .restart local v6    # "resolvedUserId":I
    .restart local v16    # "index":I
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "MediaSessionService"

    const-string v4, "ActiveSessionsListener is dead, ignoring it"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1070
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1075
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    return-void

    .line 1073
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    .end local v16    # "index":I
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1075
    .end local v6    # "resolvedUserId":I
    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/media/session/ISessionCallback;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1011
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 1012
    .local v7, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 1013
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v9, v0

    .line 1015
    .local v9, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, p1, v8}, Lcom/android/server/media/MediaSessionService;->access$2400(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;I)V

    .line 1016
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "createSession"

    move v0, v7

    move v1, v8

    move v2, p4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1018
    .local v3, "resolvedUserId":I
    if-eqz p2, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    move v1, v7

    move v2, v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/server/media/MediaSessionService;->access$2500(Lcom/android/server/media/MediaSessionService;IIILjava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    .line 1022
    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionRecord;->getSessionBinder()Landroid/media/session/ISession;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1024
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1021
    return-object v0

    .line 1019
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Controller callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1024
    .end local v3    # "resolvedUserId":I
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public createSession2(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "sessionToken"    # Landroid/os/Bundle;

    .line 1608
    const/4 v0, 0x0

    return v0
.end method

.method public destroySession2(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "sessionToken"    # Landroid/os/Bundle;

    .line 1650
    return-void
.end method

.method public dispatchAdjustVolume(Ljava/lang/String;III)V
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "suggestedStream"    # I
    .param p3, "delta"    # I
    .param p4, "flags"    # I

    .line 1500
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 1501
    .local v9, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1502
    .local v10, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v11, v0

    .line 1504
    .local v11, "token":J
    move-object v13, p0

    :try_start_0
    iget-object v0, v13, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1505
    const/4 v5, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    move v3, v9

    move v4, v10

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    :try_start_1
    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V

    .line 1507
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1509
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1510
    nop

    .line 1511
    return-void

    .line 1507
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1509
    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    .locals 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "asSystemService"    # Z
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .param p4, "needWakeLock"    # Z

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    .line 1115
    if-eqz v11, :cond_6

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->isMediaKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1120
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 1121
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1122
    .local v13, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v14, v0

    .line 1124
    .local v14, "token":J
    :try_start_0
    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_1

    .line 1125
    :try_start_1
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v9, p1

    :try_start_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v8, p2

    :try_start_3
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1171
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v9, p1

    :goto_0
    move/from16 v8, p2

    goto/16 :goto_3

    .line 1129
    :cond_1
    move-object/from16 v9, p1

    move/from16 v8, p2

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1132
    const-string v0, "MediaSessionService"

    const-string v1, "Not dispatching media key event because user setup is in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1171
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1134
    return-void

    .line 1137
    :cond_2
    :try_start_4
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1138
    :try_start_5
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    move/from16 v17, v0

    .line 1139
    .local v17, "isGlobalPriorityActive":Z
    if-eqz v17, :cond_3

    const/16 v0, 0x3e8

    if-eq v13, v0, :cond_3

    .line 1142
    const-string v0, "MediaSessionService"

    const-string v1, "Only the system can dispatch media key event to the global priority session."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1171
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1144
    return-void

    .line 1146
    :cond_3
    if-nez v17, :cond_4

    .line 1147
    :try_start_6
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1149
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to the media key listener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1152
    :try_start_7
    iget-object v0, v10, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v0

    new-instance v7, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;

    const/16 v18, 0x0

    move-object v1, v7

    move-object v2, v10

    move-object v3, v9

    move v4, v12

    move v5, v13

    move v6, v8

    move-object/from16 v19, v7

    move-object v7, v11

    move/from16 v8, p4

    move-object/from16 v9, v18

    invoke-direct/range {v1 .. v9}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$MediaKeyListenerResultReceiver;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;IIZLandroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionService$1;)V

    move-object/from16 v1, v19

    invoke-interface {v0, v11, v1}, Landroid/media/session/IOnMediaKeyListener;->onMediaKey(Landroid/view/KeyEvent;Landroid/os/ResultReceiver;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1155
    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1171
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1155
    return-void

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to the media key listener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    if-nez v17, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v10, v0}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->isVoiceKey(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1163
    move-object v1, v10

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object v6, v11

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->handleVoiceKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    goto :goto_2

    .line 1166
    :cond_5
    move-object v1, v10

    move-object/from16 v2, p1

    move v3, v12

    move v4, v13

    move/from16 v5, p2

    move-object v6, v11

    move/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;Z)V

    .line 1169
    .end local v17    # "isGlobalPriorityActive":Z
    :goto_2
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1171
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1172
    nop

    .line 1173
    return-void

    .line 1169
    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v16
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1171
    :catchall_3
    move-exception v0

    :goto_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1116
    .end local v12    # "pid":I
    .end local v13    # "uid":I
    .end local v14    # "token":J
    :cond_6
    :goto_4
    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-media key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    return-void
.end method

.method public dispatchVolumeKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    .locals 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "asSystemService"    # Z
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;
    .param p4, "stream"    # I
    .param p5, "musicOnly"    # Z

    move-object/from16 v9, p0

    move-object/from16 v10, p3

    .line 1376
    if-eqz v10, :cond_9

    .line 1377
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    .line 1378
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    .line 1379
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 1384
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 1385
    .local v11, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 1386
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 1389
    .local v13, "token":J
    const-string v0, "MediaSessionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchVolumeKeyEvent, pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", asSystem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p2

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :try_start_0
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1395
    :try_start_1
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1396
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 1402
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x2

    if-nez v0, :cond_5

    .line 1403
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 1405
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    .line 1406
    invoke-static/range {p3 .. p3}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v2

    .line 1405
    invoke-static {v0, v2}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1407
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v7, p4

    :try_start_3
    invoke-static {v0, v7}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3602(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1408
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v6, p5

    :try_start_4
    invoke-static {v0, v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3702(Lcom/android/server/media/MediaSessionService$FullUserRecord;Z)Z

    .line 1409
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    iget-object v2, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1410
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1412
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v3

    const/4 v4, 0x0

    .line 1410
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1413
    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$3800(Lcom/android/server/media/MediaSessionService;)I

    move-result v3

    int-to-long v3, v3

    .line 1409
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/media/MediaSessionService$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1442
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1415
    :cond_2
    move/from16 v7, p4

    move/from16 v6, p5

    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1416
    :cond_3
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1417
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1418
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1419
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1418
    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    .line 1421
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3502(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    .line 1423
    :cond_4
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v10}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto/16 :goto_3

    .line 1442
    :catchall_1
    move-exception v0

    move/from16 v7, p4

    :goto_1
    move/from16 v6, p5

    goto/16 :goto_4

    .line 1426
    :cond_5
    move/from16 v7, p4

    move/from16 v6, p5

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1800(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$MessageHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService$MessageHandler;->removeMessages(I)V

    .line 1427
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1428
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 1429
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    .line 1431
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1432
    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3500(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/view/KeyEvent;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1433
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3600(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v17

    iget-object v1, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1434
    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3700(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Z

    move-result v18

    .line 1431
    move-object v1, v9

    move-object v2, v15

    move v3, v11

    move v4, v12

    move v5, v8

    move-object v6, v0

    move/from16 v7, v17

    move/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1435
    move-object v1, v9

    move-object v2, v15

    move v3, v11

    move v4, v12

    move/from16 v5, p2

    move-object v6, v10

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    goto :goto_3

    .line 1438
    :cond_6
    iget-object v0, v9, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0, v10}, Lcom/android/server/media/MediaSessionService;->access$3900(Lcom/android/server/media/MediaSessionService;Landroid/view/KeyEvent;)V

    goto :goto_3

    .line 1397
    :cond_7
    :goto_2
    move-object v1, v9

    move-object v2, v15

    move v3, v11

    move v4, v12

    move/from16 v5, p2

    move-object v6, v10

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchVolumeKeyEventLocked(Ljava/lang/String;IIZLandroid/view/KeyEvent;IZ)V

    .line 1442
    :cond_8
    :goto_3
    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1444
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1445
    nop

    .line 1446
    return-void

    .line 1442
    :catchall_2
    move-exception v0

    :goto_4
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1444
    :catchall_3
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 1380
    .end local v11    # "pid":I
    .end local v12    # "uid":I
    .end local v13    # "token":J
    :cond_9
    :goto_5
    move-object/from16 v15, p1

    const-string v0, "MediaSessionService"

    const-string v1, "Attempted to dispatch null or non-volume key event."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1535
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MediaSessionService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1537
    :cond_0
    const-string v0, "MEDIA SESSION SERVICE (dumpsys media_session)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1540
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1541
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessions listeners."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global priority session is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1543
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1544
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2100(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1546
    :cond_1
    const-string v1, "User Records:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1547
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$4200(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1548
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1549
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$4200(Lcom/android/server/media/MediaSessionService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionService$FullUserRecord;

    const-string v4, ""

    invoke-virtual {v3, p2, v4}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1548
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1551
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$1200(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v3}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/server/media/AudioPlayerStateMonitor;->dump(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1552
    .end local v1    # "count":I
    monitor-exit v0

    .line 1553
    return-void

    .line 1552
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentMediaButtonPackageName()Ljava/lang/String;
    .locals 5

    .line 1339
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1900(Lcom/android/server/media/MediaSessionService;)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1341
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1343
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1344
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentMediaButtonPackageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    return-object v1

    .line 1349
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getSessionTokens(ZZLjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "activeSessionOnly"    # Z
    .param p2, "sessionServiceOnly"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1669
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessions(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 1030
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1031
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1032
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1035
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->verifySessionsRequest(Landroid/content/ComponentName;III)I

    move-result v4

    .line 1036
    .local v4, "resolvedUserId":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1037
    .local v5, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1038
    :try_start_1
    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v7, v4}, Lcom/android/server/media/MediaSessionService;->access$2600(Lcom/android/server/media/MediaSessionService;I)Ljava/util/List;

    move-result-object v7

    .line 1039
    .local v7, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/media/MediaSessionRecord;

    .line 1040
    .local v9, "record":Lcom/android/server/media/MediaSessionRecord;
    invoke-virtual {v9}, Lcom/android/server/media/MediaSessionRecord;->getControllerBinder()Landroid/media/session/ISessionController;

    move-result-object v10

    invoke-interface {v10}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    .end local v9    # "record":Lcom/android/server/media/MediaSessionRecord;
    goto :goto_0

    .line 1042
    .end local v7    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/media/MediaSessionRecord;>;"
    :cond_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1043
    nop

    .line 1045
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1043
    return-object v5

    .line 1042
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1045
    .end local v4    # "resolvedUserId":I
    .end local v5    # "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isGlobalPriorityActive()Z
    .locals 2

    .line 1528
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1529
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService;->access$2000(Lcom/android/server/media/MediaSessionService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1530
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTrusted(Ljava/lang/String;II)Z
    .locals 9
    .param p1, "controllerPackageName"    # Ljava/lang/String;
    .param p2, "controllerPid"    # I
    .param p3, "controllerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1566
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1567
    .local v0, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1569
    .local v1, "token":J
    :try_start_0
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1572
    .local v3, "controllerUserId":I
    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v5}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 1573
    invoke-virtual {v5, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    .local v5, "controllerUidFromPackageName":I
    nop

    .line 1578
    nop

    .line 1580
    if-eq v5, p3, :cond_1

    .line 1581
    :try_start_2
    sget-boolean v6, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 1582
    const-string v6, "MediaSessionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t match with the uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1585
    :cond_0
    nop

    .line 1590
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1585
    return v4

    .line 1587
    :cond_1
    :try_start_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4, p1, p2, p3}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->hasMediaControlPermission(ILjava/lang/String;II)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1590
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1587
    return v4

    .line 1574
    .end local v5    # "controllerUidFromPackageName":I
    :catch_0
    move-exception v5

    .line 1575
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    sget-boolean v6, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 1576
    const-string v6, "MediaSessionService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t exist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1578
    :cond_2
    nop

    .line 1590
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1578
    return v4

    .line 1590
    .end local v3    # "controllerUserId":I
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeSessionTokensListener(Landroid/media/ISessionTokensListener;Ljava/lang/String;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/ISessionTokensListener;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1726
    return-void
.end method

.method public removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/session/IActiveSessionsListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1083
    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionService;->access$2700(Lcom/android/server/media/MediaSessionService;Landroid/media/session/IActiveSessionsListener;)I

    move-result v1

    .line 1084
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1085
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$2200(Lcom/android/server/media/MediaSessionService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1087
    .local v2, "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :try_start_1
    invoke-static {v2}, Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;->access$900(Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;)Landroid/media/session/IActiveSessionsListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/session/IActiveSessionsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1090
    goto :goto_0

    .line 1088
    :catch_0
    move-exception v3

    .line 1092
    .end local v1    # "index":I
    .end local v2    # "record":Lcom/android/server/media/MediaSessionService$SessionsListenerRecord;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v0

    .line 1093
    return-void

    .line 1092
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setCallback(Landroid/media/session/ICallback;)V
    .locals 10
    .param p1, "callback"    # Landroid/media/session/ICallback;

    .line 1177
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1178
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1179
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1181
    .local v2, "token":J
    const/16 v4, 0x3ea

    :try_start_0
    invoke-static {v1, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1185
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1186
    :try_start_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1187
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1188
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_0

    goto :goto_1

    .line 1193
    :cond_0
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1194
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The callback "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1195
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1194
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1197
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1216
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1197
    return-void

    .line 1200
    :cond_1
    :try_start_2
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/ICallback;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/ICallback;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$1;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1209
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1213
    goto :goto_0

    .line 1210
    :catch_0
    move-exception v7

    .line 1211
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v8, "MediaSessionService"

    const-string v9, "Failed to set callback"

    invoke-static {v8, v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1212
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/ICallback;)Landroid/media/session/ICallback;

    .line 1214
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1216
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1217
    nop

    .line 1218
    return-void

    .line 1189
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_2
    :goto_1
    :try_start_4
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the callback, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1216
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1191
    return-void

    .line 1214
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5

    .line 1182
    :cond_3
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Only Bluetooth service processes can set Callback"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1216
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    .locals 11
    .param p1, "listener"    # Landroid/media/session/IOnMediaKeyListener;

    .line 1282
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1283
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1284
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1287
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_MEDIA_KEY_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4

    .line 1294
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1295
    :try_start_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1296
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1297
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_0

    goto/16 :goto_1

    .line 1302
    :cond_0
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 1303
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener cannot be reset by another app. , mOnMediaKeyListenerUid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3300(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1303
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1333
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1306
    return-void

    .line 1309
    :cond_1
    :try_start_2
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2802(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1310
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3302(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1312
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The media key listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1313
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1312
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    .line 1317
    :try_start_3
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnMediaKeyListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$3;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1329
    goto :goto_0

    .line 1326
    :catch_0
    move-exception v7

    .line 1327
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2800(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnMediaKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$2802(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyListener;)Landroid/media/session/IOnMediaKeyListener;

    .line 1331
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1333
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1334
    nop

    .line 1335
    return-void

    .line 1298
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_3
    :goto_1
    :try_start_5
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the media key listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1333
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1300
    return-void

    .line 1331
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5

    .line 1290
    :cond_4
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_MEDIA_KEY_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1333
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    .locals 11
    .param p1, "listener"    # Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1222
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1223
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1224
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1227
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.SET_VOLUME_KEY_LONG_PRESS_LISTENER"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_4

    .line 1234
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionService;->access$1700(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1235
    :try_start_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1236
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v6, v5}, Lcom/android/server/media/MediaSessionService;->access$3000(Lcom/android/server/media/MediaSessionService;I)Lcom/android/server/media/MediaSessionService$FullUserRecord;

    move-result-object v6

    .line 1237
    .local v6, "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$400(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v5, :cond_0

    goto/16 :goto_1

    .line 1242
    :cond_0
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 1243
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v7

    if-eq v7, v1, :cond_1

    .line 1244
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener cannot be reset by another app , mOnVolumeKeyLongPressListener="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3200(Lcom/android/server/media/MediaSessionService$FullUserRecord;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1244
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1276
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1248
    return-void

    .line 1251
    :cond_1
    :try_start_2
    invoke-static {v6, p1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1252
    invoke-static {v6, v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$3202(Lcom/android/server/media/MediaSessionService$FullUserRecord;I)I

    .line 1254
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The volume key long-press listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " is set by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    .line 1255
    invoke-static {v9, v1}, Lcom/android/server/media/MediaSessionService;->access$1600(Lcom/android/server/media/MediaSessionService;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1254
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    .line 1259
    :try_start_3
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v7

    invoke-interface {v7}, Landroid/media/session/IOnVolumeKeyLongPressListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    new-instance v8, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;

    invoke-direct {v8, p0, v6}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$2;-><init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Lcom/android/server/media/MediaSessionService$FullUserRecord;)V

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1272
    goto :goto_0

    .line 1268
    :catch_0
    move-exception v7

    .line 1269
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v8, "MediaSessionService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to set death recipient "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    invoke-static {v6}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1100(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1269
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/4 v8, 0x0

    invoke-static {v6, v8}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1102(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnVolumeKeyLongPressListener;)Landroid/media/session/IOnVolumeKeyLongPressListener;

    .line 1274
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1276
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1277
    nop

    .line 1278
    return-void

    .line 1238
    .restart local v5    # "userId":I
    .restart local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :cond_3
    :goto_1
    :try_start_5
    const-string v7, "MediaSessionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Only the full user can set the volume key long-press listener, userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1276
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1240
    return-void

    .line 1274
    .end local v5    # "userId":I
    .end local v6    # "user":Lcom/android/server/media/MediaSessionService$FullUserRecord;
    :catchall_0
    move-exception v5

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v5

    .line 1230
    :cond_4
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Must hold the SET_VOLUME_KEY_LONG_PRESS_LISTENER permission."

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1276
    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 6
    .param p1, "rvc"    # Landroid/media/IRemoteVolumeController;

    .line 1515
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1516
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1517
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1519
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    const-string/jumbo v5, "listen for volume changes"

    invoke-static {v4, v5, v0, v1}, Lcom/android/server/media/MediaSessionService;->access$4000(Lcom/android/server/media/MediaSessionService;Ljava/lang/String;II)V

    .line 1520
    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v4, p1}, Lcom/android/server/media/MediaSessionService;->access$4102(Lcom/android/server/media/MediaSessionService;Landroid/media/IRemoteVolumeController;)Landroid/media/IRemoteVolumeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1522
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1523
    nop

    .line 1524
    return-void

    .line 1522
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method
