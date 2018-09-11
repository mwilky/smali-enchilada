.class public Lcom/oneplus/settings/product/OPAuthenticationInformationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPAuthenticationInformationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_AUTHENTICATION_INFORMATION:Ljava/lang/String; = "oneplus_authentication_information"

.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5010:Ljava/lang/String; = "ONEPLUS A5010"

.field private static final ONEPLUS_A6000:Ljava/lang/String; = "ONEPLUS A6000"

.field private static final ONEPLUS_A6003:Ljava/lang/String; = "ONEPLUS A6003"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p1, p0, Lcom/oneplus/settings/product/OPAuthenticationInformationPreferenceController;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "oneplus_authentication_information"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 44
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5010"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f120b8a

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/product/OPAuthenticationInformationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/product/OPAuthenticationInformationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "oem.authentication_information.support"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6003"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/product/OPAuthenticationInformationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
