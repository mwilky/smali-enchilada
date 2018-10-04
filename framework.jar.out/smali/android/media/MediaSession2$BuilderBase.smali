.class abstract Landroid/media/MediaSession2$BuilderBase;
.super Ljava/lang/Object;
.source "MediaSession2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaSession2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/media/MediaSession2;",
        "U:",
        "Landroid/media/MediaSession2$BuilderBase<",
        "TT;TU;TC;>;C:",
        "Landroid/media/MediaSession2$SessionCallback;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/update/MediaSession2Provider$BuilderBaseProvider<",
            "TT;TC;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/update/ProviderCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/update/ProviderCreator<",
            "Landroid/media/MediaSession2$BuilderBase<",
            "TT;TU;TC;>;",
            "Landroid/media/update/MediaSession2Provider$BuilderBaseProvider<",
            "TT;TC;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, p0}, Landroid/media/update/ProviderCreator;->createProvider(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    iput-object v0, p0, Landroid/media/MediaSession2$BuilderBase;->mProvider:Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    return-void
.end method


# virtual methods
.method build()Landroid/media/MediaSession2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaSession2$BuilderBase;->mProvider:Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    invoke-interface {v0}, Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;->build_impl()Landroid/media/MediaSession2;

    move-result-object v0

    return-object v0
.end method

.method setId(Ljava/lang/String;)Landroid/media/MediaSession2$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TU;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaSession2$BuilderBase;->mProvider:Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;->setId_impl(Ljava/lang/String;)V

    return-object p0
.end method

.method setPlayer(Landroid/media/MediaPlayerBase;)Landroid/media/MediaSession2$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlayerBase;",
            ")TU;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaSession2$BuilderBase;->mProvider:Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;->setPlayer_impl(Landroid/media/MediaPlayerBase;)V

    return-object p0
.end method

.method setPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/MediaSession2$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaPlaylistAgent;",
            ")TU;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaSession2$BuilderBase;->mProvider:Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;->setPlaylistAgent_impl(Landroid/media/MediaPlaylistAgent;)V

    return-object p0
.end method

.method setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaSession2$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            ")TU;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaSession2$BuilderBase;->mProvider:Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;->setSessionActivity_impl(Landroid/app/PendingIntent;)V

    return-object p0
.end method

.method setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)Landroid/media/MediaSession2$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TC;)TU;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaSession2$BuilderBase;->mProvider:Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;->setSessionCallback_impl(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)V

    return-object p0
.end method

.method setVolumeProvider(Landroid/media/VolumeProvider2;)Landroid/media/MediaSession2$BuilderBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/VolumeProvider2;",
            ")TU;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaSession2$BuilderBase;->mProvider:Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;->setVolumeProvider_impl(Landroid/media/VolumeProvider2;)V

    return-object p0
.end method
