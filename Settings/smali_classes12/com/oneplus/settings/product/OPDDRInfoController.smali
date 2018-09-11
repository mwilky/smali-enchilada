.class public Lcom/oneplus/settings/product/OPDDRInfoController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OPDDRInfoController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY:Ljava/lang/String; = "oneplus_ddr_memory_capacity"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/oneplus/settings/product/OPDDRInfoController;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "oneplus_ddr_memory_capacity"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 31
    :try_start_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->showROMStorage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/oneplus/settings/product/OPDDRInfoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120549

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 35
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
