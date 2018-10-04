.class public final Landroid/media/MediaItem2$Builder;
.super Ljava/lang/Object;
.source "MediaItem2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaItem2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mProvider:Landroid/media/update/MediaItem2Provider$BuilderProvider;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/media/update/ApiLoader;->getProvider()Landroid/media/update/StaticProvider;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/media/update/StaticProvider;->createMediaItem2Builder(Landroid/media/MediaItem2$Builder;I)Landroid/media/update/MediaItem2Provider$BuilderProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaItem2$Builder;->mProvider:Landroid/media/update/MediaItem2Provider$BuilderProvider;

    return-void
.end method


# virtual methods
.method public build()Landroid/media/MediaItem2;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2$Builder;->mProvider:Landroid/media/update/MediaItem2Provider$BuilderProvider;

    invoke-interface {v0}, Landroid/media/update/MediaItem2Provider$BuilderProvider;->build_impl()Landroid/media/MediaItem2;

    move-result-object v0

    return-object v0
.end method

.method public setDataSourceDesc(Landroid/media/DataSourceDesc;)Landroid/media/MediaItem2$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2$Builder;->mProvider:Landroid/media/update/MediaItem2Provider$BuilderProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaItem2Provider$BuilderProvider;->setDataSourceDesc_impl(Landroid/media/DataSourceDesc;)Landroid/media/MediaItem2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMediaId(Ljava/lang/String;)Landroid/media/MediaItem2$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2$Builder;->mProvider:Landroid/media/update/MediaItem2Provider$BuilderProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaItem2Provider$BuilderProvider;->setMediaId_impl(Ljava/lang/String;)Landroid/media/MediaItem2$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMetadata(Landroid/media/MediaMetadata2;)Landroid/media/MediaItem2$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaItem2$Builder;->mProvider:Landroid/media/update/MediaItem2Provider$BuilderProvider;

    invoke-interface {v0, p1}, Landroid/media/update/MediaItem2Provider$BuilderProvider;->setMetadata_impl(Landroid/media/MediaMetadata2;)Landroid/media/MediaItem2$Builder;

    move-result-object v0

    return-object v0
.end method
