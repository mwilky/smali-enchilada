.class public Landroid/webkit/UserPackage;
.super Ljava/lang/Object;
.source "UserPackage.java"


# static fields
.field public static final MINIMUM_SUPPORTED_SDK:I = 0x1c


# instance fields
.field private final mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mUserInfo:Landroid/content/pm/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/UserPackage;->mUserInfo:Landroid/content/pm/UserInfo;

    iput-object p2, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method

.method private static getAllUsers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/webkit/UserPackage;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/webkit/UserPackage;->getAllUsers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, p1, p2, v6}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v5

    :goto_1
    new-instance v5, Landroid/webkit/UserPackage;

    invoke-direct {v5, v3, v4}, Landroid/webkit/UserPackage;-><init>(Landroid/content/pm/UserInfo;Landroid/content/pm/PackageInfo;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static hasCorrectTargetSdkVersion(Landroid/content/pm/PackageInfo;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public getUserInfo()Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Landroid/webkit/UserPackage;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public isEnabledPackage()Z
    .locals 1

    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return v0
.end method

.method public isInstalledPackage()Z
    .locals 3

    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/UserPackage;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method
