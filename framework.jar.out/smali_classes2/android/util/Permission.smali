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

    const-string v1, "android.permission.READ_SMS"

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "android.permission.READ_CALL_LOG"

    const-string v4, "android.permission.CALL_PHONE"

    const-string v5, "android.permission.READ_CALENDAR"

    const-string v6, "android.permission.WRITE_CALENDAR"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

    const-string v0, "android.permission-group.SMS"

    const-string v1, "android.permission-group.PHONE"

    const-string v2, "android.permission-group.CALL_LOG"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sCtaMonitoredPermGroupSdk23:[Ljava/lang/String;

    const-string v0, "android.permission-group.STORAGE"

    const-string v1, "android.permission-group.SENSORS"

    const-string v2, "android.permission-group.CALENDAR"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

    const-string v0, "CUSTOM_PERMISSION_READ_MMS"

    const-string v1, "CUSTOM_PERMISSION_SEND_MMS"

    const-string v2, "CUSTOM_PERMISSION_CONTROL_WIFI"

    const-string v3, "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

    const-string v4, "CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sCustomPermissions:[Ljava/lang/String;

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

    const-string v0, "com.oneplus.card"

    const-string v1, "com.oneplus.cloud"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sReserveSystemApps:[Ljava/lang/String;

    const-string v0, "com.tencent.mobileqq"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/util/Permission;->sRecordAudioSpecialList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    iput-object v0, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/Permission;->mByPassPerm:Z

    iput-boolean v0, p0, Landroid/util/Permission;->mServiceConnected:Z

    iput-boolean v0, p0, Landroid/util/Permission;->mConditionMet:Z

    iput-boolean v0, p0, Landroid/util/Permission;->mDoubleCheck:Z

    iput-object p1, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/Permission;->mByPassPerm:Z

    const-string v1, "CTAPermission"

    const-string v2, "ApplicationContext is null, so bypass permission check!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Landroid/util/Permission;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$000(Landroid/util/Permission;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 1

    iget-object v0, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v0
.end method

.method static synthetic access$002(Landroid/util/Permission;Landroid/util/GlobalPermissionState$PermissionState;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 0

    iput-object p1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object p1
.end method

.method static synthetic access$100(Landroid/util/Permission;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/Permission;->letGo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/util/Permission;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    return-object v0
.end method

.method private cleanUpHandler()V
    .locals 1

    iget-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;
    .locals 6

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_pkg_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const-string/jumbo v2, "wait for control service feedback custom permission state"

    invoke-direct {p0, v2}, Landroid/util/Permission;->waitHere(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    return-object v2
.end method

.method public static intentRequiresPermReceiveSMS(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->sIntentRequiresPermReceiveSMS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTADefaultGrantedForSDK23(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->sDefaultGrantedPermSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTADefaultGrantedGroupForSDK23(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->sDefaultGrantedPermGroupSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTAMonitoredPermission(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Landroid/util/Permission;->sCtaMonitoredPermissions:[Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/hardware/camera2/utils/ArrayUtils;->getArrayIndex([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

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

    const-string v0, "CUSTOM_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/util/Permission;->sCtaMonitoredPermissionsSdk23:[Ljava/lang/String;

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

    :goto_1
    return v0
.end method

.method public static isCTAPermGroupForSDK23(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->sCtaMonitoredPermGroupSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTAResetTargetSDK23(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->sCtaResetTargetsSdk23:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isReserveSystemApps(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->sReserveSystemApps:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSpecialHandleForRecordAudio(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Landroid/util/Permission;->sRecordAudioSpecialList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

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

    iget-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/util/Permission;->mConditionMet:Z

    iget-object v1, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    const-string v1, "CTAPermission"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[API] notified beacuase "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private postPermissionRequestMessage()V
    .locals 6

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_perm"

    iget-object v3, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_pkg_name"

    iget-object v3, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_is_double_check"

    iget-boolean v3, p0, Landroid/util/Permission;->mDoubleCheck:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    iget-object v2, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CTAPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private prepareClientMessenger()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IPChandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/util/Permission$IncomingHandler;

    iget-object v1, p0, Landroid/util/Permission;->handlerThread:Landroid/os/HandlerThread;

    invoke-direct {v0, p0, v1}, Landroid/util/Permission$IncomingHandler;-><init>(Landroid/util/Permission;Landroid/os/HandlerThread;)V

    iput-object v0, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/util/Permission;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/util/Permission;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private waitHere(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getInstance()Lcom/oneplus/ctapermission/CTAPermissionManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/ctapermission/CTAPermissionManager;->isRequestPermission(Z)V

    :goto_0
    iget-boolean v2, p0, Landroid/util/Permission;->mConditionMet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

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

    iget-object v2, p0, Landroid/util/Permission;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v2

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

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/ctapermission/CTAPermissionManager;->isRequestPermission(Z)V

    iput-boolean v2, p0, Landroid/util/Permission;->mConditionMet:Z

    monitor-exit v0

    return-void

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

    invoke-static {}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getInstance()Lcom/oneplus/ctapermission/CTAPermissionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v2

    iput-object v2, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    iget-object v3, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "CTAPermission"

    const-string v4, "[API] permission service is not ready, wait for it!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-wide/16 v3, 0x1e

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    invoke-virtual {v0, v2}, Lcom/oneplus/ctapermission/CTAPermissionManager;->getPermissionService(I)Landroid/os/Messenger;

    move-result-object v3

    iput-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    iget-object v3, p0, Landroid/util/Permission;->mPermissionRequetService:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/util/Permission;->mPermissionControlService:Landroid/os/Messenger;

    if-eqz v3, :cond_1

    nop

    const-string v1, "CTAPermission"

    const-string v2, "[API] permission service is ready"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public requestPermissionAuto(Ljava/lang/String;)Z
    .locals 7

    iput-object p1, p0, Landroid/util/Permission;->mRequestPermission:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/util/Permission;->mByPassPerm:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const-string v2, "com.android.cts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    iget-object v4, p0, Landroid/util/Permission;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object v3, v4

    iget v4, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    nop

    const/16 v4, 0x16

    if-le v0, v4, :cond_2

    invoke-static {p1}, Landroid/util/Permission;->isCTAPermForSDK23(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, v3}, Landroid/util/Permission;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/util/Permission;->isReserveSystemApps(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/util/Permission;->makeSurePermissionServiceRunning()V

    invoke-direct {p0}, Landroid/util/Permission;->prepareClientMessenger()V

    iget-object v4, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v4, p1}, Landroid/util/Permission;->getPermssionState(Ljava/lang/String;Ljava/lang/String;)Landroid/util/GlobalPermissionState$PermissionState;

    move-result-object v4

    if-nez v4, :cond_4

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

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v1

    :cond_4
    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v5, :cond_5

    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v5, :cond_5

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

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v1

    :cond_5
    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    const/4 v6, 0x0

    if-nez v5, :cond_7

    iget-boolean v5, v4, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v5, :cond_7

    const-string v5, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/util/Permission;->mPackageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/util/Permission;->isSpecialHandleForRecordAudio(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x17

    if-ge v0, v5, :cond_6

    iput-boolean v1, p0, Landroid/util/Permission;->mDoubleCheck:Z

    goto :goto_0

    :cond_6
    const-string v1, "CTAPermission"

    const-string v2, "[API] perm is denied and fixed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v6

    :cond_7
    :goto_0
    iput-object v2, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    invoke-direct {p0}, Landroid/util/Permission;->postPermissionRequestMessage()V

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

    const-string v2, "CTAPermission"

    const-string v5, "[API] wait finish"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v2, v2, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-eqz v2, :cond_8

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

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v1

    :cond_8
    iget-object v1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v1, v1, Landroid/util/GlobalPermissionState$PermissionState;->isGranted:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Landroid/util/Permission;->mPermissionState:Landroid/util/GlobalPermissionState$PermissionState;

    iget-boolean v1, v1, Landroid/util/GlobalPermissionState$PermissionState;->isUserFixed:Z

    if-eqz v1, :cond_9

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

    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v6

    :cond_9
    invoke-direct {p0}, Landroid/util/Permission;->cleanUpHandler()V

    return v6

    :cond_a
    :goto_1
    return v1

    :catch_0
    move-exception v2

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

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v1
.end method
