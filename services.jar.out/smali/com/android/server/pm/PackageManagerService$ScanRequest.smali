.class Lcom/android/server/pm/PackageManagerService$ScanRequest;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanRequest"
.end annotation


# instance fields
.field public final disabledPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final isPlatformPackage:Z

.field public final oldPkg:Landroid/content/pm/PackageParser$Package;

.field public final oldPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final originalPkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final parseFlags:I

.field public final pkg:Landroid/content/pm/PackageParser$Package;

.field public final pkgSetting:Lcom/android/server/pm/PackageSetting;

.field public final realPkgName:Ljava/lang/String;

.field public final scanFlags:I

.field public final sharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/SharedUserSetting;Landroid/content/pm/PackageParser$Package;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;IIZLandroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->pkg:Landroid/content/pm/PackageParser$Package;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->oldPkg:Landroid/content/pm/PackageParser$Package;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->pkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->sharedUserSetting:Lcom/android/server/pm/SharedUserSetting;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v0, p4}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->oldPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->disabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->originalPkgSetting:Lcom/android/server/pm/PackageSetting;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->realPkgName:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->parseFlags:I

    iput p9, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->scanFlags:I

    iput-boolean p10, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->isPlatformPackage:Z

    iput-object p11, p0, Lcom/android/server/pm/PackageManagerService$ScanRequest;->user:Landroid/os/UserHandle;

    return-void
.end method
