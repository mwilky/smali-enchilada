.class public Landroid/content/ClipboardManager;
.super Landroid/text/ClipboardManager;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPrimaryClipChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

.field private final mService:Landroid/content/IClipboard;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/text/ClipboardManager;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/ClipboardManager$1;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$1;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    iput-object p1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    return-void
.end method

.method static synthetic access$000(Landroid/content/ClipboardManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 4

    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/IClipboard;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public clearPrimaryClip()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/IClipboard;->clearPrimaryClip(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrimaryClip()Landroid/content/ClipData;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrimaryClipDescription()Landroid/content/ClipDescription;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/IClipboard;->getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasPrimaryClip()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasText()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/IClipboard;->hasClipboardText(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 3

    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    invoke-interface {v1, v2}, Landroid/content/IClipboard;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method reportPrimaryClipChanged()V
    .locals 3

    iget-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    check-cast v2, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-interface {v2}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V

    add-int/lit8 v0, v0, 0x1

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

.method public setPrimaryClip(Landroid/content/ClipData;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->prepareToLeaveProcess(Z)V

    iget-object v0, p0, Landroid/content/ClipboardManager;->mService:Landroid/content/IClipboard;

    iget-object v1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
