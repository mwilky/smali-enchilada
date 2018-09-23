.class Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;
.super Ljava/lang/Object;
.source "OemPackageManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OemPackageManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeletedPkgInfos"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field versionCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/OemPackageManagerHelper$DeletedPkgInfos;->versionCode:I

    return-void
.end method
