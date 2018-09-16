.class Lcom/android/server/TelephonyRegistry;
.super Lcom/android/internal/telephony/ITelephonyRegistry$Stub;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;,
        Lcom/android/server/TelephonyRegistry$Record;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DBG_LOC:Z = false

.field static final ENFORCE_COARSE_LOCATION_PERMISSION_MASK:I = 0x410

.field static final ENFORCE_PHONE_STATE_PERMISSION_MASK:I = 0x400c

.field private static final MSG_UPDATE_DEFAULT_SUB:I = 0x2

.field private static final MSG_USER_SWITCHED:I = 0x1

.field static final PRECISE_PHONE_STATE_PERMISSION_MASK:I = 0x1800

.field private static final TAG:Ljava/lang/String; = "TelephonyRegistry"

.field private static final VDBG:Z = false


# instance fields
.field private hasNotifySubscriptionInfoChangedOccurred:Z

.field private mAnomalyStatus:[I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mBackgroundCallState:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallForwarding:[Z

.field private mCallIncomingNumber:[Ljava/lang/String;

.field private mCallState:[I

.field private mCarrierNetworkChangeState:Z

.field private mCellInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCellLocation:[Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;

.field private mDataActivationState:[I

.field private mDataActivity:[I

.field private mDataConnectionNetworkType:[I

.field private mDataConnectionState:[I

.field private mDefaultPhoneId:I

.field private mDefaultSubId:I

.field private mForegroundCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private mImsCapabilityStatus:[[Z

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mMessageWaiting:[Z

.field private mNumPhones:I

.field private mOtaspMode:I

.field private mPhysicalChannelConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreciseCallState:Landroid/telephony/PreciseCallState;

.field private mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/TelephonyRegistry$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingCallState:I

.field private mServiceState:[Landroid/telephony/ServiceState;

.field private mSignalStrength:[Landroid/telephony/SignalStrength;

.field private mUserMobileDataState:[Z

.field private mVoLteServiceState:Landroid/telephony/VoLteServiceState;

.field private mVoiceActivationState:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 321
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    .line 181
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 183
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 187
    new-instance v3, Landroid/telephony/VoLteServiceState;

    invoke-direct {v3}, Landroid/telephony/VoLteServiceState;-><init>()V

    iput-object v3, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 189
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    .line 191
    iput v3, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    .line 193
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    .line 195
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 197
    iput v0, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    .line 199
    new-instance v4, Landroid/telephony/PreciseCallState;

    invoke-direct {v4}, Landroid/telephony/PreciseCallState;-><init>()V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 201
    iput-boolean v0, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 203
    new-instance v4, Landroid/util/LocalLog;

    const/16 v5, 0x64

    invoke-direct {v4, v5}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    .line 205
    const/4 v4, 0x2

    new-array v5, v4, [[Z

    const/4 v6, 0x6

    new-array v7, v6, [Z

    fill-array-data v7, :array_0

    aput-object v7, v5, v0

    new-array v6, v6, [Z

    fill-array-data v6, :array_1

    aput-object v6, v5, v1

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    .line 207
    new-array v1, v4, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAnomalyStatus:[I

    .line 210
    new-instance v1, Landroid/telephony/PreciseDataConnectionState;

    invoke-direct {v1}, Landroid/telephony/PreciseDataConnectionState;-><init>()V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 229
    new-instance v1, Lcom/android/server/TelephonyRegistry$1;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$1;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    .line 284
    new-instance v1, Lcom/android/server/TelephonyRegistry$2;

    invoke-direct {v1, p0}, Lcom/android/server/TelephonyRegistry$2;-><init>(Lcom/android/server/TelephonyRegistry;)V

    iput-object v1, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    invoke-static {}, Landroid/telephony/CellLocation;->getEmpty()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 324
    .local v1, "location":Landroid/telephony/CellLocation;
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    .line 325
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 327
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 329
    .local v4, "numPhones":I
    iput v4, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    .line 330
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    .line 331
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    .line 332
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    .line 333
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    .line 334
    new-array v5, v4, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    .line 335
    new-array v5, v4, [Landroid/telephony/ServiceState;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    .line 336
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    .line 337
    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    .line 338
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    .line 339
    new-array v5, v4, [Landroid/telephony/SignalStrength;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    .line 340
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    .line 341
    new-array v5, v4, [Z

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    .line 342
    new-array v5, v4, [Landroid/os/Bundle;

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    .line 343
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    .line 344
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    .line 345
    move v5, v0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_0

    .line 346
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput v0, v6, v5

    .line 347
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput v0, v6, v5

    .line 348
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v3, v6, v5

    .line 349
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput v0, v6, v5

    .line 350
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput v0, v6, v5

    .line 351
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    const-string v7, ""

    aput-object v7, v6, v5

    .line 352
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    new-instance v7, Landroid/telephony/ServiceState;

    invoke-direct {v7}, Landroid/telephony/ServiceState;-><init>()V

    aput-object v7, v6, v5

    .line 353
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    new-instance v7, Landroid/telephony/SignalStrength;

    invoke-direct {v7}, Landroid/telephony/SignalStrength;-><init>()V

    aput-object v7, v6, v5

    .line 354
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aput-boolean v0, v6, v5

    .line 355
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean v0, v6, v5

    .line 356
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean v0, v6, v5

    .line 357
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    aput-object v7, v6, v5

    .line 358
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 359
    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 345
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 364
    .end local v5    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    .line 365
    nop

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_1

    .line 366
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 370
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    .line 371
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/TelephonyRegistry;)[Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 85
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TelephonyRegistry;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 85
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TelephonyRegistry;Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "x2"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry;->checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 85
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TelephonyRegistry;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 85
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .line 85
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/TelephonyRegistry;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 85
    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/TelephonyRegistry;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .line 85
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;

    .line 85
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/TelephonyRegistry;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TelephonyRegistry;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0

    return v0
.end method

.method private add(Landroid/os/IBinder;)Lcom/android/server/TelephonyRegistry$Record;
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 701
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 702
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 703
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 704
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 705
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne p1, v5, :cond_0

    .line 707
    monitor-exit v0

    return-object v4

    .line 703
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 710
    .end local v3    # "i":I
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1
    new-instance v3, Lcom/android/server/TelephonyRegistry$Record;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;-><init>(Lcom/android/server/TelephonyRegistry$1;)V

    .line 711
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    iput-object p1, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    .line 712
    new-instance v5, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-direct {v5, p0, p1}, Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;-><init>(Lcom/android/server/TelephonyRegistry;Landroid/os/IBinder;)V

    iput-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    :try_start_1
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-interface {p1, v5, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 720
    nop

    .line 722
    :try_start_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v1    # "N":I
    monitor-exit v0

    .line 726
    return-object v3

    .line 716
    .restart local v1    # "N":I
    :catch_0
    move-exception v2

    .line 719
    .local v2, "e":Landroid/os/RemoteException;
    monitor-exit v0

    return-object v4

    .line 724
    .end local v1    # "N":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private broadcastCallStateChanged(ILjava/lang/String;II)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I

    .line 1587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1589
    .local v0, "ident":J
    if-nez p1, :cond_0

    .line 1590
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2}, Lcom/android/internal/app/IBatteryStats;->notePhoneOff()V

    goto :goto_2

    .line 1597
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 1594
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1592
    :cond_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2}, Lcom/android/internal/app/IBatteryStats;->notePhoneOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1597
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1594
    :goto_1
    nop

    .line 1597
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1598
    nop

    .line 1600
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1601
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "state"

    .line 1602
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertCallState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1601
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    const/4 v3, -0x1

    if-eq p4, v3, :cond_1

    .line 1607
    const-string v4, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1611
    :cond_1
    if-eq p3, v3, :cond_2

    .line 1612
    const-string/jumbo v3, "slot"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1616
    :cond_2
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1618
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1619
    .local v3, "intentWithPhoneNumber":Landroid/content/Intent;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1620
    const-string/jumbo v4, "incoming_number"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    :cond_3
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1626
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PHONE_STATE"

    const/16 v7, 0x33

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    .line 1629
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_PHONE_STATE"

    const-string v7, "android.permission.READ_CALL_LOG"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/Context;->sendBroadcastAsUserMultiplePermissions(Landroid/content/Intent;Landroid/os/UserHandle;[Ljava/lang/String;)V

    .line 1632
    return-void
.end method

.method private broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "subId"    # I

    .line 1670
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1671
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1673
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1674
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1675
    return-void
.end method

.method private broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "isDataAllowed"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "roaming"    # Z
    .param p9, "subId"    # I

    .line 1641
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1642
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    .line 1643
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneConstantConversions;->convertDataState(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$DataState;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1642
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1644
    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 1645
    const-string/jumbo v2, "networkUnvailable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1647
    :cond_0
    if-eqz p3, :cond_1

    .line 1648
    const-string/jumbo v2, "reason"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    :cond_1
    if-eqz p6, :cond_2

    .line 1651
    const-string/jumbo v2, "linkProperties"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1652
    invoke-virtual {p6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 1653
    .local v2, "iface":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1654
    const-string/jumbo v3, "iface"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1657
    .end local v2    # "iface":Ljava/lang/String;
    :cond_2
    if-eqz p7, :cond_3

    .line 1658
    const-string/jumbo v2, "networkCapabilities"

    invoke-virtual {v0, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1660
    :cond_3
    if-eqz p8, :cond_4

    const-string/jumbo v2, "networkRoaming"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1662
    :cond_4
    const-string v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1663
    const-string v1, "apnType"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1664
    const-string/jumbo v1, "subscription"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1665
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1666
    return-void
.end method

.method private broadcastImsCapabilityStatusChangeForPhoneId([ZII)V
    .locals 3
    .param p1, "status"    # [Z
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 2024
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.ACTION_IMS_CAPABILITY_STATUS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2025
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 2026
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2027
    const-string/jumbo v1, "subId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2028
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2029
    return-void
.end method

.method private broadcastPreciseCallStateChanged(IIIII)V
    .locals 4
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I
    .param p4, "disconnectCause"    # I
    .param p5, "preciseDisconnectCause"    # I

    .line 1679
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_CALL_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1680
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "ringing_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1681
    const-string v1, "foreground_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1682
    const-string v1, "background_state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1683
    const-string v1, "disconnect_cause"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1684
    const-string/jumbo v1, "precise_disconnect_cause"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1685
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1687
    return-void
.end method

.method private broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "networkType"    # I
    .param p3, "apnType"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "failCause"    # Ljava/lang/String;

    .line 1692
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1693
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1694
    const-string/jumbo v1, "networkType"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1695
    if-eqz p5, :cond_0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    :cond_0
    if-eqz p3, :cond_1

    const-string v1, "apnType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    :cond_1
    if-eqz p4, :cond_2

    const-string v1, "apn"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1698
    :cond_2
    if-eqz p6, :cond_3

    .line 1699
    const-string/jumbo v1, "linkProperties"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1701
    :cond_3
    if-eqz p7, :cond_4

    const-string v1, "failCause"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1703
    :cond_4
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1705
    return-void
.end method

.method private broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V
    .locals 6
    .param p1, "state"    # Landroid/telephony/ServiceState;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 1539
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1541
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/app/IBatteryStats;->notePhoneState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1545
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1542
    :catch_0
    move-exception v2

    .line 1545
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1546
    nop

    .line 1548
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1549
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1550
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1551
    .local v3, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1552
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1554
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1555
    const-string/jumbo v4, "slot"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1556
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1557
    return-void
.end method

.method private broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V
    .locals 6
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;
    .param p2, "phoneId"    # I
    .param p3, "subId"    # I

    .line 1561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1563
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1567
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1564
    :catch_0
    move-exception v2

    .line 1567
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1568
    nop

    .line 1570
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SIG_STR"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1571
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1572
    .local v3, "data":Landroid/os/Bundle;
    invoke-virtual {p1, v3}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1573
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1574
    const-string/jumbo v4, "subscription"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1575
    const-string/jumbo v4, "slot"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1576
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1577
    return-void
.end method

.method private checkListenerPermission(IILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "events"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 1733
    and-int/lit16 v0, p1, 0x410

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v3, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1738
    return v1

    .line 1742
    :cond_0
    and-int/lit16 v0, p1, 0x400c

    if-eqz v0, :cond_1

    .line 1743
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p3, p4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1745
    return v1

    .line 1749
    :cond_1
    and-int/lit16 v0, p1, 0x1800

    if-eqz v0, :cond_2

    .line 1750
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRECISE_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    :cond_2
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    .line 1755
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private checkLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z
    .locals 7
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;

    .line 1816
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1818
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    iget v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/telephony/LocationAccessPolicy;->canAccessCellLocation(Landroid/content/Context;Ljava/lang/String;IIZ)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1818
    return v2

    .line 1822
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private checkNotifyPermission()Z
    .locals 2

    .line 1727
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkNotifyPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .line 1717
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1718
    const/4 v0, 0x1

    return v0

    .line 1720
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Modify Phone State Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1723
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method private checkPossibleMissNotify(Lcom/android/server/TelephonyRegistry$Record;I)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .line 1827
    iget v0, p1, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 1829
    .local v0, "events":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 1833
    :try_start_0
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/telephony/ServiceState;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v3, v3, p2

    invoke-direct {v2, v3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    goto :goto_0

    .line 1835
    :catch_0
    move-exception v1

    .line 1836
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1840
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    .line 1842
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    .line 1846
    .local v1, "signalStrength":Landroid/telephony/SignalStrength;
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v3, Landroid/telephony/SignalStrength;

    invoke-direct {v3, v1}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1849
    .end local v1    # "signalStrength":Landroid/telephony/SignalStrength;
    goto :goto_1

    .line 1847
    :catch_1
    move-exception v1

    .line 1848
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 1854
    :try_start_2
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v1, v1, p2

    .line 1855
    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v1

    .line 1860
    .local v1, "gsmSignalStrength":I
    iget-object v2, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v3, 0x63

    if-ne v1, v3, :cond_2

    const/4 v3, -0x1

    goto :goto_2

    .line 1861
    :cond_2
    nop

    .line 1860
    move v3, v1

    :goto_2
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1864
    .end local v1    # "gsmSignalStrength":I
    goto :goto_3

    .line 1862
    :catch_2
    move-exception v1

    .line 1863
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1867
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    const/16 v1, 0x400

    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1873
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->checkLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1874
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1878
    :cond_4
    goto :goto_4

    .line 1876
    :catch_3
    move-exception v1

    .line 1877
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1881
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_5
    :goto_4
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_6

    .line 1887
    :try_start_4
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v2, v2, p2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1890
    goto :goto_5

    .line 1888
    :catch_4
    move-exception v1

    .line 1889
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1893
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_6
    :goto_5
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_7

    .line 1899
    :try_start_5
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v2, v2, p2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1903
    goto :goto_6

    .line 1901
    :catch_5
    move-exception v1

    .line 1902
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1906
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_7
    :goto_6
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_8

    .line 1912
    :try_start_6
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v2, v2, p2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1916
    goto :goto_7

    .line 1914
    :catch_6
    move-exception v1

    .line 1915
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1919
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_8
    :goto_7
    const/16 v1, 0x10

    invoke-direct {p0, p1, v1}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1923
    :try_start_7
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->checkLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1924
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v3, v3, p2

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_7

    .line 1928
    :cond_9
    goto :goto_8

    .line 1926
    :catch_7
    move-exception v1

    .line 1927
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1931
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_a
    :goto_8
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_b

    .line 1939
    :try_start_8
    iget-object v1, p1, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v2, v2, p2

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v3, v3, p2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1943
    goto :goto_9

    .line 1941
    :catch_8
    move-exception v1

    .line 1942
    .restart local v1    # "ex":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1945
    .end local v1    # "ex":Landroid/os/RemoteException;
    :cond_b
    :goto_9
    return-void
.end method

.method private enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V
    .locals 1
    .param p1, "method"    # Ljava/lang/String;

    .line 1708
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    return-void

    .line 1713
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 1712
    invoke-static {v0, p1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(ILjava/lang/String;)V

    .line 1714
    return-void
.end method

.method private getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;
    .locals 1
    .param p1, "record"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "phoneId"    # I

    .line 695
    invoke-virtual {p1}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private handleRemoveListLocked()V
    .locals 3

    .line 1763
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1765
    .local v0, "size":I
    if-lez v0, :cond_1

    .line 1766
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 1767
    .local v2, "b":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 1768
    .end local v2    # "b":Landroid/os/IBinder;
    goto :goto_0

    .line 1769
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1771
    :cond_1
    return-void
.end method

.method private listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V
    .locals 8
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z
    .param p5, "subId"    # I

    .line 476
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 477
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 484
    if-eqz p3, :cond_1a

    .line 488
    const-string/jumbo v1, "listen"

    invoke-direct {p0, p3, p5, p1, v1}, Lcom/android/server/TelephonyRegistry;->checkListenerPermission(IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    return-void

    .line 492
    :cond_0
    invoke-static {p5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 493
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 495
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 496
    .local v3, "b":Landroid/os/IBinder;
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v4

    .line 498
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v4, :cond_1

    .line 499
    monitor-exit v2

    return-void

    .line 502
    :cond_1
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 503
    iput-object p2, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 504
    iput-object p1, v4, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    iput v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 509
    invoke-static {p5}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 510
    const v5, 0x7fffffff

    iput v5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    goto :goto_0

    .line 512
    :cond_2
    iput p5, v4, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 514
    :goto_0
    iput v1, v4, Lcom/android/server/TelephonyRegistry$Record;->phoneId:I

    .line 515
    iput p3, v4, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 519
    if-eqz p4, :cond_19

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_19

    .line 520
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_3

    .line 523
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/telephony/ServiceState;

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v7, v7, v1

    invoke-direct {v6, v7}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    goto :goto_1

    .line 525
    :catch_0
    move-exception v5

    .line 526
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 529
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_5

    .line 531
    :try_start_3
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, v1

    .line 532
    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v5

    .line 533
    .local v5, "gsmSignalStrength":I
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    const/16 v7, 0x63

    if-ne v5, v7, :cond_4

    const/4 v7, -0x1

    goto :goto_2

    .line 534
    :cond_4
    nop

    .line 533
    move v7, v5

    :goto_2
    invoke-interface {v6, v7}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    .end local v5    # "gsmSignalStrength":I
    goto :goto_3

    .line 535
    :catch_1
    move-exception v5

    .line 536
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 539
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_5
    :goto_3
    and-int/lit8 v5, p3, 0x4

    if-eqz v5, :cond_6

    .line 541
    :try_start_5
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v6, v6, v1

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 545
    goto :goto_4

    .line 543
    :catch_2
    move-exception v5

    .line 544
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_6
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 547
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_6
    :goto_4
    and-int/lit8 v5, p3, 0x8

    if-eqz v5, :cond_7

    .line 549
    :try_start_7
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v6, v6, v1

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 553
    goto :goto_5

    .line 551
    :catch_3
    move-exception v5

    .line 552
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_8
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 555
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    const/16 v5, 0x10

    invoke-direct {p0, v4, v5}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v5, :cond_9

    .line 559
    :try_start_9
    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 560
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v6, Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v7, v7, v1

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 565
    :cond_8
    goto :goto_6

    .line 563
    :catch_4
    move-exception v5

    .line 564
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_a
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 567
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_9
    :goto_6
    and-int/lit8 v5, p3, 0x20

    if-eqz v5, :cond_a

    .line 569
    :try_start_b
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v6, v6, v1

    .line 570
    invoke-direct {p0, v4, v1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v7

    .line 569
    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 573
    goto :goto_7

    .line 571
    :catch_5
    move-exception v5

    .line 572
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_c
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 575
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_a
    :goto_7
    and-int/lit8 v5, p3, 0x40

    if-eqz v5, :cond_b

    .line 577
    :try_start_d
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v6, v6, v1

    iget-object v7, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v7, v7, v1

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 581
    goto :goto_8

    .line 579
    :catch_6
    move-exception v5

    .line 580
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_e
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 583
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_b
    :goto_8
    and-int/lit16 v5, p3, 0x80

    if-eqz v5, :cond_c

    .line 585
    :try_start_f
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v6, v6, v1

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 588
    goto :goto_9

    .line 586
    :catch_7
    move-exception v5

    .line 587
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_10
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 590
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_c
    :goto_9
    and-int/lit16 v5, p3, 0x100

    if-eqz v5, :cond_d

    .line 592
    :try_start_11
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v6, v6, v1

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 595
    goto :goto_a

    .line 593
    :catch_8
    move-exception v5

    .line 594
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_12
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 597
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_d
    :goto_a
    and-int/lit16 v5, p3, 0x200

    if-eqz v5, :cond_e

    .line 599
    :try_start_13
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget v6, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 602
    goto :goto_b

    .line 600
    :catch_9
    move-exception v5

    .line 601
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_14
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 604
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_e
    :goto_b
    const/16 v5, 0x400

    invoke-direct {p0, v4, v5}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v5
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    if-eqz v5, :cond_10

    .line 608
    :try_start_15
    invoke-direct {p0, v4}, Lcom/android/server/TelephonyRegistry;->checkLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 609
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_a
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 613
    :cond_f
    goto :goto_c

    .line 611
    :catch_a
    move-exception v5

    .line 612
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_16
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 615
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_10
    :goto_c
    and-int/lit16 v5, p3, 0x800

    if-eqz v5, :cond_11

    .line 617
    :try_start_17
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 620
    goto :goto_d

    .line 618
    :catch_b
    move-exception v5

    .line 619
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_18
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 622
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_11
    :goto_d
    and-int/lit16 v5, p3, 0x1000

    if-eqz v5, :cond_12

    .line 624
    :try_start_19
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 628
    goto :goto_e

    .line 626
    :catch_c
    move-exception v5

    .line 627
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_1a
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 630
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_12
    :goto_e
    const/high16 v5, 0x10000

    and-int/2addr v5, p3

    if-eqz v5, :cond_13

    .line 632
    :try_start_1b
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-boolean v6, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_d
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 635
    goto :goto_f

    .line 633
    :catch_d
    move-exception v5

    .line 634
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_1c
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 637
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_13
    :goto_f
    const/high16 v5, 0x20000

    and-int/2addr v5, p3

    if-eqz v5, :cond_14

    .line 639
    :try_start_1d
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v6, v6, v1

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_e
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 642
    goto :goto_10

    .line 640
    :catch_e
    move-exception v5

    .line 641
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_1e
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 644
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_14
    :goto_10
    const/high16 v5, 0x40000

    and-int/2addr v5, p3

    if-eqz v5, :cond_15

    .line 646
    :try_start_1f
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v6, v6, v1

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 649
    goto :goto_11

    .line 647
    :catch_f
    move-exception v5

    .line 648
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_20
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 651
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_15
    :goto_11
    const/high16 v5, 0x80000

    and-int/2addr v5, p3

    if-eqz v5, :cond_16

    .line 653
    :try_start_21
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v6, v6, v1

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_10
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    .line 656
    goto :goto_12

    .line 654
    :catch_10
    move-exception v5

    .line 655
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_22
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 658
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_16
    :goto_12
    const/high16 v5, 0x100000

    and-int/2addr v5, p3

    if-eqz v5, :cond_17

    .line 660
    :try_start_23
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v6, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    .line 661
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 660
    invoke-interface {v5, v6}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_11
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    .line 664
    goto :goto_13

    .line 662
    :catch_11
    move-exception v5

    .line 663
    .restart local v5    # "ex":Landroid/os/RemoteException;
    :try_start_24
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 667
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_17
    :goto_13
    const/high16 v5, -0x80000000

    and-int/2addr v5, p3

    if-eqz v5, :cond_18

    .line 669
    :try_start_25
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v5, v5, v1

    .line 670
    .local v5, "status":[Z
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCapabilityStatusChange([Z)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_12
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    .line 673
    .end local v5    # "status":[Z
    goto :goto_14

    .line 671
    :catch_12
    move-exception v5

    .line 672
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_26
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 675
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_18
    :goto_14
    const/high16 v5, 0x200000

    and-int/2addr v5, p3

    if-eqz v5, :cond_19

    .line 677
    :try_start_27
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mAnomalyStatus:[I

    .line 678
    .local v5, "status":[I
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v6, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onAnomalyStatusChange([I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_13
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    .line 681
    .end local v5    # "status":[I
    goto :goto_15

    .line 679
    :catch_13
    move-exception v5

    .line 680
    .local v5, "ex":Landroid/os/RemoteException;
    :try_start_28
    iget-object v6, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v6}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 686
    .end local v3    # "b":Landroid/os/IBinder;
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :cond_19
    :goto_15
    monitor-exit v2

    .line 687
    .end local v1    # "phoneId":I
    goto :goto_16

    .line 686
    .restart local v1    # "phoneId":I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    throw v3

    .line 689
    .end local v1    # "phoneId":I
    :cond_1a
    invoke-interface {p2}, Lcom/android/internal/telephony/IPhoneStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 691
    :goto_16
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 1799
    const-string v0, "TelephonyRegistry"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    return-void
.end method

.method private remove(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 730
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 732
    .local v1, "recordCount":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 733
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 734
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    if-ne v5, p1, :cond_1

    .line 740
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 742
    :try_start_1
    iget-object v5, v4, Lcom/android/server/TelephonyRegistry$Record;->deathRecipient:Lcom/android/server/TelephonyRegistry$TelephonyRegistryDeathRecipient;

    invoke-interface {p1, v5, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 746
    goto :goto_1

    .line 743
    :catch_0
    move-exception v2

    .line 749
    :cond_0
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 750
    monitor-exit v0

    return-void

    .line 732
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 753
    .end local v1    # "recordCount":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 754
    return-void

    .line 753
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z
    .locals 6
    .param p1, "r"    # Lcom/android/server/TelephonyRegistry$Record;
    .param p2, "events"    # I

    .line 1775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1776
    .local v0, "callingIdentity":J
    const/4 v2, 0x0

    move v3, v2

    .line 1778
    .local v3, "valid":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 1779
    .local v4, "foregroundUser":I
    iget v5, p1, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 1780
    invoke-virtual {p1, p2}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    nop

    .line 1787
    .end local v3    # "valid":Z
    .local v2, "valid":Z
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1788
    nop

    .line 1787
    nop

    .line 1789
    return v2

    .line 1787
    .end local v2    # "valid":Z
    .end local v4    # "foregroundUser":I
    .restart local v3    # "valid":Z
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private validatePhoneId(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 1793
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/TelephonyRegistry;->mNumPhones:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1795
    .local v0, "valid":Z
    :goto_0
    return v0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 386
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 387
    .local v0, "callerUserId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 396
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 397
    .local v2, "b":Landroid/os/IBinder;
    invoke-direct {p0, v2}, Lcom/android/server/TelephonyRegistry;->add(Landroid/os/IBinder;)Lcom/android/server/TelephonyRegistry$Record;

    move-result-object v3

    .line 399
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez v3, :cond_0

    .line 400
    monitor-exit v1

    return-void

    .line 403
    :cond_0
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iput-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->context:Landroid/content/Context;

    .line 404
    iput-object p2, v3, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 405
    iput-object p1, v3, Lcom/android/server/TelephonyRegistry$Record;->callingPackage:Ljava/lang/String;

    .line 406
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerUid:I

    .line 407
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callerPid:I

    .line 408
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/TelephonyRegistry$Record;->events:I

    .line 413
    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 416
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v4}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :goto_0
    goto :goto_1

    .line 418
    :catch_0
    move-exception v4

    .line 420
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-direct {p0, v5}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 420
    .end local v4    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 423
    :cond_1
    const-string/jumbo v4, "listen oscl: hasNotifySubscriptionInfoChangedOccurred==false no callback"

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 425
    .end local v2    # "b":Landroid/os/IBinder;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_1
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1485
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1487
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    const-string v2, "TelephonyRegistry"

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1490
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1491
    .local v2, "recordCount":I
    const-string/jumbo v3, "last known state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1493
    const/4 v3, 0x0

    .line 1493
    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone Id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallIncomingNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mServiceState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mVoiceActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivationState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUserMobileDataState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mUserMobileDataState:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mSignalStrength="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mMessageWaiting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCallForwarding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aget-boolean v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataConnectionState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellLocation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCellInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1493
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1511
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreciseDataConnectionState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreciseCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1513
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCarrierNetworkChangeState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRingingCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1515
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mForegroundCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBackgroundCallState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mVoLteServiceState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1521
    const-string/jumbo v3, "local logs:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1523
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v3, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1524
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1525
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registrations: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1527
    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TelephonyRegistry$Record;

    .line 1528
    .local v4, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 1529
    .end local v4    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_1

    .line 1530
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1531
    .end local v2    # "recordCount":I
    monitor-exit v1

    .line 1532
    return-void

    .line 1531
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method idMatch(III)Z
    .locals 3
    .param p1, "rSubId"    # I
    .param p2, "subId"    # I
    .param p3, "phoneId"    # I

    .line 1804
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_1

    .line 1806
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultPhoneId:I

    if-ne v2, p3, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    .line 1808
    :cond_1
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_3

    .line 1809
    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mDefaultSubId:I

    if-ne p2, v2, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 1811
    :cond_3
    if-ne p1, p2, :cond_4

    move v0, v1

    nop

    :cond_4
    return v0
.end method

.method public listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p3, "events"    # I
    .param p4, "notifyNow"    # Z

    .line 464
    const v1, 0x7fffffff

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 466
    return-void
.end method

.method public listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "pkgForDebug"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/telephony/IPhoneStateListener;
    .param p4, "events"    # I
    .param p5, "notifyNow"    # Z

    .line 471
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/TelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZI)V

    .line 472
    return-void
.end method

.method public notifyAnomalyStatusChange([I)V
    .locals 6
    .param p1, "status"    # [I

    .line 2033
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mAnomalyStatus:[I

    .line 2034
    const-string/jumbo v0, "notifyAnomalyStatusChange()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2039
    return-void

    .line 2042
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyAnomalyStatusChange: mAnomaly Status[0] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",Status[1] = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2044
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2045
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2046
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 2048
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAnomalyStatusChange: callback r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2049
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onAnomalyStatusChange([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2052
    goto :goto_1

    .line 2050
    :catch_0
    move-exception v3

    .line 2051
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2054
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 2056
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2057
    monitor-exit v0

    .line 2058
    return-void

    .line 2057
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyCallForwardingChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .line 1134
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCallForwardingChangedForSubscriber(IZ)V

    .line 1135
    return-void
.end method

.method public notifyCallForwardingChangedForSubscriber(IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cfi"    # Z

    .line 1138
    const-string/jumbo v0, "notifyCallForwardingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1139
    return-void

    .line 1145
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1146
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1147
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1148
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCallForwarding:[Z

    aput-boolean p2, v2, v0

    .line 1149
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1150
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1152
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1154
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallForwardingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1157
    goto :goto_1

    .line 1155
    :catch_0
    move-exception v4

    .line 1156
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1161
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1162
    monitor-exit v1

    .line 1163
    return-void

    .line 1162
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyCallState(ILjava/lang/String;)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 757
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    return-void

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 766
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 767
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 772
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->canReadCallLog()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p2

    goto :goto_1

    :cond_1
    const-string v3, ""

    .line 773
    .local v3, "phoneNumberOrEmpty":Ljava/lang/String;
    :goto_1
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p1, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 776
    .end local v3    # "phoneNumberOrEmpty":Ljava/lang/String;
    goto :goto_2

    .line 774
    :catch_0
    move-exception v3

    .line 775
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    goto :goto_0

    .line 779
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 780
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 784
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 787
    return-void

    .line 780
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyCallStateForPhoneId(IIILjava/lang/String;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # I
    .param p4, "incomingNumber"    # Ljava/lang/String;

    .line 791
    const-string/jumbo v0, "notifyCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 792
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 799
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallState:[I

    aput p3, v1, p1

    .line 801
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mCallIncomingNumber:[Ljava/lang/String;

    aput-object p4, v1, p1

    .line 802
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 803
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-ne v3, p2, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_1

    .line 807
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/android/server/TelephonyRegistry;->getCallIncomingNumber(Lcom/android/server/TelephonyRegistry$Record;I)Ljava/lang/String;

    move-result-object v3

    .line 808
    .local v3, "incomingNumberOrEmpty":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p3, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    .end local v3    # "incomingNumberOrEmpty":Ljava/lang/String;
    goto :goto_1

    .line 809
    :catch_0
    move-exception v3

    .line 810
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 815
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 816
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 817
    invoke-direct {p0, p3, p4, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastCallStateChanged(ILjava/lang/String;II)V

    .line 818
    return-void

    .line 816
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyCarrierNetworkChange(Z)V
    .locals 6
    .param p1, "active"    # Z

    .line 982
    const-string/jumbo v0, "notifyCarrierNetworkChange()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->enforceNotifyPermissionOrCarrierPrivilege(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 989
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/TelephonyRegistry;->mCarrierNetworkChangeState:Z

    .line 990
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 991
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 994
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onCarrierNetworkChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 997
    goto :goto_1

    .line 995
    :catch_0
    move-exception v3

    .line 996
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1000
    :cond_1
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1001
    monitor-exit v0

    .line 1002
    return-void

    .line 1001
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1005
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellInfoForSubscriber(ILjava/util/List;)V

    .line 1006
    return-void
.end method

.method public notifyCellInfoForSubscriber(ILjava/util/List;)V
    .locals 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1009
    .local p2, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string/jumbo v0, "notifyCellInfo()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    return-void

    .line 1016
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1017
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1018
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1019
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1020
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1021
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x400

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1022
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1023
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1028
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellInfoChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    goto :goto_1

    .line 1029
    :catch_0
    move-exception v4

    .line 1030
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1033
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1035
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1036
    monitor-exit v1

    .line 1037
    return-void

    .line 1036
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyCellLocation(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "cellLocation"    # Landroid/os/Bundle;

    .line 1306
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V

    .line 1307
    return-void
.end method

.method public notifyCellLocationForSubscriber(ILandroid/os/Bundle;)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "cellLocation"    # Landroid/os/Bundle;

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyCellLocationForSubscriber: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cellLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1312
    const-string/jumbo v0, "notifyCellLocation()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1313
    return-void

    .line 1319
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1320
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1321
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1322
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mCellLocation:[Landroid/os/Bundle;

    aput-object p2, v2, v0

    .line 1323
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1324
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x10

    invoke-direct {p0, v3, v4}, Lcom/android/server/TelephonyRegistry;->validateEventsAndUserLocked(Lcom/android/server/TelephonyRegistry$Record;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1325
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1326
    invoke-direct {p0, v3}, Lcom/android/server/TelephonyRegistry;->checkLocationAccess(Lcom/android/server/TelephonyRegistry$Record;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1332
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onCellLocationChanged(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1335
    goto :goto_1

    .line 1333
    :catch_0
    move-exception v4

    .line 1334
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1339
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1340
    monitor-exit v1

    .line 1341
    return-void

    .line 1340
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyDataActivity(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1166
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyDataActivityForSubscriber(II)V

    .line 1167
    return-void
.end method

.method public notifyDataActivityForSubscriber(II)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "state"    # I

    .line 1170
    const-string/jumbo v0, "notifyDataActivity()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    return-void

    .line 1173
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1174
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1175
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1176
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mDataActivity:[I

    aput p2, v2, v0

    .line 1177
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1179
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1180
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1182
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivity(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    goto :goto_1

    .line 1183
    :catch_0
    move-exception v4

    .line 1184
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1189
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1190
    monitor-exit v1

    .line 1191
    return-void

    .line 1190
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public notifyDataConnection(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "isDataAllowed"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "apn"    # Ljava/lang/String;
    .param p5, "apnType"    # Ljava/lang/String;
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;
    .param p7, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p8, "networkType"    # I
    .param p9, "roaming"    # Z

    .line 1196
    const v1, 0x7fffffff

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V

    .line 1199
    return-void
.end method

.method public notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;

    .line 1271
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/TelephonyRegistry;->notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 1273
    return-void
.end method

.method public notifyDataConnectionFailedForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "subId"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "apnType"    # Ljava/lang/String;

    .line 1277
    const-string/jumbo v0, "notifyDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1278
    return-void

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1285
    :try_start_0
    new-instance v9, Landroid/telephony/PreciseDataConnectionState;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const-string v5, ""

    const/4 v7, 0x0

    const-string v8, ""

    move-object v1, v9

    move-object v4, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1288
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1289
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1292
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1295
    goto :goto_1

    .line 1293
    :catch_0
    move-exception v3

    .line 1294
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1298
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1299
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1300
    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1301
    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v6, ""

    const/4 v8, 0x0

    const-string v9, ""

    move-object v2, p0

    move-object v5, p3

    move-object v7, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1303
    return-void

    .line 1299
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyDataConnectionForSubscriber(IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;IZ)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "state"    # I
    .param p3, "isDataAllowed"    # Z
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "apn"    # Ljava/lang/String;
    .param p6, "apnType"    # Ljava/lang/String;
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "networkCapabilities"    # Landroid/net/NetworkCapabilities;
    .param p9, "networkType"    # I
    .param p10, "roaming"    # Z

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p9

    .line 1205
    const-string/jumbo v0, "notifyDataConnection()"

    invoke-direct {v11, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1206
    return-void

    .line 1215
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v14

    .line 1216
    .local v14, "phoneId":I
    iget-object v9, v11, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1217
    :try_start_0
    invoke-direct {v11, v14}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_7

    .line 1219
    :try_start_1
    const-string v0, "default"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v15, p6

    :try_start_2
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v11, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aget v0, v0, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v0, v12, :cond_1

    :try_start_3
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aget v0, v0, v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eq v0, v13, :cond_5

    .line 1222
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDataConnectionStateChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1225
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1227
    .end local v0    # "str":Ljava/lang/String;
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1228
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1229
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v3, v0

    .line 1230
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x40

    invoke-virtual {v3, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1232
    move/from16 v10, p1

    :try_start_5
    invoke-virtual {v11, v0, v10, v14}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_3

    .line 1237
    :try_start_6
    iget-object v0, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v0, v12, v13}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataConnectionStateChanged(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1240
    goto :goto_1

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_7
    iget-object v4, v11, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    goto :goto_1

    .line 1242
    :cond_2
    move/from16 v10, p1

    :cond_3
    :goto_1
    goto :goto_0

    .line 1243
    :cond_4
    move/from16 v10, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1245
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry;->mDataConnectionState:[I

    aput v12, v0, v14

    .line 1246
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry;->mDataConnectionNetworkType:[I

    aput v13, v0, v14

    .line 1246
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_2

    .line 1248
    :cond_5
    move/from16 v10, p1

    :goto_2
    new-instance v0, Landroid/telephony/PreciseDataConnectionState;

    const-string v8, ""

    move-object v1, v0

    move v2, v12

    move v3, v13

    move-object v4, v15

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v0, v11, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1250
    iget-object v0, v11, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TelephonyRegistry$Record;

    move-object v2, v0

    .line 1251
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v0, 0x1000

    invoke-virtual {v2, v0}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v0, :cond_6

    .line 1254
    :try_start_8
    iget-object v0, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v3, v11, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1258
    goto :goto_4

    .line 1256
    :catch_1
    move-exception v0

    .line 1257
    .restart local v0    # "ex":Landroid/os/RemoteException;
    :try_start_9
    iget-object v3, v11, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v4, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1260
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_6
    :goto_4
    goto :goto_3

    .line 1263
    :catchall_0
    move-exception v0

    move/from16 v10, p1

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v10, p1

    goto :goto_5

    .line 1262
    :cond_7
    move/from16 v10, p1

    move-object/from16 v15, p6

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1263
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1264
    move-object v1, v11

    move v2, v12

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v15

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/android/server/TelephonyRegistry;->broadcastDataConnectionStateChanged(IZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;ZI)V

    .line 1266
    const-string v8, ""

    move v3, v13

    move-object v4, v15

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1268
    return-void

    .line 1263
    :catchall_2
    move-exception v0

    :goto_5
    move-object/from16 v15, p6

    :goto_6
    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_6
.end method

.method public notifyDisconnectCause(II)V
    .locals 8
    .param p1, "disconnectCause"    # I
    .param p2, "preciseDisconnectCause"    # I

    .line 1392
    const-string/jumbo v0, "notifyDisconnectCause()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    return-void

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1396
    :try_start_0
    new-instance v7, Landroid/telephony/PreciseCallState;

    iget v2, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move-object v1, v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v7, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1398
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1399
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1401
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1404
    goto :goto_1

    .line 1402
    :catch_0
    move-exception v3

    .line 1403
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1407
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1408
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1409
    iget v3, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    iget v4, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    iget v5, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    move-object v2, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    .line 1411
    return-void

    .line 1408
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyImsCapabilityStatusChange([Z)V
    .locals 6
    .param p1, "status"    # [Z

    .line 1950
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1951
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    const/4 v2, 0x1

    aput-object p1, v0, v2

    .line 1953
    const-string/jumbo v0, "notifyImsCapabilityStatusChange()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1958
    return-void

    .line 1961
    :cond_0
    move v0, v1

    .line 1961
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v2, v2, v1

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyImsCapabilityStatusChange: mImsCapabilityStatus[0]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1961
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1965
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1966
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1967
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 1969
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyImsCapabilityStatusChange: callback r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1970
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCapabilityStatusChange([Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1973
    goto :goto_2

    .line 1971
    :catch_0
    move-exception v3

    .line 1972
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1975
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    goto :goto_1

    .line 1977
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1978
    monitor-exit v0

    .line 1979
    return-void

    .line 1978
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyImsCapabilityStatusChangeForPhoneId(II[Z)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "status"    # [Z

    .line 1983
    const-string/jumbo v0, "notifyImsCapabilityStatusChangeForPhoneId()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1988
    return-void

    .line 1991
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyImsCapabilityStatusChangeForPhoneId: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1993
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1994
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1996
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aput-object p3, v1, p1

    .line 1998
    const/4 v1, 0x0

    .line 1998
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v2, v2, p1

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyImsCapabilityStatusChangeForPhoneId: mImsCapabilityStatus["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/TelephonyRegistry;->mImsCapabilityStatus:[[Z

    aget-object v3, v3, p1

    aget-boolean v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 1998
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2002
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 2003
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 2005
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyImsCapabilityStatusChangeForPhoneId: callback r = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2006
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onImsCapabilityStatusChange([Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2009
    goto :goto_2

    .line 2007
    :catch_0
    move-exception v3

    .line 2008
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    goto :goto_1

    .line 2015
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyImsCapabilityStatusChangeForPhoneId: INVALID phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 2018
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 2019
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2020
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastImsCapabilityStatusChangeForPhoneId([ZII)V

    .line 2021
    return-void

    .line 2019
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyMessageWaitingChangedForPhoneId(IIZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "mwi"    # Z

    .line 1080
    const-string/jumbo v0, "notifyMessageWaitingChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1088
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1089
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v1, p1

    .line 1090
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1091
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1093
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1095
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onMessageWaitingIndicatorChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1098
    goto :goto_1

    .line 1096
    :catch_0
    move-exception v3

    .line 1097
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1102
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1103
    monitor-exit v0

    .line 1104
    return-void

    .line 1103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyOemHookRawEventForSubscriber(I[B)V
    .locals 6
    .param p1, "subId"    # I
    .param p2, "rawData"    # [B

    .line 1459
    const-string/jumbo v0, "notifyOemHookRawEventForSubscriber"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1460
    return-void

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1464
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1468
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const v3, 0x8000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    if-eq v3, p1, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 1473
    :cond_1
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onOemHookRawEvent([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1476
    goto :goto_1

    .line 1474
    :catch_0
    move-exception v3

    .line 1475
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1478
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_2
    :goto_1
    goto :goto_0

    .line 1479
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1480
    monitor-exit v0

    .line 1481
    return-void

    .line 1480
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyOtaspChanged(I)V
    .locals 6
    .param p1, "otaspMode"    # I

    .line 1344
    const-string/jumbo v0, "notifyOtaspChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1345
    return-void

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1348
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mOtaspMode:I

    .line 1349
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1350
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1352
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IPhoneStateListener;->onOtaspChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1355
    goto :goto_1

    .line 1353
    :catch_0
    move-exception v3

    .line 1354
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1358
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1359
    monitor-exit v0

    .line 1360
    return-void

    .line 1359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyPhysicalChannelConfiguration(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 1040
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lcom/android/server/TelephonyRegistry;->notifyPhysicalChannelConfigurationForSubscriber(ILjava/util/List;)V

    .line 1042
    return-void
.end method

.method public notifyPhysicalChannelConfigurationForSubscriber(ILjava/util/List;)V
    .locals 7
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 1046
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/PhysicalChannelConfig;>;"
    const-string/jumbo v0, "notifyPhysicalChannelConfiguration()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1047
    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1055
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .line 1056
    .local v1, "phoneId":I
    invoke-direct {p0, v1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1057
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mPhysicalChannelConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1058
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 1059
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v4, 0x100000

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1061
    invoke-virtual {p0, v4, p1, v1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 1067
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v4, p2}, Lcom/android/internal/telephony/IPhoneStateListener;->onPhysicalChannelConfigurationChanged(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    goto :goto_1

    .line 1068
    :catch_0
    move-exception v4

    .line 1069
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1072
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1074
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1075
    .end local v1    # "phoneId":I
    monitor-exit v0

    .line 1076
    return-void

    .line 1075
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyPreciseCallState(III)V
    .locals 8
    .param p1, "ringingCallState"    # I
    .param p2, "foregroundCallState"    # I
    .param p3, "backgroundCallState"    # I

    .line 1364
    const-string/jumbo v0, "notifyPreciseCallState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1365
    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1368
    :try_start_0
    iput p1, p0, Lcom/android/server/TelephonyRegistry;->mRingingCallState:I

    .line 1369
    iput p2, p0, Lcom/android/server/TelephonyRegistry;->mForegroundCallState:I

    .line 1370
    iput p3, p0, Lcom/android/server/TelephonyRegistry;->mBackgroundCallState:I

    .line 1371
    new-instance v7, Landroid/telephony/PreciseCallState;

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Landroid/telephony/PreciseCallState;-><init>(IIIII)V

    iput-object v7, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    .line 1375
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1376
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1378
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseCallState:Landroid/telephony/PreciseCallState;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1381
    goto :goto_1

    .line 1379
    :catch_0
    move-exception v3

    .line 1380
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1384
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1385
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1386
    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseCallStateChanged(IIIII)V

    .line 1389
    return-void

    .line 1385
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyPreciseDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "apn"    # Ljava/lang/String;
    .param p4, "failCause"    # Ljava/lang/String;

    .line 1415
    const-string/jumbo v0, "notifyPreciseDataConnectionFailed()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    return-void

    .line 1418
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1419
    :try_start_0
    new-instance v9, Landroid/telephony/PreciseDataConnectionState;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Landroid/telephony/PreciseDataConnectionState;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    .line 1422
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1423
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1426
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mPreciseDataConnectionState:Landroid/telephony/PreciseDataConnectionState;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    goto :goto_1

    .line 1427
    :catch_0
    move-exception v3

    .line 1428
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1431
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1432
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1433
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1434
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/android/server/TelephonyRegistry;->broadcastPreciseDataConnectionStateChanged(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/LinkProperties;Ljava/lang/String;)V

    .line 1436
    return-void

    .line 1433
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifyServiceStateForPhoneId(IILandroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Landroid/telephony/ServiceState;

    .line 821
    const-string/jumbo v0, "notifyServiceState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 826
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyServiceStateForSubscriber: subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 831
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 832
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 833
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mServiceState:[Landroid/telephony/ServiceState;

    aput-object p3, v2, p1

    .line 835
    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TelephonyRegistry$Record;

    .line 840
    .local v3, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 841
    invoke-virtual {p0, v4, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 848
    :try_start_1
    iget-object v4, v3, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v5, Landroid/telephony/ServiceState;

    invoke-direct {v5, p3}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/IPhoneStateListener;->onServiceStateChanged(Landroid/telephony/ServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 851
    goto :goto_1

    .line 849
    :catch_0
    move-exception v4

    .line 850
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    .end local v3    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 855
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyServiceStateForSubscriber: INVALID phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 857
    :cond_3
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 858
    .end local v1    # "str":Ljava/lang/String;
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 859
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastServiceStateChanged(Landroid/telephony/ServiceState;II)V

    .line 860
    return-void

    .line 858
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public notifySignalStrengthForPhoneId(IILandroid/telephony/SignalStrength;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 925
    const-string/jumbo v0, "notifySignalStrength()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 926
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 934
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 936
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mSignalStrength:[Landroid/telephony/SignalStrength;

    aput-object p3, v1, p1

    .line 937
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 942
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 944
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 951
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v4, Landroid/telephony/SignalStrength;

    invoke-direct {v4, p3}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    goto :goto_1

    .line 952
    :catch_0
    move-exception v3

    .line 953
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 956
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 957
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    .line 959
    :try_start_3
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    .line 960
    .local v3, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v3, v4, :cond_2

    const/4 v4, -0x1

    goto :goto_2

    :cond_2
    move v4, v3

    .line 966
    .local v4, "ss":I
    :goto_2
    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v5, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onSignalStrengthChanged(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 969
    .end local v3    # "gsmSignalStrength":I
    .end local v4    # "ss":I
    goto :goto_3

    .line 967
    :catch_1
    move-exception v3

    .line 968
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_3
    :goto_3
    goto :goto_0

    .line 973
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySignalStrengthForPhoneId: invalid phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 975
    :cond_5
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 976
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 977
    invoke-direct {p0, p3, p1, p2}, Lcom/android/server/TelephonyRegistry;->broadcastSignalStrengthChanged(Landroid/telephony/SignalStrength;II)V

    .line 978
    return-void

    .line 976
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1
.end method

.method public notifySimActivationStateChangedForPhoneId(IIII)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "activationType"    # I
    .param p4, "activationState"    # I

    .line 864
    const-string/jumbo v0, "notifySimActivationState()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    return-void

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 872
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 873
    packed-switch p3, :pswitch_data_0

    .line 881
    monitor-exit v0

    goto :goto_6

    .line 878
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mDataActivationState:[I

    aput p4, v1, p1

    .line 879
    goto :goto_0

    .line 875
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mVoiceActivationState:[I

    aput p4, v1, p1

    .line 876
    nop

    .line 883
    :goto_0
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    if-nez p3, :cond_1

    const/high16 v3, 0x20000

    .line 891
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 893
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 899
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoiceActivationStateChanged(I)V

    goto :goto_2

    .line 912
    :catch_0
    move-exception v3

    goto :goto_3

    .line 901
    :cond_1
    :goto_2
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    const/high16 v3, 0x40000

    .line 902
    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 904
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 910
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p4}, Lcom/android/internal/telephony/IPhoneStateListener;->onDataActivationStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 912
    :goto_3
    nop

    .line 913
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    goto :goto_5

    .line 914
    .restart local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :cond_2
    :goto_4
    nop

    .line 915
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    :goto_5
    goto :goto_1

    .line 881
    :goto_6
    return-void

    .line 917
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySimActivationStateForPhoneId: INVALID phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 919
    :cond_4
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 920
    monitor-exit v0

    .line 921
    return-void

    .line 920
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public notifySubscriptionInfoChanged()V
    .locals 6

    .line 438
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    if-nez v1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySubscriptionInfoChanged: first invocation mRecords.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    .line 441
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 443
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TelephonyRegistry;->hasNotifySubscriptionInfoChangedOccurred:Z

    .line 444
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 445
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 446
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    invoke-virtual {v2}, Lcom/android/server/TelephonyRegistry$Record;->matchOnSubscriptionsChangedListener()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 449
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->onSubscriptionsChangedListenerCallback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v3}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->onSubscriptionsChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    goto :goto_1

    .line 451
    :catch_0
    move-exception v3

    .line 453
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 457
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 458
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

.method public notifyUserMobileDataStateChangedForPhoneId(IIZ)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I
    .param p3, "state"    # Z

    .line 1107
    const-string/jumbo v0, "notifyUserMobileDataStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1108
    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1115
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry;->validatePhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1116
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mMessageWaiting:[Z

    aput-boolean p3, v1, p1

    .line 1117
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1118
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v2, Lcom/android/server/TelephonyRegistry$Record;->subId:I

    .line 1120
    invoke-virtual {p0, v3, p2, p1}, Lcom/android/server/TelephonyRegistry;->idMatch(III)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1122
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-interface {v3, p3}, Lcom/android/internal/telephony/IPhoneStateListener;->onUserMobileDataStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1125
    goto :goto_1

    .line 1123
    :catch_0
    move-exception v3

    .line 1124
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1127
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1129
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1130
    monitor-exit v0

    .line 1131
    return-void

    .line 1130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 6
    .param p1, "lteState"    # Landroid/telephony/VoLteServiceState;

    .line 1439
    const-string/jumbo v0, "notifyVoLteServiceStateChanged()"

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->checkNotifyPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1440
    return-void

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1443
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    .line 1444
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TelephonyRegistry$Record;

    .line 1445
    .local v2, "r":Lcom/android/server/TelephonyRegistry$Record;
    const/16 v3, 0x4000

    invoke-virtual {v2, v3}, Lcom/android/server/TelephonyRegistry$Record;->matchPhoneStateListenerEvent(I)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1447
    :try_start_1
    iget-object v3, v2, Lcom/android/server/TelephonyRegistry$Record;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    new-instance v4, Landroid/telephony/VoLteServiceState;

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry;->mVoLteServiceState:Landroid/telephony/VoLteServiceState;

    invoke-direct {v4, v5}, Landroid/telephony/VoLteServiceState;-><init>(Landroid/telephony/VoLteServiceState;)V

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/IPhoneStateListener;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1451
    goto :goto_1

    .line 1449
    :catch_0
    move-exception v3

    .line 1450
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry;->mRemoveList:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/TelephonyRegistry$Record;->binder:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1453
    .end local v2    # "r":Lcom/android/server/TelephonyRegistry$Record;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1454
    :cond_2
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry;->handleRemoveListLocked()V

    .line 1455
    monitor-exit v0

    .line 1456
    return-void

    .line 1455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    .locals 1
    .param p1, "pkgForDebug"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    .line 432
    invoke-interface {p2}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/TelephonyRegistry;->remove(Landroid/os/IBinder;)V

    .line 433
    return-void
.end method

.method public systemRunning()V
    .locals 3

    .line 375
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v1, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string/jumbo v1, "systemRunning register for intents"

    invoke-static {v1}, Lcom/android/server/TelephonyRegistry;->log(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/android/server/TelephonyRegistry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TelephonyRegistry;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    return-void
.end method
