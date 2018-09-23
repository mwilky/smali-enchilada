.class public final Lcom/android/server/ParamService;
.super Lcom/oem/os/IParamService$Stub;
.source "ParamService.java"


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field public static final PARAM_ABNORMAL_REBOOT_COUNT:I = 0x7

.field public static final PARAM_BACKCOVER_COLOR:I = 0x2

.field public static final PARAM_CAL_REBOOT_COUNT:I = 0x5

.field public static final PARAM_CUST_FLAG:I = 0x4

.field public static final PARAM_FASTBOOT_COUNT:I = 0x9

.field public static final PARAM_INDEX_TIME_CREATE_KEY:I = 0xc

.field public static final PARAM_INDEX_TIME_FAIL_KEY:I = 0xe

.field public static final PARAM_INDEX_TIME_PASS_KEY:I = 0xd

.field public static final PARAM_INTRANET:I = 0x1

.field public static final PARAM_NORMAL_REBOOT_COUNT:I = 0x6

.field public static final PARAM_RESTART_08_COUNT:I = 0xa

.field public static final PARAM_RESTART_OTHER_COUNT:I = 0xb

.field public static final PARAM_UNLOCK_COUNT:I = 0x3

.field public static final PARAM_UPDATE_COUNT:I = 0x8

.field public static final TAG:Ljava/lang/String; = "ParamService"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/oem/os/IParamService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 4

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ParamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting OnePlus param service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getParamIntSYNC(I)I
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ParamService;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v1

    invoke-interface {v1, p1}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v1

    move v0, v1

    sget-boolean v1, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "ParamService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getParamIntSYNC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ParamService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParamIntSYNC throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method
