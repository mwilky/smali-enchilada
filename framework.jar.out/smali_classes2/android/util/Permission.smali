.class public Landroid/util/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Permission$IncomingHandler;
    }
.end annotation


# static fields
.field public static final BLOCK_CALLER:Z = true

.field public static final CUSTOM_PERMISSION_CONTROL_BLUETOOTH:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

.field public static final CUSTOM_PERMISSION_CONTROL_DATA:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_DATA"

.field public static final CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS"

.field public static final CUSTOM_PERMISSION_CONTROL_WIFI:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_WIFI"

.field public static final CUSTOM_PERMISSION_READ_MMS:Ljava/lang/String; = "CUSTOM_PERMISSION_READ_MMS"

.field public static final CUSTOM_PERMISSION_SEND_MMS:Ljava/lang/String; = "CUSTOM_PERMISSION_SEND_MMS"

.field public static final MSG_BIND_SERVICE:I = 0x3e7

.field public static final MSG_GET_ALL_PERMISSION_STATES:I = 0x3

.field public static final MSG_GET_PACKAGE_PERMISSION_STATES:I = 0x5

.field public static final MSG_PERMISSION_DONE:I = 0x5

.field public static final MSG_REGISTER_CLIENT:I = 0x1

.field public static final MSG_REPLY_ALL_PERMISSION_STATES:I = 0x4

.field public static final MSG_REPLY_PACKAGE_PERMISSION_STATES:I = 0x6

.field public static final MSG_REPLY_REQUSET_DONE:I = 0x4

.field public static final MSG_REPLY_UPDATE_RESULT:I = 0x2

.field public static final MSG_REQUEST_PERMISSION:I = 0x3

.field public static final MSG_SET_USER_DECISION:I = 0x1

.field public static final MSG_UNREGISTER_CLIENT:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CTAPermission"

