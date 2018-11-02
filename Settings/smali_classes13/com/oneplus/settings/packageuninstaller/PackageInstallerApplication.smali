.class public Lcom/oneplus/settings/packageuninstaller/PackageInstallerApplication;
.super Landroid/app/Application;
.source "PackageInstallerApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/content/pm/PackageItemInfo;->setForceSafeLabels(Z)V

    return-void
.end method
