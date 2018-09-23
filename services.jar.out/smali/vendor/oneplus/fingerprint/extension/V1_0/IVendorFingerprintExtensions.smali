.class public interface abstract Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
.super Ljava/lang/Object;
.source "IVendorFingerprintExtensions.java"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Stub;,
        Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    if-eqz v2, :cond_1

    move-object v0, v1

    check-cast v0, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    return-object v0

    :cond_1
    new-instance v2, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Proxy;

    invoke-direct {v2, p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_2

    return-object v2

    :cond_2
    goto :goto_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v3

    :goto_1
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getService()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->getService(Ljava/lang/String;)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "vendor.oneplus.fingerprint.extension@1.0::IVendorFingerprintExtensions"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->asInterface(Landroid/os/IHwBinder;)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Z)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0, p0}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->getService(Ljava/lang/String;Z)Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getEngTest()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lvendor/oneplus/fingerprint/extension/V1_0/FpTest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStatus()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEngCallback(Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensionsCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startEngTest(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopAllEngTest()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopEngTest(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateStatus(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
