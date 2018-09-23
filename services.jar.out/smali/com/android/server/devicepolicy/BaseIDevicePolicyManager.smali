.class abstract Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "BaseIDevicePolicyManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .locals 0

    return-void
.end method

.method public forceSecurityLogs()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/data/ApnSetting;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransferOwnershipBundle()Landroid/os/PersistableBundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract handleStartUser(I)V
.end method

.method abstract handleStopUser(I)V
.end method

.method abstract handleUnlockUser(I)V
.end method

.method public isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOverrideApnEnabled(Landroid/content/ComponentName;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUsingUnifiedPassword(Landroid/content/ComponentName;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeOverrideApn(Landroid/content/ComponentName;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    return-object p2
.end method

.method public setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V
    .locals 0

    return-void
.end method

.method public setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method abstract systemReady(I)V
.end method

.method public transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V
    .locals 0

    return-void
.end method

.method public updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
