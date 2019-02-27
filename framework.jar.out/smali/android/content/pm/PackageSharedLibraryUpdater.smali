.class public abstract Landroid/content/pm/PackageSharedLibraryUpdater;
.super Ljava/lang/Object;
.source "PackageSharedLibraryUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apkTargetsApiLevelLessThanOrEqualToOMR1(Landroid/content/pm/PackageParser$Package;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isLibraryPresent(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static prefix(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p0, v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method static removeLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method prefixImplicitDependency(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v0, v1, p3}, Landroid/content/pm/PackageSharedLibraryUpdater;->isLibraryPresent(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, p3}, Landroid/content/pm/PackageSharedLibraryUpdater;->prefix(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p3}, Landroid/content/pm/PackageSharedLibraryUpdater;->prefix(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_1
    :goto_0
    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    :cond_2
    return-void
.end method

.method prefixRequiredLibrary(Landroid/content/pm/PackageParser$Package;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v0, v1, p2}, Landroid/content/pm/PackageSharedLibraryUpdater;->isLibraryPresent(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, p2}, Landroid/content/pm/PackageSharedLibraryUpdater;->prefix(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public abstract updatePackage(Landroid/content/pm/PackageParser$Package;)V
.end method
