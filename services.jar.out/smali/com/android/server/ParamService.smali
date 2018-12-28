.class public final Lcom/android/server/ParamService;
.super Lcom/oem/os/IParamService$Stub;
.source "ParamService.java"


# static fields
.field public static final CACHED_DEFAULT_VALUE:I = -0x1

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


# instance fields
.field private mCachedBackCoverColor:I

.field private mCachedCustType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/oem/os/IParamService$Stub;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    iput v0, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

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
    .locals 8

    const/4 v0, 0x4

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    iget v2, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    if-eq v2, v1, :cond_1

    sget-boolean v0, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "ParamService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return cached cust type value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    iget v3, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    if-eq v3, v1, :cond_3

    sget-boolean v0, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    const-string v0, "ParamService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return cached back cover color value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v0, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    return v0

    :cond_3
    move v3, v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ParamService;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v4

    invoke-interface {v4, p1}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v4

    move v3, v4

    sget-boolean v4, Lcom/android/server/ParamService;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_4

    const-string v4, "ParamService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParamIntSYNC = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "ParamService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getParamIntSYNC throws exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-ne p1, v0, :cond_5

    iget v0, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    if-ne v0, v1, :cond_5

    iput v3, p0, Lcom/android/server/ParamService;->mCachedCustType:I

    :cond_5
    if-ne p1, v2, :cond_6

    iget v0, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    if-ne v0, v1, :cond_6

    iput v3, p0, Lcom/android/server/ParamService;->mCachedBackCoverColor:I

    :cond_6
    return v3
.end method
