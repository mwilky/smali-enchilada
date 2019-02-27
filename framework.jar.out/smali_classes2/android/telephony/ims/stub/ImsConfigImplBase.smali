.class public Landroid/telephony/ims/stub/ImsConfigImplBase;
.super Ljava/lang/Object;
.source "ImsConfigImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsConfigImplBase$Callback;,
        Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
    }
.end annotation


# static fields
.field public static final CONFIG_RESULT_FAILED:I = 0x1

.field public static final CONFIG_RESULT_SUCCESS:I = 0x0

.field public static final CONFIG_RESULT_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ImsConfigImplBase"


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/telephony/ims/aidl/IImsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static synthetic access$100(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static synthetic access$200(Landroid/telephony/ims/stub/ImsConfigImplBase;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(II)V

    return-void
.end method

.method static synthetic access$300(Landroid/telephony/ims/stub/ImsConfigImplBase;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(ILjava/lang/String;)V

    return-void
.end method

.method private addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method static synthetic lambda$notifyConfigChanged$0(IILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onIntConfigChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(int): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$notifyConfigChanged$1(ILjava/lang/String;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onStringConfigChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(string): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final notifyConfigChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsConfigImplBase$yL4863k-FoQyqg_FX2mWsLMqbyA;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/stub/-$$Lambda$ImsConfigImplBase$yL4863k-FoQyqg_FX2mWsLMqbyA;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyConfigChanged(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v1, Landroid/telephony/ims/stub/-$$Lambda$ImsConfigImplBase$GAuYvQ8qBc7KgCJhNp4Pt4j5t-0;

    invoke-direct {v1, p1, p2}, Landroid/telephony/ims/stub/-$$Lambda$ImsConfigImplBase$GAuYvQ8qBc7KgCJhNp4Pt4j5t-0;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method


# virtual methods
.method public getConfigInt(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getConfigString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-object v0
.end method

.method public final notifyProvisionedValueChanged(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(int): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final notifyProvisionedValueChanged(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(string): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setConfig(II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setConfig(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
