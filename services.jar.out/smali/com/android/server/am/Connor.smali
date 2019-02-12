.class public Lcom/android/server/am/Connor;
.super Ljava/lang/Object;
.source "Connor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Connor$BingoStatistic;,
        Lcom/android/server/am/Connor$MDMStatistic;,
        Lcom/android/server/am/Connor$ModelInfo;,
        Lcom/android/server/am/Connor$RecordStatistic;,
        Lcom/android/server/am/Connor$Callbacks;
    }
.end annotation


# static fields
.field private static final AAB_BUCKET_PREDICT_PERIOD:I = 0x36ee80

.field private static final APPID:Ljava/lang/String; = "RHJ2VVOOTS"

.field private static final CATEGORY_MM:I = 0x1

.field private static final CATEGORY_NN:I = 0x2

.field private static final CONNOR_DB:Ljava/lang/String; = "connor.db"

.field private static final CONNOR_DB_VERSION:I = 0x2

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

.field private static final MAX_PREDICT:I = 0x5

.field private static final MDM_STATISTIC_TAG:Ljava/lang/String; = "accuracy_statistic"

.field private static final MIN_TRAINING_ENTRY_COUNT:J = 0x2af8L

.field private static final MM_MODEL_VERSION:I = 0x1

.field private static final NN_MODEL_VERSION:I = 0x1

.field private static final NUM_FEATURE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Connor"

.field private static final TRAINING_MAX_TEMP:I = 0x9858

.field private static final TRAINING_POLL_INTERVAL:I = 0x493e0

.field private static final TRAINING_POLL_INTERVAL_QUICK:I = 0x1d4c0

.field private static mGoogleSetCount:I

.field private static mIsAlpha:Z

.field private static mIsBeta:Z


# instance fields
.field private mAccOfNN:I

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

.field private mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

.field private mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

.field private mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

.field private mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/Connor$Callbacks;",
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

.field private mCurModel:Ljava/lang/String;

.field private mDbHelper:Lcom/android/server/am/ConnorDbHelper;

.field private mEnable:Z

.field private mIsDebugMode:Z

.field private mIsMMDataReady:Z

.field private mIsScreenOff:Z

