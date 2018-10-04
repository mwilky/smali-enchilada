.class public Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;
.super Lcom/android/ims/internal/IImsConfig$Stub;
.source "ImsConfigImplBase.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsConfigStub"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/compat/stub/ImsConfigImplBase;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisionedIntValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProvisionedStringValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telephony/ims/compat/stub/ImsConfigImplBase;Landroid/content/Context;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/ims/internal/IImsConfig$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    iput-object p2, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Fail to get ImsConfigImpl"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private sendImsConfigChangedIntent(II)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->sendImsConfigChangedIntent(ILjava/lang/String;)V

    return-void
.end method

.method private sendImsConfigChangedIntent(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getFeatureValue(IILcom/android/ims/ImsConfigListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getFeatureValue(IILcom/android/ims/ImsConfigListener;)V

    return-void
.end method

.method public declared-synchronized getProvisionedStringValue(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getProvisionedStringValue(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProvisionedValue(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getProvisionedValue(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(IIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getVideoQuality(Lcom/android/ims/ImsConfigListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getVideoQuality(Lcom/android/ims/ImsConfigListener;)V

    return-void
.end method

.method public getVolteProvisioned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->getVolteProvisioned()Z

    move-result v0

    return v0
.end method

.method public setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->setFeatureValue(IIILcom/android/ims/ImsConfigListener;)V

    return-void
.end method

.method public declared-synchronized setProvisionedStringValue(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->setProvisionedStringValue(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProvisionedValue(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->setProvisionedValue(II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(IIZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ImsConfigImplBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set provision value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed with error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setVideoQuality(ILcom/android/ims/ImsConfigListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/compat/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase;->setVideoQuality(ILcom/android/ims/ImsConfigListener;)V

    return-void
.end method

.method protected declared-synchronized updateCachedValue(IIZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->sendImsConfigChangedIntent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized updateCachedValue(ILjava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/stub/ImsConfigImplBase$ImsConfigStub;->sendImsConfigChangedIntent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
