.class public Landroid/content/pm/PackageBackwardCompatibility;
.super Landroid/content/pm/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;,
        Landroid/content/pm/PackageBackwardCompatibility$RemoveUnnecessaryOrgApacheHttpLegacyLibrary;,
        Landroid/content/pm/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;
    }
.end annotation


# static fields
.field private static final INSTANCE:Landroid/content/pm/PackageBackwardCompatibility;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBootClassPathContainsATB:Z

.field private final mBootClassPathContainsOAHL:Z

.field private final mPackageUpdaters:[Landroid/content/pm/PackageSharedLibraryUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Landroid/content/pm/PackageBackwardCompatibility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.content.pm.OrgApacheHttpLegacyUpdater"

    sget-object v2, Landroid/content/pm/-$$Lambda$FMztmpMwSp3D3ge8Zxr31di8ZBg;->INSTANCE:Landroid/content/pm/-$$Lambda$FMztmpMwSp3D3ge8Zxr31di8ZBg;

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageBackwardCompatibility;->addOptionalUpdater(Ljava/util/List;Ljava/lang/String;Ljava/util/function/Supplier;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Landroid/content/pm/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;

    invoke-direct {v2}, Landroid/content/pm/PackageBackwardCompatibility$AndroidTestRunnerSplitUpdater;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.content.pm.AndroidTestBaseUpdater"

    sget-object v3, Landroid/content/pm/-$$Lambda$jpya2qgMDDEok2GAoKRDqPM5lIE;->INSTANCE:Landroid/content/pm/-$$Lambda$jpya2qgMDDEok2GAoKRDqPM5lIE;

    invoke-static {v0, v2, v3}, Landroid/content/pm/PackageBackwardCompatibility;->addOptionalUpdater(Ljava/util/List;Ljava/lang/String;Ljava/util/function/Supplier;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/content/pm/PackageSharedLibraryUpdater;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/pm/PackageSharedLibraryUpdater;

    new-instance v4, Landroid/content/pm/PackageBackwardCompatibility;

    invoke-direct {v4, v1, v2, v3}, Landroid/content/pm/PackageBackwardCompatibility;-><init>(ZZ[Landroid/content/pm/PackageSharedLibraryUpdater;)V

    sput-object v4, Landroid/content/pm/PackageBackwardCompatibility;->INSTANCE:Landroid/content/pm/PackageBackwardCompatibility;

    return-void
.end method

.method public constructor <init>(ZZ[Landroid/content/pm/PackageSharedLibraryUpdater;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/PackageSharedLibraryUpdater;-><init>()V

    iput-boolean p1, p0, Landroid/content/pm/PackageBackwardCompatibility;->mBootClassPathContainsOAHL:Z

    iput-boolean p2, p0, Landroid/content/pm/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    iput-object p3, p0, Landroid/content/pm/PackageBackwardCompatibility;->mPackageUpdaters:[Landroid/content/pm/PackageSharedLibraryUpdater;

    return-void
.end method

.method private static addOptionalUpdater(Ljava/util/List;Ljava/lang/String;Ljava/util/function/Supplier;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageSharedLibraryUpdater;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/pm/PackageSharedLibraryUpdater;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    const-class v0, Landroid/content/pm/PackageBackwardCompatibility;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/pm/PackageSharedLibraryUpdater;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/content/pm/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/content/pm/PackageBackwardCompatibility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageSharedLibraryUpdater;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageSharedLibraryUpdater;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    nop

    :goto_1
    nop

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static bootClassPathContainsATB()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Landroid/content/pm/PackageBackwardCompatibility;->INSTANCE:Landroid/content/pm/PackageBackwardCompatibility;

    iget-boolean v0, v0, Landroid/content/pm/PackageBackwardCompatibility;->mBootClassPathContainsATB:Z

    return v0
.end method

.method public static bootClassPathContainsOAHL()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Landroid/content/pm/PackageBackwardCompatibility;->INSTANCE:Landroid/content/pm/PackageBackwardCompatibility;

    iget-boolean v0, v0, Landroid/content/pm/PackageBackwardCompatibility;->mBootClassPathContainsOAHL:Z

    return v0
.end method

.method public static getInstance()Landroid/content/pm/PackageSharedLibraryUpdater;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Landroid/content/pm/PackageBackwardCompatibility;->INSTANCE:Landroid/content/pm/PackageBackwardCompatibility;

    return-object v0
.end method

.method public static modifySharedLibraries(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object v0, Landroid/content/pm/PackageBackwardCompatibility;->INSTANCE:Landroid/content/pm/PackageBackwardCompatibility;

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageBackwardCompatibility;->updatePackage(Landroid/content/pm/PackageParser$Package;)V

    return-void
.end method


# virtual methods
.method public updatePackage(Landroid/content/pm/PackageParser$Package;)V
    .locals 4

    iget-object v0, p0, Landroid/content/pm/PackageBackwardCompatibility;->mPackageUpdaters:[Landroid/content/pm/PackageSharedLibraryUpdater;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageSharedLibraryUpdater;->updatePackage(Landroid/content/pm/PackageParser$Package;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
