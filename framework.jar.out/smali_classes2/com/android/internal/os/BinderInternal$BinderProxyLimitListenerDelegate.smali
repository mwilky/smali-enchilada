.class Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderProxyLimitListenerDelegate"
.end annotation


# instance fields
.field private mBinderProxyLimitListener:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BinderInternal$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;)Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mBinderProxyLimitListener:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;

    return-object v0
.end method


# virtual methods
.method notifyClient(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mBinderProxyLimitListener:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate$1;-><init>(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setListener(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mBinderProxyLimitListener:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;

    iput-object p2, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mHandler:Landroid/os/Handler;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
