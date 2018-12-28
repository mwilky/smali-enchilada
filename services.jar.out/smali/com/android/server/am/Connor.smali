.class public Lcom/android/server/am/Connor;
.super Ljava/lang/Object;
.source "Connor.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Connor$CallbackRecord;,
        Lcom/android/server/am/Connor$MDMStatistic;,
        Lcom/android/server/am/Connor$ModelInfo;,
        Lcom/android/server/am/Connor$RecordStatistic;,
        Lcom/android/server/am/Connor$ConfCallbacks;,
        Lcom/android/server/am/Connor$Callbacks;
    }
.end annotation


# static fields
.field private static final AAB_BUCKET_PREDICT_PERIOD:I = 0x36ee80

.field public static final CATEGORY_MM:I = 0x1

.field public static final CATEGORY_NN:I = 0x2

.field private static final CMC_SENSOR_ID:I = 0x1fa263e

.field private static final CONNOR_DB:Ljava/lang/String; = "connor.db"

.field private static final CONNOR_INF_MODEL_PROTO:Ljava/lang/String; = "/system/etc/mylmdb_lstm_inf.prototxt"

.field private static final CONNOR_INF_ROOT:Ljava/lang/String; = "/data/system/"

.field private static final CONNOR_LABEL:Ljava/lang/String; = "/data/system/Label.txt"

.field private static final CONNOR_MODEL_POSFIX:Ljava/lang/String; = ".caffemodel"

.field private static final CONNOR_PROP_DATA_ENTRY:Ljava/lang/String; = "persist.vendor.connor.data_entry"

.field private static final CONNOR_PROP_DATA_READY:Ljava/lang/String; = "persist.vendor.connor.data_ready"

.field private static final CONNOR_ROOT:Ljava/lang/String; = "/data/connor_training/"

.field private static final CONNOR_SOLVERSTATE_POSFIX:Ljava/lang/String; = ".solverstate"

.field private static final CONNOR_TARGET_LABEL:Ljava/lang/String; = "/data/connor_training/Label.txt"

.field private static final CONNOR_TARGET_TRAINING_MODEL_PROTO:Ljava/lang/String; = "/data/connor_training/lenet_lmdb.prototxt"

.field private static final CONNOR_TARGET_TRAINING_SOLVER_PROTO:Ljava/lang/String; = "/data/connor_training/lenet_solver.prototxt"

.field private static final CONNOR_TRAINING_MODEL_PROTO:Ljava/lang/String; = "/system/etc/mylmdb_lstm.prototxt"

.field private static final CONNOR_TRAINING_SOLVER_PROTO:Ljava/lang/String; = "/system/etc/mylmdb_lstm_solver_auto.prototxt"

.field private static final DEBUG:Z = false

.field private static final DEBUG_ONEPLUS:Z

.field private static final DELAY_TO_CLOSE_DB:I = 0x1388

