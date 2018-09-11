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

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 142
    new-instance v1, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 203
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 254
    new-instance v1, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 319
    new-instance v1, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$1;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    .line 778
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 779
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 780
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 781
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 782
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .line 783
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 784
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
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

    .line 785
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 786
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "RunningState:Background"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 787
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 788
    new-instance v0, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 789
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 790
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/RunningState;

    .line 61
    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/RunningState;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/app/ActivityManager;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v0

    return v0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "newItem"    # Lcom/android/settings/applications/RunningState$MergedItem;
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

    .line 869
    .local p2, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local p3, "userItems":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    iget v0, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 870
    .local v0, "userItem":Lcom/android/settings/applications/RunningState$MergedItem;
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

    .line 871
    .local v1, "first":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 872
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 873
    .local v2, "info":Landroid/content/pm/UserInfo;
    if-nez v2, :cond_2

    .line 875
    return-void

    .line 877
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 878
    return-void

    .line 880
    :cond_3
    if-nez v0, :cond_4

    .line 881
    new-instance v3, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v4, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v3, v4}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object v0, v3

    .line 882
    iget v3, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 884
    :cond_4
    iget-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 886
    :goto_2
    iget v3, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    .line 887
    new-instance v3, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {v3}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    .line 888
    iget-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v2, v3, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 889
    iget-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v4, v2}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 890
    iget-object v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-static {p1, v2}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 891
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v2    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    iget-object v2, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 769
    sget-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    sget-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v1, :cond_0

    .line 771
    new-instance v1, Lcom/android/settings/applications/RunningState;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 773
    :cond_0
    sget-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v0

    return-object v1

    .line 774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3
    .param p1, "pi"    # Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 845
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 846
    return v1

    .line 848
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

    .line 853
    return v1

    .line 855
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "item"    # Landroid/content/pm/PackageItemInfo;

    .line 752
    if-eqz p2, :cond_1

    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 754
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 755
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    .line 756
    return-object v0

    .line 760
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p1

    .line 761
    .local v0, "label":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 762
    .local v1, "tail":I
    if-ltz v1, :cond_2

    .line 763
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 765
    :cond_2
    return-object v0
.end method

