.class public Lcom/android/settings/applications/PackageManagerWrapperImpl;
.super Ljava/lang/Object;
.source "PackageManagerWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/applications/PackageManagerWrapper;


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    .line 37
    return-void
.end method


# virtual methods
.method public deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p3, "flags"    # I
    .param p4, "userId"    # I

    .line 99
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 100
    return-void
.end method

.method public getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 82
    .local p1, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getInstallReason(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    return v0
.end method

.method public getInstalledApplicationsAsUser(II)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "i"    # I
    .param p3, "user"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "homeFilter"    # Landroid/content/IntentFilter;
    .param p2, "matchCategoryEmpty"    # I
    .param p3, "componentNames"    # [Landroid/content/ComponentName;
    .param p4, "component"    # Landroid/content/ComponentName;

    .line 93
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 94
    return-void
.end method

.method public setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/PackageManagerWrapperImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
