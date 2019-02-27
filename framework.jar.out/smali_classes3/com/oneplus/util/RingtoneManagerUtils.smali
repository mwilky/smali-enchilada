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

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    const-string v0, "persist.debug.ringtone.all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    const/4 v0, -0x1

    sput v0, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Lcom/oneplus/util/RingtoneManagerUtils;->isFlagOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "/op1"

    new-instance v1, Ljava/io/File;

    const-string v2, "/op1"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cust_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/util/RingtoneManagerUtils;->searchForFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

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

    :cond_0
    return-object v2

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

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

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

    :cond_0
    const/4 v1, 0x0

    invoke-static {p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

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

    :cond_3
    :goto_0
    return v1
.end method

.method private static getExternalPath()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isCustFlagOn()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "ParamService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/oem/os/IParamService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IParamService;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Lcom/oem/os/IParamService;->getParamIntSYNC(I)I

    move-result v5

    if-eqz v5, :cond_1

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

    :cond_0
    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RingtoneManagerUtils"

    const-string v3, "isCustFlagOn error:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    :cond_2
    return v0
.end method

.method private static isFlagOn(Landroid/content/Context;)Z
    .locals 6

    sget v0, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const-string v0, "MediaScanBuild"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "deviceCustomflag"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    sget v4, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    if-ne v4, v3, :cond_1

    invoke-static {}, Lcom/oneplus/util/RingtoneManagerUtils;->isCustFlagOn()Z

    move-result v3

    if-eqz v3, :cond_0

    sput v1, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    goto :goto_0

    :cond_0
    sput v2, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "deviceCustomflag"

    sget v5, Lcom/oneplus/util/RingtoneManagerUtils;->sCustFlagVal:I

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

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

    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RingtoneManagerUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

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

    :goto_0
    return-void
.end method

.method private static printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "RingtoneManagerUtils"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

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

    :goto_0
    return-void
.end method

.method private static ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

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

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

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

    :cond_3
    return v0
.end method

.method private static ringtoneCheckMimeType(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    move-object v1, v3

    const-string v3, "r"

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v5, "mime"

    invoke-virtual {v4, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

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

    if-eqz v5, :cond_0

    const-string v6, "audio/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    move-object v0, v5

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "ringtoneCheckMimeType"

    invoke-static {v4, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-object v0

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_3
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private static ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "r"

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProviderClient;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-nez v0, :cond_0

    :goto_0
    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "ringtoneCheckValid error"

    invoke-static {v3, v2}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-nez v0, :cond_0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "ringtoneCheckValid File Not Found"

    invoke-static {v3, v2}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-nez v0, :cond_0

    goto :goto_0

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

    goto :goto_4

    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckFileExists(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    :cond_2
    throw v2

    :cond_3
    :goto_4
    return v0
.end method

.method public static ringtoneCheckValid(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v1}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->validForProvider(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

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

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {v1, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v2

    :goto_0
    invoke-static {v1}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "ringtoneCheckValid"

    invoke-static {v3, v2}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-static {v1}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v2

    :cond_1
    :goto_2
    return v0
.end method

.method public static ringtoneCopyFrom3rdParty(Landroid/content/Context;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 16

    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-static {}, Lcom/oneplus/util/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v6, "RingtoneManagerUtils"

    const-string v7, "Fail to acquire provider client. Skip the validating function in ringtoneCopyFrom3rdParty."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

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

    const/4 v0, 0x2

    :cond_2
    move v13, v0

    const-string v0, "_data"

    const-string v7, "title"

    const-string v8, "_display_name"

    const-string v9, "mime_type"

    filled-new-array {v0, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    const/4 v0, 0x0

    move-object v15, v0

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

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_data"

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "title"

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "_display_name"

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v15, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mime_type"

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v15, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

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

    :cond_3
    const-string v10, "audio/*"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v5, v1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckMimeType(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v10

    :cond_4
    nop

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "ringtoneCopyFrom3rdParty"

    invoke-static {v6, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v1

    :cond_5
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    nop

    return-object v3

    :goto_0
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v5}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v0
.end method

.method private static ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_id"

    const-string v4, "_data"

    const-string v5, "composer"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

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

    if-eqz v2, :cond_2

    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "_data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "composer"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    const-string v6, "from3rdParty_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

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

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "ringtoneGetOriginalUri "

    invoke-static {v4, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :cond_2
    const/4 v0, 0x0

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

    :cond_4
    return-object v0
.end method

.method private static ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "_id"

    const-string v3, "_data"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

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

    if-eqz v2, :cond_2

    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "ringtoneGetPath"

    invoke-static {v4, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionTinyLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

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

    :cond_3
    return-object v0
.end method

.method private static ringtoneIsExternal(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static ringtoneIsFromDefaultPath(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lcom/oneplus/util/RingtoneManagerUtils;->getExternalPath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lcom/oneplus/util/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/oneplus/util/RingtoneManagerUtils;->RINGPATH_FROM_TYPE:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

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

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static ringtoneRestoreFromDefault(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

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

    :cond_0
    const-string v3, "ro.config."

    const/4 v0, 0x0

    invoke-static/range {p2 .. p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v4

    invoke-static {v1, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v6, p3

    move-object v7, v6

    if-eqz v2, :cond_2

    const-string v8, "ringtone"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "ringtone"

    :goto_1
    move-object v8, v0

    move-object/from16 v15, p1

    invoke-static {v15, v5}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_4

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

    :cond_3
    return-object v5

    :cond_4
    const/4 v0, 0x0

    and-int/lit8 v9, v4, 0x1

    if-eqz v9, :cond_5

    const-string v0, "is_ringtone"

    :cond_5
    and-int/lit8 v9, v4, 0x2

    if-nez v9, :cond_6

    and-int/lit8 v9, v4, 0x8

    if-eqz v9, :cond_7

    :cond_6
    const-string v0, "is_notification"

    :cond_7
    and-int/lit8 v9, v4, 0x4

    if-eqz v9, :cond_8

    const-string v0, "is_alarm"

    :cond_8
    move-object v14, v0

    if-eqz v14, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "ringtone"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v8}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmCustSounds(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :cond_a
    const/4 v0, 0x0

    sget-object v10, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_id"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const-string v0, "=1 and Lower("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_display_name"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")=?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v14

    const/4 v14, 0x0

    aput-object v17, v9, v14

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v9

    move-object v9, v15

    move-object/from16 v21, v12

    move-object v12, v0

    move-object/from16 v22, v13

    move-object/from16 v13, v20

    move v0, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v19

    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_10

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    move-object v7, v0

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

    const-string v14, "] = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    move-object/from16 v13, v21

    :goto_2
    if-eqz v6, :cond_e

    if-eqz v5, :cond_e

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

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

    :cond_c
    invoke-static {v1, v4, v7}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_d
    move-object/from16 v13, v21

    :cond_e
    :goto_3
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v13, v21

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v13, v21

    :goto_4
    :try_start_2
    const-string v10, "ringtoneRestoreFromDefault"

    invoke-static {v10, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_5
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_f
    move-object/from16 v18, v14

    :cond_10
    :goto_6
    return-object v7
.end method

.method private static ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    const-string v0, "ringtone"

    const-string v1, "notification_sound"

    const-string v2, "mms_notification"

    const-string v3, "alarm_alert"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

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

    aget-object v5, v0, v3

    return-object v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "ringtone"

    return-object v3
.end method

.method private static ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v0

    invoke-static {p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsExternal(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    invoke-static {p0, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneCheckValid(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ringtoneValidation: Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "RingtoneManagerUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ringtoneValidation: Removing the backup ringtone in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v0, 0x0

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

    :cond_3
    return v0
.end method

.method private static searchForFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_5

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4, p1}, Lcom/oneplus/util/RingtoneManagerUtils;->searchForFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

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

    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

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

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    :cond_7
    :goto_3
    return v1

    :cond_8
    :goto_4
    return v0
.end method

.method public static validForProvider(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    return v1

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

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

    :cond_4
    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    const-string v0, "RingtoneManagerUtils"

    const-string v1, "validForProvider: false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static validForSound(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 9

    move-object v0, p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_c

    if-eqz p0, :cond_c

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "RingtoneManagerUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to acquire provider client. Skip validForSound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

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

    :cond_2
    const-string v3, "settings"

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    move-object p2, v3

    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v3

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

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

    :cond_3
    const-string v4, "mms_notification"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

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

    sget-boolean v4, Lcom/oneplus/util/RingtoneManagerUtils;->DBG_LOGV:Z

    if-eqz v4, :cond_4

    const-string v4, "RingtoneManagerUtils"

    const-string v5, " === Stack Dump Start === "

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, "RingtoneManagerUtils"

    const-string v5, " === Stack Dump End === "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    nop

    invoke-static {v2}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v3

    :cond_5
    nop

    invoke-static {v2}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    return-object v0

    :cond_6
    move-object v0, v3

    :cond_7
    :try_start_1
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static {v2, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetPath(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneIsFromDefaultPath(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v2, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneGetOriginalUri(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_8

    if-eq v5, v0, :cond_8

    const-string v6, "RingtoneManagerUtils"

    const-string v7, "validForSound: The backup ringtone was gone. Will use the original one instead."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

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

    :cond_8
    invoke-static {v2, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneValidation(Landroid/content/ContentProviderClient;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-boolean v4, Lcom/oneplus/util/RingtoneManagerUtils;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "RingtoneManagerUtils"

    const-string v5, "validForSound: Sound was gone."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-nez p2, :cond_a

    invoke-static {p0, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneTypeCheck(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_a
    move-object v4, p2

    :goto_1
    invoke-static {p0, v2, v4, v0}, Lcom/oneplus/util/RingtoneManagerUtils;->ringtoneRestoreFromDefault(Landroid/content/Context;Landroid/content/ContentProviderClient;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x10

    aput v7, v5, v6

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_b

    if-eq p1, v0, :cond_b

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1, v5}, Lcom/oneplus/util/RingtoneManagerUtils;->confirmExternalPermission(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v5, p1

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/oneplus/util/RingtoneManagerUtils$1;

    invoke-direct {v7, v2, v5}, Lcom/oneplus/util/RingtoneManagerUtils$1;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "validForSound"

    invoke-static {v4, v3}, Lcom/oneplus/util/RingtoneManagerUtils;->printExceptionLogs(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    :goto_2
    invoke-static {v2}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    goto :goto_4

    :goto_3
    invoke-static {v2}, Landroid/content/ContentProviderClient;->releaseQuietly(Landroid/content/ContentProviderClient;)V

    throw v3

    :cond_c
    :goto_4
    return-object v0
.end method