.field private static final HOME_PACKGES:[Ljava/lang/String;

.field private static final MAX_PREDICT:I = 0x10

.field private static final MDM_STATISTIC_TAG:Ljava/lang/String; = "accuracy_statistic"

.field private static final MIN_TRAINING_ENTRY_COUNT:J = 0x2af8L

.field private static final NUM_FEATURE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Connor"

.field private static final TRAINING_MAX_TEMP:I = 0x9858

.field private static final TRAINING_POLL_INTERVAL:I = 0x493e0

.field private static final TRAINING_POLL_INTERVAL_QUICK:I = 0x4e20

.field private static mGoogleSetCount:I

.field public static mIsAlpha:Z

.field public static mIsBeta:Z


# instance fields
.field private mAABVersion:Ljava/lang/String;

.field private mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAvailCv:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mAwake:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/Connor$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacksWithConf:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/am/Connor$ConfCallbacks;",
            "Lcom/android/server/am/Connor$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mClusterPredicts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCollector:Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;

.field private mCurModel:Ljava/lang/String;

.field private mCurrNN:Lcom/android/server/am/Connor$ModelInfo;

.field mCurrSensorState:I

.field private mDbHelper:Lcom/android/server/am/ConnorDbHelper;

.field private mEnable:Z

.field private mHomePkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDebugMode:Z

.field private mIsMMDataReady:Z

.field private mIsScreenOff:Z

.field private final mLockAwake:Ljava/lang/Object;

.field private final mLockMMDataReady:Ljava/lang/Object;

.field private mMMVersion:Ljava/lang/String;

.field private mNNVersion:Ljava/lang/String;

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mPackageSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPredicts:[Ljava/lang/String;

.field private mPredictsConf:[F

.field private mPredictsConfPrev:[F

.field private mPredictsNN:[Ljava/lang/String;

.field private mPredictsNNConf:[F

.field private mPredictsNNConfPrev:[F

.field private mPredictsNNPrev:[Ljava/lang/String;

.field private mPredictsPrev:[Ljava/lang/String;

.field private mPrev:Ljava/lang/String;

.field private mPrevApps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/ConnorData;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueCv:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mReportStatistic:Ljava/lang/Runnable;

.field private mRestoreMM:Ljava/lang/Runnable;

.field private mRunBucketPredict:Ljava/lang/Runnable;

.field private mRunIdleCloseDb:Ljava/lang/Runnable;

.field private mRunInsertDb:Ljava/lang/Runnable;

.field private mRunTrainingCheck:Ljava/lang/Runnable;

.field private mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mStatistic:Lcom/android/server/am/ConnorStatistic;

.field private mThermalZoneId:I

.field private mUstManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/Connor;->DEBUG_ONEPLUS:Z

    const-string v0, "1"

    const-string/jumbo v1, "ro.build.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Connor;->mIsAlpha:Z

    const-string v0, "1"

    const-string/jumbo v1, "ro.build.beta"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/Connor;->mIsBeta:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/server/am/Connor;->mGoogleSetCount:I

    const-string v0, "com.android.systemui"

    const-string v1, "com.android.packageinstaller"

    const-string v2, "com.google.android.packageinstaller"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Connor;->HOME_PACKGES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPrev:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mLockMMDataReady:Ljava/lang/Object;

    const/16 v2, 0x44

    iput v2, p0, Lcom/android/server/am/Connor;->mThermalZoneId:I

    iput-boolean v1, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mQueueCv:Ljava/util/LinkedList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mCallbacksWithConf:Ljava/util/HashMap;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mLockAwake:Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/Connor;->mAwake:Z

    new-instance v2, Lcom/android/server/am/ConnorStatistic;

    invoke-direct {v2, p0}, Lcom/android/server/am/ConnorStatistic;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/Connor;->mPredictsPrev:[Ljava/lang/String;

    const/16 v2, 0x10

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPredictsConf:[F

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPredictsConfPrev:[F

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNNPrev:[Ljava/lang/String;

    new-array v3, v2, [F

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNNConf:[F

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/server/am/Connor;->mPredictsNNConfPrev:[F

    iput-object v0, p0, Lcom/android/server/am/Connor;->mNNVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/Connor;->mMMVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/Connor;->mAABVersion:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    sget-object v0, Lcom/android/server/am/Connor;->HOME_PACKGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mHomePkgList:Ljava/util/List;

    iput v1, p0, Lcom/android/server/am/Connor;->mCurrSensorState:I

    new-instance v0, Lcom/android/server/am/Connor$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$1;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mRunInsertDb:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/Connor$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$2;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/Connor$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$3;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mReportStatistic:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/Connor$4;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$4;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mRunTrainingCheck:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/Connor$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$5;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/Connor$13;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$13;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mRestoreMM:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private String2BucketInt(Ljava/lang/String;)I
    .locals 3

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x14

    return v0

    :cond_1
    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1e

    return v0

    :cond_2
    const-string v0, "3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    return v0

    :cond_3
    const-string v0, "Connor"

    const-string/jumbo v2, "return active since name pattern not match"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method static synthetic access$000(Lcom/android/server/am/Connor;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/am/Connor;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/am/Connor;)Lcom/android/server/am/ConnorDbHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/Connor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/Connor;->isBatFullAndCharged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/Connor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/Connor;->mThermalZoneId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/Connor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Connor;->resetModelCheck()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/Connor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Connor;->triggerTraining()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/Connor;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/am/Connor;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/am/Connor;)Landroid/app/usage/UsageStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mUstManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/am/Connor;Landroid/app/usage/UsageStatsManager;)Landroid/app/usage/UsageStatsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Connor;->mUstManager:Landroid/app/usage/UsageStatsManager;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/am/Connor;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->String2BucketInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/Connor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->setScreen(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mReportStatistic:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/Connor;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mQueueCv:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/Connor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/Connor;->applyNNModel()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/am/Connor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mNNVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/Connor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/am/Connor;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacksWithConf:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/Connor;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mLockMMDataReady:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/am/Connor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/am/Connor;)Lcom/android/server/am/ConnorStatistic;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/Connor;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/Connor;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/Connor;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/Connor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/Connor;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mAABVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/Connor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsScreenOff:Z

    return v0
.end method

.method private applyNNModel()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/connor_training/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/Connor$9;

    invoke-direct {v1, p0}, Lcom/android/server/am/Connor$9;-><init>(Lcom/android/server/am/Connor;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/android/server/am/Connor$10;

    invoke-direct {v1, p0}, Lcom/android/server/am/Connor$10;-><init>(Lcom/android/server/am/Connor;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v1, v0

    const/4 v2, 0x1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/Connor;->needReplaceModel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/connor_training/Label.txt"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/system/Label.txt"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v2, [Ljava/nio/file/CopyOption;

    sget-object v9, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v9, v8, v1

    invoke-static {v6, v7, v8}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aget-object v7, v0, v1

    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-array v9, v2, [Ljava/nio/file/CopyOption;

    sget-object v10, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v10, v9, v1

    invoke-static {v7, v8, v9}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v1, :cond_1

    const-string v1, "Connor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "replace "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "/system/etc/mylmdb_lstm_inf.prototxt"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/data/system/Label.txt"

    const-string/jumbo v9, "inputdata"

    const-string/jumbo v10, "prob"

    invoke-static {v1, v7, v8, v9, v10}, Lcom/android/server/am/Connor;->nativeNNInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/system/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_2
    iput-object v3, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/Connor;->mCurrNN:Lcom/android/server/am/Connor$ModelInfo;

    iget-object v7, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v7}, Lcom/android/server/am/ConnorStatistic;->initStatisticNN()V

    goto :goto_0

    :cond_3
    const-string v2, "Connor"

    const-string/jumbo v7, "nativeNNInit fail, perform clean up"

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "/data/system/"

    const-string v7, ".caffemodel"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    const-string v2, "/data/connor_training/"

    const-string v7, ".caffemodel"

    const-string v8, ".solverstate"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/Connor;->copyPrototxtFiles()V

    const-string/jumbo v2, "persist.vendor.connor.data_ready"

    const-string v7, "0"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "persist.vendor.connor.data_entry"

    const-string v7, "0"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    array-length v1, v0

    if-le v1, v2, :cond_5

    nop

    :goto_1
    move v1, v2

    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private copyPrototxtFiles()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/mylmdb_lstm.prototxt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/mylmdb_lstm_solver_auto.prototxt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/connor_training/lenet_lmdb.prototxt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v4, v6}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/connor_training/lenet_solver.prototxt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    new-array v5, v5, [Ljava/nio/file/CopyOption;

    sget-object v7, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v7, v5, v8

    invoke-static {v4, v6, v5}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    return-void

    :cond_1
    :goto_0
    const-string v2, "Connor"

    const-string/jumbo v3, "one of protos missing from /system/etc!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getTrainingEntryCount()J
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorDbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1388

    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "connor_history_table"

    const-string v6, "connor_is_home = 0 "

    invoke-static {v4, v5, v6}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v4

    iget-object v4, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    return-wide v0

    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v4
.end method

.method private initNN()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/android/server/am/Connor;->nativeNNGetVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mNNVersion:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/Connor;->nativeMMGetVer(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/Connor;->mMMVersion:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/am/Connor;->nativeMMGetVer(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/Connor;->mAABVersion:Ljava/lang/String;

    const-string v1, "Connor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NN ver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mNNVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " MM ver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mMMVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AAB ver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mAABVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/am/Connor$8;

    invoke-direct {v2, p0}, Lcom/android/server/am/Connor$8;-><init>(Lcom/android/server/am/Connor;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "/system/etc/mylmdb_lstm_inf.prototxt"

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/Label.txt"

    const-string/jumbo v5, "inputdata"

    const-string/jumbo v6, "prob"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/am/Connor;->nativeNNInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/am/Connor;->mNNVersion:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/Connor;->mCurrNN:Lcom/android/server/am/Connor$ModelInfo;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v3}, Lcom/android/server/am/ConnorStatistic;->initStatisticNN()V

    goto :goto_0

    :cond_0
    const-string v3, "Connor"

    const-string/jumbo v4, "nativeNNInit fail or ver updated, perform clean up"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "/data/system/"

    const-string v4, ".caffemodel"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/Label.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const-string v3, "/data/connor_training/"

    const-string v4, ".caffemodel"

    const-string v5, ".solverstate"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/Connor;->copyPrototxtFiles()V

    const-string/jumbo v3, "persist.vendor.connor.data_ready"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "persist.vendor.connor.data_entry"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Connor"

    const-string/jumbo v2, "initNN error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private isBatFullAndCharged()Z
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    const-string/jumbo v2, "plugged"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isNNReadyOutput()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method protected static native nativeCluster()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected static native nativeFeed(JLjava/lang/String;Z)V
.end method

.method protected static native nativeGetClusterAccu(I)[D
.end method

.method protected static native nativeGetSysTemp(I)I
.end method

.method protected static native nativeMMGetVer(I)Ljava/lang/String;
.end method

.method protected static native nativeMMPredictConf()[D
.end method

.method protected static native nativeMMSetDebugFlag(I)V
.end method

.method protected static native nativeNNGetVer()Ljava/lang/String;
.end method

.method protected static native nativeNNInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected static native nativeNNPredict([Ljava/lang/String;[J)[Ljava/lang/String;
.end method

.method protected static native nativeNNPredictConf()[F
.end method

.method protected static native nativePkgListUpdate([Ljava/lang/String;)V
.end method

.method protected static native nativePredict(I)[Ljava/lang/String;
.end method

.method protected static native nativeSetGoogleCluster([Ljava/lang/String;IJ)V
.end method

.method private needReplaceModel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v2

    iget v3, v2, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iget v4, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private notifyPredictListener()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Connor;->notifyPredictUpdated()V

    invoke-direct {p0}, Lcom/android/server/am/Connor;->notifyPredictUpdatedWithConf()V

    return-void
.end method

.method private notifyPredictUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/Connor;->getAggregateNext()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/Connor$11;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/Connor$11;-><init>(Lcom/android/server/am/Connor;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private notifyPredictUpdatedWithConf()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacksWithConf:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Connor$12;

    invoke-direct {v1, p0}, Lcom/android/server/am/Connor$12;-><init>(Lcom/android/server/am/Connor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;
    .locals 5

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    const-string/jumbo v3, "loss"

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/server/am/Connor$ModelInfo;

    invoke-direct {v2, p0, v1}, Lcom/android/server/am/Connor$ModelInfo;-><init>(Lcom/android/server/am/Connor;F)V

    return-object v2
.end method

.method private varargs removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/Connor$7;

    invoke-direct {v1, p0, p2}, Lcom/android/server/am/Connor$7;-><init>(Lcom/android/server/am/Connor;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v2, :cond_0

    const-string v2, "Connor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[cleanup] remove "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resetModelCheck()V
    .locals 11

    const-string/jumbo v0, "persist.vendor.connor.data_ready"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    const-string/jumbo v2, "persist.vendor.connor.data_entry"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v1, :cond_1

    const-string v1, "Connor"

    const-string v3, "data is not ready"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/Connor;->getTrainingEntryCount()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    if-nez v2, :cond_3

    const-string/jumbo v1, "persist.vendor.connor.data_entry"

    div-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "record entry to prop "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    int-to-long v7, v2

    mul-long/2addr v7, v5

    sub-long v7, v3, v7

    const-wide/16 v9, 0x2af8

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    const-string/jumbo v7, "persist.vendor.connor.data_ready"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/Connor;->setTraining(Z)V

    invoke-direct {p0}, Lcom/android/server/am/Connor;->applyNNModel()V

    const-string v1, "/data/connor_training/"

    const-string v7, ".caffemodel"

    const-string v8, ".solverstate"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v7}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "persist.vendor.connor.data_entry"

    div-long v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "Connor"

    const-string/jumbo v4, "reset model failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static setGoogleCluster([Ljava/lang/String;IJ)V
    .locals 1

    sget v0, Lcom/android/server/am/Connor;->mGoogleSetCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/Connor;->mGoogleSetCount:I

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/Connor;->nativeSetGoogleCluster([Ljava/lang/String;IJ)V

    return-void
.end method

.method private setScreen(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/Connor;->mIsScreenOff:Z

    return-void
.end method

.method private triggerTraining()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mRunTrainingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mRunTrainingCheck:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget-boolean v0, v1, Lcom/android/server/am/Connor;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    move-object v5, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-boolean v0, Lcom/android/server/am/Connor;->DEBUG_ONEPLUS:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_9

    array-length v0, v3

    if-le v0, v7, :cond_9

    const-string v0, "debug"

    aget-object v8, v3, v7

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v0, :cond_3

    array-length v0, v3

    if-ne v0, v8, :cond_3

    const-string/jumbo v0, "on"

    aget-object v8, v3, v9

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v7, v1, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    const-string v0, "Connor"

    const-string v6, "enable quick verification"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1111

    invoke-static {v0}, Lcom/android/server/am/Connor;->nativeMMSetDebugFlag(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "off"

    aget-object v7, v3, v9

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v6, v1, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    const-string v0, "Connor"

    const-string v7, "disable quick verification"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/server/am/Connor;->nativeMMSetDebugFlag(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "trigger"

    aget-object v10, v3, v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Connor"

    const-string/jumbo v6, "trigger training by dumpsys"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/Connor;->triggerTraining()V

    return-void

    :cond_4
    const-string/jumbo v0, "replicate"

    aget-object v10, v3, v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/Connor;->replicateData()V

    const-string v0, "Connor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "replicate data done, count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/Connor;->getTrainingEntryCount()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v0, "apply_model"

    aget-object v10, v3, v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/Connor;->applyNNModel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    const-string v6, "Connor"

    const-string/jumbo v7, "got exception when apply_model"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_6
    const-string/jumbo v0, "report"

    aget-object v10, v3, v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v6, v1, Lcom/android/server/am/Connor;->mReportStatistic:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_7
    const-string v0, "bucket"

    aget-object v10, v3, v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v6, v1, Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_8
    const-string/jumbo v0, "next"

    aget-object v10, v3, v7

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    array-length v0, v3

    if-ne v0, v8, :cond_9

    :try_start_2
    aget-object v0, v3, v9

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "next: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/android/server/am/Connor;->getAggregateNext(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_9
    iget-object v8, v1, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v1, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfMM5()F

    move-result v0

    move v9, v0

    iget-object v0, v1, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfMM3()F

    move-result v0

    move v10, v0

    iget-object v0, v1, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfNN5()F

    move-result v0

    move v11, v0

    iget-object v0, v1, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfNN3()F

    move-result v0

    move v12, v0

    iget-object v0, v1, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfNN()F

    move-result v0

    move v13, v0

    iget-object v0, v1, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfMM()F

    move-result v0

    move v14, v0

    iget-boolean v0, v1, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Current Model: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MM_5 hit rate: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    cmpl-float v16, v9, v15

    if-ltz v16, :cond_b

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    goto :goto_3

    :cond_b
    const-string v16, " N/A "

    :goto_3
    move-object/from16 v7, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MM_3 hit rate: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v7, v10, v15

    if-ltz v7, :cond_c

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_4

    :cond_c
    const-string v7, " N/A "

    :goto_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v6

    :goto_5
    const/4 v7, 0x4

    if-ge v0, v7, :cond_e

    iget-object v7, v1, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v7, v0}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfMM1(I)F

    move-result v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MM_1 conf "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    aget v15, v15, v0

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, " hit rate: "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    cmpl-float v16, v7, v15

    if-ltz v16, :cond_d

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    goto :goto_6

    :cond_d
    const-string v15, " N/A "

    :goto_6
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v6, 0x0

    const/4 v15, 0x0

    goto :goto_5

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MM_1 hit rate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    cmpl-float v15, v14, v6

    if-ltz v15, :cond_f

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_7

    :cond_f
    const-string v6, " N/A "

    :goto_7
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NN_5 hit rate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    cmpl-float v15, v11, v6

    if-ltz v15, :cond_10

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_8

    :cond_10
    const-string v6, " N/A "

    :goto_8
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NN_3 hit rate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    cmpl-float v15, v12, v6

    if-ltz v15, :cond_11

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_9

    :cond_11
    const-string v6, " N/A "

    :goto_9
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v7, :cond_13

    iget-object v6, v1, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v6, v0}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfNN1(I)F

    move-result v6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NN_1 conf "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/am/ConnorStatistic;->CONFIDENCE_CRITERIA:[F

    aget v7, v7, v0

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " hit rate: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    cmpl-float v16, v6, v7

    if-ltz v16, :cond_12

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_b

    :cond_12
    const-string v7, " N/A "

    :goto_b
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x4

    goto :goto_a

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NN_1 hit rate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    cmpl-float v6, v13, v6

    if-ltz v6, :cond_14

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    goto :goto_c

    :cond_14
    const-string v6, " N/A "

    :goto_c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OP hit rate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/server/am/Connor;->nativeGetClusterAccu(I)[D

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Google hit rate: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/server/am/Connor;->nativeGetClusterAccu(I)[D

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Google set count: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/server/am/Connor;->mGoogleSetCount:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_d

    :catch_2
    move-exception v0

    :goto_d
    :try_start_5
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "MM prediction: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "MM confidence: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, v1, Lcom/android/server/am/Connor;->mPredictsConf:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "NN prediction: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, v1, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "NN confidence: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, v1, Lcom/android/server/am/Connor;->mPredictsNNConf:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Aggregate prediction: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/Connor;->getAggregateNext()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "AAB prediction:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "bucket"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v7, ": "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_15
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0
.end method

.method public feed(Ljava/lang/String;Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mLockAwake:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mAwake:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v1, :cond_1

    const-string v1, "Connor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop feed of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    iget-object v1, p0, Lcom/android/server/am/Connor;->mLockMMDataReady:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    if-nez v0, :cond_3

    monitor-exit v1

    return-void

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez p1, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPrev:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_7

    iget-object v4, p0, Lcom/android/server/am/Connor;->mHomePkgList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_0

    :cond_6
    move v4, v0

    goto :goto_1

    :cond_7
    :goto_0
    move v4, v1

    :goto_1
    monitor-enter p0

    :try_start_2
    iget-object v5, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_8

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    goto :goto_2

    :cond_8
    iget-object v5, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    :goto_2
    const-string v6, "connor_package_name"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "connor_is_home"

    if-eqz v4, :cond_9

    move v7, v1

    goto :goto_3

    :cond_9
    move v7, v0

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "connor_ts"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, p0, Lcom/android/server/am/Connor;->mQueueCv:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v6, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/server/am/Connor;->mRunInsertDb:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v4, :cond_b

    iget-boolean v6, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v6, :cond_a

    const-string v6, "Connor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "now launch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v6, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    iget-object v7, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/Connor;->mPredictsConf:[F

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/am/ConnorStatistic;->isBingoMM(Ljava/lang/String;[Ljava/lang/String;[F)Z

    iget-object v6, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    iget-object v6, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    iget-object v7, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/am/Connor;->mPredictsNNConf:[F

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/am/ConnorStatistic;->isBingoNN(Ljava/lang/String;[Ljava/lang/String;[F)Z

    :cond_b
    iput-object p1, p0, Lcom/android/server/am/Connor;->mPrev:Ljava/lang/String;

    monitor-enter p0

    :try_start_3
    invoke-static {v2, v3, p1, v4}, Lcom/android/server/am/Connor;->nativeFeed(JLjava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/am/Connor;->mPredictsPrev:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/Connor;->mPredictsConf:[F

    iput-object v6, p0, Lcom/android/server/am/Connor;->mPredictsConfPrev:[F

    const/16 v6, 0x10

    invoke-static {v6}, Lcom/android/server/am/Connor;->nativePredict(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/Connor;->nativeMMPredictConf()[D

    move-result-object v6

    array-length v7, v6

    iget-object v8, p0, Lcom/android/server/am/Connor;->mPredictsConf:[F

    array-length v8, v8

    if-eq v7, v8, :cond_c

    array-length v7, v6

    new-array v7, v7, [F

    goto :goto_4

    :cond_c
    iget-object v7, p0, Lcom/android/server/am/Connor;->mPredictsConf:[F

    :goto_4
    nop

    :goto_5
    array-length v8, v6

    if-ge v0, v8, :cond_d

    aget-wide v8, v6, v0

    double-to-float v8, v8

    aput v8, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    iput-object v7, p0, Lcom/android/server/am/Connor;->mPredictsConf:[F

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_e

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnorData;

    goto :goto_6

    :cond_e
    new-instance v0, Lcom/android/server/am/ConnorData;

    invoke-direct {v0}, Lcom/android/server/am/ConnorData;-><init>()V

    :goto_6
    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/am/ConnorData;->setData(Ljava/lang/String;J)V

    iget-object v7, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ne v7, v6, :cond_10

    iget-object v7, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_10

    new-array v7, v6, [Ljava/lang/String;

    new-array v6, v6, [J

    iget-object v8, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    sub-int/2addr v8, v1

    :goto_7
    move v1, v8

    if-ltz v1, :cond_f

    iget-object v8, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnorData;

    iget-object v8, v8, Lcom/android/server/am/ConnorData;->mSbPackageName:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    iget-object v8, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v8, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnorData;

    iget-wide v8, v8, Lcom/android/server/am/ConnorData;->mTimeStamp:J

    aput-wide v8, v6, v1

    add-int/lit8 v8, v1, -0x1

    goto :goto_7

    :cond_f
    monitor-enter p0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNNPrev:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNNConf:[F

    iput-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNNConfPrev:[F

    invoke-static {v7, v6}, Lcom/android/server/am/Connor;->nativeNNPredict([Ljava/lang/String;[J)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/Connor;->nativeNNPredictConf()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNNConf:[F

    monitor-exit p0

    goto :goto_8

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_10
    :goto_8
    invoke-direct {p0}, Lcom/android/server/am/Connor;->notifyPredictListener()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1
.end method

.method public getAggregateNext(F)Ljava/lang/String;
    .locals 6

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mEnable:Z

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mLockMMDataReady:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    if-nez v1, :cond_1

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsConf:[F

    aget v0, v0, v2

    cmpl-float v0, v0, p1

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsConf:[F

    aget v0, v0, v2

    goto :goto_0

    :cond_2
    nop

    :cond_3
    move v0, v1

    :goto_0
    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {p0}, Lcom/android/server/am/Connor;->isNNReadyOutput()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/Connor;->mPredictsNNConf:[F

    aget v4, v4, v2

    cmpl-float v4, v4, p1

    if-ltz v4, :cond_4

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNNConf:[F

    aget v1, v1, v2

    nop

    :cond_4
    move v3, v1

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v1, :cond_6

    const-string v1, "Connor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "top1ConfMM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " top1ConfNN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_8

    cmpl-float v4, v3, v1

    if-lez v4, :cond_8

    iget-object v1, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ConnorStatistic;->getTop1StatIdx(F)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v4, v1}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfMM1(I)F

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v5, v1}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfNN1(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    aget-object v2, v4, v2

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    aget-object v2, v4, v2

    :goto_1
    monitor-exit p0

    return-object v2

    :cond_8
    cmpg-float v4, v0, v1

    if-gez v4, :cond_9

    cmpg-float v1, v3, v1

    if-gez v1, :cond_9

    const-string v1, ""

    monitor-exit p0

    return-object v1

    :cond_9
    cmpl-float v1, v0, v3

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    aget-object v1, v1, v2

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    aget-object v1, v1, v2

    :goto_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, ""

    return-object v1
.end method

.method public getAggregateNext()[Ljava/lang/String;
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mLockMMDataReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    if-nez v2, :cond_1

    monitor-exit v0

    return-object v1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfMM5()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/ConnorStatistic;->getHitRateOfNN5()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_3

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    :goto_0
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/Connor;->isNNReadyOutput()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    :goto_1
    if-eqz v2, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    monitor-enter v4

    :try_start_1
    array-length v5, v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v7, v2, v6

    iget-object v8, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    :cond_7
    return-object v2

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public declared-synchronized getCluster()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrModelLoss()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCurrNN:Lcom/android/server/am/Connor$ModelInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCurrNN:Lcom/android/server/am/Connor$ModelInfo;

    iget v0, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    return v0
.end method

.method public getDebugMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    return v0
.end method

.method public getNextMMConfPrev(I)[F
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsConfPrev:[F

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsConfPrev:[F

    array-length v1, v1

    if-lt v1, p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsConfPrev:[F

    array-length v1, v1

    :goto_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNextMMPrev(I)[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsPrev:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsPrev:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsPrev:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNextNNConfPrev(I)[F
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNNConfPrev:[F

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNNConfPrev:[F

    array-length v1, v1

    if-lt v1, p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNNConfPrev:[F

    array-length v1, v1

    :goto_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNextNNPrev(I)[Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNNPrev:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNNPrev:[Ljava/lang/String;

    array-length v1, v1

    if-lt v1, p1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNNPrev:[Ljava/lang/String;

    array-length v1, v1

    :goto_0
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVersion(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor;->mMMVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mNNVersion:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public init()V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "persist.vendor.connor.disable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/am/Connor;->mEnable:Z

    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mEnable:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "msmnile"

    const-string/jumbo v3, "ro.board.platform"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x45

    goto :goto_1

    :cond_1
    const/16 v1, 0x44

    :goto_1
    iput v1, p0, Lcom/android/server/am/Connor;->mThermalZoneId:I

    const-string v1, "Connor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mThermalZoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Connor;->mThermalZoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;->getInstance(Landroid/content/Context;)Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/Connor;->mCollector:Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1, p0}, Lcom/android/server/am/ConnorFilter;->getInstalledSet(Landroid/content/pm/PackageManagerInternal;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/Connor;->nativePkgListUpdate([Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/ConnorDbHelper;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "/data/connor_training/connor.db"

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/am/ConnorDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mRestoreMM:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/server/am/Connor;->copyPrototxtFiles()V

    invoke-direct {p0}, Lcom/android/server/am/Connor;->initNN()V

    new-instance v1, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "RHJ2VVOOTS"

    invoke-direct {v1, v3, v4}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/Connor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/am/Connor$6;

    invoke-direct {v4, p0}, Lcom/android/server/am/Connor$6;-><init>(Lcom/android/server/am/Connor;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    const/16 v1, 0x1111

    invoke-static {v1}, Lcom/android/server/am/Connor;->nativeMMSetDebugFlag(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v0, p0, Lcom/android/server/am/Connor;->mEnable:Z

    :goto_2
    return-void
.end method

.method protected modelCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v2, -0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public noteStartProc(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mStatistic:Lcom/android/server/am/ConnorStatistic;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ConnorStatistic;->noteStartProc(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/Connor;->nativePkgListUpdate([Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPackageSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/Connor;->nativePkgListUpdate([Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1fa263e

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    or-int/2addr v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/android/server/am/Connor;->mCurrSensorState:I

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCollector:Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;

    iget v2, p0, Lcom/android/server/am/Connor;->mCurrSensorState:I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/odm/insight/PreloadApplicationEventCollector;->collectSensorEvent(II)V

    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v0, :cond_2

    const-string v0, "Connor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSensorChanged out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Connor;->mCurrSensorState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " values: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onWakefulnessChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Connor;->mLockAwake:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/Connor;->mAwake:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerCallback(Lcom/android/server/am/Connor$Callbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method registerCallback(Lcom/android/server/am/Connor$ConfCallbacks;F)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacksWithConf:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mCallbacksWithConf:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/am/Connor$CallbackRecord;

    invoke-direct {v2, p0, p2}, Lcom/android/server/am/Connor$CallbackRecord;-><init>(Lcom/android/server/am/Connor;F)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public replicateData()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "connor_history_table"

    const-string v0, "connor_package_name"

    const-string v3, "connor_is_home"

    const-string v4, "connor_ts"

    filled-new-array {v0, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, 0x1388

    :try_start_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "connor_package_name"

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "connor_is_home"

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "connor_ts"

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v4, p0, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "connor_history_table"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v3
.end method

.method public saveStatisticToDb(Landroid/content/ContentValues;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/Connor$RecordStatistic;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/Connor$RecordStatistic;-><init>(Lcom/android/server/am/Connor;Landroid/content/ContentValues;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTraining(Z)V
    .locals 3

    const-string v0, "Connor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set training "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "run"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "stop"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mRunTrainingCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :try_start_0
    const-string/jumbo v0, "sys.training"

    if-eqz p1, :cond_2

    const-string v1, "1"

    goto :goto_1

    :cond_2
    const-string v1, "0"

    :goto_1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Connor"

    const-string/jumbo v2, "set sys.training fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method unregisterCallback(Lcom/android/server/am/Connor$Callbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterCallback(Lcom/android/server/am/Connor$ConfCallbacks;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacksWithConf:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mCallbacksWithConf:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
