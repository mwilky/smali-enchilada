.class public Lcom/android/server/am/OnePlusCTAPermissionService;
.super Ljava/lang/Object;
.source "OnePlusCTAPermissionService.java"


# static fields
.field public static DEBUG_ONEPLUS:Z = false

.field public static final TAG:Ljava/lang/String; = "CTAPermission"

.field private static mPermissionControlServiceBinderProxy:Landroid/os/IBinder;

.field private static mPermissionRequestServiceBinderProxy:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusCTAPermissionService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionServiceBinderProxy(I)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    packed-switch p0, :pswitch_data_0

    return-object v1

    :pswitch_0
    sget-object v0, Lcom/android/server/am/OnePlusCTAPermissionService;->mPermissionControlServiceBinderProxy:Landroid/os/IBinder;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/server/am/OnePlusCTAPermissionService;->mPermissionRequestServiceBinderProxy:Landroid/os/IBinder;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isRequestPermission(Z)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mOpAms:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityManagerService;->isRequestPermission(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "setPermissionServiceBinderProxy called from non-system process"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sput-object p0, Lcom/android/server/am/OnePlusCTAPermissionService;->mPermissionControlServiceBinderProxy:Landroid/os/IBinder;

    const-string v1, "CTAPermission"

    const-string v2, "[CTAPermission] set control service proxy done"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_1
    sput-object p0, Lcom/android/server/am/OnePlusCTAPermissionService;->mPermissionRequestServiceBinderProxy:Landroid/os/IBinder;

    const-string v1, "CTAPermission"

    const-string v2, "[CTAPermission] set request service proxy done"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
