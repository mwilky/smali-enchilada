.class public Landroid/media/MediaItem2;
.super Ljava/lang/Object;
.source "MediaItem2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaItem2$Builder;,
        Landroid/media/MediaItem2$Flags;
    }
.end annotation


# static fields
.field public static final FLAG_BROWSABLE:I = 0x1

.field public static final FLAG_PLAYABLE:I = 0x2


# instance fields
.field private final mProvider:Landroid/media/update/MediaItem2Provider;


# direct methods
.method public constructor <init>(Landroid/media/update/MediaItem2Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroid/media/MediaItem2;
    .locals 1

    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/update/StaticProvider;->fromBundle_MediaItem2(Landroid/os/Bundle;)Landroid/media/MediaItem2;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaItem2Provider;->equals_impl(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDataSourceDesc()Landroid/media/DataSourceDesc;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaItem2Provider;->getDataSourceDesc_impl()Landroid/media/DataSourceDesc;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaItem2Provider;->getFlags_impl()I

    move-result v0

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaItem2Provider;->getMediaId_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata2;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaItem2Provider;->getMetadata_impl()Landroid/media/MediaMetadata2;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Landroid/media/update/MediaItem2Provider;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    return-object v0
.end method

.method public isBrowsable()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaItem2Provider;->isBrowsable_impl()Z

    move-result v0

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaItem2Provider;->isPlayable_impl()Z

    move-result v0

    return v0
.end method

.method public setMetadata(Landroid/media/MediaMetadata2;)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaItem2Provider;->setMetadata_impl(Landroid/media/MediaMetadata2;)V

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaItem2Provider;->toBundle_impl()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2;->mProvider:Landroid/media/update/MediaItem2Provider;

    invoke-interface {v0}, Landroid/media/update/MediaItem2Provider;->toString_impl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
