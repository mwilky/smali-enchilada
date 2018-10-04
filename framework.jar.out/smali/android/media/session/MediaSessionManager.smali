.class public final Landroid/media/session/MediaSessionManager;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionManager$CallbackImpl;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;,
        Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;,
        Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;,
        Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;,
        Landroid/media/session/MediaSessionManager$RemoteUserInfo;,
        Landroid/media/session/MediaSessionManager$Callback;,
        Landroid/media/session/MediaSessionManager$OnMediaKeyListener;,
        Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;,
        Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;,
        Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    }
.end annotation


# static fields
.field public static final RESULT_MEDIA_KEY_HANDLED:I = 0x1

.field public static final RESULT_MEDIA_KEY_NOT_HANDLED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SessionManager"


# instance fields
.field private mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

.field private mContext:Landroid/content/Context;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;",
            "Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

.field private mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

.field private final mService:Landroid/media/session/ISessionManager;

.field private final mSessionTokensListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;",
            "Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mSessionTokensListener:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "media_session"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v1

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    return-void
.end method

.method static synthetic access$1000(Ljava/util/List;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Landroid/media/session/MediaSessionManager;->toTokenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private dispatchMediaKeyEventInternal(ZLandroid/view/KeyEvent;Z)V
    .locals 3

    :try_start_0
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->dispatchMediaKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SessionManager"

    const-string v2, "Failed to send key event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private dispatchVolumeKeyEventInternal(ZLandroid/view/KeyEvent;IZ)V
    .locals 8

    :try_start_0
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchVolumeKeyEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Landroid/media/session/ISessionManager;->dispatchVolumeKeyEvent(Ljava/lang/String;ZLandroid/view/KeyEvent;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SessionManager"

    const-string v2, "Failed to send volume key event."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static toTokenList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/media/SessionToken2;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Landroid/media/SessionToken2;->fromBundle(Landroid/os/Bundle;)Landroid/media/SessionToken2;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    return-void
.end method

.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V
    .locals 5

    if-eqz p1, :cond_2

    if-nez p4, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p4, v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p4, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    if-eqz p4, :cond_1

    const-string p4, "SessionManager"

    const-string v2, "Attempted to add session listener twice, ignoring."

    invoke-static {p4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_1
    new-instance p4, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-direct {p4, v2, p1, v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;-><init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {p4}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$000(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/media/session/ISessionManager;->addSessionsListener(Landroid/media/session/IActiveSessionsListener;Landroid/content/ComponentName;I)V

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SessionManager"

    const-string v4, "Error in addOnActiveSessionsChangedListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p4

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p4

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V
    .locals 1

    nop

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    return-void
.end method

.method public addOnSessionTokensChangedListener(ILjava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V
    .locals 5

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mSessionTokensListener:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "SessionManager"

    const-string v2, "Attempted to add session listener twice, ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2, p3}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$200(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Landroid/media/ISessionTokensListener$Stub;

    move-result-object v3

    iget-object v4, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Landroid/media/session/ISessionManager;->addSessionTokensListener(Landroid/media/ISessionTokensListener;ILjava/lang/String;)V

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mSessionTokensListener:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SessionManager"

    const-string v4, "Error in addSessionTokensListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addOnSessionTokensChangedListener(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/media/session/MediaSessionManager;->addOnSessionTokensChangedListener(ILjava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V

    return-void
.end method

.method public createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->createSession(Ljava/lang/String;Landroid/media/session/ISessionCallback;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v0

    return-object v0
.end method

.method public createSession2(Landroid/media/SessionToken2;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-virtual {p1}, Landroid/media/SessionToken2;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->createSession2(Landroid/os/Bundle;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const-string v2, "SessionManager"

    const-string v3, "Cannot communicate with the service."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public destroySession2(Landroid/media/SessionToken2;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-virtual {p1}, Landroid/media/SessionToken2;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/session/ISessionManager;->destroySession2(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SessionManager"

    const-string v2, "Cannot communicate with the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchAdjustVolume(III)V
    .locals 3

    :try_start_0
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchAdjustVolume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/media/session/ISessionManager;->dispatchAdjustVolume(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SessionManager"

    const-string v2, "Failed to send adjust volume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventInternal(ZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method public dispatchMediaKeyEventAsSystemService(Landroid/view/KeyEvent;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEventInternal(ZLandroid/view/KeyEvent;Z)V

    return-void
.end method

.method public dispatchVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventInternal(ZLandroid/view/KeyEvent;IZ)V

    return-void
.end method

.method public dispatchVolumeKeyEventAsSystemService(Landroid/view/KeyEvent;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/media/session/MediaSessionManager;->dispatchVolumeKeyEventInternal(ZLandroid/view/KeyEvent;IZ)V

    return-void
.end method

.method public getActiveSessionTokens()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/SessionToken2;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/media/session/ISessionManager;->getSessionTokens(ZZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionManager;->toTokenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SessionManager"

    const-string v2, "Cannot communicate with the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I)",
            "Ljava/util/List<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISessionManager;->getSessions(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    new-instance v4, Landroid/media/session/MediaController;

    iget-object v5, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/ISessionController;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SessionManager"

    const-string v3, "Failed to get active sessions: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method public getAllSessionTokens()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/SessionToken2;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Landroid/media/session/ISessionManager;->getSessionTokens(ZZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionManager;->toTokenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SessionManager"

    const-string v2, "Cannot communicate with the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSessionServiceTokens()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/SessionToken2;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/media/session/ISessionManager;->getSessionTokens(ZZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Landroid/media/session/MediaSessionManager;->toTokenList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "SessionManager"

    const-string v2, "Cannot communicate with the service."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public isGlobalPriorityActive()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0}, Landroid/media/session/ISessionManager;->isGlobalPriorityActive()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SessionManager"

    const-string v2, "Failed to check if the global priority is active."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isTrustedForMediaControl(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)Z
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Landroid/media/session/ISessionManager;->isTrusted(Ljava/lang/String;II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SessionManager"

    const-string v3, "Cannot communicate with the service."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userInfo may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$000(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/session/ISessionManager;->removeSessionsListener(Landroid/media/session/IActiveSessionsListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$100(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "SessionManager"

    const-string v4, "Error in removeOnActiveSessionsChangedListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$100(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    goto :goto_0

    :goto_1
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$100(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    throw v2

    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeOnSessionTokensChangedListener(Landroid/media/session/MediaSessionManager$OnSessionTokensChangedListener;)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mSessionTokensListener:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$200(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)Landroid/media/ISessionTokensListener$Stub;

    move-result-object v3

    iget-object v4, p0, Landroid/media/session/MediaSessionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/media/session/ISessionManager;->removeSessionTokensListener(Landroid/media/ISessionTokensListener;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$300(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "SessionManager"

    const-string v4, "Error in removeSessionTokensListener."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$300(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)V

    :goto_0
    goto :goto_2

    :goto_1
    invoke-static {v1}, Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;->access$300(Landroid/media/session/MediaSessionManager$SessionTokensChangedWrapper;)V

    throw v2

    :cond_0
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCallback(Landroid/media/session/MediaSessionManager$Callback;Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v2, v1}, Landroid/media/session/ISessionManager;->setCallback(Landroid/media/session/ICallback;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    :cond_1
    new-instance v1, Landroid/media/session/MediaSessionManager$CallbackImpl;

    invoke-direct {v1, p1, p2}, Landroid/media/session/MediaSessionManager$CallbackImpl;-><init>(Landroid/media/session/MediaSessionManager$Callback;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mCallback:Landroid/media/session/MediaSessionManager$CallbackImpl;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->setCallback(Landroid/media/session/ICallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    :try_start_1
    const-string v2, "SessionManager"

    const-string v3, "Failed to set media key callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setOnMediaKeyListener(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v2, v1}, Landroid/media/session/ISessionManager;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    :cond_1
    new-instance v1, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-direct {v1, p1, p2}, Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;-><init>(Landroid/media/session/MediaSessionManager$OnMediaKeyListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnMediaKeyListener:Landroid/media/session/MediaSessionManager$OnMediaKeyListenerImpl;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->setOnMediaKeyListener(Landroid/media/session/IOnMediaKeyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    :try_start_1
    const-string v2, "SessionManager"

    const-string v3, "Failed to set media key listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setOnVolumeKeyLongPressListener(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v2, v1}, Landroid/media/session/ISessionManager;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    move-object p2, v1

    :cond_1
    new-instance v1, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    invoke-direct {v1, p1, p2}, Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;-><init>(Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    iget-object v1, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    iget-object v2, p0, Landroid/media/session/MediaSessionManager;->mOnVolumeKeyLongPressListener:Landroid/media/session/MediaSessionManager$OnVolumeKeyLongPressListenerImpl;

    invoke-interface {v1, v2}, Landroid/media/session/ISessionManager;->setOnVolumeKeyLongPressListener(Landroid/media/session/IOnVolumeKeyLongPressListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    :try_start_1
    const-string v2, "SessionManager"

    const-string v3, "Failed to set volume key long press listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager;->mService:Landroid/media/session/ISessionManager;

    invoke-interface {v0, p1}, Landroid/media/session/ISessionManager;->setRemoteVolumeController(Landroid/media/IRemoteVolumeController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SessionManager"

    const-string v2, "Error in setRemoteVolumeController."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
