.class public final Landroid/media/MediaCas;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$OpenSessionCallback;,
        Landroid/media/MediaCas$EventListener;,
        Landroid/media/MediaCas$Session;,
        Landroid/media/MediaCas$PluginDescriptor;,
        Landroid/media/MediaCas$EventHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCas"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/hardware/cas/V1_0/IMediaCasService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Landroid/hardware/cas/V1_0/ICasListener$Stub;

.field private mEventHandler:Landroid/media/MediaCas$EventHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mICas:Landroid/hardware/cas/V1_0/ICas;

.field private mListener:Landroid/media/MediaCas$EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/MediaCas$1;

    invoke-direct {v0}, Landroid/media/MediaCas$1;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaCas$2;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$2;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_0/ICasListener$Stub;

    :try_start_0
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/V1_0/ICasListener$Stub;

    invoke-interface {v0, p1, v1}, Landroid/hardware/cas/V1_0/IMediaCasService;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported CA_system_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "MediaCas"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create plugin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported CA_system_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-nez v1, :cond_2

    new-instance v0, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported CA_system_id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    throw v0
.end method

.method static synthetic access$000(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/media/MediaCas;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    return-void
.end method

.method static synthetic access$400(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    return-object v0
.end method

.method static synthetic access$600(Landroid/media/MediaCas;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-void
.end method

.method private cleanupAndRethrowIllegalState()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static enumeratePlugins()[Landroid/media/MediaCas$PluginDescriptor;
    .locals 7

    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    nop

    :try_start_0
    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IMediaCasService;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/media/MediaCas$PluginDescriptor;

    const/4 v4, 0x0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_1

    new-instance v5, Landroid/media/MediaCas$PluginDescriptor;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;

    invoke-direct {v5, v6}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V

    aput-object v5, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :catch_0
    move-exception v2

    :cond_2
    return-object v1
.end method

.method static getService()Landroid/hardware/cas/V1_0/IMediaCasService;
    .locals 1

    sget-object v0, Landroid/media/MediaCas;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/cas/V1_0/IMediaCasService;

    return-object v0
.end method

.method public static isSystemIdSupported(I)Z
    .locals 2

    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p0}, Landroid/hardware/cas/V1_0/IMediaCasService;->isSystemIdSupported(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private toByteArray([B)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private toByteArray([BII)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private toBytes(Ljava/util/ArrayList;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private validateInternalStates()V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v1}, Landroid/hardware/cas/V1_0/ICas;->release()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    throw v1

    :catch_0
    move-exception v1

    :goto_0
    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    nop

    :cond_0
    return-void
.end method

.method createFromSessionId(Ljava/util/ArrayList;)Landroid/media/MediaCas$Session;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)",
            "Landroid/media/MediaCas$Session;"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/media/MediaCas$Session;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCas$Session;-><init>(Landroid/media/MediaCas;Ljava/util/ArrayList;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Landroid/media/MediaCas;->close()V

    return-void
.end method

.method getBinder()Landroid/os/IHwBinder;
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public openSession()Landroid/media/MediaCas$Session;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaCas$OpenSessionCallback;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCas$OpenSessionCallback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas$1;)V

    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v2, v1}, Landroid/hardware/cas/V1_0/ICas;->openSession(Landroid/hardware/cas/V1_0/ICas$openSessionCallback;)V

    iget v2, v1, Landroid/media/MediaCas$OpenSessionCallback;->mStatus:I

    invoke-static {v2}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    iget-object v2, v1, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-object v0
.end method

.method public processEmm([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas;->processEmm([BII)V

    return-void
.end method

.method public processEmm([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->processEmm(Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_0
    return-void
.end method

.method public provision(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/ICas;->provision(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_0
    return-void
.end method

.method public refreshEntitlements(I[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-direct {p0, p2}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/hardware/cas/V1_0/ICas;->refreshEntitlements(ILjava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_0
    return-void
.end method

.method public sendEvent(II[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    invoke-direct {p0, p3}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Landroid/hardware/cas/V1_0/ICas;->sendEvent(IILjava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_0
    return-void
.end method

.method public setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V
    .locals 4

    iput-object p1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    iget-object v0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    :cond_1
    move-object v0, v1

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    move-object v0, v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "MediaCasEventThread"

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_3
    iget-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_4
    new-instance v1, Landroid/media/MediaCas$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaCas$EventHandler;-><init>(Landroid/media/MediaCas;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-void
.end method

.method public setPrivateData([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/V1_0/ICas;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-direct {p0, p1, v1, v2}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->setPrivateData(Ljava/util/ArrayList;)I

    move-result v0

    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    :goto_0
    return-void
.end method