.field private mLossOfNN:F

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mPredicts:[Ljava/lang/String;

.field private mPredicts2:[Ljava/lang/String;

.field private mPredictsNN:[Ljava/lang/String;

.field private mPredictsNN2:[Ljava/lang/String;

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

.field private mSPCount:J

.field private mSPHitMM3:J

.field private mSPHitMM5:J

.field private mSPHitNN3:J

.field private mSPHitNN5:J

.field private mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mUstManager:Landroid/app/usage/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

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

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPrev:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

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

    new-instance v2, Lcom/android/server/am/Connor$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/Connor$1;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mRunInsertDb:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/am/Connor$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/Connor$2;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mRunIdleCloseDb:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/am/Connor$3;

    invoke-direct {v2, p0}, Lcom/android/server/am/Connor$3;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mReportStatistic:Ljava/lang/Runnable;

    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    new-instance v2, Lcom/android/server/am/Connor$4;

    invoke-direct {v2, p0}, Lcom/android/server/am/Connor$4;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v2, p0, Lcom/android/server/am/Connor;->mRunTrainingCheck:Ljava/lang/Runnable;

    iput v1, p0, Lcom/android/server/am/Connor;->mAccOfNN:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/Connor;->mLossOfNN:F

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPCount:J

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM5:J

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM3:J

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitNN5:J

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitNN3:J

    iput-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    iput-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPredicts2:[Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    const-string v0, ""

    const-string v1, ""

    const-string v2, ""

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN2:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    new-instance v0, Lcom/android/server/am/Connor$5;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$5;-><init>(Lcom/android/server/am/Connor;)V

    iput-object v0, p0, Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/am/Connor$12;

    invoke-direct {v0, p0}, Lcom/android/server/am/Connor$12;-><init>(Lcom/android/server/am/Connor;)V

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

.method static synthetic access$1000(Lcom/android/server/am/Connor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Connor;->resetModelCheck()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/Connor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/Connor;->triggerTraining()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/Connor;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/am/Connor;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/am/Connor;)Landroid/app/usage/UsageStatsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mUstManager:Landroid/app/usage/UsageStatsManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/Connor;Landroid/app/usage/UsageStatsManager;)Landroid/app/usage/UsageStatsManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Connor;->mUstManager:Landroid/app/usage/UsageStatsManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/Connor;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->String2BucketInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/Connor;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/Connor;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->setScreen(Z)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Connor;->mIsAlpha:Z

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/Connor;->mIsBeta:Z

    return v0
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

.method static synthetic access$2100(Lcom/android/server/am/Connor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/am/Connor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/server/am/Connor;Lcom/android/server/am/Connor$BingoStatistic;)Lcom/android/server/am/Connor$BingoStatistic;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/server/am/Connor;Lcom/android/server/am/Connor$BingoStatistic;)Lcom/android/server/am/Connor$BingoStatistic;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/am/Connor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPCount:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/Connor;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/Connor;->mAccOfNN:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/Connor;)F
    .locals 1

    iget v0, p0, Lcom/android/server/am/Connor;->mLossOfNN:F

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/Connor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPHitMM3:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/Connor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPHitMM5:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/am/Connor;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/Connor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPHitNN3:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/android/server/am/Connor;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/Connor;->mSPHitNN5:J

    return-wide v0
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

.method static synthetic access$800(Lcom/android/server/am/Connor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsScreenOff:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/Connor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/Connor;->isBatFullAndCharged()Z

    move-result v0

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

    iget v8, v7, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iput v8, p0, Lcom/android/server/am/Connor;->mAccOfNN:I

    iget v8, v7, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iput v8, p0, Lcom/android/server/am/Connor;->mLossOfNN:F

    new-instance v8, Lcom/android/server/am/Connor$BingoStatistic;

    const/4 v9, 0x3

    const/4 v10, 0x2

    invoke-direct {v8, p0, v10, v9}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    iput-object v8, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    new-instance v8, Lcom/android/server/am/Connor$BingoStatistic;

    const/4 v9, 0x5

    invoke-direct {v8, p0, v10, v9}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    iput-object v8, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

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
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/am/Connor$8;

    invoke-direct {v1, p0}, Lcom/android/server/am/Connor$8;-><init>(Lcom/android/server/am/Connor;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "/system/etc/mylmdb_lstm_inf.prototxt"

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/system/Label.txt"

    const-string/jumbo v5, "inputdata"

    const-string/jumbo v6, "prob"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/am/Connor;->nativeNNInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v1

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iput v3, p0, Lcom/android/server/am/Connor;->mAccOfNN:I

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iput v3, p0, Lcom/android/server/am/Connor;->mLossOfNN:F

    new-instance v3, Lcom/android/server/am/Connor$BingoStatistic;

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-direct {v3, p0, v5, v4}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    iput-object v3, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    new-instance v3, Lcom/android/server/am/Connor$BingoStatistic;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v5, v4}, Lcom/android/server/am/Connor$BingoStatistic;-><init>(Lcom/android/server/am/Connor;II)V

    iput-object v3, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    goto :goto_0

    :cond_0
    const-string v1, "Connor"

    const-string/jumbo v3, "nativeNNInit fail, perform clean up"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/data/system/"

    const-string v3, ".caffemodel"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "/data/system/Label.txt"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const-string v1, "/data/connor_training/"

    const-string v3, ".caffemodel"

    const-string v4, ".solverstate"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/Connor;->removeFilesEndsWith(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/Connor;->copyPrototxtFiles()V

    const-string/jumbo v1, "persist.vendor.connor.data_ready"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "persist.vendor.connor.data_entry"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
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

.method private isBingoMM(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    array-length v3, v1

    move v4, v0

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v5, v1, v0

    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->hit()V

    const/4 v0, 0x3

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->hit()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    return v2
.end method

.method private isBingoNN(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    array-length v3, v1

    move v4, v0

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_3

    aget-object v5, v1, v0

    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->hit()V

    const/4 v0, 0x3

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->hit()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->miss()V

    return v2

    :cond_4
    :goto_2
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

.method protected static native nativeNNInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method protected static native nativeNNPredict([Ljava/lang/String;[J)[Ljava/lang/String;
.end method

.method protected static native nativePredict()[Ljava/lang/String;
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

    iget v3, v2, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iget v4, v0, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    if-lt v3, v4, :cond_1

    iget v3, v2, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iget v4, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
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

.method private parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;
    .locals 6

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    const-string v4, "acc"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_0
    const-string/jumbo v4, "loss"

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/android/server/am/Connor$ModelInfo;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/server/am/Connor$ModelInfo;-><init>(Lcom/android/server/am/Connor;IF)V

    return-object v3
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

    iget-boolean v2, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x1d4c0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x493e0

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dumpsys(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mClusterPredicts:Ljava/util/Map;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-boolean v2, Lcom/android/server/am/Connor;->DEBUG_ONEPLUS:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6

    array-length v2, p2

    if-le v2, v4, :cond_6

    const-string v2, "debug"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    array-length v2, p2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    const-string/jumbo v2, "on"

    const/4 v5, 0x2

    aget-object v6, p2, v5

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    const-string v2, "Connor"

    const-string v3, "enable quick verification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "off"

    aget-object v4, p2, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    const-string v2, "Connor"

    const-string v3, "disable quick verification"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "trigger"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "Connor"

    const-string/jumbo v3, "trigger training by dumpsys"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/Connor;->triggerTraining()V

    return-void

    :cond_3
    const-string/jumbo v2, "replicate"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/server/am/Connor;->replicateData()V

    const-string v2, "Connor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replicate data done, count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/Connor;->getTrainingEntryCount()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v2, "apply_model"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/Connor;->applyNNModel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Connor"

    const-string/jumbo v4, "got exception when apply_model"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_5
    const-string/jumbo v2, "report"

    aget-object v5, p2, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mReportStatistic:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v5, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    const/high16 v6, -0x40800000    # -1.0f

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v5}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v5

    goto :goto_2

    :cond_7
    move v5, v6

    :goto_2
    iget-object v7, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/am/Connor;->mBingoRateMM3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v7}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v7

    goto :goto_3

    :cond_8
    move v7, v6

    :goto_3
    iget-object v8, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v8}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v8

    goto :goto_4

    :cond_9
    move v8, v6

    :goto_4
    iget-object v9, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    if-eqz v9, :cond_a

    iget-object v6, p0, Lcom/android/server/am/Connor;->mBingoRateNN3:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v6}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v6

    nop

    :cond_a
    iget-boolean v9, p0, Lcom/android/server/am/Connor;->mIsDebugMode:Z

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current Model: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MM_5 hit rate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    cmpl-float v11, v5, v10

    if-ltz v11, :cond_c

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_5

    :cond_c
    const-string v11, " N/A "

    :goto_5
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MM_3 hit rate: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v11, v7, v10

    if-ltz v11, :cond_d

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_6

    :cond_d
    const-string v11, " N/A "

    :goto_6
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NN_5 hit rate: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v11, v8, v10

    if-ltz v11, :cond_e

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    goto :goto_7

    :cond_e
    const-string v11, " N/A "

    :goto_7
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NN_3 hit rate: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmpl-float v10, v6, v10

    if-ltz v10, :cond_f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    goto :goto_8

    :cond_f
    const-string v10, " N/A "

    :goto_8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OP hit rate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/am/Connor;->nativeGetClusterAccu(I)[D

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Google hit rate: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/Connor;->nativeGetClusterAccu(I)[D

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google set count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/am/Connor;->mGoogleSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_9

    :catch_1
    move-exception v3

    :goto_9
    :try_start_4
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "MM prediction: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "NN prediction: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "Aggregate prediction: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p0}, Lcom/android/server/am/Connor;->getAggregateNext()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "AAB prediction:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "bucket"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v9, ": "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method public feed(Ljava/lang/String;Z)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/Connor;->mIsMMDataReady:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPrev:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_5

    const-string v4, "com.android.systemui"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    :goto_0
    move v4, v2

    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/server/am/Connor;->mAvailCv:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    :goto_2
    const-string v6, "connor_package_name"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "connor_is_home"

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "connor_ts"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/android/server/am/Connor;->mQueueCv:Ljava/util/LinkedList;

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/am/Connor;->mRunInsertDb:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-nez v4, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->isBingoMM(Ljava/lang/String;)Z

    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->isBingoNN(Ljava/lang/String;)Z

    :cond_8
    iput-object p1, p0, Lcom/android/server/am/Connor;->mPrev:Ljava/lang/String;

    monitor-enter p0

    :try_start_1
    invoke-static {v0, v1, p1, v4}, Lcom/android/server/am/Connor;->nativeFeed(JLjava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/Connor;->mPredicts2:[Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/Connor;->nativePredict()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_9

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnorData;

    goto :goto_4

    :cond_9
    new-instance v2, Lcom/android/server/am/ConnorData;

    invoke-direct {v2}, Lcom/android/server/am/ConnorData;-><init>()V

    :goto_4
    invoke-virtual {v2, p1, v0, v1}, Lcom/android/server/am/ConnorData;->setData(Ljava/lang/String;J)V

    iget-object v7, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v7, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ne v7, v6, :cond_b

    iget-object v7, p0, Lcom/android/server/am/Connor;->mCurModel:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    new-array v7, v6, [Ljava/lang/String;

    new-array v6, v6, [J

    nop

    :goto_5
    iget-object v8, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-ge v3, v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnorData;

    iget-object v8, v8, Lcom/android/server/am/ConnorData;->mSbPackageName:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    iget-object v8, p0, Lcom/android/server/am/Connor;->mPrevApps:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnorData;

    iget-wide v8, v8, Lcom/android/server/am/ConnorData;->mTimeStamp:J

    aput-wide v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    iget-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNN2:[Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/android/server/am/Connor;->nativeNNPredict([Ljava/lang/String;[J)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    :cond_b
    invoke-direct {p0}, Lcom/android/server/am/Connor;->notifyPredictUpdated()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public getAggregateNext()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mBingoRateMM5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v0}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    const/high16 v2, -0x40800000    # -1.0f

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/Connor;->mBingoRateNN5:Lcom/android/server/am/Connor$BingoStatistic;

    invoke-virtual {v1}, Lcom/android/server/am/Connor$BingoStatistic;->getCurrHitRate()F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    cmpl-float v3, v0, v2

    if-eqz v3, :cond_3

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    :goto_1
    return-object v2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/Connor;->isNNReadyOutput()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;

    :goto_2
    return-object v2
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

.method public declared-synchronized getNext()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNext2()[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts2:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNextSnpe()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN:[Ljava/lang/String;

    return-object v0
.end method

.method public getNextSnpe2()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN2:[Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "persist.vendor.connor.disable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/am/Connor;->mEnable:Z

    iget-boolean v1, p0, Lcom/android/server/am/Connor;->mEnable:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/am/ConnorDbHelper;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "/data/connor_training/connor.db"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/am/ConnorDbHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mRestoreMM:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mRunBucketPredict:Ljava/lang/Runnable;

    const-wide/32 v3, 0x36ee80

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct {p0}, Lcom/android/server/am/Connor;->copyPrototxtFiles()V

    invoke-direct {p0}, Lcom/android/server/am/Connor;->initNN()V

    new-instance v1, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "RHJ2VVOOTS"

    invoke-direct {v1, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/Connor;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/Connor;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/am/Connor$6;

    invoke-direct {v3, p0}, Lcom/android/server/am/Connor$6;-><init>(Lcom/android/server/am/Connor;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v0, p0, Lcom/android/server/am/Connor;->mEnable:Z

    :goto_1
    return-void
.end method

.method protected modelCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/server/am/Connor;->parseModelName(Ljava/lang/String;)Lcom/android/server/am/Connor$ModelInfo;

    move-result-object v1

    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    const/4 v4, -0x1

    if-le v2, v3, :cond_0

    return v4

    :cond_0
    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mAcc:I

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1

    return v5

    :cond_1
    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    return v5

    :cond_2
    iget v2, v0, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    iget v3, v1, Lcom/android/server/am/Connor$ModelInfo;->mLoss:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    return v4

    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method public noteStartProc(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 10

    const-string v0, "activity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredicts2:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    const/4 v5, 0x3

    const-wide/16 v6, 0x1

    if-ge v1, v2, :cond_3

    aget-object v8, v0, v1

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-ge v4, v5, :cond_1

    iget-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM3:J

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM3:J

    :cond_1
    iget-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM5:J

    add-long/2addr v1, v6

    iput-wide v1, p0, Lcom/android/server/am/Connor;->mSPHitMM5:J

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/Connor;->mPredictsNN2:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_2
    if-ge v3, v2, :cond_6

    aget-object v4, v0, v3

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-ge v1, v5, :cond_4

    iget-wide v2, p0, Lcom/android/server/am/Connor;->mSPHitNN3:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/Connor;->mSPHitNN3:J

    :cond_4
    iget-wide v2, p0, Lcom/android/server/am/Connor;->mSPHitNN5:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/Connor;->mSPHitNN5:J

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    iget-wide v2, p0, Lcom/android/server/am/Connor;->mSPCount:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/Connor;->mSPCount:J

    return-void
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

.method public restoreFromFile()V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Ljava/io/File;

    const-string v2, "/data/anr/connor"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v4, v0

    iget-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    iget-object v0, v1, Lcom/android/server/am/Connor;->mDbHelper:Lcom/android/server/am/ConnorDbHelper;

    invoke-virtual {v0}, Lcom/android/server/am/ConnorDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    array-length v0, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v0, :cond_6

    aget-object v8, v3, v7

    iget-object v9, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v9, "Connor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restore file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v10, Ljava/io/BufferedReader;

    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    if-eqz v11, :cond_5

    const-string v11, "\\s"

    invoke-virtual {v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "not found"

    array-length v14, v11

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    aget-object v14, v11, v6

    move-object v13, v14

    goto :goto_2

    :cond_2
    aget-object v14, v11, v15

    move-object v13, v14

    :goto_2
    const-string v14, "connor_package_name"

    invoke-virtual {v4, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "connor_is_home"

    const-string v15, "com.android.systemui"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string/jumbo v15, "net.oneplus.launcher"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    goto :goto_3

    :cond_3
    move v15, v6

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v15, 0x1

    :goto_4
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "connor_ts"

    aget-object v15, v11, v6

    move/from16 v16, v7

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "connor_history_table"

    invoke-virtual {v6, v7, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    nop

    move/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    move/from16 v16, v7

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v7, v16, 0x1

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    :goto_5
    iget-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v5, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_6
    return-void

    :goto_7
    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_8

    iget-object v6, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    iput-object v5, v1, Lcom/android/server/am/Connor;->mSqlDb:Landroid/database/sqlite/SQLiteDatabase;

    :cond_8
    throw v0
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
