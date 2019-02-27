.class public Landroid/graphics/ImageDecoder$AssetInputStreamSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetInputStreamSource"
.end annotation


# instance fields
.field private mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mDensity:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$1;)V

    iput-object p1, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    iput-object p2, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mResources:Landroid/content/res/Resources;

    iget v0, p3, Landroid/util/TypedValue;->density:I

    if-nez v0, :cond_0

    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mDensity:I

    goto :goto_0

    :cond_0
    iget v0, p3, Landroid/util/TypedValue;->density:I

    const v1, 0xffff

    if-eq v0, v1, :cond_1

    iget v0, p3, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mDensity:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mDensity:I

    :goto_0
    return-void
.end method


# virtual methods
.method public createImageDecoder()Landroid/graphics/ImageDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    invoke-static {v0, p0}, Landroid/graphics/ImageDecoder;->access$600(Landroid/content/res/AssetManager$AssetInputStream;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reuse AssetInputStreamSource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDensity()I
    .locals 1

    iget v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mDensity:I

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
