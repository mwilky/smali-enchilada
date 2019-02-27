.class public abstract Landroid/telephony/ims/compat/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/feature/ImsFeature$ImsState;
    }
.end annotation


# static fields
.field public static final ACTION_IMS_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_IMS_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field public static final EMERGENCY_MMTEL:I = 0x0

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final INVALID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final MAX:I = 0x3

.field public static final MMTEL:I = 0x1

.field public static final RCS:I = 0x2

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_NOT_AVAILABLE:I = 0x0

.field public static final STATE_READY:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

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

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

    return-void
.end method

.method private notifyFeatureState(I)V
    .locals 7

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

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

    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/feature/ImsFeature;->sendImsServiceIntent(I)V

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

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

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

    iget v2, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mContext:Landroid/content/Context;

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
.method public addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

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

.method public abstract getBinder()Landroid/os/IInterface;
.end method

.method public getFeatureState()I
    .locals 1

    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    return v0
.end method

.method public abstract onFeatureReady()V
.end method

.method public abstract onFeatureRemoved()V
.end method

.method public removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

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

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected final setFeatureState(I)V
    .locals 1

    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/feature/ImsFeature;->notifyFeatureState(I)V

    :cond_0
    return-void
.end method

.method public setSlotId(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

    return-void
.end method
