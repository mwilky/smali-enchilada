.class Landroid/graphics/ImageDecoder$ContentResolverSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentResolverSource"
.end annotation


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/res/Resources;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$1;)V

    iput-object p1, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResources:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public createImageDecoder()Landroid/graphics/ImageDecoder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    const-string v5, "image/*"

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    const-string/jumbo v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    :goto_0
    nop

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    nop

    :try_start_1
    sget v6, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    invoke-static {v3, p0}, Landroid/graphics/ImageDecoder;->access$400(Ljava/io/FileDescriptor;Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v6
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v6

    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v7, v2, p0}, Landroid/graphics/ImageDecoder;->access$300(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v2

    :goto_1
    if-nez v0, :cond_1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    :cond_1
    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->access$502(Landroid/graphics/ImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/content/res/AssetFileDescriptor;

    nop

    :goto_2
    return-object v0

    :goto_3
    if-nez v0, :cond_2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    :cond_2
    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->access$502(Landroid/graphics/ImageDecoder;Landroid/content/res/AssetFileDescriptor;)Landroid/content/res/AssetFileDescriptor;

    :goto_4
    throw v2

    :catch_1
    move-exception v0

    iget-object v3, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3, v2, p0}, Landroid/graphics/ImageDecoder;->access$300(Ljava/io/InputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v2

    return-object v2

    :cond_3
    new-instance v2, Ljava/io/FileNotFoundException;

    iget-object v4, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Landroid/graphics/ImageDecoder$ContentResolverSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
