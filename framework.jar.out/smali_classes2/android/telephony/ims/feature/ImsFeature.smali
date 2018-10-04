.class public abstract Landroid/telephony/ims/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ImsFeature$Capabilities;,
        Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;,
        Landroid/telephony/ims/feature/ImsFeature$CapabilityCallback;,
        Landroid/telephony/ims/feature/ImsFeature$ImsCapabilityError;,
        Landroid/telephony/ims/feature/ImsFeature$ImsState;,
        Landroid/telephony/ims/feature/ImsFeature$FeatureType;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field public static final CAPABILITY_ERROR_GENERIC:I = -0x1

.field public static final CAPABILITY_SUCCESS:I = 0x0

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final FEATURE_EMERGENCY_MMTEL:I = 0x0

.field public static final FEATURE_INVALID:I = -0x1

.field public static final FEATURE_MAX:I = 0x3

.field public static final FEATURE_MMTEL:I = 0x1

.field public static final FEATURE_RCS:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_READY:I = 0x2

.field public static final STATE_UNAVAILABLE:I


# instance fields
.field private final mCapabilityCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IImsCapabilityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

.field protected mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mSlotId:I

.field private mState:I

.field private final mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    return-void
.end method

.method private notifyFeatureState(I)V
    .locals 7

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "ImsFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying ImsFeatureState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    const-string v4, "ImsFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t notify feature state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->sendImsServiceIntent(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private sendImsServiceIntent(I)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    nop

    :goto_0
    nop

    const-string v1, "android:phone_id"

    iget v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/feature/ImsFeature;->getFeatureState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "ImsFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t notify feature state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public abstract changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
.end method

.method protected abstract getBinder()Landroid/os/IInterface;
.end method

.method public getFeatureState()I
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final initialize(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mContext:Landroid/content/Context;

    iput p2, p0, Landroid/telephony/ims/feature/ImsFeature;->mSlotId:I

    return-void
.end method

.method protected final notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 6

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_1
    iget-object v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    iget v3, p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    invoke-interface {v2, v3}, Landroid/telephony/ims/aidl/IImsCapabilityCallback;->onCapabilitiesStatusChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "ImsFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " notifyCapabilitiesStatusChanged() - Skipping callback."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_2
    iget-object v2, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public abstract onFeatureReady()V
.end method

.method public abstract onFeatureRemoved()V
.end method

.method public queryCapabilityStatus()Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityStatus:Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->copy()Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mCapabilityCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final requestChangeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    invoke-direct {v0, p2}, Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;-><init>(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    invoke-virtual {p0, p1, v0}, Landroid/telephony/ims/feature/ImsFeature;->changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsFeature#requestChangeEnabledCapabilities called with invalid params."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setFeatureState(I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/feature/ImsFeature;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    if-eq v1, p1, :cond_0

    iput p1, p0, Landroid/telephony/ims/feature/ImsFeature;->mState:I

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ImsFeature;->notifyFeatureState(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
