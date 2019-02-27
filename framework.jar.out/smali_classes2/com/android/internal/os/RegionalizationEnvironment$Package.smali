.class Lcom/android/internal/os/RegionalizationEnvironment$Package;
.super Ljava/lang/Object;
.source "RegionalizationEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RegionalizationEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Package"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mPriority:I

.field private final mStorage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "storage"    # Ljava/lang/String;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p1, p0, Lcom/android/internal/os/RegionalizationEnvironment$Package;->mName:Ljava/lang/String;

    .line 283
    iput p2, p0, Lcom/android/internal/os/RegionalizationEnvironment$Package;->mPriority:I

    .line 284
    iput-object p3, p0, Lcom/android/internal/os/RegionalizationEnvironment$Package;->mStorage:Ljava/lang/String;

    .line 285
    return-void
.end method


# virtual methods
.method public getDirectory()Ljava/io/File;
    .locals 3

    .line 300
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/os/RegionalizationEnvironment$Package;->mStorage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/os/RegionalizationEnvironment$Package;->mName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExcludedListFilePath()Ljava/lang/String;
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/exclude.list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/internal/os/RegionalizationEnvironment$Package;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/android/internal/os/RegionalizationEnvironment$Package;->mPriority:I

    return v0
.end method

.method public getStoragePos()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/android/internal/os/RegionalizationEnvironment$Package;->mStorage:Ljava/lang/String;

    return-object v0
.end method
