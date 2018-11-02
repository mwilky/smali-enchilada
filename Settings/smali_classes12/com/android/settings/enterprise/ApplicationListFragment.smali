.class public abstract Lcom/android/settings/enterprise/ApplicationListFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ApplicationListFragment.java"

# interfaces
.implements Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/enterprise/ApplicationListFragment$EnterpriseInstalledPackages;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionMicrophone;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionLocation;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermissionCamera;,
        Lcom/android/settings/enterprise/ApplicationListFragment$AdminGrantedPermission;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "EnterprisePrivacySettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/settings/enterprise/ApplicationListPreferenceController;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2, p0}, Lcom/android/settings/enterprise/ApplicationListPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/enterprise/ApplicationListPreferenceController$ApplicationListBuilder;Landroid/content/pm/PackageManager;Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "EnterprisePrivacySettings"

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160016

    return v0
.end method
