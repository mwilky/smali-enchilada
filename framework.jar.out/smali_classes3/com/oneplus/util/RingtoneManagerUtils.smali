.class public Lcom/oneplus/util/RingtoneManagerUtils;
.super Ljava/lang/Object;
.source "RingtoneManagerUtils.java"


# static fields
.field private static DBG:Z = false

.field private static final DBG_LOGV:Z

.field private static final DEVICE_CUSTOM_FLAG:Ljava/lang/String; = "deviceCustomflag"

.field private static RINGPATH_FROM_TYPE:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RingtoneManagerUtils"

.field private static final TYPE_SMS:I = 0x64

.field private static sCustFlagVal:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    .line 88
    const-string v0, "persist.debug.ringtone.all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    .line 91
    const/4 v0, -0x1

    sput v0, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    .line 100
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, ""

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/util/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 84
    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Exception;

    .line 84
    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;

    .line 685
    invoke-static {p0}, Lcom/oneplus/util/RingtoneManagerUtils;->isFlagOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 686
    const-string v0, "/op1"

    .line 687
    .local v0, "OP1_PATH":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/op1"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v1, "OP1_FILE":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cust_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "cust_sound_name":Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/oneplus/util/RingtoneManagerUtils;->searchForFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    .line 690
    .local v3, "isFound":Z
    if-eqz v3, :cond_1

    .line 691
    sget-boolean v4, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmCustSounds: We\'ve got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    return-object v2

    .line 694
    :cond_1
    sget-boolean v4, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v4, :cond_2

    const-string v4, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "confirmCustSounds: Not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .end local v0    # "OP1_PATH":Ljava/lang/String;
    .end local v1    # "OP1_FILE":Ljava/io/File;
    .end local v2    # "cust_sound_name":Ljava/lang/String;
    .end local v3    # "isFound":Z
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtone_uri"    # Landroid/net/Uri;
    .param p2, "permission"    # Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "pkgName":Ljava/lang/String;
    sget-boolean v1, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "RingtoneManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmExternalPermission: check "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 225
    .local v1, "isGranted":Z
    invoke-static {p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-virtual {p0, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 227
    const/4 v1, 0x1

    .line 229
    :cond_1
    if-nez v1, :cond_3

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No permission of ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 231
    :cond_2
    sget-boolean v2, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmExternalPermission: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] is not external uri."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_3
    :goto_0
    return v1
.end method

.method private static getExternalPath()Ljava/lang/String;
    .locals 3

    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "externalPath":Ljava/lang/String;
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 243
    .local v1, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 244
    return-object v0
.end method

.method private static isCustFlagOn()Z
    .locals 9

    .line 761
    const/4 v0, 0x0

    .line 763
    .local v0, "isFlagOn":Z
    const/4 v1, 0x4

    .line 764
    .local v1, "PARAM_CUST_FLAG":I
    const/4 v2, 0x0

    .line 765
    .local v2, "CUSTOM_TYPE_NONE":I
    :try_start_0
    const-string v3, "ParamService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 766
    .local v3, "b":Landroid/os/IBinder;
    invoke-static {v3}, Lcom/oem/os/IParamService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IParamService;

    move-result-object v4

    .line 767
    .local v4, "service":Lcom/oem/os/IParamService;
    if-eqz v4, :cond_1

    .line 768
    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lcom/oem/os/IParamService;->getParamIntSYNC(I)I

    move-result v5

    .line 769
    .local v5, "cust_flag":I
    if-eqz v5, :cond_1

    .line 770
    sget-boolean v6, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v6, :cond_0

    const-string v6, "RingtoneManagerUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCustFlagOn: cust_flag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :cond_0
    const/4 v0, 0x1

    .line 776
    .end local v1    # "PARAM_CUST_FLAG":I
    .end local v2    # "CUSTOM_TYPE_NONE":I
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "service":Lcom/oem/os/IParamService;
    .end local v5    # "cust_flag":I
    :cond_1
    goto :goto_0

    .line 774
    :catch_0
    move-exception v1

    .line 775
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "RingtoneManagerUtils"

    const-string v3, "isCustFlagOn error:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 777
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    sget-boolean v1, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "RingtoneManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCustFlagOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_2
    return v0
.end method

.method private static isFlagOn(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 738
    sget v0, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 739
    const-string v0, "MediaScanBuild"

    .line 740
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 741
    .local v0, "scanSettings":Landroid/content/SharedPreferences;
    const-string v4, "deviceCustomflag"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    .line 742
    sget v4, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    if-ne v4, v3, :cond_1

    .line 743
    invoke-static {}, Lcom/oneplus/util/RingtoneManagerUtils;->isCustFlagOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 744
    sput v1, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    goto :goto_0

    .line 746
    :cond_0
    sput v2, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    .line 748
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 749
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "deviceCustomflag"

    sget v5, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 750
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 753
    .end local v0    # "scanSettings":Landroid/content/SharedPreferences;
    .end local v3    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFlagOn: sCustFlagVal = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_2
    sget v0, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method private static printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 251
    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "RingtoneManagerUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 254
    :cond_0
    const-string v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :goto_0
    return-void
.end method

.method private static printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 262
    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    .line 263
    const-string v0, "RingtoneManagerUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 265
    :cond_0
    const-string v0, "RingtoneManagerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void
.end method

.method private static ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, "isExisted":Z
    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 281
    sget-boolean v2, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneCheckFileExists: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    .local v2, "ringFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 284
    const/4 v0, 0x1

    .line 287
    .end local v2    # "ringFile":Ljava/io/File;
    :cond_1
    sget-boolean v2, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneCheckFileExists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v4, "existed"

    goto :goto_0

    :cond_2
    const-string v4, "gone"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_3
    return v0
.end method

.method private static ringtoneCheckMimeType(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "strRingMime":Ljava/lang/String;
    const/4 v1, 0x0

    .line 300
    .local v1, "mediaExtractor":Landroid/media/MediaExtractor;
    const/4 v2, 0x0

    .line 302
    .local v2, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    move-object v1, v3

    .line 303
    const-string v3, "r"

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 304
    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 306
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 307
    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    .line 308
    .local v4, "format":Landroid/media/MediaFormat;
    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "trackMime":Ljava/lang/String;
    const-string v6, "RingtoneManagerUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ringtoneCheckMimeType: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v5, :cond_0

    const-string v6, "audio/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 312
    move-object v0, v5

    .line 313
    goto :goto_1

    .line 306
    .end local v4    # "format":Landroid/media/MediaFormat;
    .end local v5    # "trackMime":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v3    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    .line 317
    :catch_0
    move-exception v3

    .line 319
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ringtoneCheckMimeType"

    invoke-static {v4, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    .end local v3    # "ex":Ljava/lang/Exception;
    if-eqz v1, :cond_2

    .line 322
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 324
    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 325
    nop

    .line 327
    return-object v0

    .line 321
    :goto_3
    if-eqz v1, :cond_3

    .line 322
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    .line 324
    :cond_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private static ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 5
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    const/4 v0, 0x1

    .line 364
    .local v0, "isAlive":Z
    if-eqz p0, :cond_3

    .line 365
    const/4 v1, 0x0

    .line 368
    .local v1, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    const-string v2, "r"

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 376
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    if-nez v0, :cond_0

    .line 378
    :goto_0
    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_1

    .line 376
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 373
    :catch_0
    move-exception v2

    .line 374
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ringtoneCheckValid error"

    invoke-static {v3, v2}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    .end local v2    # "ex":Ljava/lang/Exception;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    if-nez v0, :cond_0

    goto :goto_0

    .line 369
    :catch_1
    move-exception v2

    .line 371
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v3, "ringtoneCheckValid File Not Found"

    invoke-static {v3, v2}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 372
    const/4 v0, 0x0

    .line 376
    .end local v2    # "fnfe":Ljava/io/FileNotFoundException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    if-nez v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    :goto_1
    sget-boolean v2, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneCheckValid1: file_uri["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v4, "alive"

    goto :goto_2

    :cond_1
    const-string v4, "gone"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "afd":Landroid/content/res/AssetFileDescriptor;
    goto :goto_4

    .line 376
    .restart local v1    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    if-nez v0, :cond_2

    .line 378
    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    :cond_2
    throw v2

    .line 383
    .end local v1    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_3
    :goto_4
    return v0
.end method

.method public static ringtoneCheckValid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .line 336
    const/4 v0, 0x1

    .line 338
    .local v0, "isAlive":Z
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v1}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->validForProvider(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    .line 343
    .local v1, "client":Landroid/content/ContentProviderClient;
    if-eqz v1, :cond_1

    .line 346
    :try_start_0
    invoke-static {v1, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    .line 350
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :goto_0
    invoke-static {v1}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 351
    goto :goto_2

    .line 350
    .restart local v1    # "client":Landroid/content/ContentProviderClient;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "ringtoneCheckValid"

    invoke-static {v3, v2}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 350
    :goto_1
    invoke-static {v1}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v2

    .line 354
    .end local v1    # "client":Landroid/content/ContentProviderClient;
    :cond_1
    :goto_2
    return v0
.end method

.method public static ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "file_uri"    # Landroid/net/Uri;

    move/from16 v0, p1

    .line 398
    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "packageName":Ljava/lang/String;
    move-object v3, v1

    .line 400
    .local v3, "ringtone_uri":Landroid/net/Uri;
    invoke-static {}, Lcom/oneplus/util/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, "externalPath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    .line 402
    .local v5, "client":Landroid/content/ContentProviderClient;
    if-nez v5, :cond_0

    .line 403
    const-string v6, "RingtoneManagerUtils"

    const-string v7, "Fail to acquire provider client. Skip the validating function in ringtoneCopyFrom3rdParty."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-object v3

    .line 407
    :cond_0
    sget-boolean v6, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "RingtoneManagerUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ringtoneCopyFrom3rdParty: pkg["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "], ringType["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], uri["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    const/4 v6, 0x1

    new-array v7, v6, [I

    const/4 v8, 0x6

    const/4 v10, 0x0

    aput v8, v7, v10

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x64

    if-ne v0, v7, :cond_2

    .line 411
    const/4 v0, 0x2

    .line 415
    .end local p1    # "type":I
    .local v13, "type":I
    :cond_2
    move v13, v0

    const-string v0, "_data"

    const-string v7, "title"

    const-string v8, "_display_name"

    const-string v9, "mime_type"

    filled-new-array {v0, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v9

    .line 416
    .local v9, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    .line 417
    .local v14, "strID":Ljava/lang/String;
    const/4 v0, 0x0

    move-object v15, v0

    .line 419
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v8, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id=?"

    new-array v11, v6, [Ljava/lang/String;

    aput-object v14, v11, v10

    const/4 v12, 0x0

    move-object v7, v5

    move-object v10, v0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v15, v0

    .line 420
    if-eqz v15, :cond_5

    .line 421
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 423
    const-string v0, "_data"

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "strRingPath":Ljava/lang/String;
    const-string v6, "title"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 425
    .local v6, "strRingTitle":Ljava/lang/String;
    const-string v7, "_display_name"

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, "strDisplayName":Ljava/lang/String;
    const-string v8, "mime_type"

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 428
    .local v8, "strRingMime":Ljava/lang/String;
    sget-boolean v10, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v10, :cond_3

    const-string v10, "RingtoneManagerUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ringtoneCopyFrom3rdParty: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' came from ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_3
    const-string v10, "audio/*"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 432
    invoke-static {v5, v1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckMimeType(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v10

    .line 434
    :cond_4
    nop

    .line 441
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 442
    invoke-static {v5}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 434
    return-object v3

    .line 441
    .end local v0    # "strRingPath":Ljava/lang/String;
    .end local v6    # "strRingTitle":Ljava/lang/String;
    .end local v7    # "strDisplayName":Ljava/lang/String;
    .end local v8    # "strRingMime":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v6, "ringtoneCopyFrom3rdParty"

    invoke-static {v6, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 439
    move-object v3, v1

    .line 441
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_5
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 442
    invoke-static {v5}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 443
    nop

    .line 444
    return-object v3

    .line 441
    :goto_0
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 442
    invoke-static {v5}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0
.end method

.method private static ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    move-object v0, p1

    .line 488
    .local v0, "original_uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 489
    .local v1, "strID":Ljava/lang/String;
    invoke-static {p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 490
    const/4 v2, 0x0

    .line 491
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 492
    const-string v3, "_id"

    const-string v4, "_data"

    const-string v5, "composer"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    .line 493
    .local v8, "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id=?"

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v10, v4

    const/4 v11, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 494
    if-eqz v2, :cond_2

    .line 496
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 497
    const-string v4, "_data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 498
    .local v4, "strRingPath":Ljava/lang/String;
    const-string v5, "composer"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 499
    .local v5, "strComposerName":Ljava/lang/String;
    invoke-static {v4}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    const-string v6, "from3rdParty_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 501
    .local v6, "strOriginalID":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "content://media/external/audio/media/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object v0, v7

    .line 502
    sget-boolean v7, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "RingtoneManagerUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringtoneGetOriginalUri: orig_Uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    .end local v4    # "strRingPath":Ljava/lang/String;
    .end local v5    # "strComposerName":Ljava/lang/String;
    .end local v6    # "strOriginalID":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 509
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v8    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 510
    goto :goto_3

    .line 509
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 505
    :catch_0
    move-exception v3

    .line 506
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ringtoneGetOriginalUri "

    invoke-static {v4, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 507
    const/4 v0, 0x0

    .end local v3    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 509
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 512
    :cond_2
    const/4 v0, 0x0

    .line 515
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v8    # "CUST_RINGTONE_COLUMN":[Ljava/lang/String;
    :cond_3
    :goto_3
    sget-boolean v2, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneGetOriginalUri: file_uri["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] is from ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_4
    return-object v0
.end method

.method private static ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, "ringPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "strID":Ljava/lang/String;
    invoke-static {p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    const-string v2, "_id"

    const-string v3, "_data"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, "RINGTONE_COLUMN":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 458
    .local v2, "cursor":Landroid/database/Cursor;
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v7, "_id=?"

    const/4 v3, 0x1

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v8, v3

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 459
    if-eqz v2, :cond_2

    .line 461
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    .local v3, "strRingPath":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 464
    move-object v0, v3

    .line 465
    goto :goto_1

    .line 467
    .end local v3    # "strRingPath":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 471
    :cond_1
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 472
    goto :goto_3

    .line 471
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 468
    :catch_0
    move-exception v3

    .line 469
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "ringtoneGetPath"

    invoke-static {v4, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 471
    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 475
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v6    # "RINGTONE_COLUMN":[Ljava/lang/String;
    :cond_2
    :goto_3
    sget-boolean v2, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneGetPath: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] is located under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_3
    return-object v0
.end method

.method private static ringtoneIsExternal(Landroid/net/Uri;)Z
    .locals 3
    .param p0, "ringtone_uri"    # Landroid/net/Uri;

    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "isExternal":Z
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 526
    const/4 v0, 0x1

    .line 528
    :cond_0
    return v0
.end method

.method private static ringtoneIsFromDefaultPath(Ljava/lang/String;)Z
    .locals 5
    .param p0, "strRingPath"    # Ljava/lang/String;

    .line 536
    invoke-static {}, Lcom/oneplus/util/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, "externalPath":Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/oneplus/util/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 538
    sget-object v3, Lcom/oneplus/util/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/oneplus/util/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "strCheckPath":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 541
    const/4 v1, 0x1

    return v1

    .line 537
    .end local v3    # "strCheckPath":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private static ringtoneRestoreFromDefault(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provider"    # Landroid/content/ContentProviderClient;
    .param p2, "settingName"    # Ljava/lang/String;
    .param p3, "sound_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 555
    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneRestoreFromDefault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    const-string v3, "ro.config."

    .line 558
    .local v3, "RO_PREFIX":Ljava/lang/String;
    const/4 v0, 0x0

    .line 560
    .local v0, "settingKey":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v4

    .line 561
    .local v4, "type":I
    invoke-static {v1, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    .line 562
    .local v5, "actualDefaultSoundUri":Landroid/net/Uri;
    move-object/from16 v6, p3

    .line 563
    .local v6, "originalDefaultUri":Landroid/net/Uri;
    move-object v7, v6

    .line 565
    .local v7, "defaultUri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    const-string v8, "ringtone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 568
    :cond_1
    move-object v0, v2

    goto :goto_1

    .line 566
    :cond_2
    :goto_0
    const-string v0, "ringtone"

    .line 571
    .end local v0    # "settingKey":Ljava/lang/String;
    .local v8, "settingKey":Ljava/lang/String;
    :goto_1
    move-object v8, v0

    move-object/from16 v15, p1

    invoke-static {v15, v5}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 572
    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "RingtoneManagerUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringtoneRestoreFromDefault: return "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "] from Settings."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    :cond_3
    return-object v5

    .line 576
    :cond_4
    const/4 v0, 0x0

    .line 577
    .local v0, "ringerType":Ljava/lang/String;
    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_5

    .line 578
    const-string v0, "is_ringtone"

    .line 580
    :cond_5
    and-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_6

    and-int/lit8 v9, v4, 0x8

    if-eqz v9, :cond_7

    .line 581
    :cond_6
    const-string v0, "is_notification"

    .line 583
    :cond_7
    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_8

    .line 584
    const-string v0, "is_alarm"

    .line 587
    .end local v0    # "ringerType":Ljava/lang/String;
    .local v14, "ringerType":Ljava/lang/String;
    :cond_8
    move-object v14, v0

    if-eqz v14, :cond_f

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "ringtone"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 590
    .local v13, "defaultRingtoneName":Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_9

    .line 592
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .end local v0    # "fileName":Ljava/lang/String;
    .local v12, "fileName":Ljava/lang/String;
    :cond_9
    move-object v12, v0

    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "RingtoneManagerUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ringtoneRestoreFromDefault: fileName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_a
    const/4 v0, 0x0

    .line 596
    .local v0, "c":Landroid/database/Cursor;
    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v0, "=1 and Lower("

    .end local v0    # "c":Landroid/database/Cursor;
    .local v16, "c":Landroid/database/Cursor;
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_display_name"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    .line 599
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v14

    const/4 v14, 0x0

    .end local v14    # "ringerType":Ljava/lang/String;
    .local v18, "ringerType":Ljava/lang/String;
    aput-object v17, v9, v14

    const/16 v17, 0x0

    const/16 v19, 0x0

    .line 596
    move-object/from16 v20, v9

    move-object v9, v15

    move-object/from16 v21, v12

    move-object v12, v0

    .end local v12    # "fileName":Ljava/lang/String;
    .local v21, "fileName":Ljava/lang/String;
    move-object/from16 v22, v13

    move-object/from16 v13, v20

    .end local v13    # "defaultRingtoneName":Ljava/lang/String;
    .local v22, "defaultRingtoneName":Ljava/lang/String;
    move v0, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v19

    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 600
    .end local v16    # "c":Landroid/database/Cursor;
    .local v9, "c":Landroid/database/Cursor;
    if-eqz v9, :cond_10

    .line 602
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 603
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 604
    .local v10, "id":J
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    move-object v7, v0

    .line 605
    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "RingtoneManagerUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ringtoneRestoreFromDefault: ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v13, v21

    :try_start_1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v21    # "fileName":Ljava/lang/String;
    .local v13, "fileName":Ljava/lang/String;
    const-string v14, "] = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 606
    .end local v13    # "fileName":Ljava/lang/String;
    .restart local v21    # "fileName":Ljava/lang/String;
    :cond_b
    move-object/from16 v13, v21

    .end local v21    # "fileName":Ljava/lang/String;
    .restart local v13    # "fileName":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    .line 607
    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 608
    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "RingtoneManagerUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ringtoneRestoreFromDefault: Reset system default ringtone["

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "] to "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_c
    invoke-static {v1, v4, v7}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v10    # "id":J
    goto :goto_3

    .line 613
    :catch_0
    move-exception v0

    goto :goto_4

    .line 616
    .end local v13    # "fileName":Ljava/lang/String;
    .restart local v21    # "fileName":Ljava/lang/String;
    :cond_d
    move-object/from16 v13, v21

    .end local v21    # "fileName":Ljava/lang/String;
    .restart local v13    # "fileName":Ljava/lang/String;
    :cond_e
    :goto_3
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 617
    goto :goto_6

    .line 616
    .end local v13    # "fileName":Ljava/lang/String;
    .restart local v21    # "fileName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v13, v21

    .end local v21    # "fileName":Ljava/lang/String;
    .restart local v13    # "fileName":Ljava/lang/String;
    goto :goto_5

    .line 613
    .end local v13    # "fileName":Ljava/lang/String;
    .restart local v21    # "fileName":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v13, v21

    .line 614
    .end local v21    # "fileName":Ljava/lang/String;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v13    # "fileName":Ljava/lang/String;
    :goto_4
    :try_start_2
    const-string v10, "ringtoneRestoreFromDefault"

    invoke-static {v10, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_3

    .line 616
    :catchall_1
    move-exception v0

    :goto_5
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 620
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v18    # "ringerType":Ljava/lang/String;
    .end local v22    # "defaultRingtoneName":Ljava/lang/String;
    .restart local v14    # "ringerType":Ljava/lang/String;
    :cond_f
    move-object/from16 v18, v14

    .end local v14    # "ringerType":Ljava/lang/String;
    .restart local v18    # "ringerType":Ljava/lang/String;
    :cond_10
    :goto_6
    return-object v7
.end method

.method private static ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;

    .line 632
    const-string v0, "ringtone"

    const-string v1, "notification_sound"

    const-string v2, "mms_notification"

    const-string v3, "alarm_alert"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "DEVICE_RINGTONES":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 640
    .local v1, "strId":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 641
    .local v2, "cr":Landroid/content/ContentResolver;
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 642
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 643
    aget-object v4, v0, v3

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "ringtoneSetting":Ljava/lang/String;
    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 645
    aget-object v5, v0, v3

    return-object v5

    .line 642
    .end local v4    # "ringtoneSetting":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 649
    .end local v3    # "i":I
    :cond_1
    const-string v3, "ringtone"

    return-object v3
.end method

.method private static ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "provider"    # Landroid/content/ContentProviderClient;
    .param p1, "file_uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    .line 659
    .local v0, "isAlive":Z
    invoke-static {p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 660
    if-eqz v0, :cond_1

    .line 661
    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 662
    .local v1, "original_uri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    .line 663
    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "strBkpRingPath":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 666
    const-string v3, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringtoneValidation: Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 668
    .local v3, "oldfile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 669
    const-string v4, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ringtoneValidation: Removing the backup ringtone in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 672
    :cond_0
    const/4 v0, 0x0

    .line 676
    .end local v1    # "original_uri":Landroid/net/Uri;
    .end local v2    # "strBkpRingPath":Ljava/lang/String;
    .end local v3    # "oldfile":Ljava/io/File;
    :cond_1
    sget-boolean v1, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "RingtoneManagerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringtoneValidation: file_uri["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    const-string v3, "alive"

    goto :goto_0

    :cond_2
    const-string v3, "gone"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_3
    return v0
.end method

.method private static searchForFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8
    .param p0, "rootPath"    # Ljava/io/File;
    .param p1, "searchName"    # Ljava/lang/String;

    .line 704
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 707
    :cond_0
    const/4 v1, 0x0

    .line 708
    .local v1, "isFound":Z
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 709
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 710
    .local v2, "subPaths":[Ljava/io/File;
    if-eqz v2, :cond_5

    .line 711
    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    .line 712
    .local v4, "currentItem":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 713
    invoke-static {v4, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->searchForFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 715
    :cond_1
    sget-boolean v5, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v5, :cond_2

    const-string v5, "RingtoneManagerUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "searchForFile: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 717
    const/4 v1, 0x1

    .line 720
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 721
    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_5

    const-string v0, "RingtoneManagerUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchForFile: We got "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 711
    .end local v4    # "currentItem":Ljava/io/File;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v2    # "subPaths":[Ljava/io/File;
    :cond_5
    :goto_2
    goto :goto_3

    .line 727
    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 728
    const/4 v1, 0x1

    .line 731
    :cond_7
    :goto_3
    return v1

    .line 705
    .end local v1    # "isFound":Z
    :cond_8
    :goto_4
    return v0
.end method

.method public static validForProvider(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file_uri"    # Landroid/net/Uri;

    .line 113
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "client":Landroid/content/ContentProviderClient;
    const/4 v1, 0x0

    .line 114
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 115
    const/4 v1, 0x1

    .line 117
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 115
    :cond_0
    return v1

    .line 117
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 113
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    :cond_2
    :goto_1
    throw v2

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 118
    .end local v0    # "client":Landroid/content/ContentProviderClient;
    :cond_4
    goto :goto_2

    .line 117
    :catch_2
    move-exception v0

    .line 119
    :goto_2
    const-string v0, "RingtoneManagerUtils"

    const-string v1, "validForProvider: false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public static validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sound_uri"    # Landroid/net/Uri;
    .param p2, "sound_type"    # Ljava/lang/String;

    .line 135
    move-object v0, p1

    .line 136
    .local v0, "validUri":Landroid/net/Uri;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 138
    .local v1, "scheme":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 140
    .local v2, "client":Landroid/content/ContentProviderClient;
    if-nez v2, :cond_1

    .line 141
    const-string v3, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to acquire provider client. Skip validForSound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-object v0

    .line 146
    :cond_1
    :try_start_0
    sget-boolean v3, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "validForSound from ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]: sound_uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", sound_type("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_2
    const-string v3, "settings"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 149
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object p2, v3

    .line 150
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 151
    .local v3, "actualSoundUri":Landroid/net/Uri;
    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v3, v4}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v2, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v2, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 152
    sget-boolean v4, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Valid ringtone("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_3
    const-string v4, "mms_notification"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 154
    const-string v4, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Return actualSoundUri for type["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-boolean v4, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v4, :cond_4

    .line 156
    const-string v4, "RingtoneManagerUtils"

    const-string v5, " === Stack Dump Start === "

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const-string v4, "RingtoneManagerUtils"

    const-string v5, " === Stack Dump End === "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_4
    nop

    .line 212
    invoke-static {v2}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 159
    return-object v3

    .line 162
    :cond_5
    nop

    .line 212
    invoke-static {v2}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 162
    return-object v0

    .line 164
    :cond_6
    move-object v0, v3

    .line 168
    .end local v3    # "actualSoundUri":Landroid/net/Uri;
    :cond_7
    :try_start_1
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 169
    invoke-static {v2, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "ringtonePath":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 171
    invoke-static {v3}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 172
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v4, "ringFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    .line 175
    invoke-static {v2, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 176
    .local v5, "original_uri":Landroid/net/Uri;
    if-eqz v5, :cond_8

    if-eq v5, v0, :cond_8

    .line 177
    const-string v6, "RingtoneManagerUtils"

    const-string v7, "validForSound: The backup ringtone was gone. Will use the original one instead."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object v0, v5

    .line 179
    sget-boolean v6, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v6, :cond_8

    const-string v6, "RingtoneManagerUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validForSound: validUri was changed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v4    # "ringFile":Ljava/io/File;
    .end local v5    # "original_uri":Landroid/net/Uri;
    :cond_8
    invoke-static {v2, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 186
    sget-boolean v4, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "RingtoneManagerUtils"

    const-string v5, "validForSound: Sound was gone."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_9
    if-nez p2, :cond_a

    invoke-static {p0, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_a
    move-object v4, p2

    .line 188
    .local v4, "ringtone_type":Ljava/lang/String;
    :goto_1
    invoke-static {p0, v2, v4, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneRestoreFromDefault(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    .line 189
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x10

    aput v7, v5, v6

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eq p1, v0, :cond_b

    .line 190
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v5}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 191
    move-object v5, p1

    .line 193
    .local v5, "ringtone_uri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/oneplus/util/RingtoneManagerUtils$1;

    invoke-direct {v7, v2, v5}, Lcom/oneplus/util/RingtoneManagerUtils$1;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "ringtonePath":Ljava/lang/String;
    .end local v4    # "ringtone_type":Ljava/lang/String;
    .end local v5    # "ringtone_uri":Landroid/net/Uri;
    goto :goto_2

    .line 212
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 209
    :catch_0
    move-exception v3

    .line 210
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "validForSound"

    invoke-static {v4, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_b
    :goto_2
    invoke-static {v2}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    .line 213
    goto :goto_4

    .line 212
    :goto_3
    invoke-static {v2}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v3

    .line 215
    .end local v2    # "client":Landroid/content/ContentProviderClient;
    :cond_c
    :goto_4
    return-object v0
.end method
