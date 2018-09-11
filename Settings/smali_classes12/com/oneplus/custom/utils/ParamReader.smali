.class public Lcom/oneplus/custom/utils/ParamReader;
.super Ljava/lang/Object;
.source "ParamReader.java"


# static fields
.field private static final PARAM_BACKCOVER_COLOR:I = 0x2

.field private static final PARAM_CUST_FLAG:I = 0x4

.field private static final PARAM_GET_SECURE_WP_KEY:I = 0x1a

.field private static final TAG:Ljava/lang/String; = "ParamReader"

.field private static final custom_back_cover_fn:Ljava/lang/String; = "/sys/module/param_read_write/parameters/backcover_color"

.field private static final custom_fn:Ljava/lang/String; = "/sys/module/param_read_write/parameters/cust_flag"

.field private static mParamReadRet:Z

.field private static mParamReadbyte:Ljava/util/ArrayList;
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

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/custom/utils/ParamReader;->mParamReadbyte:Ljava/util/ArrayList;

    .line 156
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/custom/utils/ParamReader;->mParamReadRet:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 21
    sput-boolean p0, Lcom/oneplus/custom/utils/ParamReader;->mParamReadRet:Z

    return p0
.end method

.method static synthetic access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .line 21
    sput-object p0, Lcom/oneplus/custom/utils/ParamReader;->mParamReadbyte:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getBackCoverColorVal()Ljava/lang/String;
    .locals 13

    .line 103
    const-string v0, "00000000"

    .line 106
    .local v0, "result":Ljava/lang/String;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/16 v3, 0x1b

    if-gt v1, v3, :cond_4

    .line 107
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/module/param_read_write/parameters/backcover_color"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "custFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 109
    const-string v2, "ParamReader"

    const-string v3, "custom_back_cover_fn not existed"

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-object v0

    .line 113
    :cond_0
    nop

    .line 115
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 117
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 118
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_0

    .line 124
    .end local v4    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 125
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ParamReader"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_2

    .line 129
    :goto_1
    nop

    .line 130
    :goto_2
    const-string v3, "ParamReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "custFile":Ljava/io/File;
    .end local v2    # "br":Ljava/io/BufferedReader;
    :goto_3
    const-string v5, "getBackCoverColorVal ~P result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/custom/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-object v0

    .line 123
    .restart local v0    # "result":Ljava/lang/String;
    .restart local v1    # "custFile":Ljava/io/File;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v3

    goto :goto_6

    .line 120
    :catch_1
    move-exception v3

    .line 121
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "ParamReader"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_2

    .line 125
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 127
    :catch_2
    move-exception v3

    .line 128
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "ParamReader"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_5

    .line 129
    :cond_2
    :goto_4
    nop

    .line 130
    :goto_5
    const-string v3, "ParamReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 123
    :goto_6
    nop

    .line 124
    if-eqz v2, :cond_3

    .line 125
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 127
    :catch_3
    move-exception v3

    .line 128
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v4, "ParamReader"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_8

    .line 129
    :cond_3
    :goto_7
    nop

    .line 130
    :goto_8
    const-string v3, "ParamReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 135
    .end local v1    # "custFile":Ljava/io/File;
    .end local v2    # "br":Ljava/io/BufferedReader;
    :cond_4
    :try_start_5
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 136
    .local v1, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 137
    .local v3, "getService":Ljava/lang/reflect/Method;
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "ParamService"

    aput-object v6, v5, v7

    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 138
    .local v5, "oRemoteService":Ljava/lang/Object;
    const-string v6, "com.oem.os.IParamService$Stub"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 139
    .local v6, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "asInterface"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 140
    .local v8, "asInterface":Ljava/lang/reflect/Method;
    new-array v9, v4, [Ljava/lang/Object;

    aput-object v5, v9, v7

    invoke-virtual {v8, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, "oIParamService":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getParamIntSYNC"

    new-array v11, v4, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 143
    .local v9, "getParamIntSYNC":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v7

    invoke-virtual {v9, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 144
    .local v4, "result_int":I
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 145
    const-string v7, "ParamReader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getBackCoverColorVal P~ result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/custom/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 148
    .end local v1    # "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "oIParamService":Ljava/lang/Object;
    .end local v3    # "getService":Ljava/lang/reflect/Method;
    .end local v4    # "result_int":I
    .end local v5    # "oRemoteService":Ljava/lang/Object;
    .end local v6    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "asInterface":Ljava/lang/reflect/Method;
    .end local v9    # "getParamIntSYNC":Ljava/lang/reflect/Method;
    goto :goto_9

    .line 146
    :catch_4
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBackCoverColorVal throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_9
    return-object v0
.end method

.method public static getCustFlagVal()I
    .locals 13

    .line 40
    const/4 v0, 0x0

    .line 43
    .local v0, "result":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x1b

    if-gt v1, v4, :cond_5

    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/module/param_read_write/parameters/cust_flag"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v4, "themeStateFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 47
    const-string v2, "ParamReader"

    const-string v3, "custom_fn not existed"

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return v0

    .line 51
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v5

    .line 53
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "line":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 54
    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v7, "3"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :pswitch_1
    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v3

    goto :goto_1

    :pswitch_2
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    move v5, v2

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 62
    :pswitch_3
    const/4 v0, 0x3

    .line 63
    goto :goto_2

    .line 59
    :pswitch_4
    const/4 v0, 0x2

    .line 60
    goto :goto_2

    .line 56
    :pswitch_5
    const/4 v0, 0x1

    .line 57
    nop

    .line 65
    :goto_2
    goto :goto_0

    .line 72
    .end local v6    # "line":Ljava/lang/String;
    :cond_2
    nop

    .line 73
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 75
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ParamReader"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_4

    .line 77
    :goto_3
    nop

    .line 78
    :goto_4
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .end local v0    # "result":I
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "themeStateFile":Ljava/io/File;
    :goto_5
    const-string v5, "getCustFlagVal ~P result = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return v0

    .line 71
    .restart local v0    # "result":I
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "themeStateFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    goto :goto_8

    .line 68
    :catch_1
    move-exception v2

    .line 69
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ParamReader"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_3

    .line 73
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    .line 75
    :catch_2
    move-exception v2

    .line 76
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "ParamReader"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 77
    :cond_3
    :goto_6
    nop

    .line 78
    :goto_7
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 71
    :goto_8
    nop

    .line 72
    if-eqz v1, :cond_4

    .line 73
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_9

    .line 75
    :catch_3
    move-exception v2

    .line 76
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v3, "ParamReader"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_a

    .line 77
    :cond_4
    :goto_9
    nop

    .line 78
    :goto_a
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_5

    .line 83
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "themeStateFile":Ljava/io/File;
    :cond_5
    :try_start_5
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 84
    .local v1, "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "getService"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 85
    .local v4, "getService":Ljava/lang/reflect/Method;
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "ParamService"

    aput-object v6, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 86
    .local v5, "oRemoteService":Ljava/lang/Object;
    const-string v7, "com.oem.os.IParamService$Stub"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 87
    .local v7, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v8, "asInterface"

    new-array v9, v3, [Ljava/lang/Class;

    const-class v10, Landroid/os/IBinder;

    aput-object v10, v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 88
    .local v8, "asInterface":Ljava/lang/reflect/Method;
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v5, v9, v2

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 89
    .local v6, "oIParamService":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "getParamIntSYNC"

    new-array v11, v3, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 91
    .local v9, "getParamIntSYNC":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v3, v2

    invoke-virtual {v9, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v0, v2

    .line 92
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCustFlagVal P~ result = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 95
    .end local v1    # "ServiceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getService":Ljava/lang/reflect/Method;
    .end local v5    # "oRemoteService":Ljava/lang/Object;
    .end local v6    # "oIParamService":Ljava/lang/Object;
    .end local v7    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "asInterface":Ljava/lang/reflect/Method;
    .end local v9    # "getParamIntSYNC":Ljava/lang/reflect/Method;
    goto :goto_b

    .line 93
    :catch_4
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustFlagVal throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_b
    return v0

    nop

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

    .line 32
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ParamReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting OnePlus param service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSecureWPKey()[B
    .locals 6

    .line 159
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 161
    .local v0, "cdl":Ljava/util/concurrent/CountDownLatch;
    :try_start_0
    new-instance v1, Lcom/oneplus/custom/utils/ParamReader$1;

    invoke-direct {v1, v0}, Lcom/oneplus/custom/utils/ParamReader$1;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 168
    .local v1, "cbk":Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;
    invoke-static {}, Lcom/oneplus/custom/utils/ParamReader;->getOneplusParamService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v2

    const/16 v3, 0x1a

    invoke-interface {v2, v3, v1}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamBuf(ILvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;)V

    .line 169
    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 170
    sget-object v2, Lcom/oneplus/custom/utils/ParamReader;->mParamReadbyte:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [B

    .line 172
    .local v2, "myResult":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v4, Lcom/oneplus/custom/utils/ParamReader;->mParamReadbyte:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 173
    sget-object v4, Lcom/oneplus/custom/utils/ParamReader;->mParamReadbyte:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-nez v4, :cond_0

    .line 174
    goto :goto_1

    .line 176
    :cond_0
    sget-object v4, Lcom/oneplus/custom/utils/ParamReader;->mParamReadbyte:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v2, v3

    .line 172
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "i":I
    :cond_1
    :goto_1
    const-string v3, "ParamReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get WP key result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/custom/utils/MyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return-object v2

    .line 180
    .end local v1    # "cbk":Lvendor/oneplus/hardware/param/V1_0/IOneplusParam$getParamBufCallback;
    .end local v2    # "myResult":[B
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ParamReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParamBuf throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/custom/utils/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method
