.class public Lcom/android/server/secrecy/policy/util/ParamReader;
.super Ljava/lang/Object;
.source "ParamReader.java"


# static fields
.field private static final PARAM_INTRANET:I = 0x1

.field private static final PARAM_UPGRADE_DOWNLOAD_TIME_1:I = 0x7

.field private static final TAG:Ljava/lang/String; = "ParamReader"

.field private static m_readRet:Z

.field private static m_readbyte:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/secrecy/policy/util/ParamReader;->m_readbyte:Ljava/util/ArrayList;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/secrecy/policy/util/ParamReader;->m_readRet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 19
    sput-boolean p0, Lcom/android/server/secrecy/policy/util/ParamReader;->m_readRet:Z

    return p0
.end method

.method static synthetic access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .line 19
    sput-object p0, Lcom/android/server/secrecy/policy/util/ParamReader;->m_readbyte:Ljava/util/ArrayList;

    return-object p0
.end method

.method private static getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 4

    .line 27
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ParamReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting OnePlus param service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getUpgradeTime()Ljava/lang/String;
    .locals 8

    .line 51
    const-string v0, ""

    .line 53
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lcom/android/server/secrecy/policy/util/ParamReader$1;

    invoke-direct {v1}, Lcom/android/server/secrecy/policy/util/ParamReader$1;-><init>()V

    .line 59
    .local v1, "buff":Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;
    invoke-static {}, Lcom/android/server/secrecy/policy/util/ParamReader;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v2, v3, v1}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamBuf(ILvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;)V

    .line 60
    sget-object v2, Lcom/android/server/secrecy/policy/util/ParamReader;->m_readbyte:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 61
    .local v2, "byteArray":[B
    const/4 v3, 0x0

    move v4, v3

    .line 62
    .local v4, "i":I
    :goto_0
    sget-object v5, Lcom/android/server/secrecy/policy/util/ParamReader;->m_readbyte:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 63
    sget-object v5, Lcom/android/server/secrecy/policy/util/ParamReader;->m_readbyte:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    if-nez v5, :cond_0

    .line 64
    goto :goto_1

    .line 66
    :cond_0
    sget-object v5, Lcom/android/server/secrecy/policy/util/ParamReader;->m_readbyte:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v2, v4

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    new-array v5, v4, [B

    .line 69
    .local v5, "byteArrayInfo":[B
    invoke-static {v2, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 70
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    .line 71
    const-string v3, "ParamReader"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUpgradeTime P~ result = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "buff":Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;
    .end local v2    # "byteArray":[B
    .end local v4    # "i":I
    .end local v5    # "byteArrayInfo":[B
    goto :goto_2

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParamBuf throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v0
.end method

.method public static isFlashedInternal()Z
    .locals 7

    .line 35
    const/4 v0, 0x0

    move v1, v0

    .line 38
    .local v1, "result":I
    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Lcom/android/server/secrecy/policy/util/ParamReader;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v3

    invoke-interface {v3, v2}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v3

    move v1, v3

    .line 39
    const-string v3, "ParamReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFlashedInternal P~ result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v3

    .line 41
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ParamReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getParamIntSYNC throws exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0
.end method
