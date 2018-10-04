.class public final Lcom/oneplus/longshot/LongScreenshotManager;
.super Ljava/lang/Object;
.source "LongScreenshotManager.java"


# static fields
.field public static final NAVIGATIONBAR_VISIBLE:Ljava/lang/String; = "navigationbar_visible"

.field public static final STATUSBAR_VISIBLE:Ljava/lang/String; = "statusbar_visible"

.field private static final TAG:Ljava/lang/String; = "Longshot.Manager"

.field private static sInstance:Lcom/oneplus/longshot/LongScreenshotManager;


# instance fields
.field private final mService:Lcom/oneplus/longshot/ILongScreenshotManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "longshot"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    return-void
.end method

.method public static getInstance()Lcom/oneplus/longshot/LongScreenshotManager;
    .locals 2

    const-class v0, Lcom/oneplus/longshot/LongScreenshotManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    iget-object v1, v1, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Lcom/oneplus/longshot/LongScreenshotManager;

    invoke-direct {v1}, Lcom/oneplus/longshot/LongScreenshotManager;-><init>()V

    sput-object v1, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    :cond_1
    sget-object v1, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static peekInstance()Lcom/oneplus/longshot/LongScreenshotManager;
    .locals 1

    sget-object v0, Lcom/oneplus/longshot/LongScreenshotManager;->sInstance:Lcom/oneplus/longshot/LongScreenshotManager;

    return-object v0
.end method


# virtual methods
.method public isLongshotHandleState()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v1}, Lcom/oneplus/longshot/ILongScreenshotManager;->isLongshotHandleState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    nop

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isLongshotMode()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v1}, Lcom/oneplus/longshot/ILongScreenshotManager;->isLongshotMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    nop

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isLongshotMoveState()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v1}, Lcom/oneplus/longshot/ILongScreenshotManager;->isLongshotMoveState()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    nop

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public notifyLongshotScroll(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v0, p1}, Lcom/oneplus/longshot/ILongScreenshotManager;->notifyLongshotScroll(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public notifyScrollViewTop(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v0, p1}, Lcom/oneplus/longshot/ILongScreenshotManager;->notifyScrollViewTop(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onUnscrollableView()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v0}, Lcom/oneplus/longshot/ILongScreenshotManager;->onUnscrollableView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v0, p1}, Lcom/oneplus/longshot/ILongScreenshotManager;->registerLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public takeLongshot(ZZ)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/longshot/ILongScreenshotManager;->takeLongshot(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/longshot/LongScreenshotManager;->mService:Lcom/oneplus/longshot/ILongScreenshotManager;

    invoke-interface {v0, p1}, Lcom/oneplus/longshot/ILongScreenshotManager;->unregisterLongshotListener(Lcom/oneplus/longshot/ILongScreenshotListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
