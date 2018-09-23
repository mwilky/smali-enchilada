.class Lcom/android/server/wm/DragAndDropPermissionsHandler;
.super Lcom/android/internal/view/IDragAndDropPermissions$Stub;
.source "DragAndDropPermissionsHandler.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private mActivityToken:Landroid/os/IBinder;

.field private final mMode:I

.field private mPermissionOwnerToken:Landroid/os/IBinder;

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private mTransientToken:Landroid/os/IBinder;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/ClipData;ILjava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/view/IDragAndDropPermissions$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    iput p2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    iput-object p3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    iput p5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    iput p6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    return-void
.end method

.method private doTake(Landroid/os/IBinder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    iget v6, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUid:I

    iget-object v7, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/net/Uri;

    iget v9, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    iget v10, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    iget v11, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTargetUserId:I

    move-object v5, p1

    invoke-interface/range {v4 .. v11}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public release()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Landroid/app/IActivityManager;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    throw v1

    :catch_0
    move-exception v1

    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    :goto_0
    nop

    :goto_1
    move v1, v2

    iget-object v2, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iget v4, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mMode:I

    iget v5, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mSourceUserId:I

    invoke-interface {v2, v0, v3, v4, v5}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public take(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public takeTransient(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mActivityToken:Landroid/os/IBinder;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "drop"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mTransientToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v0, p0, Lcom/android/server/wm/DragAndDropPermissionsHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DragAndDropPermissionsHandler;->doTake(Landroid/os/IBinder;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
