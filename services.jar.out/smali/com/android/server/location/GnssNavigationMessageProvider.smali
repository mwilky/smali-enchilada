.class public abstract Lcom/android/server/location/GnssNavigationMessageProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GnssNavigationMessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;,
        Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper<",
        "Landroid/location/IGnssNavigationMessageListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "GnssNavigationMessageProvider"


# instance fields
.field private mCollectionStarted:Z

.field private final mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GnssNavigationMessageProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssNavigationMessageProvider;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-direct {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GnssNavigationMessageProvider;-><init>(Landroid/os/Handler;Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "GnssNavigationMessageProvider"

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssNavigationMessageProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssNavigationMessageProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/GnssNavigationMessageProvider;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_start_navigation_message_collection()Z
.end method

.method private static native native_stop_navigation_message_collection()Z
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<",
            "Landroid/location/IGnssNavigationMessageListener;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const-string v1, "GnssNavigationMessageProvider"

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
    return-object v0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x1

    nop

    :goto_0
    nop

    new-instance v1, Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;

    invoke-direct {v1, v0}, Lcom/android/server/location/GnssNavigationMessageProvider$StatusChangedOperation;-><init>(I)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected isAvailableInPlatform()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->isNavigationMessageSupported()Z

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

    invoke-virtual {p0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->setSupported(Z)V

    invoke-virtual {p0}, Lcom/android/server/location/GnssNavigationMessageProvider;->updateResult()V

    return-void
.end method

.method public onGpsEnabledChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/location/GnssNavigationMessageProvider;->tryUpdateRegistrationWithService()V

    invoke-virtual {p0}, Lcom/android/server/location/GnssNavigationMessageProvider;->updateResult()V

    return-void
.end method

.method public onNavigationMessageAvailable(Landroid/location/GnssNavigationMessage;)V
    .locals 1

    new-instance v0, Lcom/android/server/location/GnssNavigationMessageProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GnssNavigationMessageProvider$1;-><init>(Lcom/android/server/location/GnssNavigationMessageProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method

.method protected registerWithService()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->startNavigationMessageCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mCollectionStarted:Z

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x4

    return v1
.end method

.method resumeIfStarted()V
    .locals 2

    sget-boolean v0, Lcom/android/server/location/GnssNavigationMessageProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssNavigationMessageProvider"

    const-string/jumbo v1, "resumeIfStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mCollectionStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->startNavigationMessageCollection()Z

    :cond_1
    return-void
.end method

.method protected unregisterFromService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mNative:Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider$GnssNavigationMessageProviderNative;->stopNavigationMessageCollection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssNavigationMessageProvider;->mCollectionStarted:Z

    :cond_0
    return-void
.end method