.method private reset()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 860
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 861
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 862
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 863
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 864
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 865
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 44
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Landroid/app/ActivityManager;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 897
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 899
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    iput v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 901
    const/4 v0, 0x0

    .line 905
    .local v0, "changed":Z
    nop

    .line 906
    const/16 v5, 0x64

    move-object/from16 v6, p2

    invoke-virtual {v6, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 907
    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    .line 908
    .local v8, "NS":I
    :goto_0
    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "NS":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 909
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 913
    .local v10, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-boolean v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v11, :cond_1

    iget v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v11, :cond_1

    .line 914
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 915
    add-int/lit8 v8, v8, -0x1

    .line 916
    add-int/lit8 v9, v9, -0x1

    .line 917
    goto :goto_2

    .line 921
    :cond_1
    iget v11, v10, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v11, v11, 0x8

    if-eqz v11, :cond_2

    .line 923
    invoke-interface {v5, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 924
    add-int/lit8 v8, v8, -0x1

    .line 925
    add-int/lit8 v9, v9, -0x1

    .line 926
    nop

    .line 908
    .end local v10    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    :goto_2
    add-int/2addr v8, v4

    goto :goto_1

    .line 932
    .end local v8    # "i":I
    :cond_3
    nop

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    .line 934
    .local v8, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    .line 935
    .local v10, "NP":I
    :goto_3
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 936
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v10, :cond_5

    .line 937
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 938
    .local v12, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v14, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v15, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    invoke-direct {v15, v12}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v13, v14, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 936
    .end local v12    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 943
    .end local v11    # "i":I
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    const-wide/16 v12, 0x0

    if-ge v11, v9, :cond_7

    .line 944
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 945
    .local v14, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    move-object/from16 v17, v8

    iget-wide v7, v14, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    .end local v8    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local v17, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    cmp-long v7, v7, v12

    if-nez v7, :cond_6

    iget v7, v14, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v7, :cond_6

    .line 946
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v8, v14, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 947
    .local v7, "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v7, :cond_6

    .line 948
    iput-boolean v4, v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 949
    iget-boolean v8, v14, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v8, :cond_6

    .line 950
    iput-boolean v4, v7, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 943
    .end local v7    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v14    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v17

    goto :goto_5

    .line 957
    .end local v11    # "i":I
    .end local v17    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v8    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_7
    move-object/from16 v17, v8

    .end local v8    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v17    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move v7, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v7, "changed":Z
    :goto_6
    if-ge v0, v9, :cond_13

    .line 958
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 965
    .local v8, "si":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-wide v14, v8, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v11, v14, v12

    if-nez v11, :cond_b

    iget v11, v8, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v11, :cond_b

    .line 966
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v14, v8, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v11, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 967
    .local v11, "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    if-eqz v11, :cond_b

    iget-boolean v14, v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    if-nez v14, :cond_b

    .line 973
    iget-object v14, v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v15, 0x12c

    if-ge v14, v15, :cond_b

    .line 977
    const/4 v14, 0x0

    .line 978
    .local v14, "skip":Z
    iget-object v15, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v4, v11, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 979
    .end local v11    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .local v4, "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    :goto_7
    if-eqz v4, :cond_a

    .line 980
    iget-boolean v11, v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    if-nez v11, :cond_9

    iget-object v11, v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1, v11}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_8

    .line 984
    :cond_8
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v15, v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    check-cast v4, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    goto :goto_7

    .line 981
    :cond_9
    :goto_8
    const/4 v14, 0x1

    .line 982
    nop

    .line 986
    :cond_a
    if-eqz v14, :cond_b

    .line 987
    goto/16 :goto_a

    .line 993
    .end local v4    # "ainfo":Lcom/android/settings/applications/RunningState$AppProcessInfo;
    .end local v14    # "skip":Z
    :cond_b
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v11, v8, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 994
    .local v4, "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    if-nez v4, :cond_c

    .line 995
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    move-object v4, v11

    .line 996
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v14, v8, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v11, v14, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 998
    :cond_c
    iget-object v11, v8, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 999
    .local v11, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v11, :cond_d

    .line 1000
    const/4 v7, 0x1

    .line 1001
    new-instance v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v15, v8, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v12, v8, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-direct {v14, v2, v15, v12}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object v11, v14

    .line 1002
    iget-object v12, v8, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v4, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    :cond_d
    iget v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v12, v13, :cond_12

    .line 1006
    iget-wide v12, v8, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_e

    iget v12, v8, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    goto :goto_9

    :cond_e
    const/4 v12, 0x0

    .line 1007
    .local v12, "pid":I
    :goto_9
    iget v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v12, v13, :cond_11

    .line 1008
    const/4 v7, 0x1

    .line 1009
    iget v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v13, v12, :cond_11

    .line 1010
    iget v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v13, :cond_f

    .line 1011
    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v14, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->remove(I)V

    .line 1013
    :cond_f
    if-eqz v12, :cond_10

    .line 1014
    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v13, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1016
    :cond_10
    iput v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1019
    :cond_11
    iget-object v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->clear()V

    .line 1020
    iget v13, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1022
    .end local v12    # "pid":I
    :cond_12
    invoke-virtual {v11, v2, v8}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v12

    or-int v4, v7, v12

    .line 957
    .end local v7    # "changed":Z
    .end local v8    # "si":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v11    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .local v4, "changed":Z
    move v7, v4

    .end local v4    # "changed":Z
    .restart local v7    # "changed":Z
    :goto_a
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    const-wide/16 v12, 0x0

    goto/16 :goto_6

    .line 1027
    .end local v0    # "i":I
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b
    if-ge v0, v10, :cond_18

    .line 1028
    move-object/from16 v4, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v17    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1029
    .local v8, "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1030
    .restart local v11    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v11, :cond_15

    .line 1034
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1035
    if-nez v11, :cond_14

    .line 1036
    const/4 v7, 0x1

    .line 1037
    new-instance v12, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v14, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v12, v2, v13, v14}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    move-object v11, v12

    .line 1038
    iget v12, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1039
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v13, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1041
    :cond_14
    iget-object v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 1044
    :cond_15
    invoke-direct {v1, v8}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1045
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_16

    .line 1046
    const/4 v7, 0x1

    .line 1047
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_16
    iget v12, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1050
    const/4 v12, 0x1

    iput-boolean v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1051
    invoke-virtual {v11, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    goto :goto_c

    .line 1053
    :cond_17
    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1056
    :goto_c
    iget v12, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1057
    iput-object v8, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1027
    .end local v8    # "pi":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v11    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v17, v4

    goto :goto_b

    .line 1062
    .end local v0    # "i":I
    .end local v4    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v17    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_18
    move-object/from16 v4, v17

    .end local v17    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v4    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1063
    .local v0, "NRP":I
    move v8, v7

    move v7, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v7, "NRP":I
    .local v8, "changed":Z
    :goto_d
    if-ge v0, v7, :cond_1d

    .line 1064
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1065
    .restart local v11    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    iget v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v12, v13, :cond_1c

    .line 1066
    iget-object v12, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 1067
    .local v12, "clientPid":I
    if-eqz v12, :cond_1b

    .line 1068
    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1069
    .local v13, "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    if-nez v13, :cond_19

    .line 1070
    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v13, v14

    check-cast v13, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1072
    :cond_19
    if-eqz v13, :cond_1a

    .line 1073
    iget-object v14, v13, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    iget v15, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v14, v15, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1075
    .end local v13    # "client":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1a
    goto :goto_e

    .line 1079
    :cond_1b
    const/4 v13, 0x0

    iput-object v13, v11, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1081
    :goto_e
    add-int/lit8 v0, v0, 0x1

    .line 1082
    .end local v12    # "clientPid":I
    goto :goto_f

    .line 1083
    :cond_1c
    const/4 v8, 0x1

    .line 1084
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->remove(I)V

    .line 1085
    add-int/lit8 v7, v7, -0x1

    .line 1087
    .end local v11    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :goto_f
    goto :goto_d

    .line 1090
    .end local v0    # "i":I
    :cond_1d
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1091
    .local v0, "NHP":I
    move v11, v8

    move v8, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v8, "NHP":I
    .local v11, "changed":Z
    :goto_10
    if-ge v0, v8, :cond_20

    .line 1092
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1093
    .local v12, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    iget-boolean v13, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    if-eqz v13, :cond_1e

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v14, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1f

    .line 1094
    :cond_1e
    const/4 v11, 0x1

    .line 1095
    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1096
    add-int/lit8 v0, v0, -0x1

    .line 1097
    add-int/lit8 v8, v8, -0x1

    .line 1091
    .end local v12    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_1f
    const/4 v12, 0x1

    add-int/2addr v0, v12

    goto :goto_10

    .line 1104
    .end local v0    # "i":I
    :cond_20
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 1105
    .local v12, "NAP":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_11
    if-ge v0, v12, :cond_22

    .line 1106
    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1107
    .local v13, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    iget v14, v13, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v15, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v14, v15, :cond_21

    .line 1108
    iget v14, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    invoke-virtual {v13, v2, v3, v14}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v14

    or-int/2addr v11, v14

    .line 1105
    .end local v13    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1113
    .end local v0    # "i":I
    :cond_22
    const/4 v0, 0x0

    .line 1114
    .local v0, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v13, v11

    move-object v11, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v11, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v13, "changed":Z
    :goto_12
    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v0, v14, :cond_2b

    .line 1115
    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v14, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 1116
    .local v14, "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1117
    .local v15, "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :goto_13
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2a

    .line 1118
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v22, v4

    move-object/from16 v4, v17

    check-cast v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1119
    .local v4, "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    .local v22, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    move-object/from16 v23, v5

    iget v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .end local v5    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .local v23, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    iget v6, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v5, v6, :cond_26

    .line 1120
    invoke-virtual {v4, v3}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1121
    iget v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-nez v5, :cond_23

    .line 1124
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1140
    :cond_23
    iget-object v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1141
    .local v5, "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1142
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1143
    .local v6, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move-object/from16 v24, v3

    iget v3, v6, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v24, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v25, v6

    iget v6, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .end local v6    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    .local v25, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    if-eq v3, v6, :cond_24

    .line 1144
    const/4 v3, 0x1

    .line 1145
    .end local v13    # "changed":Z
    .local v3, "changed":Z
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 1147
    .end local v25    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    move v13, v3

    .line 1140
    .end local v3    # "changed":Z
    .restart local v13    # "changed":Z
    :cond_24
    move-object/from16 v3, v24

    goto :goto_14

    .line 1148
    .end local v4    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v5    # "sit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ServiceItem;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :cond_25
    move-object/from16 v24, v3

    .line 1116
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v4, v22

    move-object/from16 v5, v23

    goto :goto_15

    .line 1127
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_26
    move-object/from16 v24, v3

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    const/4 v13, 0x1

    .line 1128
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    .line 1129
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_28

    .line 1130
    if-nez v11, :cond_27

    .line 1131
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v3

    .line 1133
    :cond_27
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_28
    iget v3, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v3, :cond_29

    .line 1136
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v5, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1116
    .end local v4    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_29
    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v3, v24

    .end local v22    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v23    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .local v4, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .local v5, "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :goto_15
    move-object/from16 v6, p2

    goto/16 :goto_13

    .line 1114
    .end local v14    # "procs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v15    # "pit":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_2a
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v22    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v23    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v6, p2

    goto/16 :goto_12

    .line 1151
    .end local v0    # "i":I
    .end local v22    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v23    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v5    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_2b
    move-object/from16 v24, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v22    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v23    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_2c

    .line 1152
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_16
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2c

    .line 1153
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1154
    .local v3, "uid":I
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1152
    .end local v3    # "uid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 1158
    .end local v0    # "i":I
    :cond_2c
    if-eqz v13, :cond_43

    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 1161
    .local v3, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_17
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_33

    .line 1162
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

    .line 1163
    .local v5, "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1164
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1165
    const-wide v14, 0x7fffffffffffffffL

    iput-wide v14, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1166
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

    .line 1167
    .local v14, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    iget-object v15, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v15, :cond_2d

    iget-object v15, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v26, v4

    const/4 v4, 0x1

    and-int/2addr v15, v4

    if-eqz v15, :cond_2e

    .line 1170
    iput-boolean v4, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    goto :goto_1a

    .line 1172
    :cond_2d
    move-object/from16 v26, v4

    :cond_2e
    :goto_1a
    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v4, :cond_2f

    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v4, :cond_2f

    .line 1174
    const/4 v4, 0x0

    iput-boolean v4, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1175
    move-object/from16 v28, v6

    move/from16 v27, v7

    iget-wide v6, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .end local v7    # "NRP":I
    .local v27, "NRP":I
    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    move/from16 v30, v8

    move/from16 v29, v9

    iget-wide v8, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .end local v8    # "NHP":I
    .end local v9    # "NS":I
    .local v29, "NS":I
    .local v30, "NHP":I
    cmp-long v4, v6, v8

    if-lez v4, :cond_30

    .line 1176
    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v6, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .end local v14    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    goto :goto_1b

    .line 1179
    .end local v27    # "NRP":I
    .end local v29    # "NS":I
    .end local v30    # "NHP":I
    .restart local v7    # "NRP":I
    .restart local v8    # "NHP":I
    .restart local v9    # "NS":I
    :cond_2f
    move-object/from16 v28, v6

    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    .line 1166
    .end local v7    # "NRP":I
    .end local v8    # "NHP":I
    .end local v9    # "NS":I
    .restart local v27    # "NRP":I
    .restart local v29    # "NS":I
    .restart local v30    # "NHP":I
    :cond_30
    :goto_1b
    move-object/from16 v4, v26

    move/from16 v7, v27

    move-object/from16 v6, v28

    move/from16 v9, v29

    move/from16 v8, v30

    goto :goto_19

    .line 1180
    .end local v27    # "NRP":I
    .end local v29    # "NS":I
    .end local v30    # "NHP":I
    .restart local v7    # "NRP":I
    .restart local v8    # "NHP":I
    .restart local v9    # "NS":I
    :cond_31
    move-object/from16 v26, v4

    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    .end local v7    # "NRP":I
    .end local v8    # "NHP":I
    .end local v9    # "NS":I
    .restart local v27    # "NRP":I
    .restart local v29    # "NS":I
    .restart local v30    # "NHP":I
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    .end local v5    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    goto/16 :goto_18

    .line 1161
    .end local v27    # "NRP":I
    .end local v29    # "NS":I
    .end local v30    # "NHP":I
    .restart local v7    # "NRP":I
    .restart local v8    # "NHP":I
    .restart local v9    # "NS":I
    :cond_32
    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    .end local v7    # "NRP":I
    .end local v8    # "NHP":I
    .end local v9    # "NS":I
    .restart local v27    # "NRP":I
    .restart local v29    # "NS":I
    .restart local v30    # "NHP":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_17

    .line 1184
    .end local v0    # "i":I
    .end local v27    # "NRP":I
    .end local v29    # "NS":I
    .end local v30    # "NHP":I
    .restart local v7    # "NRP":I
    .restart local v8    # "NHP":I
    .restart local v9    # "NS":I
    :cond_33
    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    .end local v7    # "NRP":I
    .end local v8    # "NHP":I
    .end local v9    # "NS":I
    .restart local v27    # "NRP":I
    .restart local v29    # "NS":I
    .restart local v30    # "NHP":I
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 1187
    .local v4, "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 1188
    .local v5, "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1189
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_3c

    .line 1190
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1191
    .local v6, "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1193
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1195
    .local v7, "firstProc":I
    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4, v8}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1197
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    iget v8, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v8, :cond_34

    .line 1199
    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_34
    const/4 v8, 0x0

    .line 1204
    .local v8, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    const/4 v9, 0x0

    .line 1205
    .local v9, "haveAllMerged":Z
    const/4 v14, 0x0

    .line 1206
    .local v14, "needDivider":Z
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

    .line 1207
    .local v3, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    .local v31, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    iput-boolean v14, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1208
    const/4 v14, 0x1

    .line 1209
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    move/from16 v32, v7

    iget-object v7, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .end local v7    # "firstProc":I
    .local v32, "firstProc":I
    if-eqz v7, :cond_36

    .line 1211
    if-eqz v8, :cond_35

    iget-object v7, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v8, v7, :cond_35

    .line 1212
    const/4 v9, 0x0

    .line 1214
    :cond_35
    iget-object v7, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1218
    .end local v8    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .local v7, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move-object v8, v7

    goto :goto_1e

    .line 1216
    .end local v7    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .restart local v8    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_36
    const/4 v3, 0x0

    .line 1218
    .end local v9    # "haveAllMerged":Z
    .local v3, "haveAllMerged":Z
    move v9, v3

    .line 1206
    .end local v3    # "haveAllMerged":Z
    .restart local v9    # "haveAllMerged":Z
    :goto_1e
    move-object/from16 v3, v31

    move/from16 v7, v32

    goto :goto_1d

    .line 1220
    .end local v31    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v32    # "firstProc":I
    .local v3, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .local v7, "firstProc":I
    :cond_37
    move-object/from16 v31, v3

    move/from16 v32, v7

    .end local v3    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .end local v7    # "firstProc":I
    .restart local v31    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v32    # "firstProc":I
    if-eqz v9, :cond_38

    if-eqz v8, :cond_38

    iget-object v3, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    .line 1221
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-eq v3, v7, :cond_3a

    .line 1223
    :cond_38
    new-instance v3, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v3, v7}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    move-object v8, v3

    .line 1224
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

    .line 1225
    .local v7, "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    iget-object v15, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    iput-object v8, v7, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1227
    .end local v7    # "si":Lcom/android/settings/applications/RunningState$ServiceItem;
    goto :goto_1f

    .line 1228
    :cond_39
    iput-object v6, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1229
    iget-object v3, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1230
    move/from16 v3, v32

    .local v3, "mpi":I
    :goto_20
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v15, 0x1

    sub-int/2addr v7, v15

    if-ge v3, v7, :cond_3a

    .line 1231
    iget-object v7, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    iget-object v15, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 1235
    .end local v3    # "mpi":I
    :cond_3a
    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1236
    iget v3, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v7, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v3, v7, :cond_3b

    .line 1237
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-direct {v1, v2, v5, v3, v8}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_21

    .line 1239
    :cond_3b
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    .end local v6    # "pi":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v8    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v9    # "haveAllMerged":Z
    .end local v14    # "needDivider":Z
    .end local v32    # "firstProc":I
    :goto_21
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v31

    goto/16 :goto_1c

    .line 1245
    .end local v0    # "i":I
    .end local v31    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .local v3, "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    :cond_3c
    move-object/from16 v31, v3

    .end local v3    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .restart local v31    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1246
    .end local v30    # "NHP":I
    .local v8, "NHP":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_22
    if-ge v0, v8, :cond_40

    .line 1247
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1248
    .local v3, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v6, :cond_3f

    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-gtz v6, :cond_3f

    .line 1249
    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v6, :cond_3d

    .line 1250
    new-instance v6, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v6, v7}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1251
    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v3, v6, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1253
    :cond_3d
    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1254
    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget v6, v6, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v7, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v6, v7, :cond_3e

    .line 1255
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    iget-object v7, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_23

    .line 1258
    :cond_3e
    iget-object v6, v3, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1260
    :goto_23
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    .end local v3    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 1266
    .end local v0    # "i":I
    :cond_40
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1267
    .local v3, "NU":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_24
    if-ge v0, v3, :cond_42

    .line 1268
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1269
    .local v6, "user":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v7, v6, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v9, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v7, v9, :cond_41

    .line 1270
    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1267
    .end local v6    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1274
    .end local v0    # "i":I
    :cond_42
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1275
    :try_start_0
    iput-object v4, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1276
    iput-object v5, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1277
    monitor-exit v6

    .line 1282
    move/from16 v30, v8

    goto :goto_25

    .line 1277
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1282
    .end local v3    # "NU":I
    .end local v4    # "newItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$BaseItem;>;"
    .end local v5    # "newMergedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v27    # "NRP":I
    .end local v29    # "NS":I
    .end local v31    # "sortedProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$ProcessItem;>;"
    .local v7, "NRP":I
    .local v9, "NS":I
    :cond_43
    move/from16 v27, v7

    move/from16 v30, v8

    move/from16 v29, v9

    .end local v7    # "NRP":I
    .end local v8    # "NHP":I
    .end local v9    # "NS":I
    .restart local v27    # "NRP":I
    .restart local v29    # "NS":I
    .restart local v30    # "NHP":I
    :goto_25
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1283
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1284
    const/4 v0, 0x0

    .line 1285
    .local v0, "numBackgroundProcesses":I
    const/4 v3, 0x0

    .line 1286
    .local v3, "numForegroundProcesses":I
    const/4 v4, 0x0

    .line 1287
    .local v4, "numServiceProcesses":I
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1288
    .end local v27    # "NRP":I
    .local v5, "NRP":I
    move v6, v3

    move v3, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v3, "numBackgroundProcesses":I
    .local v6, "numForegroundProcesses":I
    :goto_26
    const/16 v7, 0xc8

    const/16 v8, 0x190

    if-ge v0, v5, :cond_47

    .line 1289
    iget-object v9, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1290
    .local v9, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    iget v14, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v15, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v14, v15, :cond_46

    .line 1293
    iget-object v14, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v14, v8, :cond_44

    .line 1295
    add-int/lit8 v3, v3, 0x1

    .line 1296
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1297
    :cond_44
    iget-object v8, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-gt v8, v7, :cond_45

    .line 1299
    add-int/lit8 v6, v6, 0x1

    .line 1300
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1302
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

    .line 1306
    :cond_46
    add-int/lit8 v4, v4, 0x1

    .line 1288
    .end local v9    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :goto_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1310
    .end local v0    # "i":I
    :cond_47
    const-wide/16 v14, 0x0

    .line 1311
    .local v14, "backgroundProcessMemory":J
    const-wide/16 v18, 0x0

    .line 1312
    .local v18, "foregroundProcessMemory":J
    const-wide/16 v20, 0x0

    .line 1313
    .local v20, "serviceProcessMemory":J
    const/4 v9, 0x0

    .line 1314
    .local v9, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v17, 0x0

    .line 1315
    .local v17, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    const/16 v16, 0x0

    move/from16 v25, v16

    .line 1317
    .local v25, "diffUsers":Z
    :try_start_1
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1318
    .local v0, "numProc":I
    new-array v7, v0, [I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1319
    .local v7, "pids":[I
    move/from16 v26, v16

    .local v26, "i":I
    :goto_28
    move/from16 v33, v26

    .end local v26    # "i":I
    .local v33, "i":I
    move/from16 v8, v33

    if-ge v8, v0, :cond_48

    .line 1320
    .end local v33    # "i":I
    .local v8, "i":I
    move/from16 v34, v0

    :try_start_2
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .end local v0    # "numProc":I
    .local v34, "numProc":I
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v0, v0, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    aput v0, v7, v8
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1319
    add-int/lit8 v26, v8, 0x1

    .end local v8    # "i":I
    .restart local v26    # "i":I
    move/from16 v0, v34

    const/16 v8, 0x190

    goto :goto_28

    .line 1364
    .end local v7    # "pids":[I
    .end local v26    # "i":I
    .end local v34    # "numProc":I
    :catch_0
    move-exception v0

    move/from16 v35, v5

    move/from16 v36, v10

    move-object/from16 v37, v11

    move/from16 v26, v13

    move-object v13, v9

    goto/16 :goto_33

    .line 1322
    .restart local v0    # "numProc":I
    .restart local v7    # "pids":[I
    :cond_48
    move/from16 v34, v0

    .end local v0    # "numProc":I
    .restart local v34    # "numProc":I
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1323
    invoke-interface {v0, v7}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1324
    .local v0, "pss":[J
    const/4 v8, 0x0

    .line 1325
    .local v8, "bgIndex":I
    move/from16 v26, v13

    move-object v13, v9

    move v9, v8

    move/from16 v8, v16

    .local v8, "i":I
    .local v9, "bgIndex":I
    .local v13, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v26, "changed":Z
    :goto_29
    move/from16 v35, v5

    :try_start_4
    array-length v5, v7

    .end local v5    # "NRP":I
    .local v35, "NRP":I
    if-ge v8, v5, :cond_53

    .line 1326
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$ProcessItem;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1327
    .local v5, "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    move/from16 v36, v10

    move-object/from16 v37, v11

    :try_start_5
    aget-wide v10, v0, v8

    .end local v10    # "NP":I
    .end local v11    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v36, "NP":I
    .local v37, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v38, v0

    iget v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .end local v0    # "pss":[J
    .local v38, "pss":[J
    invoke-virtual {v5, v2, v10, v11, v0}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v0

    or-int v26, v26, v0

    .line 1328
    iget v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v10, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v0, v10, :cond_49

    .line 1329
    iget-wide v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    add-long v20, v20, v10

    .line 1325
    move-object/from16 v39, v7

    .end local v5    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v7    # "pids":[I
    .local v39, "pids":[I
    :goto_2a
    const/16 v7, 0xc8

    goto/16 :goto_32

    .line 1330
    .end local v39    # "pids":[I
    .restart local v5    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v7    # "pids":[I
    :cond_49
    iget-object v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v10, 0x190

    if-lt v0, v10, :cond_51

    .line 1332
    iget-wide v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    add-long/2addr v14, v10

    .line 1334
    if-eqz v13, :cond_4b

    .line 1335
    new-instance v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v0, v10}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1336
    .local v0, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v5, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1337
    iget v10, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v11, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v10, v11, :cond_4a

    const/4 v10, 0x1

    goto :goto_2b

    :cond_4a
    move/from16 v10, v16

    :goto_2b
    or-int v25, v25, v10

    .line 1338
    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    :goto_2c
    move-object/from16 v39, v7

    goto/16 :goto_31

    .line 1340
    .end local v0    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_4b
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4d

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1341
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v0, v5, :cond_4c

    goto :goto_2d

    .line 1353
    :cond_4c
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_2c

    .line 1342
    :cond_4d
    :goto_2d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v10, v0

    .line 1343
    .end local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v10, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    move/from16 v0, v16

    .local v0, "bgi":I
    :goto_2e
    if-ge v0, v9, :cond_4f

    .line 1344
    :try_start_6
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1345
    .local v11, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v13, v11, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v39, v7

    iget v7, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .end local v7    # "pids":[I
    .restart local v39    # "pids":[I
    if-eq v13, v7, :cond_4e

    const/4 v7, 0x1

    goto :goto_2f

    :cond_4e
    move/from16 v7, v16

    :goto_2f
    or-int v25, v25, v7

    .line 1346
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v39

    goto :goto_2e

    .line 1364
    .end local v0    # "bgi":I
    .end local v5    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .end local v8    # "i":I
    .end local v9    # "bgIndex":I
    .end local v11    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v34    # "numProc":I
    .end local v38    # "pss":[J
    .end local v39    # "pids":[I
    :catch_1
    move-exception v0

    move-object v13, v10

    goto/16 :goto_33

    .line 1348
    .restart local v5    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    .restart local v7    # "pids":[I
    .restart local v8    # "i":I
    .restart local v9    # "bgIndex":I
    .restart local v34    # "numProc":I
    .restart local v38    # "pss":[J
    :cond_4f
    move-object/from16 v39, v7

    .end local v7    # "pids":[I
    .restart local v39    # "pids":[I
    new-instance v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v0, v7}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1349
    .local v0, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v7, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v5, v7, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1350
    iget v7, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v11, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v7, v11, :cond_50

    const/4 v7, 0x1

    goto :goto_30

    :cond_50
    move/from16 v7, v16

    :goto_30
    or-int v25, v25, v7

    .line 1351
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1353
    move-object v13, v10

    .line 1356
    .end local v10    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_31
    const/4 v7, 0x1

    :try_start_7
    invoke-virtual {v0, v2, v7}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1357
    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1358
    add-int/lit8 v9, v9, 0x1

    .line 1359
    .end local v0    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    goto/16 :goto_2a

    .end local v39    # "pids":[I
    .restart local v7    # "pids":[I
    :cond_51
    move-object/from16 v39, v7

    .end local v7    # "pids":[I
    .restart local v39    # "pids":[I
    iget-object v0, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v7, 0xc8

    if-gt v0, v7, :cond_52

    .line 1361
    iget-wide v10, v5, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    add-long v18, v18, v10

    .line 1325
    .end local v5    # "proc":Lcom/android/settings/applications/RunningState$ProcessItem;
    :cond_52
    :goto_32
    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v35

    move/from16 v10, v36

    move-object/from16 v11, v37

    move-object/from16 v0, v38

    move-object/from16 v7, v39

    goto/16 :goto_29

    .line 1364
    .end local v8    # "i":I
    .end local v9    # "bgIndex":I
    .end local v34    # "numProc":I
    .end local v38    # "pss":[J
    .end local v39    # "pids":[I
    :catch_2
    move-exception v0

    goto :goto_33

    .line 1365
    .end local v36    # "NP":I
    .end local v37    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "NP":I
    .local v11, "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_53
    move/from16 v36, v10

    move-object/from16 v37, v11

    .end local v10    # "NP":I
    .end local v11    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v36    # "NP":I
    .restart local v37    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_33

    .line 1364
    .end local v36    # "NP":I
    .end local v37    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "NP":I
    .restart local v11    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_3
    move-exception v0

    move/from16 v36, v10

    move-object/from16 v37, v11

    .end local v10    # "NP":I
    .end local v11    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v36    # "NP":I
    .restart local v37    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_33

    .end local v26    # "changed":Z
    .end local v35    # "NRP":I
    .end local v36    # "NP":I
    .end local v37    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v5, "NRP":I
    .local v9, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v10    # "NP":I
    .restart local v11    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v13, "changed":Z
    :catch_4
    move-exception v0

    move/from16 v35, v5

    move/from16 v36, v10

    move-object/from16 v37, v11

    move/from16 v26, v13

    move-object v13, v9

    .line 1367
    .end local v5    # "NRP":I
    .end local v10    # "NP":I
    .end local v11    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "foregroundProcessMemory":J
    .end local v20    # "serviceProcessMemory":J
    .local v7, "foregroundProcessMemory":J
    .local v9, "serviceProcessMemory":J
    .local v13, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v26    # "changed":Z
    .restart local v35    # "NRP":I
    .restart local v36    # "NP":I
    .restart local v37    # "uidToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_33
    move-wide/from16 v7, v18

    move-wide/from16 v9, v20

    if-nez v13, :cond_55

    .line 1369
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_55

    .line 1370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v0

    .line 1371
    move/from16 v0, v16

    .local v0, "bgi":I
    :goto_34
    if-ge v0, v3, :cond_55

    .line 1372
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1373
    .local v5, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v11, v5, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move/from16 v40, v12

    iget v12, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .end local v12    # "NAP":I
    .local v40, "NAP":I
    if-eq v11, v12, :cond_54

    const/4 v11, 0x1

    goto :goto_35

    :cond_54
    move/from16 v11, v16

    :goto_35
    or-int v25, v25, v11

    .line 1374
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    .end local v5    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    add-int/lit8 v0, v0, 0x1

    move/from16 v12, v40

    goto :goto_34

    .line 1379
    .end local v0    # "bgi":I
    .end local v40    # "NAP":I
    .restart local v12    # "NAP":I
    :cond_55
    move/from16 v40, v12

    .end local v12    # "NAP":I
    .restart local v40    # "NAP":I
    if-eqz v13, :cond_5b

    .line 1382
    if-nez v25, :cond_56

    .line 1384
    move-object/from16 v17, v13

    .line 1412
    move-object/from16 v42, v13

    move-object/from16 v5, v17

    goto :goto_39

    .line 1388
    :cond_56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .end local v17    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v0, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1390
    .local v5, "NB":I
    move/from16 v11, v16

    .local v11, "i":I
    :goto_36
    if-ge v11, v5, :cond_58

    .line 1391
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1392
    .local v12, "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    move/from16 v41, v5

    iget v5, v12, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    .end local v5    # "NB":I
    .local v41, "NB":I
    move-object/from16 v42, v13

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .end local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v42, "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    if-eq v5, v13, :cond_57

    .line 1393
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-direct {v1, v2, v0, v5, v12}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_37

    .line 1396
    :cond_57
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    .end local v12    # "mergedItem":Lcom/android/settings/applications/RunningState$MergedItem;
    :goto_37
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v41

    move-object/from16 v13, v42

    goto :goto_36

    .line 1401
    .end local v11    # "i":I
    .end local v41    # "NB":I
    .end local v42    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v5    # "NB":I
    .restart local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_58
    move/from16 v41, v5

    move-object/from16 v42, v13

    .end local v5    # "NB":I
    .end local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v41    # "NB":I
    .restart local v42    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 1402
    .local v5, "NU":I
    move/from16 v11, v16

    .restart local v11    # "i":I
    :goto_38
    if-ge v11, v5, :cond_5a

    .line 1403
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1404
    .local v12, "user":Lcom/android/settings/applications/RunningState$MergedItem;
    iget v13, v12, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move-object/from16 v43, v0

    iget v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .end local v0    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v43, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    if-ne v13, v0, :cond_59

    .line 1405
    const/4 v13, 0x1

    invoke-virtual {v12, v2, v13}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1406
    invoke-virtual {v12, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1402
    .end local v12    # "user":Lcom/android/settings/applications/RunningState$MergedItem;
    :cond_59
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v43

    goto :goto_38

    .line 1412
    .end local v5    # "NU":I
    .end local v11    # "i":I
    .end local v41    # "NB":I
    .end local v43    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v0    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_5a
    move-object/from16 v43, v0

    move-object/from16 v5, v43

    .end local v0    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v43    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    goto :goto_39

    .end local v42    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v43    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v17    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_5b
    move-object/from16 v42, v13

    move-object/from16 v5, v17

    .end local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .end local v17    # "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v5, "newUserBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .local v16, "i":I
    .restart local v42    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_39
    move/from16 v0, v16

    .end local v16    # "i":I
    .local v0, "i":I
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_5c

    .line 1413
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v11, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1412
    add-int/lit8 v16, v0, 0x1

    .end local v0    # "i":I
    .restart local v16    # "i":I
    goto :goto_39

    .line 1416
    .end local v16    # "i":I
    :cond_5c
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1417
    :try_start_8
    iput v3, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1418
    iput v6, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1419
    iput v4, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1420
    iput-wide v14, v1, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1421
    iput-wide v7, v1, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1422
    iput-wide v9, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1423
    if-eqz v42, :cond_5d

    .line 1424
    move-object/from16 v13, v42

    :try_start_9
    iput-object v13, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1425
    .end local v42    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    iput-object v5, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1426
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    if-eqz v0, :cond_5e

    .line 1427
    const/16 v26, 0x1

    goto :goto_3a

    .line 1430
    .end local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v42    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_5d
    move-object/from16 v13, v42

    .end local v42    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_5e
    :goto_3a
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    if-nez v0, :cond_5f

    .line 1431
    const/4 v12, 0x1

    iput-boolean v12, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1432
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1434
    :cond_5f
    monitor-exit v11

    .line 1436
    return v26

    .line 1434
    .end local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v42    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v13, v42

    .end local v42    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    .restart local v13    # "newBackgroundItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
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

    .line 1452
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 1454
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

    .line 1446
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 1448
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasData()Z
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v0

    return v1

    .line 822
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pause()V
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 839
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 840
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 6
    .param p1, "listener"    # Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 793
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 795
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 796
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result v2

    .line 797
    .local v2, "usersChanged":Z
    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v4, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 798
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v3

    .line 799
    .local v3, "configChanged":Z
    const/4 v4, 0x2

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    .line 800
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 801
    iget-object v5, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v5, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 802
    iget-object v5, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v5, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 803
    iget-object v5, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v5, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 805
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 806
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 808
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 809
    .end local v2    # "usersChanged":Z
    .end local v3    # "configChanged":Z
    monitor-exit v0

    .line 810
    return-void

    .line 809
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 2
    .param p1, "watching"    # Z

    .line 1440
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1442
    monitor-exit v0

    .line 1443
    return-void

    .line 1442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateNow()V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 815
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 816
    monitor-exit v0

    .line 817
    return-void

    .line 816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method waitForData()V
    .locals 4

    .line 826
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 829
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 830
    :catch_0
    move-exception v1

    .line 831
    :goto_1
    goto :goto_0

    .line 833
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
