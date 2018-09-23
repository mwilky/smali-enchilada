.class Lcom/android/server/wm/WallpaperVisibilityListeners;
.super Ljava/lang/Object;
.source "WallpaperVisibilityListeners.java"


# instance fields
.field private final mDisplayListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IWallpaperVisibilityListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/view/IWallpaperVisibilityListener;

    :try_start_0
    invoke-interface {v4, v1, v0}, Landroid/view/IWallpaperVisibilityListener;->onWallpaperVisibilityChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperVisibilityListeners;->mDisplayListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
