.class public Lcom/android/settings/wifi/OPWapiCertManagePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPWapiCertManagePreferenceController.java"


# static fields
.field private static final KEY_WAPI_CERT_MANAGE:Ljava/lang/String; = "wapi_cert_manage"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "wapi_cert_manage"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
