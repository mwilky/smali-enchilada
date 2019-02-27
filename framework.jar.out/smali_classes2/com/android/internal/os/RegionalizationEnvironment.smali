.class public Lcom/android/internal/os/RegionalizationEnvironment;
.super Ljava/lang/Object;
.source "RegionalizationEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RegionalizationEnvironment$Package;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final ISREGIONAL_APP:Ljava/lang/String; = "app"

.field public static final ISREGIONAL_FRAMEWORK:Ljava/lang/String; = "Framework"

.field private static final SPEC_FILE_PATH:Ljava/lang/String; = "/persist/speccfg/spec"

.field private static final SUPPORTED:Z = false

.field private static final TAG:Ljava/lang/String; = "RegionalizationEnvironment"

.field private static isLoaded:Z

.field private static mExcludedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/os/RegionalizationEnvironment$Package;",
            ">;"
        }
    .end annotation
.end field

.field private static mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/os/RegionalizationEnvironment;->isLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllPackageDirectories()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    const-string v3, "RegionalizationEnvironment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package Directoriy("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getAllPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    invoke-virtual {v2}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getPackagesCount()I
    .locals 1

    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getRegionalizationService()Lcom/android/internal/os/IRegionalizationService;
    .locals 1

    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    return-object v0
.end method

.method public static getStoragePos()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    invoke-virtual {v1}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getStoragePos()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    goto :goto_0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read wrong package for Carrier!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "RegionalizationEnvironment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get storage pos error, caused by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    return-object v0
.end method

.method private static init()V
    .locals 2

    const-string/jumbo v0, "regionalization"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/IRegionalizationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IRegionalizationService;

    move-result-object v1

    sput-object v1, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    sget-object v1, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->loadSwitchedPackages()V

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->loadExcludedApplist()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/RegionalizationEnvironment;->isLoaded:Z

    :cond_0
    return-void
.end method

.method public static isExcludedApp(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getPackagesCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".apk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isRegionalizationCarrierOverlayPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getAllPackageNames()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_4

    const-string v5, "Framework"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "Framework"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_3

    :cond_2
    const-string v5, "app"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v1, 0x1

    return v1

    :cond_4
    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v1
.end method

.method public static isSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static loadExcludedApplist()V
    .locals 9

    const-string v0, "RegionalizationEnvironment"

    const-string/jumbo v1, "loadExcludedApps!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->getPackagesCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    const-string v2, "RegionalizationEnvironment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "load excluded apps for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/internal/os/RegionalizationEnvironment$Package;->getExcludedListFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v3

    :try_start_0
    sget-object v5, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    invoke-interface {v5, v2, v3}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    sget-object v8, Lcom/android/internal/os/RegionalizationEnvironment;->mExcludedApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_2

    :cond_2
    goto :goto_0

    :cond_3
    return-void
.end method

.method private static loadSwitchedPackages()V
    .locals 13

    const-string v0, "RegionalizationEnvironment"

    const-string/jumbo v1, "load packages for Carrier!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    sget-object v2, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    const-string v3, "/persist/speccfg/spec"

    invoke-interface {v2, v3, v0}, Lcom/android/internal/os/IRegionalizationService;->readFile(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :catch_1
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "packStorage="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "packStorage="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "^packCount=[0-9]$"

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "packCount="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v4, :cond_3

    const/4 v5, 0x2

    move v6, v5

    :goto_1
    add-int/lit8 v7, v4, 0x2

    if-ge v6, v7, :cond_7

    const-string v7, "^strSpec[0-9]=\\w+$"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "strSpec"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v9, :cond_1

    move v9, v0

    :try_start_2
    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mRegionalizationService:Lcom/android/internal/os/IRegionalizationService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/os/IRegionalizationService;->checkFileExists(Ljava/lang/String;)Z

    move-result v10
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move v9, v10

    goto :goto_2

    :catch_2
    move-exception v10

    :try_start_3
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_2
    if-eqz v9, :cond_0

    sget-object v10, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/internal/os/RegionalizationEnvironment$Package;

    invoke-direct {v11, v8, v6, v2}, Lcom/android/internal/os/RegionalizationEnvironment$Package;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/io/IOException;

    const-string v5, "Read wrong packages for Carrier!"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_3
    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/android/internal/os/RegionalizationEnvironment;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Ljava/io/IOException;

    const-string v5, "Read wrong packages for Carrier!"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Package count of Carrier is wrong!"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Can\'t read package count of Carrier!"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Storage pos for Carrier package is wrong!"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Can\'t read storage pos for Carrier package!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_7
    goto :goto_5

    :goto_4
    nop

    const-string v1, "RegionalizationEnvironment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load package for carrier error, caused by: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method
