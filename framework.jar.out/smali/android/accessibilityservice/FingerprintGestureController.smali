.class public final Landroid/accessibilityservice/FingerprintGestureController;
.super Ljava/lang/Object;
.source "FingerprintGestureController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;
    }
.end annotation


# static fields
.field public static final FINGERPRINT_GESTURE_SWIPE_DOWN:I = 0x8

.field public static final FINGERPRINT_GESTURE_SWIPE_LEFT:I = 0x2

.field public static final FINGERPRINT_GESTURE_SWIPE_RIGHT:I = 0x1

.field public static final FINGERPRINT_GESTURE_SWIPE_UP:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "FingerprintGestureController"


# instance fields
.field private final mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

.field private final mCallbackHandlerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    iput-object p1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    return-void
.end method

.method static synthetic lambda$onGesture$1(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    return-void
.end method

.method static synthetic lambda$onGestureDetectionActiveChanged$0(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    return-void
.end method


# virtual methods
.method public isGestureDetectionAvailable()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mAccessibilityServiceConnection:Landroid/accessibilityservice/IAccessibilityServiceConnection;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->isFingerprintGestureDetectionAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintGestureController"

    const-string v2, "Failed to check if fingerprint gestures are active"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    return v1
.end method

.method public onGesture(I)V
    .locals 6

    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    if-eqz v4, :cond_0

    new-instance v5, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$BQjrQQom4K3C98FNiI0fi7SvHfY;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$BQjrQQom4K3C98FNiI0fi7SvHfY;-><init>(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetected(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onGestureDetectionActiveChanged(Z)V
    .locals 6

    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    if-eqz v4, :cond_0

    new-instance v5, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$M-ZApqp96G6ZF2WdWrGDJ8Qsfck;

    invoke-direct {v5, v3, p1}, Landroid/accessibilityservice/-$$Lambda$FingerprintGestureController$M-ZApqp96G6ZF2WdWrGDJ8Qsfck;-><init>(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;->onGestureDetectionAvailabilityChanged(Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

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

.method public unregisterFingerprintGestureCallback(Landroid/accessibilityservice/FingerprintGestureController$FingerprintGestureCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/accessibilityservice/FingerprintGestureController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/accessibilityservice/FingerprintGestureController;->mCallbackHandlerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
