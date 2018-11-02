.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$UserState;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static final CONTENTS_UPDATE_DELAY:J = 0x7d0L

.field static final DEBUG_COMPARE:Z = false

.field static final MAX_SERVICES:I = 0x64

.field static final MSG_REFRESH_UI:I = 0x3

.field static final MSG_RESET_CONTENTS:I = 0x1

.field static final MSG_UPDATE_CONTENTS:I = 0x2

.field static final MSG_UPDATE_TIME:I = 0x4

.field static final TAG:Ljava/lang/String; = "RunningState"

.field static final TIME_UPDATE_DELAY:J = 0x3e8L

.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field private final mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    new-instance v1, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$1;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "RunningState:Background"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    iget v0, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v2, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    if-nez v0, :cond_4

    new-instance v3, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v3, v4}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object v0, v3

    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :goto_2
    iget v3, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    new-instance v3, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {v3}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v2, v3, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    iget-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v4, v2}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v2, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2

    sget-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/settings/applications/RunningState;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    :cond_0
    sget-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x15e

    if-ge v0, v2, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4

    if-eqz p2, :cond_1

    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    move-object v0, p1

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 44

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/4 v0, 0x0

    nop

    const/16 v5, 0x64

    move-object/from16 v6, p2

    invoke-virtual {v6, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move v9, v8

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_3

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-boolean v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v11, :cond_1

    iget v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v11, :cond_1

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_1
    iget v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_2

    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v9, -0x1

    nop

    :cond_2
    :goto_2
    add-int/2addr v8, v4

    goto :goto_1

    :cond_3
    nop

    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_3
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_5

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v14, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v15, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    invoke-direct {v15, v12}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_5
    const-wide/16 v12, 0x0

    if-ge v11, v9, :cond_7

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/from16 v17, v8

    iget-wide v7, v14, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v7, v7, v12

    if-nez v7, :cond_6

    iget v7, v14, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v7, :cond_6

    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v8, v14, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v7, :cond_6

    iput-boolean v4, v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    iget-boolean v8, v14, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v8, :cond_6

    iput-boolean v4, v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v17

    goto :goto_5

    :cond_7
    move-object/from16 v17, v8

    move v7, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v9, :cond_13

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v14, v8, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v11, v14, v12

    if-nez v11, :cond_b

    iget v11, v8, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v11, :cond_b

    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v14, v8, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    if-eqz v11, :cond_b

    iget-boolean v14, v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    if-nez v14, :cond_b

    iget-object v14, v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v15, 0x12c

    if-ge v14, v15, :cond_b

    const/4 v14, 0x0

    iget-object v15, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v4, v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    :goto_7
    if-eqz v4, :cond_a

    iget-boolean v11, v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    if-nez v11, :cond_9

    iget-object v11, v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1, v11}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_8

    :cond_8
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v15, v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    check-cast v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    goto :goto_7

    :cond_9
    :goto_8
    const/4 v14, 0x1

    nop

    :cond_a
    if-eqz v14, :cond_b

    goto/16 :goto_a

    :cond_b
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v11, v8, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-nez v4, :cond_c

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v4, v11

    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v14, v8, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v11, v14, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_c
    iget-object v11, v8, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v11, :cond_d

    const/4 v7, 0x1

    new-instance v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v15, v8, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v12, v8, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-direct {v14, v2, v15, v12}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object v11, v14

    iget-object v12, v8, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v4, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    iget v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v12, v13, :cond_12

    iget-wide v12, v8, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_e

    iget v12, v8, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    :goto_9
    iget v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v12, v13, :cond_11

    const/4 v7, 0x1

    iget v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v13, v12, :cond_11

    iget v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v13, :cond_f

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v14, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->remove(I)V

    :cond_f
    if-eqz v12, :cond_10

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v13, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    iput v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    :cond_11
    iget-object v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    :cond_12
    invoke-virtual {v11, v2, v8}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v12

    or-int v4, v7, v12

    move v7, v4

    :goto_a
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    const-wide/16 v12, 0x0

    goto/16 :goto_6

    :cond_13
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v10, :cond_18

    move-object/from16 v4, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v11, :cond_15

    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v11, :cond_14

    const/4 v7, 0x1

    new-instance v12, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v14, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v12, v2, v13, v14}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object v11, v12

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    iget-object v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    :cond_15
    invoke-direct {v1, v8}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v12

    if-eqz v12, :cond_17

    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    const/4 v7, 0x1

    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    iget v12, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    invoke-virtual {v11, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    goto :goto_c

    :cond_17
    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    :goto_c
    iget v12, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iput-object v8, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v17, v4

    goto :goto_b

    :cond_18
    move-object/from16 v4, v17

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v8, v7

    move v7, v0

    const/4 v0, 0x0

    :goto_d
    if-ge v0, v7, :cond_1d

    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v12, v13, :cond_1c

    iget-object v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    if-eqz v12, :cond_1b

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v13, :cond_19

    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_19
    if-eqz v13, :cond_1a

    iget-object v14, v13, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    iget v15, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v14, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1a
    goto :goto_e

    :cond_1b
    const/4 v13, 0x0

    iput-object v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1c
    const/4 v8, 0x1

    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v7, v7, -0x1

    :goto_f
    goto :goto_d

    :cond_1d
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v11, v8

    move v8, v0

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v8, :cond_20

    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-boolean v13, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    if-eqz v13, :cond_1e

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v14, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1f

    :cond_1e
    const/4 v11, 0x1

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_1f
    const/4 v12, 0x1

    add-int/2addr v0, v12

    goto :goto_10

    :cond_20
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v12, :cond_22

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v14, v13, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v15, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v14, v15, :cond_21

    iget v14, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    invoke-virtual {v13, v2, v3, v14}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v14

    or-int/2addr v11, v14

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    const/4 v0, 0x0

    move v13, v11

    move-object v11, v0

    const/4 v0, 0x0

    :goto_12
    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v0, v14, :cond_2b

    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_13
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v22, v4

    move-object/from16 v4, v17

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    move-object/from16 v23, v5

    iget v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v6, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v5, v6, :cond_26

    invoke-virtual {v4, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    iget v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-nez v5, :cond_23

    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    :cond_23
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object/from16 v24, v3

    iget v3, v6, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    move-object/from16 v25, v6

    iget v6, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v3, v6, :cond_24

    const/4 v3, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    move v13, v3

    :cond_24
    move-object/from16 v3, v24

    goto :goto_14

    :cond_25
    move-object/from16 v24, v3

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    goto :goto_15

    :cond_26
    move-object/from16 v24, v3

    const/4 v13, 0x1

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_28

    if-nez v11, :cond_27

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    :cond_27
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    iget v3, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v3, :cond_29

    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_29
    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    :goto_15
    move-object/from16 v6, p2

    goto/16 :goto_13

    :cond_2a
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, p2

    goto/16 :goto_12

    :cond_2b
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    if-eqz v11, :cond_2c

    const/4 v0, 0x0

    :goto_16
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2c
    if-eqz v13, :cond_43

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    const/4 v0, 0x0

    :goto_17
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_33

    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    const-wide v14, 0x7fffffffffffffffL

    iput-wide v14, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-object v6, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_31

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v15, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v15, :cond_2d

    iget-object v15, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v26, v4

    const/4 v4, 0x1

    and-int/2addr v15, v4

    if-eqz v15, :cond_2e

    iput-boolean v4, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    goto :goto_1a

    :cond_2d
    move-object/from16 v26, v4

    :cond_2e
    :goto_1a
    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v4, :cond_2f

    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    move-object/from16 v28, v6

    move/from16 v27, v7

    iget-wide v6, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move/from16 v30, v8

    move/from16 v29, v9

    iget-wide v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_30

    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v6, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    goto :goto_1b

    :cond_2f
    move-object/from16 v28, v6

    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    :cond_30
    :goto_1b
    move-object/from16 v4, v26

    move/from16 v7, v27

    move-object/from16 v6, v28

    move/from16 v9, v29

    move/from16 v8, v30

    goto :goto_19

    :cond_31
    move-object/from16 v26, v4

    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_18

    :cond_32
    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_17

    :cond_33
    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3c

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v8}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v8, :cond_34

    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    iget-object v15, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_37

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v31, v3

    move-object/from16 v3, v17

    check-cast v3, Lcom/android/settings/applications/RunningState$ServiceItem;

    iput-boolean v14, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    const/4 v14, 0x1

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v32, v7

    iget-object v7, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v7, :cond_36

    if-eqz v8, :cond_35

    iget-object v7, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v8, v7, :cond_35

    const/4 v9, 0x0

    :cond_35
    iget-object v7, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v8, v7

    goto :goto_1e

    :cond_36
    const/4 v3, 0x0

    move v9, v3

    :goto_1e
    move-object/from16 v3, v31

    move/from16 v7, v32

    goto :goto_1d

    :cond_37
    move-object/from16 v31, v3

    move/from16 v32, v7

    if-eqz v9, :cond_38

    if-eqz v8, :cond_38

    iget-object v3, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-eq v3, v7, :cond_3a

    :cond_38
    new-instance v3, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v3, v7}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object v8, v3

    iget-object v3, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ServiceItem;

    iget-object v15, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v8, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_1f

    :cond_39
    iput-object v6, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v3, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move/from16 v3, v32

    :goto_20
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    if-ge v3, v7, :cond_3a

    iget-object v7, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    iget-object v15, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_3a
    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    iget v3, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v7, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v3, v7, :cond_3b

    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-direct {v1, v2, v5, v3, v8}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_21

    :cond_3b
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_21
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v31

    goto/16 :goto_1c

    :cond_3c
    move-object/from16 v31, v3

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v8, :cond_40

    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v6, :cond_3f

    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-gtz v6, :cond_3f

    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v6, :cond_3d

    new-instance v6, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v6, v7}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v3, v6, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    :cond_3d
    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget v6, v6, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v7, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v6, v7, :cond_3e

    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    iget-object v7, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_23

    :cond_3e
    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_23
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_40
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v3, :cond_42

    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v6, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v9, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v7, v9, :cond_41

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_42
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iput-object v4, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    iput-object v5, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v6

    move/from16 v30, v8

    goto :goto_25

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_43
    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    :goto_25
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move v6, v3

    move v3, v0

    const/4 v0, 0x0

    :goto_26
    const/16 v7, 0xc8

    const/16 v8, 0x190

    if-ge v0, v5, :cond_47

    iget-object v9, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v14, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v15, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v14, v15, :cond_46

    iget-object v14, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v14, v8, :cond_44

    add-int/lit8 v3, v3, 0x1

    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_44
    iget-object v8, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-gt v8, v7, :cond_45

    add-int/lit8 v6, v6, 0x1

    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_45
    const-string v7, "RunningState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown non-service process: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " #"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :cond_46
    add-int/lit8 v4, v4, 0x1

    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_47
    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v16, 0x0

    move/from16 v25, v16

    :try_start_1
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    move/from16 v26, v16

    :goto_28
    move/from16 v33, v26

    move/from16 v8, v33

    if-ge v8, v0, :cond_48

    move/from16 v34, v0

    :try_start_2
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    aput v0, v7, v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v26, v8, 0x1

    move/from16 v0, v34

    const/16 v8, 0x190

    goto :goto_28

    :catch_0
    move-exception v0

    move/from16 v35, v5

    move/from16 v36, v10

    move-object/from16 v37, v11

    move/from16 v26, v13

    move-object v13, v9

    goto/16 :goto_33

    :cond_48
    move/from16 v34, v0

    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v8, 0x0

    move/from16 v26, v13

    move-object v13, v9

    move v9, v8

    move/from16 v8, v16

    :goto_29
    move/from16 v35, v5

    :try_start_4
    array-length v5, v7

    if-ge v8, v5, :cond_53

    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v36, v10

    move-object/from16 v37, v11

    :try_start_5
    aget-wide v10, v0, v8

    move-object/from16 v38, v0

    iget v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    invoke-virtual {v5, v2, v10, v11, v0}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v0

    or-int v26, v26, v0

    iget v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v10, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v0, v10, :cond_49

    iget-wide v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    add-long v20, v20, v10

    move-object/from16 v39, v7

    :goto_2a
    const/16 v7, 0xc8

    goto/16 :goto_32

    :cond_49
    iget-object v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x190

    if-lt v0, v10, :cond_51

    iget-wide v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    add-long/2addr v14, v10

    if-eqz v13, :cond_4b

    new-instance v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v0, v10}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v5, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v10, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v11, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v10, v11, :cond_4a

    const/4 v10, 0x1

    goto :goto_2b

    :cond_4a
    move/from16 v10, v16

    :goto_2b
    or-int v25, v25, v10

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2c
    move-object/from16 v39, v7

    goto/16 :goto_31

    :cond_4b
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4d

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v0, v5, :cond_4c

    goto :goto_2d

    :cond_4c
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_2c

    :cond_4d
    :goto_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v10, v0

    move/from16 v0, v16

    :goto_2e
    if-ge v0, v9, :cond_4f

    :try_start_6
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v13, v11, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v39, v7

    iget v7, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v13, v7, :cond_4e

    const/4 v7, 0x1

    goto :goto_2f

    :cond_4e
    move/from16 v7, v16

    :goto_2f
    or-int v25, v25, v7

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v39

    goto :goto_2e

    :catch_1
    move-exception v0

    move-object v13, v10

    goto/16 :goto_33

    :cond_4f
    move-object/from16 v39, v7

    new-instance v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v0, v7}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v5, v7, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v7, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v11, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v7, v11, :cond_50

    const/4 v7, 0x1

    goto :goto_30

    :cond_50
    move/from16 v7, v16

    :goto_30
    or-int v25, v25, v7

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v13, v10

    :goto_31
    const/4 v7, 0x1

    :try_start_7
    invoke-virtual {v0, v2, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2a

    :cond_51
    move-object/from16 v39, v7

    iget-object v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0xc8

    if-gt v0, v7, :cond_52

    iget-wide v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    add-long v18, v18, v10

    :cond_52
    :goto_32
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v35

    move/from16 v10, v36

    move-object/from16 v11, v37

    move-object/from16 v0, v38

    move-object/from16 v7, v39

    goto/16 :goto_29

    :catch_2
    move-exception v0

    goto :goto_33

    :cond_53
    move/from16 v36, v10

    move-object/from16 v37, v11

    goto :goto_33

    :catch_3
    move-exception v0

    move/from16 v36, v10

    move-object/from16 v37, v11

    goto :goto_33

    :catch_4
    move-exception v0

    move/from16 v35, v5

    move/from16 v36, v10

    move-object/from16 v37, v11

    move/from16 v26, v13

    move-object v13, v9

    :goto_33
    move-wide/from16 v7, v18

    move-wide/from16 v9, v20

    if-nez v13, :cond_55

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_55

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    move/from16 v0, v16

    :goto_34
    if-ge v0, v3, :cond_55

    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v11, v5, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v40, v12

    iget v12, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v11, v12, :cond_54

    const/4 v11, 0x1

    goto :goto_35

    :cond_54
    move/from16 v11, v16

    :goto_35
    or-int v25, v25, v11

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v40

    goto :goto_34

    :cond_55
    move/from16 v40, v12

    if-eqz v13, :cond_5b

    if-nez v25, :cond_56

    move-object/from16 v17, v13

    move-object/from16 v42, v13

    move-object/from16 v5, v17

    goto :goto_39

    :cond_56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v11, v16

    :goto_36
    if-ge v11, v5, :cond_58

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$MergedItem;

    move/from16 v41, v5

    iget v5, v12, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v42, v13

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v5, v13, :cond_57

    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-direct {v1, v2, v0, v5, v12}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_37

    :cond_57
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_37
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v41

    move-object/from16 v13, v42

    goto :goto_36

    :cond_58
    move/from16 v41, v5

    move-object/from16 v42, v13

    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    move/from16 v11, v16

    :goto_38
    if-ge v11, v5, :cond_5a

    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v13, v12, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move-object/from16 v43, v0

    iget v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v13, v0, :cond_59

    const/4 v13, 0x1

    invoke-virtual {v12, v2, v13}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    invoke-virtual {v12, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    :cond_59
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v43

    goto :goto_38

    :cond_5a
    move-object/from16 v43, v0

    move-object/from16 v5, v43

    goto :goto_39

    :cond_5b
    move-object/from16 v42, v13

    move-object/from16 v5, v17

    :goto_39
    move/from16 v0, v16

    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_5c

    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v11, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    add-int/lit8 v16, v0, 0x1

    goto :goto_39

    :cond_5c
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_8
    iput v3, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    iput v6, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    iput v4, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    iput-wide v14, v1, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v7, v1, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    iput-wide v9, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v42, :cond_5d

    move-object/from16 v13, v42

    :try_start_9
    iput-object v13, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    iput-object v5, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    iget-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    if-eqz v0, :cond_5e

    const/16 v26, 0x1

    goto :goto_3a

    :cond_5d
    move-object/from16 v13, v42

    :cond_5e
    :goto_3a
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    if-nez v0, :cond_5f

    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_5f
    monitor-exit v11

    return v26

    :catchall_1
    move-exception v0

    move-object/from16 v13, v42

    :goto_3b
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3b
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasData()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pause()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object v5, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v5, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v5, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v5, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v5, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateNow()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method waitForData()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
