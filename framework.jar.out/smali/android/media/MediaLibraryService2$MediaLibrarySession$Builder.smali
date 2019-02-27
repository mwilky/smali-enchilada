.class public final Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;
.super Landroid/media/MediaSession2$BuilderBase;
.source "MediaLibraryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaLibraryService2$MediaLibrarySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/MediaSession2$BuilderBase<",
        "Landroid/media/MediaLibraryService2$MediaLibrarySession;",
        "Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;",
        "Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/media/MediaLibraryService2;Ljava/util/concurrent/Executor;Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;)V
    .locals 1

    new-instance v0, Landroid/media/-$$Lambda$MediaLibraryService2$MediaLibrarySession$Builder$KbvKQ6JiEvVRMpYadxywG_GUsco;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/-$$Lambda$MediaLibraryService2$MediaLibrarySession$Builder$KbvKQ6JiEvVRMpYadxywG_GUsco;-><init>(Landroid/media/MediaLibraryService2;Ljava/util/concurrent/Executor;Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;)V

    invoke-direct {p0, v0}, Landroid/media/MediaSession2$BuilderBase;-><init>(Landroid/media/update/ProviderCreator;)V

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/media/MediaLibraryService2;Ljava/util/concurrent/Executor;Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;Landroid/media/MediaSession2$BuilderBase;)Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;
    .locals 2

    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    move-object v1, p3

    check-cast v1, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    invoke-interface {v0, p0, v1, p1, p2}, Landroid/media/update/StaticProvider;->createMediaLibraryService2Builder(Landroid/media/MediaLibraryService2;Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;Ljava/util/concurrent/Executor;Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;)Landroid/media/update/MediaSession2Provider$BuilderBaseProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Landroid/media/MediaLibraryService2$MediaLibrarySession;
    .locals 1

    invoke-super {p0}, Landroid/media/MediaSession2$BuilderBase;->build()Landroid/media/MediaSession2;

    move-result-object v0

    check-cast v0, Landroid/media/MediaLibraryService2$MediaLibrarySession;

    return-object v0
.end method

.method public bridge synthetic build()Landroid/media/MediaSession2;
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;->build()Landroid/media/MediaLibraryService2$MediaLibrarySession;

    move-result-object v0

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 1

    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setId(Ljava/lang/String;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setId(Ljava/lang/String;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;->setId(Ljava/lang/String;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlayer(Landroid/media/MediaPlayerBase;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 1

    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setPlayer(Landroid/media/MediaPlayerBase;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setPlayer(Landroid/media/MediaPlayerBase;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;->setPlayer(Landroid/media/MediaPlayerBase;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 1

    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;->setPlaylistAgent(Landroid/media/MediaPlaylistAgent;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 1

    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;->setSessionActivity(Landroid/app/PendingIntent;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/media/MediaSession2$BuilderBase;->setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaSession2$SessionCallback;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    check-cast p2, Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;->setSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/MediaLibraryService2$MediaLibrarySession$MediaLibrarySessionCallback;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVolumeProvider(Landroid/media/VolumeProvider2;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;
    .locals 1

    invoke-super {p0, p1}, Landroid/media/MediaSession2$BuilderBase;->setVolumeProvider(Landroid/media/VolumeProvider2;)Landroid/media/MediaSession2$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    return-object v0
.end method

.method public bridge synthetic setVolumeProvider(Landroid/media/VolumeProvider2;)Landroid/media/MediaSession2$BuilderBase;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;->setVolumeProvider(Landroid/media/VolumeProvider2;)Landroid/media/MediaLibraryService2$MediaLibrarySession$Builder;

    move-result-object p1

    return-object p1
.end method