.field public static final sCtaMonitoredPermGroupSdk23:[Ljava/lang/String;

.field public static final sCtaMonitoredPermissions:[Ljava/lang/String;

.field public static final sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

.field public static final sCtaResetTargetsSdk23:[Ljava/lang/String;

.field public static final sCustomPermissions:[Ljava/lang/String;

.field public static final sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

.field public static final sDefaultGrantedPermSdk23:[Ljava/lang/String;

.field public static final sIntentRequiresPermReceiveSMS:[Ljava/lang/String;

.field private static final sRecordAudioSpecialList:[Ljava/lang/String;

.field public static final sReserveSystemApps:[Ljava/lang/String;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field mAm:Landroid/app/ActivityManager;

.field private mByPassPerm:Z

.field private mConditionMet:Z

.field mContext:Landroid/content/Context;

.field private mDoubleCheck:Z

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mMessenger:Landroid/os/Messenger;

.field private mPackageName:Ljava/lang/String;

.field mPermissionControlService:Landroid/os/Messenger;

.field mPermissionRequetService:Landroid/os/Messenger;

.field private mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

.field private mRequestPermission:Ljava/lang/String;

.field private mServiceConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 73
    const-string v0, "android.permission.READ_SMS"

    const-string v1, "android.permission.SEND_SMS"

    const-string v2, "android.permission.READ_CONTACTS"

    const-string v3, "android.permission.READ_CALL_LOG"

    const-string v4, "android.permission.CALL_PHONE"

    const-string v5, "android.permission.CAMERA"

    const-string v6, "android.permission.RECORD_AUDIO"

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    const-string v8, "android.permission.READ_CALENDAR"

    const-string v9, "android.permission.WRITE_CALENDAR"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermissions:[Ljava/lang/String;

    .line 87
    const-string v1, "android.permission.READ_SMS"

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "android.permission.READ_CALL_LOG"

    const-string v4, "android.permission.CALL_PHONE"

    const-string v5, "android.permission.READ_CALENDAR"

    const-string v6, "android.permission.WRITE_CALENDAR"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

    .line 97
    const-string v0, "android.permission-group.SMS"

    const-string v1, "android.permission-group.PHONE"

    const-string v2, "android.permission-group.CALL_LOG"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermGroupSdk23:[Ljava/lang/String;

    .line 104
    const-string v0, "android.permission-group.STORAGE"

    const-string v1, "android.permission-group.SENSORS"

    const-string v2, "android.permission-group.CALENDAR"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

    .line 111
    const-string v0, "CUSTOM_PERMISSION_READ_MMS"

    const-string v1, "CUSTOM_PERMISSION_SEND_MMS"

    const-string v2, "CUSTOM_PERMISSION_CONTROL_WIFI"

    const-string v3, "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

    const-string v4, "CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sCustomPermissions:[Ljava/lang/String;

    .line 120
    const-string v1, "android.permission.CAMERA"

    const-string v2, "android.permission.RECORD_AUDIO"

    const-string v3, "android.permission.READ_CONTACTS"

    const-string v4, "android.permission.WRITE_CONTACTS"

    const-string v5, "android.permission.GET_ACCOUNTS"

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sCtaResetTargetsSdk23:[Ljava/lang/String;

    .line 130
    const-string v1, "android.permission.READ_CALENDAR"

    const-string v2, "android.permission.WRITE_CALENDAR"

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.CALL_PHONE"

    const-string v5, "android.permission.READ_CALL_LOG"

    const-string v6, "android.permission.WRITE_CALL_LOG"

    const-string v7, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const-string v8, "android.permission.USE_SIP"

    const-string v9, "android.permission.PROCESS_OUTGOING_CALLS"

    const-string v10, "android.permission.BODY_SENSORS"

    const-string v11, "android.permission.SEND_SMS"

    const-string v12, "android.permission.RECEIVE_SMS"

    const-string v13, "android.permission.READ_SMS"

    const-string v14, "android.permission.RECEIVE_WAP_PUSH"

    const-string v15, "android.permission.RECEIVE_MMS"

    const-string v16, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v17, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sDefaultGrantedPermSdk23:[Ljava/lang/String;

    .line 150
    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    const-string v4, "android.provider.Telephony.SMS_CB_RECEIVED"

    const-string v5, "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

    const-string v6, "android.provider.Telephony.SIM_FULL"

    const-string v7, "android.provider.Telephony.SMS_REJECTED"

    const-string v8, "android.intent.action.DATA_SMS_RECEIVED"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sIntentRequiresPermReceiveSMS:[Ljava/lang/String;

    .line 161
    const-string v0, "com.oneplus.card"

    const-string v1, "com.oneplus.cloud"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sReserveSystemApps:[Ljava/lang/String;

    .line 169
    const-string v0, "com.tencent.mobileqq"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sRecordAudioSpecialList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    .line 178
    iput-object v0, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    .line 179
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/Permission;->mByPassPerm:Z

    .line 185
    iput-boolean v0, p0, Landroid/util/Permission;->mServiceConnected:Z

    .line 186
    iput-boolean v0, p0, Landroid/util/Permission;->mConditionMet:Z

    .line 191
    iput-boolean v0, p0, Landroid/util/Permission;->mDoubleCheck:Z

    .line 195
    iput-object p1, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/Permission;->mByPassPerm:Z

    .line 207
    const-string v1, "CTAPermission"

    const-string v2, "ApplicationContext is null, so bypass permission check!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Landroid/util/Permission;->mAm:Landroid/app/ActivityManager;

    .line 211
    return-void
.end method

.method static synthetic access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 1
    .param p0, "x0"    # Landroid/util/Permission;

    .line 42
    iget-object v0, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v0
.end method

.method static synthetic access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 0
    .param p0, "x0"    # Landroid/util/Permission;
    .param p1, "x1"    # Landroid/util/GlobalPermissionState$PermissionState;

    .line 42
    iput-object p1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object p1
.end method

.method static synthetic access$100(Landroid/util/Permission;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/util/Permission;
    .param p1, "x1"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0, p1}, Landroid/util/Permission;->letGo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/util/Permission;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/util/Permission;

    .line 42
    iget-object v0, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    return-object v0
.end method

.method private cleanUpHandler()V
    .locals 1

    .line 223
    iget-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    .line 227
    :cond_0
    return-void
.end method

.method private getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "permission"    # Ljava/lang/String;

    .line 403
    nop

    .line 404
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 403
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 405
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 406
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 407
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "key_pkg_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 410
    :try_start_0
    iget-object v2, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    goto :goto_0

    .line 411
    :catch_0
    move-exception v2

    .line 412
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 417
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    const-string/jumbo v2, "wait for control service feedback custom permission state"

    invoke-direct {p0, v2}, Landroid/util/Permission;->waitHere(Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v2
.end method

.method public static intentRequiresPermReceiveSMS(Ljava/lang/String;)Z
    .locals 1
    .param p0, "intent"    # Ljava/lang/String;

    .line 292
    sget-object v0, Landroid/util/Permission;->sIntentRequiresPermReceiveSMS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTADefaultGrantedForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "perm"    # Ljava/lang/String;

    .line 280
    sget-object v0, Landroid/util/Permission;->sDefaultGrantedPermSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTADefaultGrantedGroupForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .line 272
    sget-object v0, Landroid/util/Permission;->sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTAMonitoredPermission(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 231
    sget-object v0, Landroid/util/Permission;->sCtaMonitoredPermissions:[Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 233
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isCTAPermForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .line 263
    const-string v0, "CUSTOM_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/Permission;->sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

    .line 264
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 263
    :goto_1
    return v0
.end method

.method public static isCTAPermGroupForSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "group"    # Ljava/lang/String;

    .line 268
    sget-object v0, Landroid/util/Permission;->sCtaMonitoredPermGroupSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTAResetTargetSDK23(Ljava/lang/String;)Z
    .locals 1
    .param p0, "perm"    # Ljava/lang/String;

    .line 276
    sget-object v0, Landroid/util/Permission;->sCtaResetTargetsSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isReserveSystemApps(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 288
    sget-object v0, Landroid/util/Permission;->sReserveSystemApps:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSpecialHandleForRecordAudio(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 284
    sget-object v0, Landroid/util/Permission;->sRecordAudioSpecialList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 393
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private letGo(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 462
    iget-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 463
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/util/Permission;->mConditionMet:Z

    .line 464
    iget-object v1, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 465
    const-string v1, "CTAPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] notified beacuase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    monitor-exit v0

    .line 467
    return-void

    .line 466
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private postPermissionRequestMessage()V
    .locals 6

    .line 424
    nop

    .line 425
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 424
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 426
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 427
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 428
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "key_perm"

    iget-object v3, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v2, "key_pkg_name"

    iget-object v3, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v2, "key_is_double_check"

    iget-boolean v3, p0, Landroid/util/Permission;->mDoubleCheck:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 431
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 433
    :try_start_0
    iget-object v2, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    goto :goto_0

    .line 434
    :catch_0
    move-exception v2

    .line 435
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 438
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private prepareClientMessenger()V
    .locals 2

    .line 215
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IPChandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    .line 216
    iget-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 217
    new-instance v0, Landroid/util/Permission$IncomingHandler;

    iget-object v1, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, p0, v1}, Landroid/util/Permission$IncomingHandler;-><init>(Landroid/util/Permission;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    .line 218
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    .line 220
    return-void
.end method

.method private waitHere(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 441
    iget-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    invoke-static {}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getInstance()Lcom/oneplus/ctapermission/CTAPermissionManager;

    move-result-object v1

    .line 444
    .local v1, "ctaPm":Lcom/oneplus/ctapermission/CTAPermissionManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/ctapermission/CTAPermissionManager;->isRequestPermission(Z)V

    .line 445
    :goto_0
    iget-boolean v2, p0, Landroid/util/Permission;->mConditionMet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 447
    :try_start_1
    const-string v2, "CTAPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[API] start wait for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v2, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :goto_1
    goto :goto_0

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[API] got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 455
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/ctapermission/CTAPermissionManager;->isRequestPermission(Z)V

    .line 457
    iput-boolean v2, p0, Landroid/util/Permission;->mConditionMet:Z

    .line 458
    .end local v1    # "ctaPm":Lcom/oneplus/ctapermission/CTAPermissionManager;
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method makeSurePermissionServiceRunning()V
    .locals 5

    .line 239
    invoke-static {}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getInstance()Lcom/oneplus/ctapermission/CTAPermissionManager;

    move-result-object v0

    .line 240
    .local v0, "ctaPm":Lcom/oneplus/ctapermission/CTAPermissionManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    .line 241
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    .line 243
    iget-object v3, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-nez v3, :cond_2

    .line 244
    :cond_0
    const-string v3, "CTAPermission"

    const-string v4, "[API] permission service is not ready, wait for it!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    const-wide/16 v3, 0x1e

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 249
    :catch_0
    move-exception v3

    .line 252
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    .line 253
    invoke-virtual {v0, v2}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    .line 254
    iget-object v3, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    .line 255
    nop

    .line 258
    const-string v1, "CTAPermission"

    const-string v2, "[API] permission service is ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_2
    return-void
.end method

.method public requestPermissionAuto(Ljava/lang/String;)Z
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;

    .line 303
    iput-object p1, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    .line 306
    iget-boolean v0, p0, Landroid/util/Permission;->mByPassPerm:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 307
    return v1

    .line 311
    :cond_0
    iget-object v0, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const-string v2, "com.android.cts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    return v1

    .line 317
    :cond_1
    const/4 v0, -0x1

    .line 318
    .local v0, "targetSdk":I
    const/4 v2, 0x0

    move-object v3, v2

    .line 320
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object v3, v4

    .line 321
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    .line 326
    nop

    .line 328
    const/16 v4, 0x16

    if-le v0, v4, :cond_2

    invoke-static {p1}, Landroid/util/Permission;->isCTAPermForSDK23(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 329
    return v1

    .line 333
    :cond_2
    invoke-direct {p0, v3}, Landroid/util/Permission;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Permission;->isReserveSystemApps(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    .line 338
    :cond_3
    invoke-virtual {p0}, Landroid/util/Permission;->makeSurePermissionServiceRunning()V

    .line 340
    invoke-direct {p0}, Landroid/util/Permission;->prepareClientMessenger()V

    .line 343
    iget-object v4, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Landroid/util/Permission;->getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v4

    .line 344
    .local v4, "ps":Landroid/util/GlobalPermissionState$PermissionState;
    if-nez v4, :cond_4

    .line 345
    const-string v2, "CTAPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[API] can\'t find perm state of pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 347
    return v1

    .line 348
    :cond_4
    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v5, :cond_5

    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v5, :cond_5

    .line 349
    const-string v2, "CTAPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[API] perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is granted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 351
    return v1

    .line 352
    :cond_5
    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    const/4 v6, 0x0

    if-nez v5, :cond_7

    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v5, :cond_7

    .line 353
    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    .line 354
    invoke-static {v5}, Landroid/util/Permission;->isSpecialHandleForRecordAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x17

    if-ge v0, v5, :cond_6

    .line 356
    iput-boolean v1, p0, Landroid/util/Permission;->mDoubleCheck:Z

    goto :goto_0

    .line 358
    :cond_6
    const-string v1, "CTAPermission"

    const-string v2, "[API] perm is denied and fixed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 360
    return v6

    .line 363
    :cond_7
    :goto_0
    iput-object v2, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    .line 366
    invoke-direct {p0}, Landroid/util/Permission;->postPermissionRequestMessage()V

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wait for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " requesting "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/util/Permission;->waitHere(Ljava/lang/String;)V

    .line 371
    const-string v2, "CTAPermission"

    const-string v5, "[API] wait finish"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v2, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    if-eqz v2, :cond_9

    .line 375
    iget-object v2, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v2, v2, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v2, :cond_8

    .line 376
    const-string v2, "CTAPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-object v6, v6, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is granted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 378
    return v1

    .line 379
    :cond_8
    iget-object v1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v1, v1, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v1, v1, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v1, :cond_9

    .line 380
    const-string v1, "CTAPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "perm is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-object v5, v5, Landroid/util/GlobalPermissionState$PermissionState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "denied, and fixed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 382
    return v6

    .line 387
    :cond_9
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    .line 388
    return v6

    .line 334
    .end local v4    # "ps":Landroid/util/GlobalPermissionState$PermissionState;
    :cond_a
    :goto_1
    return v1

    .line 322
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "CTAPermission"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get sdk versiion fail, pkgName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 325
    return v1
.end method
