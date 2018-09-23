.class public Lcom/android/settings/enterprise/SecurityLogsPreferenceController;
.super Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;
.source "SecurityLogsPreferenceController.java"


# static fields
.field private static final KEY_SECURITY_LOGS:Ljava/lang/String; = "security_logs"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/enterprise/AdminActionPreferenceControllerBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getAdminActionTimestamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getLastSecurityLogRetrievalTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "security_logs"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->isSecurityLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/enterprise/SecurityLogsPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getLastSecurityLogRetrievalTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
