.class public Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePolicyData"
.end annotation


# instance fields
.field doNotAskCredentialsOnBoot:Z

.field final mAcceptedCaCertificates:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAdminBroadcastPending:Z

.field final mAdminList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurrentInputMethodSet:Z

.field final mDelegationMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mDeviceProvisioningConfigApplied:Z

.field mFailedPasswordAttempts:I

.field mInitBundle:Landroid/os/PersistableBundle;

.field mLastBugReportRequestTime:J

.field mLastMaximumTimeToLock:J

.field mLastNetworkLogsRetrievalTime:J

.field mLastSecurityLogRetrievalTime:J

.field mLockTaskFeatures:I

.field mLockTaskPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOwnerInstalledCaCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPaired:Z

.field mPasswordOwner:I

.field mPasswordTokenHandle:J

.field mPasswordValidAtLastCheckpoint:Z

.field mPermissionPolicy:I

.field final mRemovingAdmins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field mRestrictionsProvider:Landroid/content/ComponentName;

.field mStatusBarDisabled:Z

.field mUserHandle:I

.field mUserProvisioningState:I

.field mUserSetupComplete:Z


# direct methods
.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mFailedPasswordAttempts:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordValidAtLastCheckpoint:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordOwner:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastMaximumTimeToLock:J

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserSetupComplete:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPaired:Z

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDeviceProvisioningConfigApplied:Z

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminList:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mRemovingAdmins:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskPackages:Ljava/util/List;

    const/16 v3, 0x10

    iput v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLockTaskFeatures:I

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mStatusBarDisabled:Z

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mDelegationMap:Landroid/util/ArrayMap;

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->doNotAskCredentialsOnBoot:Z

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAffiliationIds:Ljava/util/Set;

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastSecurityLogRetrievalTime:J

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastBugReportRequestTime:J

    iput-wide v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mLastNetworkLogsRetrievalTime:J

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mCurrentInputMethodSet:Z

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    iput-boolean v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminBroadcastPending:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mInitBundle:Landroid/os/PersistableBundle;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mPasswordTokenHandle:J

    iput p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mUserHandle:I

    return-void
.end method
