.class public Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;
.super Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;
.source "FailedPasswordWipeCurrentUserPreferenceController.java"


# static fields
.field private static final KEY_FAILED_PASSWORD_WIPE_CURRENT_USER:Ljava/lang/String; = "failed_password_wipe_current_user"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/FailedPasswordWipePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getMaximumFailedPasswordsBeforeWipe()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/enterprise/FailedPasswordWipeCurrentUserPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getMaximumFailedPasswordsBeforeWipeInCurrentUser()I

    move-result v0

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "failed_password_wipe_current_user"

    return-object v0
.end method
