.class public final Lcom/android/internal/telephony/TelephonyPermissions;
.super Ljava/lang/Object;
.source "TelephonyPermissions.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "TelephonyPermissions"

.field private static final TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$TelephonyPermissions$LxEEC4irBSbjD1lSC4EeVLgFY9I;

    sput-object v0, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCallingOrSelfReadPhoneNumber(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    sget-object v1, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneNumber(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkReadCallLog(Landroid/content/Context;IIILjava/lang/String;)Z
    .locals 6

    sget-object v1, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadCallLog(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkReadCallLog(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;III",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "android.permission.READ_CALL_LOG"

    invoke-virtual {p0, v0, p3, p4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "readCallLog"

    invoke-static {p1, p2, p4, v0}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Ljava/util/function/Supplier;IILjava/lang/String;)V

    return v2

    :cond_0
    return v1

    :cond_1
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public static checkReadPhoneNumber(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    const/4 v3, -0x1

    :try_start_1
    const-string v4, "android.permission.READ_SMS"

    invoke-virtual {p0, v4, p3, p4, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const-string v4, "android.permission.READ_SMS"

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_2

    invoke-virtual {v0, v4, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    :cond_2
    return v2

    :catch_1
    move-exception v4

    :try_start_2
    const-string v4, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {p0, v4, p3, p4, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    const-string v4, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {v4}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_4

    invoke-virtual {v0, v4, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v3, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    :cond_4
    return v2

    :catch_2
    move-exception v1

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Neither user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nor current process has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.READ_SMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.permission.READ_PHONE_NUMBERS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkReadPhoneState(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    sget-object v1, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/TelephonyPermissions;->checkReadPhoneState(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkReadPhoneState(Landroid/content/Context;Ljava/util/function/Supplier;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;III",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v1, p3, p4, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2, p3, p4, p6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const/16 v2, 0x33

    invoke-virtual {v1, v2, p4, p5}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_1
    move-exception v2

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1, p2, p4, p6}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Ljava/util/function/Supplier;IILjava/lang/String;)V

    return v0

    :cond_1
    throw v2
.end method

.method public static enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(IILjava/lang/String;)V

    return-void
.end method

.method public static enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V

    return-void
.end method

.method private static enforceCarrierPrivilege(IILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/TelephonyPermissions;->TELEPHONY_SUPPLIER:Ljava/util/function/Supplier;

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCarrierPrivilege(Ljava/util/function/Supplier;IILjava/lang/String;)V

    return-void
.end method

.method private static enforceCarrierPrivilege(Ljava/util/function/Supplier;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->getCarrierPrivilegeStatus(Ljava/util/function/Supplier;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, p3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCarrierPrivilegeStatus(Ljava/util/function/Supplier;II)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/telephony/ITelephony;",
            ">;II)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatusForUid(II)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const-string v1, "TelephonyPermissions"

    const-string v2, "Phone process is down, cannot check carrier privileges"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method static synthetic lambda$static$0()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method
