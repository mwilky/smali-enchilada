.class public final Landroid/webkit/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CacheManager$CacheResult;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheDisabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static endCacheTransaction()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public static getCacheFile(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCacheFileBaseDir()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method static saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V
    .locals 1

    :try_start_0
    iget-object v0, p3, Landroid/webkit/CacheManager$CacheResult;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    return-void

    :catch_0
    move-exception v0

    return-void
.end method

.method public static saveCacheFile(Ljava/lang/String;Landroid/webkit/CacheManager$CacheResult;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/webkit/CacheManager;->saveCacheFile(Ljava/lang/String;JLandroid/webkit/CacheManager$CacheResult;)V

    return-void
.end method

.method public static startCacheTransaction()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
