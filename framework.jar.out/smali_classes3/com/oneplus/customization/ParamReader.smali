.class public Lcom/oneplus/customization/ParamReader;
.super Ljava/lang/Object;
.source "ParamReader.java"


# static fields
.field private static final PARAM_BACKCOVER_COLOR:I = 0x2

.field private static final PARAM_CUST_FLAG:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ParamReader"

.field private static final custom_back_cover_fn:Ljava/lang/String; = "/sys/module/param_read_write/parameters/backcover_color"

.field private static final custom_fn:Ljava/lang/String; = "/sys/module/param_read_write/parameters/cust_flag"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBackCoverColorVal()Ljava/lang/String;
    .locals 7

    .line 88
    const-string v0, "00000000"

    .line 91
    .local v0, "result":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_4

    .line 92
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/module/param_read_write/parameters/backcover_color"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "custFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    const-string v2, "ParamReader"

    const-string v3, "custom_back_cover_fn not existed"

    invoke-static {v2, v3}, Lcom/oneplus/customization/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v0

    .line 98
    :cond_0
    const/4 v2, 0x0

    .line 100
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 102
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_0

    .line 109
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 110
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ParamReader"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 114
    :cond_2
    :goto_1
    goto :goto_2

    .line 108
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 105
    :catch_1
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ParamReader"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/customization/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 110
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 116
    :goto_2
    const-string v3, "ParamReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBackCoverColorVal ~P result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/customization/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-object v0

    .line 108
    :goto_3
    nop

    .line 109
    if-eqz v2, :cond_3

    .line 110
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 112
    :catch_2
    move-exception v4

    .line 113
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ParamReader"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    nop

    .line 114
    :cond_3
    :goto_4
    throw v3

    .line 120
    .end local v1    # "custFile":Ljava/io/File;
    .end local v2    # "br":Ljava/io/BufferedReader;
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/oneplus/customization/ParamReader;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v1

    .line 121
    .local v1, "result_int":I
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 122
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackCoverColorVal P~ result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/customization/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 125
    .end local v1    # "result_int":I
    goto :goto_5

    .line 123
    :catch_3
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParamIntSYNC throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/customization/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    return-object v0
.end method

.method public static getCustFlagVal()I
    .locals 7

    .line 33
    const/4 v0, 0x0

    .line 36
    .local v0, "result":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-gt v1, v2, :cond_5

    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/module/param_read_write/parameters/cust_flag"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v2, "themeStateFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    const-string v3, "ParamReader"

    const-string v4, "custom_fn not existed"

    invoke-static {v3, v4}, Lcom/oneplus/customization/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return v0

    .line 44
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 46
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 47
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :pswitch_1
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :pswitch_2
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_2

    .line 55
    :pswitch_3
    const/4 v0, 0x3

    .line 56
    goto :goto_2

    .line 52
    :pswitch_4
    const/4 v0, 0x2

    .line 53
    goto :goto_2

    .line 49
    :pswitch_5
    const/4 v0, 0x1

    .line 50
    nop

    .line 58
    :goto_2
    goto :goto_0

    .line 65
    .end local v4    # "line":Ljava/lang/String;
    :cond_2
    nop

    .line 66
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 68
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ParamReader"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/customization/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 70
    :goto_3
    nop

    .line 71
    :goto_4
    const-string v3, "ParamReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_7

    .line 64
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 61
    :catch_1
    move-exception v3

    .line 62
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ParamReader"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/customization/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 66
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 68
    :catch_2
    move-exception v3

    .line 69
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "ParamReader"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/customization/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 70
    :cond_3
    :goto_5
    nop

    .line 71
    :goto_6
    const-string v3, "ParamReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    const-string v5, "getCustFlagVal ~P result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/customization/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    nop

    .line 73
    return v0

    .line 64
    :goto_8
    nop

    .line 65
    if-eqz v1, :cond_4

    .line 66
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    .line 68
    :catch_3
    move-exception v4

    .line 69
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ParamReader"

    invoke-static {v6, v5}, Lcom/oneplus/customization/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_a

    .line 70
    :cond_4
    :goto_9
    nop

    .line 71
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustFlagVal ~P result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ParamReader"

    invoke-static {v5, v4}, Lcom/oneplus/customization/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 76
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "themeStateFile":Ljava/io/File;
    :cond_5
    :try_start_5
    invoke-static {}, Lcom/oneplus/customization/ParamReader;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v1

    move v0, v1

    .line 77
    const-string v1, "ParamReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustFlagVal P~ result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/customization/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 80
    goto :goto_b

    .line 78
    :catch_4
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParamIntSYNC throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/customization/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b
    return v0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    .locals 4

    .line 25
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ParamReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting OnePlus param service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/customization/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v1, 0x0

    return-object v1
.end method
