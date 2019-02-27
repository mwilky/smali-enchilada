.class public final Landroid/accessibilityservice/AccessibilityButtonController;
.super Ljava/lang/Object;
.source "AccessibilityButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "A11yButtonController"


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;


# direct methods
.method constructor <init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$dispatchAccessibilityButtonAvailabilityChanged$1(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;->onAvailabilityChanged(Landroid/accessibilityservice/AccessibilityButtonController;Z)V

    return-void
.end method

.method public static synthetic lambda$dispatchAccessibilityButtonClicked$0(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;->onClicked(Landroid/accessibilityservice/AccessibilityButtonController;)V

    return-void
.end method


# virtual methods
.method dispatchAccessibilityButtonAvailabilityChanged(Z)V
    .locals 6

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    new-instance v5, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM;

    invoke-direct {v5, p0, v3, p1}, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$RskKrfcSyUz7I9Sqaziy1P990ZM;-><init>(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    :try_start_1
    const-string v1, "A11yButtonController"

    const-string v2, "Received accessibility button availability change with no callbacks!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method dispatchAccessibilityButtonClicked()V
    .locals 6

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    new-instance v5, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$b_UAM9QJWcH4KQOC_odiN0t_boU;

    invoke-direct {v5, p0, v3}, Landroid/accessibilityservice/-$$Lambda$AccessibilityButtonController$b_UAM9QJWcH4KQOC_odiN0t_boU;-><init>(Landroid/accessibilityservice/AccessibilityButtonController;Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    :try_start_1
    const-string v1, "A11yButtonController"

    const-string v2, "Received accessibility button click with no callbacks!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isAccessibilityButtonAvailable()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isAccessibilityButtonAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "A11yButtonController"

    const-string v2, "Failed to get accessibility button availability."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p0, p1, v0}, Landroid/accessibilityservice/AccessibilityButtonController;->registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;Landroid/os/Handler;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterAccessibilityButtonCallback(Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;)V
    .locals 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityButtonController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
