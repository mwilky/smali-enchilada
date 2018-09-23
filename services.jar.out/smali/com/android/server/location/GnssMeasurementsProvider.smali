.class public abstract Lcom/android/server/location/GnssMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;,
        Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Landroid/location/IGnssMeasurementsListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssMeasurementsProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnableFullTracking:Z

.field private mIsCollectionStarted:Z

.field private final mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssMeasurementsProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssMeasurementsProvider;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/location/GnssMeasurementsProvider;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "GnssMeasurementsProvider"

    invoke-direct {p0, p2, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssMeasurementsProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Z)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->native_start_measurement_collection(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssMeasurementsProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$onMeasurementsAvailable$0(Landroid/location/GnssMeasurementsEvent;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/location/IGnssMeasurementsListener;->onGnssMeasurementsReceived(Landroid/location/GnssMeasurementsEvent;)V

    return-void
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_start_measurement_collection(Z)Z
.end method

.method private static native native_stop_measurement_collection()Z
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssMeasurementsListener;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v1, "GnssMeasurementsProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled addListener result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    return-object v0

    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    nop

    :goto_0
    nop

    new-instance v1, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/GnssMeasurementsProvider$StatusChangedOperation;-><init>(I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailableInPlatform()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->isMeasurementSupported()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRegistered()Z
    .locals 1

    invoke-super {p0}, Lcom/android/server/location/RemoteListenerHelper;->isRegistered()Z

    move-result v0

    return v0
.end method

.method public onCapabilitiesUpdated(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->setSupported(Z)V

    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->updateResult()V

    return-void
.end method

.method public onGpsEnabledChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->tryUpdateRegistrationWithService()V

    invoke-virtual {p0}, Lcom/android/server/location/GnssMeasurementsProvider;->updateResult()V

    return-void
.end method

.method public onMeasurementsAvailable(Landroid/location/GnssMeasurementsEvent;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$865xzodmeiSeR2xhh7cKZjiZkhE;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$GnssMeasurementsProvider$865xzodmeiSeR2xhh7cKZjiZkhE;-><init>(Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method protected registerWithService()I
    .locals 6

    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "enable_gnss_raw_meas_full_tracking"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object v5, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v5, v4}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->startMeasurementCollection(Z)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-boolean v3, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mIsCollectionStarted:Z

    iput-boolean v4, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mEnableFullTracking:Z

    return v2

    :cond_1
    const/4 v2, 0x4

    return v2
.end method

.method resumeIfStarted()V
    .locals 2

    sget-boolean v0, Lcom/android/server/location/GnssMeasurementsProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssMeasurementsProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mIsCollectionStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    iget-boolean v1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mEnableFullTracking:Z

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->startMeasurementCollection(Z)Z

    :cond_1
    return-void
.end method

.method protected unregisterFromService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mNative:Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider$GnssMeasurementProviderNative;->stopMeasurementCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssMeasurementsProvider;->mIsCollectionStarted:Z

    :cond_0
    return-void
.end method
