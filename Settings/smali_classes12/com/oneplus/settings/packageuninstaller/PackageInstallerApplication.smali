.class public Lcom/oneplus/settings/packageuninstaller/PackageInstallerApplication;
.super Landroid/app/Application;
.source "PackageInstallerApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/pm/PackageItemInfo;->setForceSafeLabels(Z)V

    .line 27
    return-void
.end method
