.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence;,
        Lcom/android/server/pm/Settings$VersionInfo;,
        Lcom/android/server/pm/Settings$RestoredPermissionGrant;,
        Lcom/android/server/pm/Settings$KernelPackageState;,
        Lcom/android/server/pm/Settings$DatabaseVersion;
    }
.end annotation


# static fields
.field private static final ATTR_APP_LINK_GENERATION:Ljava/lang/String; = "app-link-generation"

.field private static final ATTR_BLOCKED:Ljava/lang/String; = "blocked"

.field private static final ATTR_BLOCK_UNINSTALL:Ljava/lang/String; = "blockUninstall"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CE_DATA_INODE:Ljava/lang/String; = "ceDataInode"

.field private static final ATTR_CODE:Ljava/lang/String; = "code"

.field private static final ATTR_DATABASE_VERSION:Ljava/lang/String; = "databaseVersion"

.field private static final ATTR_DOMAIN_VERIFICATON_STATE:Ljava/lang/String; = "domainVerificationStatus"

.field private static final ATTR_ENABLED:Ljava/lang/String; = "enabled"

.field private static final ATTR_ENABLED_CALLER:Ljava/lang/String; = "enabledCaller"

.field private static final ATTR_ENFORCEMENT:Ljava/lang/String; = "enforcement"

.field private static final ATTR_FINGERPRINT:Ljava/lang/String; = "fingerprint"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "flags"

.field private static final ATTR_GRANTED:Ljava/lang/String; = "granted"

.field private static final ATTR_HARMFUL_APP_WARNING:Ljava/lang/String; = "harmful-app-warning"

.field private static final ATTR_HIDDEN:Ljava/lang/String; = "hidden"

.field private static final ATTR_INSTALLED:Ljava/lang/String; = "inst"

.field private static final ATTR_INSTALL_REASON:Ljava/lang/String; = "install-reason"

.field private static final ATTR_INSTANT_APP:Ljava/lang/String; = "instant-app"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NOT_LAUNCHED:Ljava/lang/String; = "nl"

.field public static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_REVOKE_ON_UPGRADE:Ljava/lang/String; = "rou"

.field private static final ATTR_SDK_VERSION:Ljava/lang/String; = "sdkVersion"

.field private static final ATTR_STOPPED:Ljava/lang/String; = "stopped"

.field private static final ATTR_SUSPENDED:Ljava/lang/String; = "suspended"

.field private static final ATTR_SUSPENDING_PACKAGE:Ljava/lang/String; = "suspending-package"

.field private static final ATTR_SUSPEND_DIALOG_MESSAGE:Ljava/lang/String; = "suspend_dialog_message"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_FIXED:Ljava/lang/String; = "fixed"

.field private static final ATTR_USER_SET:Ljava/lang/String; = "set"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_VIRTUAL_PRELOAD:Ljava/lang/String; = "virtual-preload"

.field private static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final CURRENT_DATABASE_VERSION:I = 0x3

.field private static final DEBUG_KERNEL:Z = false

.field private static final DEBUG_MU:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEBUG_STOPPED:Z = false

.field static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_HIDDEN:I = 0x0

.field private static PRE_M_APP_INFO_FLAG_PRIVILEGED:I = 0x0

.field private static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field private static final RUNTIME_PERMISSIONS_FILE_NAME:Ljava/lang/String; = "runtime-permissions.xml"

.field private static final TAG:Ljava/lang/String; = "PackageSettings"

.field private static final TAG_ALL_INTENT_FILTER_VERIFICATION:Ljava/lang/String; = "all-intent-filter-verifications"

.field private static final TAG_BLOCK_UNINSTALL:Ljava/lang/String; = "block-uninstall"

.field private static final TAG_BLOCK_UNINSTALL_PACKAGES:Ljava/lang/String; = "block-uninstall-packages"

.field private static final TAG_CHILD_PACKAGE:Ljava/lang/String; = "child-package"

.field static final TAG_CROSS_PROFILE_INTENT_FILTERS:Ljava/lang/String; = "crossProfile-intent-filters"

.field private static final TAG_DEFAULT_APPS:Ljava/lang/String; = "default-apps"

.field private static final TAG_DEFAULT_BROWSER:Ljava/lang/String; = "default-browser"

.field private static final TAG_DEFAULT_DIALER:Ljava/lang/String; = "default-dialer"

.field private static final TAG_DISABLED_COMPONENTS:Ljava/lang/String; = "disabled-components"

.field private static final TAG_DOMAIN_VERIFICATION:Ljava/lang/String; = "domain-verification"

.field private static final TAG_ENABLED_COMPONENTS:Ljava/lang/String; = "enabled-components"

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_PACKAGE_RESTRICTIONS:Ljava/lang/String; = "package-restrictions"

.field private static final TAG_PERMISSIONS:Ljava/lang/String; = "perms"

.field private static final TAG_PERMISSION_ENTRY:Ljava/lang/String; = "perm"

.field private static final TAG_PERSISTENT_PREFERRED_ACTIVITIES:Ljava/lang/String; = "persistent-preferred-activities"

.field private static final TAG_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "read-external-storage"

.field private static final TAG_RESTORED_RUNTIME_PERMISSIONS:Ljava/lang/String; = "restored-perms"

.field private static final TAG_RUNTIME_PERMISSIONS:Ljava/lang/String; = "runtime-permissions"

.field private static final TAG_SHARED_USER:Ljava/lang/String; = "shared-user"

.field private static final TAG_SUSPENDED_APP_EXTRAS:Ljava/lang/String; = "suspended-app-extras"

.field private static final TAG_SUSPENDED_LAUNCHER_EXTRAS:Ljava/lang/String; = "suspended-launcher-extras"

.field private static final TAG_USES_STATIC_LIB:Ljava/lang/String; = "uses-static-lib"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field private static final USER_RUNTIME_GRANT_MASK:I = 0xb

.field private static mFirstAvailableUid:I


# instance fields
.field private final mBackupSettingsFilename:Ljava/io/File;

.field private final mBackupStoppedPackagesFilename:Ljava/io/File;

.field private final mBlockUninstallPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final mCrossProfileIntentResolvers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/CrossProfileIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultBrowserApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultDialerApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledSysPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mInstallerPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMapping:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$KernelPackageState;",
            ">;"
        }
    .end annotation
.end field

.field private final mKernelMappingFilename:Ljava/io/File;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field private final mKeySetRefs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final mNextAppLinkGeneration:Landroid/util/SparseIntArray;

.field private final mOtherUserIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageListFilename:Ljava/io/File;

.field final mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPackagesToBeCleaned:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PackageCleanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPastSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

.field final mPersistentPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PersistentPreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field final mPreferredActivities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PreferredIntentResolver;",
            ">;"
        }
    .end annotation
.end field

.field mReadExternalStorageEnforced:Ljava/lang/Boolean;

.field final mReadMessages:Ljava/lang/StringBuilder;

.field private final mRenamedPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredUserGrants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/Settings$RestoredPermissionGrant;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field private final mSettingsFilename:Ljava/io/File;

.field final mSharedUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field private final mStoppedPackagesFilename:Ljava/io/File;

.field private final mSystemDir:Ljava/io/File;

.field private final mUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field private mVersion:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x0

    sput v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    const/high16 v1, 0x8000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    const/high16 v1, 0x10000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    const/high16 v1, 0x20000000

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    const/high16 v1, 0x40000000    # 2.0f

    sput v1, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    const/16 v1, 0x1e

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    const-string v4, "SYSTEM"

    aput-object v4, v2, v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "DEBUGGABLE"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    const-string v7, "HAS_CODE"

    const/4 v8, 0x5

    aput-object v7, v2, v8

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v2, v10

    const-string v9, "PERSISTENT"

    const/4 v11, 0x7

    aput-object v9, v2, v11

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v7

    const-string v12, "FACTORY_TEST"

    const/16 v13, 0x9

    aput-object v12, v2, v13

    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0xa

    aput-object v14, v2, v15

    const-string v14, "ALLOW_TASK_REPARENTING"

    const/16 v16, 0xb

    aput-object v14, v2, v16

    const/16 v14, 0x40

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0xc

    aput-object v14, v2, v17

    const-string v14, "ALLOW_CLEAR_USER_DATA"

    const/16 v17, 0xd

    aput-object v14, v2, v17

    const/16 v14, 0x80

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0xe

    aput-object v14, v2, v17

    const-string v14, "UPDATED_SYSTEM_APP"

    const/16 v17, 0xf

    aput-object v14, v2, v17

    const/16 v14, 0x100

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v9

    const-string v14, "TEST_ONLY"

    const/16 v17, 0x11

    aput-object v14, v2, v17

    const/16 v14, 0x4000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x12

    aput-object v14, v2, v17

    const-string v14, "VM_SAFE_MODE"

    const/16 v17, 0x13

    aput-object v14, v2, v17

    const v14, 0x8000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x14

    aput-object v14, v2, v17

    const-string v14, "ALLOW_BACKUP"

    const/16 v17, 0x15

    aput-object v14, v2, v17

    const/high16 v14, 0x10000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x16

    aput-object v14, v2, v17

    const-string v14, "KILL_AFTER_RESTORE"

    const/16 v17, 0x17

    aput-object v14, v2, v17

    const/high16 v14, 0x20000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x18

    aput-object v14, v2, v17

    const-string v14, "RESTORE_ANY_VERSION"

    const/16 v17, 0x19

    aput-object v14, v2, v17

    const/high16 v14, 0x40000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1a

    aput-object v14, v2, v17

    const-string v14, "EXTERNAL_STORAGE"

    const/16 v17, 0x1b

    aput-object v14, v2, v17

    const/high16 v14, 0x100000

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v17, 0x1c

    aput-object v14, v2, v17

    const-string v14, "LARGE_HEAP"

    const/16 v17, 0x1d

    aput-object v14, v2, v17

    sput-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    const/16 v2, 0x28

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v14, 0x400

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v2, v0

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    aput-object v0, v2, v3

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    aput-object v0, v2, v6

    const/16 v0, 0x800

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    const-string v0, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    aput-object v0, v2, v8

    const/16 v0, 0x2000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v10

    const-string v0, "BACKUP_IN_FOREGROUND"

    aput-object v0, v2, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    const-string v0, "CANT_SAVE_STATE"

    aput-object v0, v2, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v15

    const-string v0, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    aput-object v0, v2, v16

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0xc

    aput-object v0, v2, v4

    const-string v0, "DIRECT_BOOT_AWARE"

    const/16 v4, 0xd

    aput-object v0, v2, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v4, 0xe

    aput-object v0, v2, v4

    const-string v0, "FORWARD_LOCK"

    const/16 v4, 0xf

    aput-object v0, v2, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v9

    const-string v0, "HAS_DOMAIN_URLS"

    const/16 v4, 0x11

    aput-object v0, v2, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x12

    aput-object v0, v2, v3

    const-string v0, "HIDDEN"

    const/16 v3, 0x13

    aput-object v0, v2, v3

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x14

    aput-object v0, v2, v3

    const-string v0, "EPHEMERAL"

    const/16 v3, 0x15

    aput-object v0, v2, v3

    const v0, 0x8000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v2, v3

    const-string v0, "ISOLATED_SPLIT_LOADING"

    const/16 v3, 0x17

    aput-object v0, v2, v3

    const/high16 v0, 0x20000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x18

    aput-object v0, v2, v3

    const-string v0, "OEM"

    const/16 v3, 0x19

    aput-object v0, v2, v3

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1a

    aput-object v0, v2, v3

    const-string v0, "PARTIALLY_DIRECT_BOOT_AWARE"

    const/16 v3, 0x1b

    aput-object v0, v2, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x1c

    aput-object v0, v2, v3

    const-string v0, "PRIVILEGED"

    const/16 v3, 0x1d

    aput-object v0, v2, v3

    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "REQUIRED_FOR_SYSTEM_USER"

    const/16 v1, 0x1f

    aput-object v0, v2, v1

    const/16 v0, 0x4000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v12

    const-string v0, "STATIC_SHARED_LIBRARY"

    const/16 v1, 0x21

    aput-object v0, v2, v1

    const/high16 v0, 0x40000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x22

    aput-object v0, v2, v1

    const-string v0, "VENDOR"

    const/16 v1, 0x23

    aput-object v0, v2, v1

    const/high16 v0, 0x80000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x24

    aput-object v0, v2, v1

    const-string v0, "PRODUCT"

    const/16 v1, 0x25

    aput-object v0, v2, v1

    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x26

    aput-object v0, v2, v1

    const-string v0, "VIRTUAL_PRELOAD"

    const/16 v1, 0x27

    aput-object v0, v2, v1

    sput-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/pm/Settings;-><init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/server/pm/permission/PermissionSettings;Ljava/lang/Object;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/pm/KeySetManagerService;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iput-object p3, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/server/pm/Settings;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1fd

    invoke-static {v0, v2, v1, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "packages.list"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 v1, 0x1a0

    const/16 v2, 0x3e8

    const/16 v3, 0x408

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    new-instance v0, Ljava/io/File;

    const-string v1, "/config/sdcardfs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "packages-stopped-backup.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/pm/Settings;I)Ljava/io/File;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/Settings;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    return-object v0
.end method

.method private addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v0, p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; I am not changing its files so it will probably fail!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    iput-object p2, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    :cond_2
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_3

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IntentFilterVerificationInfo;

    if-eqz v1, :cond_6

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_5

    const-string v2, "PackageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Applying restored IVI for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    :cond_6
    return-void
.end method

.method private addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x4e1f

    if-le p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x6

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit16 v3, p1, -0x2710

    :goto_0
    if-lt v3, v2, :cond_1

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding duplicate user id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate shared id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 25

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p9

    move-object v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->updateFlagsForResolve(IILandroid/content/Intent;IZ)I

    move-result v1

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService;->mActivities:Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v7, v3, v1, v4}, Lcom/android/server/pm/PackageManagerService$ActivityIntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Queried "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " results: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v11, 0x1

    if-le v6, v11, :cond_14

    const/4 v6, 0x0

    const/4 v12, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Landroid/content/ComponentName;

    move v15, v0

    move v0, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    if-ge v0, v14, :cond_6

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroid/content/ComponentName;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v11, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v13, v0

    iget-object v2, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v2, v2, Landroid/content/pm/ResolveInfo;->match:I

    if-lt v2, v5, :cond_5

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_1

    const-string v2, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Result "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": non-system!"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aget-object v12, v13, v0

    goto/16 :goto_2

    :cond_2
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_3

    const-string v2, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": default!"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget v4, v4, Landroid/content/pm/ResolveInfo;->match:I

    move v6, v2

    move v15, v4

    goto :goto_1

    :cond_4
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v2, :cond_5

    const-string v2, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Result "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": skipped"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, p1

    const/4 v4, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_6
    :goto_2
    if-eqz v12, :cond_7

    if-ge v5, v15, :cond_7

    const/4 v12, 0x0

    :cond_7
    if-eqz v6, :cond_10

    if-nez v12, :cond_10

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/high16 v0, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_a

    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_b
    if-eqz p6, :cond_c

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v11

    invoke-virtual {v2, v0, v11}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_c
    if-eqz v9, :cond_d

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    :cond_d
    if-eqz v10, :cond_e

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    :cond_e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move/from16 v22, v1

    move-object/from16 v1, p4

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v11, "PackageSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v0

    const-string v0, "Malformed mimetype "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v22, v1

    move-object/from16 v1, p4

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_f
    move/from16 v22, v1

    move-object/from16 v1, p4

    :goto_4
    new-instance v0, Lcom/android/server/pm/PreferredActivity;

    const/16 v19, 0x1

    move-object v14, v0

    move v11, v15

    move-object v15, v2

    move/from16 v16, v11

    move-object/from16 v17, v13

    move-object/from16 v18, v1

    invoke-direct/range {v14 .. v19}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    move-object/from16 v14, p0

    move/from16 v15, p9

    move-object/from16 v23, v2

    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    nop

    move-object/from16 v24, v3

    goto/16 :goto_6

    :cond_10
    move-object/from16 v14, p0

    move/from16 v22, v1

    move v11, v15

    move-object/from16 v1, p4

    move/from16 v15, p9

    if-nez v12, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No component "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " found setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; possible matches are "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v20, 0x0

    :goto_5
    move/from16 v2, v20

    move-object/from16 v24, v3

    array-length v3, v13

    if-ge v2, v3, :cond_12

    if-lez v2, :cond_11

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    aget-object v3, v13, v2

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v20, v2, 0x1

    move-object/from16 v3, v24

    goto :goto_5

    :cond_12
    const-string v2, "PackageSettings"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_13
    move-object/from16 v24, v3

    const-string v0, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting preferred "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; found third party match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    goto :goto_7

    :cond_14
    move-object/from16 v14, p0

    move/from16 v15, p9

    move/from16 v22, v1

    move-object/from16 v24, v3

    move-object/from16 v1, p4

    const-string v2, "PackageSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No potential matches found for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " while setting preferred "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v11, v0

    :goto_7
    return-void
.end method

.method private applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 26

    move-object/from16 v0, p2

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v1, :cond_0

    const-string v1, "PackageSettings"

    const-string v2, "Processing preferred:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/util/LogPrinter;

    const/4 v2, 0x3

    const-string v3, "PackageSettings"

    invoke-direct {v1, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0xc0000

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move v14, v2

    move v2, v3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, 0x10000

    or-int/2addr v14, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    const/4 v4, 0x0

    move/from16 v16, v2

    move v2, v3

    move v15, v4

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v2, v4, :cond_b

    const/4 v4, 0x1

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    move v15, v5

    :cond_3
    move/from16 v17, v4

    move v4, v3

    :goto_3
    move v12, v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v4

    if-ge v12, v4, :cond_4

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v11, v4

    invoke-virtual {v11, v13}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v9, v4

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v9

    move v7, v14

    move-object/from16 v8, p3

    move-object/from16 v20, v9

    move-object v9, v13

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v11, v18

    move/from16 v18, v12

    move-object/from16 v12, v19

    move-object v3, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    const/16 v17, 0x0

    add-int/lit8 v4, v18, 0x1

    move-object v13, v3

    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move-object v3, v13

    const/4 v4, 0x0

    :goto_4
    move v13, v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-ge v13, v4, :cond_9

    const/4 v4, 0x1

    invoke-virtual {v0, v13}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v12

    move/from16 v18, v17

    move/from16 v17, v4

    const/4 v4, 0x0

    :goto_5
    move v11, v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v4

    if-ge v11, v4, :cond_6

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v10, v4

    invoke-virtual {v10, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_5
    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v8, v4

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v8

    move v7, v14

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    move-object/from16 v21, v9

    move-object v9, v3

    move-object/from16 v22, v10

    move-object/from16 v10, v19

    move/from16 v19, v11

    move-object v11, v12

    move-object/from16 v24, v12

    move-object/from16 v12, v21

    move/from16 v25, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    const/16 v23, 0x0

    move/from16 v18, v23

    move/from16 v17, v23

    add-int/lit8 v4, v19, 0x1

    move-object/from16 v12, v24

    move/from16 v13, v25

    goto :goto_5

    :cond_6
    move-object/from16 v24, v12

    move/from16 v25, v13

    const/16 v23, 0x0

    if-eqz v17, :cond_8

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    invoke-virtual {v13, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object/from16 v12, v24

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v12}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v11, v4

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v11

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v3

    move-object/from16 v20, v11

    move-object v11, v12

    move-object/from16 v21, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    const/4 v4, 0x0

    move/from16 v17, v4

    goto :goto_6

    :cond_8
    move/from16 v17, v18

    :goto_6
    add-int/lit8 v4, v25, 0x1

    goto/16 :goto_4

    :cond_9
    const/16 v23, 0x0

    if-eqz v17, :cond_a

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    invoke-virtual {v13, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v12, v4

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v12

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v3

    move-object/from16 v19, v12

    move-object/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_a
    const/16 v16, 0x0

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v23

    goto/16 :goto_2

    :cond_b
    move/from16 v23, v3

    move/from16 v2, v23

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-ge v2, v3, :cond_f

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v15, :cond_e

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move-object v13, v4

    move/from16 v4, v23

    :goto_8
    move v12, v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v4

    if-ge v12, v4, :cond_d

    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v10, v4

    invoke-virtual {v13, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v10

    move v7, v14

    move-object/from16 v8, p3

    move-object v9, v11

    move-object/from16 v20, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v11

    move-object/from16 v11, v18

    move/from16 v18, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_9

    :cond_c
    move/from16 v18, v12

    move-object/from16 v19, v13

    :goto_9
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v13, v19

    goto :goto_8

    :cond_d
    goto :goto_a

    :cond_e
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v13, v4

    invoke-virtual {v13, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v6, v13

    move v7, v14

    move-object/from16 v8, p3

    move-object/from16 v17, v13

    move/from16 v13, p4

    invoke-direct/range {v4 .. v13}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :goto_a
    const/16 v16, 0x0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_f
    if-eqz v16, :cond_10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v4, v1

    move v5, v14

    move-object/from16 v6, p3

    move/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_10
    return-void
.end method

.method static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZLjava/lang/String;Ljava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JII",
            "Landroid/os/UserHandle;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p4

    move/from16 v11, p12

    move-object/from16 v9, p19

    if-eqz v14, :cond_2

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is adopting original package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v0, v14, v15}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    nop

    if-eqz v9, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    move-object/from16 v10, p5

    iput-object v10, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    move-object/from16 v7, p18

    iput-object v7, v0, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    iput v11, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    move/from16 v6, p13

    iput v6, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move-wide/from16 v1, p10

    iput-wide v1, v0, Lcom/android/server/pm/PackageSetting;->versionCode:J

    move-object/from16 v14, p21

    iput-object v14, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v14, p22

    iput-object v14, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    move-object/from16 v9, p20

    move/from16 v18, v11

    move-object v1, v12

    move-object v2, v13

    goto/16 :goto_9

    :cond_2
    move-object/from16 v10, p5

    move-object/from16 v4, p6

    move-object/from16 v8, p7

    move-object/from16 v5, p8

    move-object/from16 v3, p9

    move/from16 v6, p13

    move-object/from16 v7, p18

    move-object/from16 v14, p22

    new-instance v19, Lcom/android/server/pm/PackageSetting;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v19

    move-object v1, v15

    move-object/from16 v2, p3

    move-object v3, v10

    move-object v5, v8

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, v16

    move-wide/from16 v9, p10

    move/from16 v18, v11

    move/from16 v12, p13

    move-object/from16 v13, p18

    move-object/from16 v14, p19

    move/from16 v15, v17

    move-object/from16 v16, p21

    move-object/from16 v17, p22

    invoke-direct/range {v0 .. v17}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    and-int/lit8 v2, v18, 0x1

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    if-nez v2, :cond_a

    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    if-eqz p14, :cond_3

    invoke-virtual/range {p14 .. p14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    if-eqz v2, :cond_9

    if-eqz p15, :cond_9

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    if-eqz p14, :cond_6

    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v9, p20

    invoke-static {v9, v8}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_4
    move-object/from16 v9, p20

    :goto_3
    iget v8, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v8, :cond_5

    goto :goto_4

    :cond_5
    move v8, v4

    goto :goto_5

    :cond_6
    move-object/from16 v9, p20

    :cond_7
    :goto_4
    const/4 v8, 0x1

    :goto_5
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v10, v3, :cond_8

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    const/4 v8, 0x0

    :cond_8
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v20, v0

    move/from16 v21, v10

    move/from16 v25, v8

    move/from16 v34, p16

    move/from16 v35, p17

    invoke-virtual/range {v20 .. v42}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object/from16 v9, p20

    goto :goto_7

    :cond_a
    move-object/from16 v9, p20

    if-eqz p15, :cond_c

    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, v3, :cond_b

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_b

    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v4, v7}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_b
    goto :goto_6

    :cond_c
    :goto_7
    if-eqz v1, :cond_d

    iget v2, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v2, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move-object/from16 v2, p2

    goto :goto_9

    :cond_d
    move-object/from16 v2, p2

    if-eqz v2, :cond_e

    new-instance v3, Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v3, v4}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget v3, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    iput v3, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/pm/permission/PermissionsState;->copyFrom(Lcom/android/server/pm/permission/PermissionsState;)V

    invoke-static/range {p20 .. p20}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    nop

    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Landroid/util/ArraySet;I)V

    nop

    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Landroid/util/ArraySet;I)V

    goto :goto_8

    :cond_e
    :goto_9
    return-object v0
.end method

.method private static dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    if-eqz v0, :cond_1

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    if-eqz v1, :cond_2

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/UserManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return-object v2
.end method

.method private getUserPackagesStateBackupFile(I)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "package-restrictions-backup.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getUserPackagesStateFile(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getUserRuntimePermissionsFile(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v3, "users"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "runtime-permissions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private newUserIdLPw(Ljava/lang/Object;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    :goto_0
    const/16 v2, 0x2710

    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v2, v1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x270f

    if-le v0, v1, :cond_2

    const/4 v1, -0x1

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v0

    return v2
.end method

.method private static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    not-int v2, v1

    and-int/2addr p1, v2

    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const-string v1, ""

    return-object v1
.end method

.method static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 3

    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p2, v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "item"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    if-nez v0, :cond_3

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v5

    :cond_3
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/CrossProfileIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_4
    return-void
.end method

.method private readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p2}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v4, v4, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v3, v4, p3}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1
    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    goto :goto_0

    :cond_5
    return-void
.end method

.method private readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1
    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <disabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "name"

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v0, "realName"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v0, "codePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "resourcePath"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "requiredCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v4, "nativeLibraryPath"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string/jumbo v4, "parentPackageName"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v4, "primaryCpuAbi"

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "secondaryCpuAbi"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v5, "cpuAbiOverride"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-nez v4, :cond_0

    if-eqz v23, :cond_0

    move-object/from16 v4, v23

    :cond_0
    move-object/from16 v28, v4

    if-nez v0, :cond_1

    move-object v0, v13

    :cond_1
    move-object v14, v0

    const-string/jumbo v0, "version"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-wide/16 v4, 0x0

    if-eqz v12, :cond_2

    :try_start_0
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    :goto_0
    move-wide/from16 v29, v4

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x1

    or-int/lit8 v31, v0, 0x1

    invoke-static {v13}, Lcom/android/server/pm/PackageManagerService;->locationIsPrivileged(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    or-int/lit8 v0, v4, 0x8

    move/from16 v32, v0

    goto :goto_1

    :cond_3
    move/from16 v32, v4

    :goto_1
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v4, v0

    move-object v5, v15

    move-object/from16 v6, v22

    move-object/from16 v9, v24

    move-object/from16 v10, v28

    move-object/from16 v11, v26

    move-object/from16 v33, v12

    move-object/from16 v12, v27

    move-object/from16 v34, v13

    move-object/from16 v35, v14

    move-wide/from16 v13, v29

    move-object/from16 v36, v15

    move/from16 v15, v31

    move/from16 v16, v32

    move-object/from16 v17, v25

    invoke-direct/range {v4 .. v21}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    const-string v0, "ft"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    if-eqz v5, :cond_4

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    goto :goto_3

    :cond_4
    const-string/jumbo v0, "ts"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    :try_start_2
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    :cond_5
    :goto_3
    const-string/jumbo v0, "it"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    :try_start_3
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    :cond_6
    :goto_4
    const-string/jumbo v0, "ut"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    :try_start_4
    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    :cond_7
    :goto_5
    const-string/jumbo v0, "userId"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    :cond_8
    move v7, v6

    :goto_6
    iput v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    iget v7, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    if-gtz v7, :cond_a

    const-string/jumbo v7, "sharedUserId"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    nop

    :cond_9
    iput v6, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    :cond_b
    :goto_7
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_12

    const/4 v7, 0x3

    if-ne v8, v7, :cond_c

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_12

    :cond_c
    if-eq v8, v7, :cond_b

    const/4 v7, 0x4

    if-ne v8, v7, :cond_d

    goto :goto_7

    :cond_d
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "perms"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_7

    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v10, "child-package"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string/jumbo v7, "name"

    invoke-interface {v2, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v10, :cond_f

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    :cond_f
    iget-object v10, v4, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v10, "uses-static-lib"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v1, v2, v4}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_7

    :cond_11
    const/4 v7, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <updated-package>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7

    :cond_12
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v7, v36

    invoke-virtual {v3, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSettingBase;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    return-void
.end method

.method private readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    const-string/jumbo v5, "name"

    invoke-interface {p2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, p3}, Lcom/android/server/pm/PackageSettingBase;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1
    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <enabled-components>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_2
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 97
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v14, p0

    move-object/from16 v13, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    move-object/from16 v34, v11

    const/4 v11, 0x0

    :try_start_0
    const-string/jumbo v0, "name"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3a

    move-object v1, v0

    :try_start_1
    const-string/jumbo v0, "realName"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const-string/jumbo v0, "userId"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_39

    move-object v3, v0

    :try_start_2
    const-string/jumbo v0, "uidError"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_38

    move-object/from16 v36, v0

    :try_start_3
    const-string/jumbo v0, "sharedUserId"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_37

    move-object v4, v0

    :try_start_4
    const-string v0, "codePath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_36

    move-object v5, v0

    :try_start_5
    const-string/jumbo v0, "resourcePath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_35

    move-object/from16 v37, v0

    :try_start_6
    const-string/jumbo v0, "requiredCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_34

    move-object/from16 v38, v0

    :try_start_7
    const-string/jumbo v0, "parentPackageName"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v0, "nativeLibraryPath"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_33

    :try_start_8
    const-string/jumbo v0, "primaryCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_32

    move-object v7, v0

    :try_start_9
    const-string/jumbo v0, "secondaryCpuAbi"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_31

    :try_start_a
    const-string v0, "cpuAbiOverride"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_30

    :try_start_b
    const-string/jumbo v0, "updateAvailable"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_2f

    move-object/from16 v20, v0

    if-nez v7, :cond_0

    if-eqz v38, :cond_0

    move-object/from16 v0, v38

    move-object/from16 v34, v0

    goto :goto_0

    :cond_0
    move-object/from16 v34, v7

    :goto_0
    :try_start_c
    const-string/jumbo v0, "version"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_2e

    move-object v10, v0

    if-eqz v10, :cond_1

    :try_start_d
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v39
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_0

    move-wide/from16 v31, v39

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    move-wide/from16 v31, v32

    :goto_1
    :try_start_e
    const-string/jumbo v0, "installer"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_2d

    move-object/from16 v33, v0

    :try_start_f
    const-string/jumbo v0, "isOrphaned"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_2c

    move-object/from16 v57, v0

    :try_start_10
    const-string/jumbo v0, "volumeUuid"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_2b

    move-object/from16 v58, v0

    :try_start_11
    const-string v0, "categoryHint"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_2a

    move-object v7, v0

    if-eqz v7, :cond_2

    :try_start_12
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_1

    nop

    move/from16 v21, v0

    goto :goto_2

    :catch_1
    move-exception v0

    :cond_2
    :goto_2
    :try_start_13
    const-string/jumbo v0, "publicFlags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_29

    move-object v12, v0

    if-eqz v12, :cond_4

    :try_start_14
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_2

    move/from16 v22, v0

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_3
    :try_start_15
    const-string/jumbo v0, "privateFlags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_4

    move-object v12, v0

    if-eqz v12, :cond_3

    :try_start_16
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_3

    nop

    move/from16 v23, v0

    goto :goto_4

    :catch_3
    move-exception v0

    nop

    :cond_3
    :goto_4
    move-object/from16 v19, v12

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v35, v7

    move-object/from16 v19, v12

    move-object v13, v14

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    const/4 v14, 0x5

    move-object/from16 v24, v2

    goto/16 :goto_2a

    :cond_4
    :try_start_17
    const-string v0, "flags"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_29

    move-object v12, v0

    if-eqz v12, :cond_9

    :try_start_18
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_5

    move/from16 v22, v0

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    :try_start_19
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    and-int v0, v22, v0

    if-eqz v0, :cond_5

    or-int/lit8 v23, v23, 0x1

    :cond_5
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    and-int v0, v22, v0

    if-eqz v0, :cond_6

    or-int/lit8 v0, v23, 0x2

    move/from16 v23, v0

    :cond_6
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    and-int v0, v22, v0

    if-eqz v0, :cond_7

    or-int/lit8 v0, v23, 0x4

    move/from16 v23, v0

    :cond_7
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I

    and-int v0, v22, v0

    if-eqz v0, :cond_8

    or-int/lit8 v0, v23, 0x8

    move/from16 v23, v0

    :cond_8
    sget v0, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_HIDDEN:I

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_CANT_SAVE_STATE:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_FORWARD_LOCK:I

    or-int v0, v0, v16

    sget v16, Lcom/android/server/pm/Settings;->PRE_M_APP_INFO_FLAG_PRIVILEGED:I
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_4

    or-int v0, v0, v16

    not-int v0, v0

    and-int v0, v22, v0

    goto :goto_7

    :cond_9
    :try_start_1a
    const-string/jumbo v0, "system"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_29

    move-object v12, v0

    if-eqz v12, :cond_b

    :try_start_1b
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    :goto_6
    or-int v0, v22, v0

    goto :goto_7

    :cond_b
    or-int/lit8 v0, v22, 0x1

    :goto_7
    move/from16 v22, v0

    goto :goto_4

    :goto_8
    :try_start_1c
    const-string v0, "ft"

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_28

    move-object v12, v0

    const/16 v11, 0x10

    if-eqz v12, :cond_d

    :try_start_1d
    invoke-static {v12, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_6

    move-wide/from16 v24, v16

    :goto_9
    nop

    :cond_c
    :goto_a
    move-wide/from16 v60, v24

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_9

    :cond_d
    :try_start_1e
    const-string/jumbo v0, "ts"

    const/4 v11, 0x0

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_28

    move-object v12, v0

    if-eqz v12, :cond_c

    :try_start_1f
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_7

    move-wide/from16 v24, v16

    goto :goto_a

    :catch_7
    move-exception v0

    goto :goto_a

    :goto_b
    :try_start_20
    const-string/jumbo v0, "it"

    const/4 v11, 0x0

    invoke-interface {v13, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_27

    move-object v11, v0

    if-eqz v11, :cond_e

    const/16 v12, 0x10

    :try_start_21
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_8

    move-wide/from16 v26, v16

    goto :goto_c

    :catch_8
    move-exception v0

    :cond_e
    :goto_c
    move-wide/from16 v62, v26

    :try_start_22
    const-string/jumbo v0, "ut"

    const/4 v12, 0x0

    invoke-interface {v13, v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_26

    move-object v11, v0

    if-eqz v11, :cond_f

    const/16 v12, 0x10

    :try_start_23
    invoke-static {v11, v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v16
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_9

    move-wide/from16 v28, v16

    goto :goto_d

    :catch_9
    move-exception v0

    :cond_f
    :goto_d
    move-wide/from16 v64, v28

    :try_start_24
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_25

    if-eqz v0, :cond_10

    :try_start_25
    const-string v0, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_a

    move-object/from16 v66, v7

    :try_start_26
    const-string v7, "Reading package: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " userId="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " sharedUserId="

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :catch_a
    move-exception v0

    move-object/from16 v66, v7

    move-object/from16 v24, v2

    move-object v13, v14

    move-object/from16 v7, v37

    move-object/from16 v35, v66

    const/4 v14, 0x5

    goto/16 :goto_2a

    :cond_10
    move-object/from16 v66, v7

    :goto_e
    if-eqz v3, :cond_11

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_11

    :catch_b
    move-exception v0

    move-object/from16 v24, v2

    move-object v13, v14

    move-object/from16 v7, v37

    :goto_f
    move-object/from16 v35, v66

    :goto_10
    const/4 v14, 0x5

    goto/16 :goto_2a

    :cond_11
    const/4 v0, 0x0

    :goto_11
    if-eqz v4, :cond_12

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_b

    goto :goto_12

    :cond_12
    const/4 v7, 0x0

    :goto_12
    move v12, v7

    if-nez v37, :cond_13

    move-object v7, v5

    goto :goto_13

    :cond_13
    move-object/from16 v7, v37

    :goto_13
    if-eqz v2, :cond_14

    :try_start_27
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v16
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_c

    move-object/from16 v2, v16

    goto :goto_14

    :catch_c
    move-exception v0

    move-object/from16 v24, v2

    move-object v13, v14

    goto :goto_f

    :cond_14
    :goto_14
    move-object/from16 v24, v2

    if-nez v1, :cond_15

    :try_start_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_e

    move-object/from16 v67, v3

    :try_start_29
    const-string v3, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_f

    const/4 v3, 0x5

    :try_start_2a
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_d

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v10, v14

    move-wide/from16 v79, v60

    move-wide/from16 v82, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v4, v67

    const/4 v3, 0x5

    :goto_15
    move-object v14, v7

    goto/16 :goto_1e

    :catch_d
    move-exception v0

    move-object v13, v14

    move-object/from16 v35, v66

    move v14, v3

    move-object/from16 v3, v67

    goto/16 :goto_2a

    :catch_e
    move-exception v0

    move-object/from16 v67, v3

    move-object v13, v14

    move-object/from16 v35, v66

    const/4 v14, 0x5

    goto/16 :goto_2a

    :cond_15
    move-object/from16 v67, v3

    if-nez v5, :cond_16

    :try_start_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_f

    const/4 v3, 0x5

    :try_start_2c
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_d

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v10, v14

    move-wide/from16 v79, v60

    move-wide/from16 v82, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v4, v67

    goto :goto_15

    :catch_f
    move-exception v0

    move-object v13, v14

    move-object/from16 v35, v66

    move-object/from16 v3, v67

    goto/16 :goto_10

    :cond_16
    const/4 v3, 0x5

    if-lez v0, :cond_19

    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_19

    move-object/from16 v68, v4

    :try_start_2e
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_18

    move-object/from16 v69, v5

    :try_start_2f
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_17

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v70, v1

    move-object v1, v14

    move/from16 v25, v3

    move-object/from16 v71, v67

    move-object/from16 v3, v24

    move-object/from16 v72, v68

    move-object/from16 v73, v69

    move-object/from16 v74, v7

    move-object/from16 v35, v66

    move-object/from16 v7, v34

    move-object/from16 v59, v10

    move v10, v0

    move-object/from16 v25, v11

    move/from16 v75, v12

    move-wide/from16 v11, v31

    move/from16 v13, v22

    move/from16 v14, v23

    :try_start_30
    invoke-virtual/range {v1 .. v18}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_16

    :try_start_31
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_31} :catch_15

    if-eqz v2, :cond_17

    :try_start_32
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_10

    move-object/from16 v11, v70

    :try_start_33
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :catch_10
    move-exception v0

    move-object/from16 v11, v70

    move-object/from16 v30, v1

    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-object/from16 v13, p0

    const/4 v14, 0x5

    goto/16 :goto_2a

    :cond_17
    move-object/from16 v11, v70

    :goto_16
    if-nez v1, :cond_18

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure adding uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " while parsing settings at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_33} :catch_11

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    goto :goto_18

    :catch_11
    move-exception v0

    move-object/from16 v30, v1

    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    :goto_17
    move-object/from16 v13, p0

    goto/16 :goto_10

    :cond_18
    move-wide/from16 v3, v60

    :try_start_34
    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_14

    move-wide/from16 v12, v62

    :try_start_35
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_35} :catch_13

    move-wide/from16 v76, v12

    move-wide/from16 v12, v64

    :try_start_36
    iput-wide v12, v1, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_12

    :goto_18
    move-object/from16 v30, v1

    move-wide/from16 v79, v3

    move-object/from16 v4, v71

    move-object/from16 v1, v72

    move-object/from16 v78, v73

    move-object/from16 v14, v74

    move-wide/from16 v82, v76

    const/4 v3, 0x5

    move-object/from16 v10, p0

    goto/16 :goto_1e

    :catch_12
    move-exception v0

    move-object/from16 v30, v1

    move-wide/from16 v60, v3

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-wide/from16 v62, v76

    goto :goto_17

    :catch_13
    move-exception v0

    move-wide/from16 v76, v12

    move-wide/from16 v12, v64

    move-object/from16 v30, v1

    move-wide/from16 v60, v3

    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-wide/from16 v62, v76

    move-object/from16 v13, p0

    const/4 v14, 0x5

    goto/16 :goto_2a

    :catch_14
    move-exception v0

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v30, v1

    move-wide/from16 v60, v3

    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-object/from16 v13, p0

    const/4 v14, 0x5

    goto/16 :goto_2a

    :catch_15
    move-exception v0

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v11, v70

    move-object/from16 v30, v1

    goto :goto_19

    :catch_16
    move-exception v0

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v11, v70

    :goto_19
    move-object v1, v11

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v7, v74

    move-object/from16 v13, p0

    const/4 v14, 0x5

    goto/16 :goto_2a

    :catch_17
    move-exception v0

    move-object v11, v1

    move-object/from16 v74, v7

    move-object/from16 v59, v10

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object/from16 v73, v69

    move-object v13, v14

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    move-object/from16 v5, v73

    const/4 v14, 0x5

    goto/16 :goto_2a

    :catch_18
    move-exception v0

    move-object v11, v1

    move-object/from16 v73, v5

    move-object/from16 v74, v7

    move-object/from16 v59, v10

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v71, v67

    move-object/from16 v72, v68

    move-object v13, v14

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    const/4 v14, 0x5

    goto/16 :goto_2a

    :catch_19
    move-exception v0

    move-object v11, v1

    move-object/from16 v72, v4

    move-object/from16 v73, v5

    move-object/from16 v74, v7

    move-object/from16 v59, v10

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v71, v67

    move-object v13, v14

    move-object/from16 v3, v71

    move-object/from16 v4, v72

    const/4 v14, 0x5

    goto/16 :goto_2a

    :cond_19
    move-object/from16 v72, v4

    move-object/from16 v73, v5

    move-object/from16 v74, v7

    move-object/from16 v59, v10

    move-object/from16 v25, v11

    move/from16 v75, v12

    move-wide/from16 v3, v60

    move-wide/from16 v76, v62

    move-wide/from16 v12, v64

    move-object/from16 v35, v66

    move-object/from16 v71, v67

    move-object v11, v1

    move-object/from16 v1, v72

    if-eqz v1, :cond_1c

    move/from16 v2, v75

    if-lez v2, :cond_1b

    :try_start_37
    new-instance v5, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v40

    new-instance v7, Ljava/io/File;
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_37} :catch_20

    move-object/from16 v14, v73

    :try_start_38
    invoke-direct {v7, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_1f

    move-object/from16 v78, v14

    move-object/from16 v14, v74

    :try_start_39
    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v53, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v39, v5

    move-object/from16 v41, v24

    move-object/from16 v42, v7

    move-object/from16 v43, v10

    move-object/from16 v44, v6

    move-object/from16 v45, v34

    move-object/from16 v46, v8

    move-object/from16 v47, v9

    move-wide/from16 v48, v31

    move/from16 v50, v22

    move/from16 v51, v23

    move-object/from16 v52, v15

    move/from16 v54, v2

    invoke-direct/range {v39 .. v56}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_39} :catch_1e

    :try_start_3a
    invoke-virtual {v5, v3, v4}, Lcom/android/server/pm/PackageSetting;->setTimeStamp(J)V
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_1d

    move-wide/from16 v79, v3

    move-wide/from16 v3, v76

    :try_start_3b
    iput-wide v3, v5, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    iput-wide v12, v5, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3b} :catch_1c

    move-object/from16 v10, p0

    :try_start_3c
    iget-object v7, v10, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v7, :cond_1a

    const-string v7, "PackageManager"

    move/from16 v81, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_1b

    move-wide/from16 v82, v3

    :try_start_3d
    const-string v3, "Reading package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": sharedUserId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_3d} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v0

    move-object v4, v1

    move-object/from16 v30, v5

    goto/16 :goto_1d

    :cond_1a
    move-wide/from16 v82, v3

    :goto_1a
    move-object/from16 v30, v5

    move-object/from16 v4, v71

    const/4 v3, 0x5

    goto/16 :goto_1e

    :catch_1b
    move-exception v0

    move-wide/from16 v82, v3

    move-object v4, v1

    move-object/from16 v30, v5

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    const/4 v14, 0x5

    move-object v13, v10

    move-object/from16 v10, v59

    goto :goto_1b

    :catch_1c
    move-exception v0

    move-wide/from16 v82, v3

    move-object v4, v1

    move-object/from16 v30, v5

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move-object/from16 v13, p0

    const/4 v14, 0x5

    :goto_1b
    goto/16 :goto_2a

    :catch_1d
    move-exception v0

    move-wide/from16 v79, v3

    move-wide/from16 v82, v76

    move-object v4, v1

    move-object/from16 v30, v5

    goto :goto_1c

    :catch_1e
    move-exception v0

    move-wide/from16 v79, v3

    move-wide/from16 v82, v76

    move-object v4, v1

    :goto_1c
    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move-object/from16 v13, p0

    const/4 v14, 0x5

    goto/16 :goto_2a

    :catch_1f
    move-exception v0

    move-wide/from16 v79, v3

    move-object/from16 v78, v14

    move-object/from16 v14, v74

    move-wide/from16 v82, v76

    move-object v4, v1

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move-object/from16 v13, p0

    const/4 v14, 0x5

    goto/16 :goto_2a

    :catch_20
    move-exception v0

    move-wide/from16 v79, v3

    move-object/from16 v78, v73

    move-object/from16 v14, v74

    move-wide/from16 v82, v76

    move-object v4, v1

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move-object/from16 v13, p0

    const/4 v14, 0x5

    goto/16 :goto_2a

    :cond_1b
    move/from16 v81, v0

    move-wide/from16 v79, v3

    move-object/from16 v78, v73

    move-object/from16 v14, v74

    move-wide/from16 v82, v76

    move-object/from16 v10, p0

    :try_start_3e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has bad sharedId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_3e} :catch_22

    const/4 v3, 0x5

    :try_start_3f
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_3f} :catch_21

    move-object/from16 v4, v71

    goto/16 :goto_1e

    :catch_21
    move-exception v0

    move-object v4, v1

    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move v14, v3

    move-object v13, v10

    move-object/from16 v10, v59

    move-object/from16 v3, v71

    goto/16 :goto_2a

    :catch_22
    move-exception v0

    move-object v4, v1

    :goto_1d
    move-object v1, v11

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v3, v71

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    const/4 v14, 0x5

    move-object v13, v10

    move-object/from16 v10, v59

    goto/16 :goto_2a

    :cond_1c
    move/from16 v81, v0

    move-wide/from16 v79, v3

    move-object/from16 v78, v73

    move-object/from16 v14, v74

    move/from16 v2, v75

    move-wide/from16 v82, v76

    const/4 v3, 0x5

    move-object/from16 v10, p0

    :try_start_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has bad userId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_40} :catch_24

    move-object/from16 v4, v71

    :try_start_41
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_41} :catch_23

    :goto_1e
    nop

    move-object v15, v1

    move-object v7, v6

    move-object/from16 v17, v9

    move-wide/from16 v64, v12

    move-object/from16 v16, v14

    move/from16 v6, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v36

    move-object/from16 v5, v58

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move v14, v3

    move-object v12, v4

    move-object v9, v8

    move-object v13, v10

    move-object/from16 v10, v20

    move-object/from16 v3, v33

    move-object/from16 v8, v34

    move-object/from16 v4, v57

    goto/16 :goto_2b

    :catch_23
    move-exception v0

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move v14, v3

    move-object v3, v4

    move-object v13, v10

    move-object/from16 v10, v59

    move-object v4, v1

    move-object v1, v11

    goto/16 :goto_2a

    :catch_24
    move-exception v0

    move-object/from16 v4, v71

    move-wide/from16 v64, v12

    move-object v7, v14

    move-object/from16 v5, v78

    move-wide/from16 v60, v79

    move-wide/from16 v62, v82

    move v14, v3

    move-object v3, v4

    move-object v13, v10

    move-object/from16 v10, v59

    move-object v4, v1

    move-object v1, v11

    goto/16 :goto_2a

    :catch_25
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-wide/from16 v79, v60

    move-wide/from16 v82, v62

    move-wide/from16 v12, v64

    move-object v4, v3

    const/4 v3, 0x5

    move-object/from16 v24, v2

    move-object v13, v14

    move-object/from16 v7, v37

    move v14, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v11

    goto/16 :goto_2a

    :catch_26
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-wide/from16 v79, v60

    move-wide/from16 v82, v62

    move-object v4, v3

    const/4 v3, 0x5

    move-object/from16 v24, v2

    move-object v13, v14

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    move v14, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v11

    goto/16 :goto_2a

    :catch_27
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-wide/from16 v79, v60

    move-object v4, v3

    const/4 v3, 0x5

    move-object/from16 v24, v2

    move-object v13, v14

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    move v14, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v11

    goto/16 :goto_2a

    :catch_28
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v4, v3

    const/4 v3, 0x5

    goto :goto_1f

    :catch_29
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v35, v7

    move-object/from16 v59, v10

    move-object v4, v3

    const/4 v3, 0x5

    move-object/from16 v19, v12

    :goto_1f
    move-object v13, v14

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    move-object/from16 v24, v2

    move v14, v3

    move-object v3, v4

    move-object v4, v1

    move-object v1, v11

    goto/16 :goto_2a

    :catch_2a
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v4, v3

    move-object v13, v14

    goto :goto_22

    :catch_2b
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v4, v3

    move-object v13, v14

    goto :goto_21

    :catch_2c
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v4, v3

    move-object v13, v14

    goto :goto_20

    :catch_2d
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object/from16 v59, v10

    move-object v4, v3

    move-object v13, v14

    move-object/from16 v33, v16

    :goto_20
    move-object/from16 v57, v17

    :goto_21
    move-object/from16 v58, v18

    :goto_22
    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v7, v37

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v1, v11

    move-object/from16 v19, v12

    goto/16 :goto_2a

    :catch_2e
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v4, v3

    goto :goto_23

    :catch_2f
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v4, v3

    move-object/from16 v34, v7

    :goto_23
    move-object v13, v14

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v7, v37

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v1, v11

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    goto/16 :goto_28

    :catch_30
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v4, v3

    move-object v13, v14

    goto :goto_24

    :catch_31
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    move-object v8, v10

    :goto_24
    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v9, v34

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object/from16 v34, v7

    move-object v1, v11

    move-object/from16 v19, v12

    move-object/from16 v33, v16

    move-object/from16 v7, v37

    goto/16 :goto_28

    :catch_32
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    goto :goto_26

    :catch_33
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    goto :goto_25

    :catch_34
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    move-object/from16 v38, v7

    :goto_25
    move-object v6, v8

    :goto_26
    move-object v8, v10

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v7, v37

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v1, v11

    move-object/from16 v19, v12

    goto :goto_27

    :catch_35
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object/from16 v78, v5

    move-object v13, v14

    move-object v4, v3

    move-object/from16 v38, v7

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    :goto_27
    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    :goto_28
    goto/16 :goto_2a

    :catch_36
    move-exception v0

    move-object v11, v1

    move-object v1, v4

    move-object v13, v14

    move-object v4, v3

    move-object/from16 v38, v7

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    const/4 v14, 0x5

    move-object v4, v1

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object v1, v11

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    goto/16 :goto_2a

    :catch_37
    move-exception v0

    move-object v11, v1

    move-object v1, v3

    move-object v13, v14

    move-object/from16 v38, v7

    move-object v1, v11

    goto :goto_29

    :catch_38
    move-exception v0

    move-object v11, v1

    move-object v1, v3

    move-object v13, v14

    move-object/from16 v38, v7

    move-object v1, v11

    move-object/from16 v36, v15

    :goto_29
    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    const/4 v14, 0x5

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    goto/16 :goto_2a

    :catch_39
    move-exception v0

    move-object v11, v1

    move-object v13, v14

    const/4 v14, 0x5

    move-object/from16 v38, v7

    move-object/from16 v36, v15

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    goto :goto_2a

    :catch_3a
    move-exception v0

    move-object v13, v14

    const/4 v14, 0x5

    move-object/from16 v38, v7

    move-object/from16 v36, v15

    move-object/from16 v57, v17

    move-object/from16 v58, v18

    move-object/from16 v35, v19

    move-wide/from16 v60, v24

    move-wide/from16 v62, v26

    move-wide/from16 v64, v28

    move-object/from16 v24, v2

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object/from16 v19, v12

    move-object/from16 v10, v31

    move-wide/from16 v31, v32

    move-object/from16 v33, v16

    move-object/from16 v96, v34

    move-object/from16 v34, v9

    move-object/from16 v9, v96

    :goto_2a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in package manager settings: package "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has bad userId "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " at "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object v11, v1

    move-object v12, v3

    move-object v15, v4

    move-object/from16 v78, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    move-object/from16 v59, v10

    move-object/from16 v10, v20

    move-object/from16 v1, v30

    move-object/from16 v3, v33

    move-object/from16 v2, v36

    move-object/from16 v4, v57

    move-object/from16 v5, v58

    move-object v7, v6

    move-object v9, v8

    move/from16 v6, v21

    move-object/from16 v8, v34

    :goto_2b
    if-eqz v1, :cond_34

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->uidError:Z

    iput-object v3, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    iput-object v5, v1, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    iput v6, v1, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    iput-object v7, v1, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iput-object v8, v1, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iput-object v9, v1, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    const-string v0, "enabled"

    move-object/from16 v14, p1

    move-object/from16 v84, v2

    move-object/from16 v85, v4

    const/4 v2, 0x0

    invoke-interface {v14, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    :try_start_42
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_42} :catch_3c

    move-object/from16 v86, v5

    const/4 v5, 0x0

    :try_start_43
    invoke-virtual {v1, v0, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_43} :catch_3b

    nop

    move/from16 v87, v6

    goto :goto_2e

    :catch_3b
    move-exception v0

    goto :goto_2c

    :catch_3c
    move-exception v0

    move-object/from16 v86, v5

    const/4 v5, 0x0

    :goto_2c
    const-string/jumbo v2, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move/from16 v87, v6

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v6, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_2d

    :cond_1d
    move/from16 v87, v6

    const/4 v2, 0x0

    const/4 v6, 0x1

    const-string v6, "false"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_2d

    :cond_1e
    const-string v6, "default"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-virtual {v1, v5, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_2d

    :cond_1f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has bad enabled value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x5

    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_2d
    goto :goto_2e

    :cond_20
    move-object/from16 v86, v5

    move/from16 v87, v6

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v5, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    :goto_2e
    if-eqz v3, :cond_21

    iget-object v0, v13, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :goto_2f
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v6, v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_33

    const/4 v2, 0x3

    if-ne v6, v2, :cond_23

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_22

    goto :goto_30

    :cond_22
    move-object/from16 v89, v3

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    goto/16 :goto_3a

    :cond_23
    :goto_30
    if-eq v6, v2, :cond_32

    const/4 v2, 0x4

    if-ne v6, v2, :cond_24

    nop

    move/from16 v88, v0

    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    goto/16 :goto_39

    :cond_24
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "disabled-components"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x0

    invoke-direct {v13, v1, v14, v5}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_31
    move/from16 v88, v0

    :goto_32
    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move/from16 v91, v6

    move-object/from16 v92, v7

    :goto_33
    move-object/from16 v95, v8

    const/4 v3, 0x1

    :goto_34
    const/4 v4, 0x0

    :goto_35
    const/4 v5, 0x5

    goto/16 :goto_38

    :cond_25
    const/4 v5, 0x0

    const-string v5, "enabled-components"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x0

    invoke-direct {v13, v1, v14, v5}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSettingBase;Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_31

    :cond_26
    const/4 v5, 0x0

    const-string/jumbo v5, "sigs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    move/from16 v88, v0

    iget-object v0, v13, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v5, v14, v0}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_32

    :cond_27
    move/from16 v88, v0

    const-string/jumbo v0, "perms"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    nop

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v13, v14, v0}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move v3, v5

    move/from16 v91, v6

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    goto :goto_34

    :cond_28
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string/jumbo v0, "identifier"

    const/4 v5, 0x0

    invoke-interface {v14, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v89, v3

    move-object/from16 v90, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_29

    iget-object v5, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    move/from16 v91, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v93, v0

    move-object/from16 v92, v7

    const/4 v7, 0x1

    add-int/lit8 v0, v18, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_29
    move-object/from16 v93, v0

    move/from16 v91, v6

    move-object/from16 v92, v7

    const/4 v7, 0x1

    iget-object v0, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto/16 :goto_33

    :cond_2a
    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move/from16 v91, v6

    move-object/from16 v92, v7

    const-string/jumbo v0, "signing-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    goto/16 :goto_33

    :cond_2b
    const-string/jumbo v0, "upgrade-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "identifier"

    const/4 v3, 0x0

    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v0, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    goto/16 :goto_33

    :cond_2c
    const-string v0, "defined-keyset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "identifier"

    const/4 v3, 0x0

    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "alias"

    invoke-interface {v14, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_2d

    iget-object v6, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v94, v3

    move-object/from16 v95, v8

    const/4 v3, 0x1

    add-int/lit8 v8, v18, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_2d
    move-object/from16 v94, v3

    move-object/from16 v95, v8

    const/4 v3, 0x1

    iget-object v6, v13, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_37
    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {v6, v4, v5, v0}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto/16 :goto_34

    :cond_2e
    move-object/from16 v95, v8

    const/4 v3, 0x1

    const-string v0, "domain-verification"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-direct {v13, v14, v1}, Lcom/android/server/pm/Settings;->readDomainVerificationLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSettingBase;)V

    goto/16 :goto_34

    :cond_2f
    const-string v0, "child-package"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "name"

    const/4 v4, 0x0

    invoke-interface {v14, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-nez v5, :cond_30

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    :cond_30
    iget-object v5, v1, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    :cond_31
    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <package>: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_38
    goto :goto_39

    :cond_32
    move/from16 v88, v0

    move-object/from16 v89, v3

    move-object/from16 v90, v4

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    :goto_39
    move/from16 v0, v88

    move-object/from16 v3, v89

    move-object/from16 v4, v90

    move-object/from16 v7, v92

    move-object/from16 v8, v95

    const/4 v5, 0x0

    goto/16 :goto_2f

    :cond_33
    move-object/from16 v89, v3

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    :goto_3a
    goto :goto_3b

    :cond_34
    move-object/from16 v14, p1

    move-object/from16 v84, v2

    move-object/from16 v89, v3

    move-object/from16 v85, v4

    move-object/from16 v86, v5

    move/from16 v87, v6

    move-object/from16 v92, v7

    move-object/from16 v95, v8

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3b
    return-void
.end method

.method private readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_4
    return-void
.end method

.method private readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v4, :cond_3

    const-string v4, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Restored IVI for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_5
    return-void
.end method

.method private readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v6, 0x5

    :try_start_0
    const-string/jumbo v7, "name"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    const-string/jumbo v7, "userId"

    invoke-interface {p1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const-string/jumbo v8, "true"

    const-string/jumbo v9, "system"

    invoke-interface {p1, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x1

    :cond_1
    if-nez v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v7, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: shared-user "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has bad userId "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v7, v2, v3}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    move-object v5, v4

    if-nez v4, :cond_4

    const/4 v4, 0x6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Occurred while parsing settings at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in package manager settings: package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " has bad userId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_2
    if-eqz v5, :cond_b

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    :cond_5
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    move v8, v7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_a

    const/4 v7, 0x3

    if-ne v8, v7, :cond_6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_a

    :cond_6
    if-eq v8, v7, :cond_5

    const/4 v7, 0x4

    if-ne v8, v7, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "sigs"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v5, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v10, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, p1, v10}, Lcom/android/server/pm/PackageSignatures;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_4

    :cond_8
    const-string/jumbo v9, "perms"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v5}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {p0, p1, v9}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V

    goto :goto_4

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown element under <shared-user>: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    goto :goto_3

    :cond_a
    goto :goto_5

    :cond_b
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_5
    return-void
.end method

.method private removeInstallerPackageStatus(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeUserIdLPw(I)V
    .locals 4

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v1, p1, -0x2710

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->setFirstAvailableUid(I)V

    return-void
.end method

.method private replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, p2}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1, p2}, Lcom/android/server/pm/Settings;->replaceUserIdLPw(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private replaceUserIdLPw(ILjava/lang/Object;)V
    .locals 3

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v1, p1, -0x2710

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setFirstAvailableUid(I)V
    .locals 1

    sget v0, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    if-le p1, v0, :cond_0

    sput p1, Lcom/android/server/pm/Settings;->mFirstAvailableUid:I

    :cond_0
    return-void
.end method

.method static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Lcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/SharedUserSetting;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/UserManagerService;",
            "[",
            "Ljava/lang/String;",
            "[J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    iget-object v7, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eq v8, v1, :cond_2

    const/4 v8, 0x5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " shared user changed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v10, :cond_0

    iget-object v10, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v10, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v10, "<nothing>"

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    iget-object v10, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v10, "<nothing>"

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    new-instance v8, Lcom/android/server/pm/PackageManagerException;

    const/4 v9, -0x8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Updating application package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v8

    :cond_2
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual {v8, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v9, 0x3e7

    if-nez v8, :cond_8

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_3

    const-string v12, " system"

    goto :goto_2

    :cond_3
    const-string v12, ""

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " code path from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; Retain data and using new"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_7

    and-int/lit8 v10, p8, 0x1

    if-eqz v10, :cond_6

    if-nez p1, :cond_6

    invoke-static/range {p11 .. p11}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/UserInfo;

    iget v1, v13, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v9, :cond_4

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget v1, v13, Landroid/content/pm/UserInfo;->id:I

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_5
    nop

    move-object/from16 v1, p2

    const/16 v9, 0x3e7

    goto :goto_3

    :cond_6
    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object/from16 v1, p5

    :goto_4
    iput-object v2, v0, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    goto :goto_5

    :cond_8
    move-object/from16 v1, p5

    :goto_5
    and-int/lit8 v8, p8, 0x1

    if-eqz v8, :cond_9

    const/16 v8, 0x3e7

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, v0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v8}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_9
    iget-object v8, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual {v8, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v8

    const-string v9, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Update"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v8, :cond_a

    const-string v12, " system"

    goto :goto_6

    :cond_a
    const-string v12, ""

    :goto_6
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " resource path from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; Retain data and using new"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, v0, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    :cond_b
    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const v9, -0xe0009

    and-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v9, p8, 0x1

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/lit8 v9, p9, 0x8

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x20000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x40000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    const/high16 v9, 0x80000

    and-int v9, p9, v9

    or-int/2addr v8, v9

    iput v8, v0, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    move-object/from16 v8, p6

    iput-object v8, v0, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    move-object/from16 v9, p7

    iput-object v9, v0, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v4, :cond_c

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    :cond_c
    if-eqz v5, :cond_d

    if-eqz v6, :cond_d

    array-length v11, v5

    array-length v12, v6

    if-ne v11, v12, :cond_d

    iput-object v5, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    goto :goto_7

    :cond_d
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iput-object v11, v0, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    :goto_7
    return-void
.end method

.method private writeIntToFile(Ljava/io/File;I)V
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private writeKernelRemoveUserLPr(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    return-void
.end method


# virtual methods
.method addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionSettings;->addAppOpPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[J)",
            "Lcom/android/server/pm/PackageSetting;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p9

    iget-object v1, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    const/16 v19, 0x0

    if-eqz v13, :cond_1

    iget v1, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v1, v14, :cond_0

    return-object v13

    :cond_0
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding duplicate package, keeping first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v19

    :cond_1
    new-instance v20, Lcom/android/server/pm/PackageSetting;

    const/16 v16, 0x0

    move-object/from16 v1, v20

    move-object v2, v15

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move-object/from16 v21, v13

    move/from16 v13, p13

    move v0, v14

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    invoke-direct/range {v1 .. v18}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/util/List;I[Ljava/lang/String;[J)V

    iput v0, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    move v3, v0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_2
    return-object v19
.end method

.method addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ne v2, p2, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding duplicate shared user, keeping first: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v2, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v2, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v2

    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, p2, v0, p1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    return-object v1
.end method

.method addUserToSettingLPw(Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v0

    iput v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/pm/Settings;->addUserIdLPw(ILjava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    iget v0, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ltz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " could not be assigned a valid UID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, -0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " could not be assigned a valid UID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    nop

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4, v5, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Lcom/android/server/pm/PackageManagerService;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v4, "etc/preferred-apps"

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be read"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v4, v1

    :goto_2
    if-ge v2, v4, :cond_c

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Non-xml file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " directory, ignoring"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preferred apps file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " cannot be read"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_5
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v6, :cond_6

    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading default preferred "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 v6, 0x0

    move-object v7, v6

    :try_start_0
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v7, v8

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v9, v6

    const/4 v10, 0x2

    if-eq v6, v10, :cond_7

    if-eq v9, v3, :cond_7

    goto :goto_3

    :cond_7
    if-eq v9, v10, :cond_8

    const-string v6, "PackageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preferred apps file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " does not have start tag"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :cond_8
    :try_start_2
    const-string/jumbo v6, "preferred-activities"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, "PackageSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Preferred apps file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " does not start with \'preferred-activities\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :cond_9
    :try_start_4
    invoke-direct {p0, p1, v8, p2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/server/pm/PackageManagerService;Lorg/xmlpull/v1/XmlPullParser;I)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v6

    :try_start_6
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading apps file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_a

    :try_start_7
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_1
    move-exception v6

    :try_start_8
    const-string v8, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading apps file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v7, :cond_a

    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_4
    goto :goto_5

    :catch_2
    move-exception v6

    goto :goto_4

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :goto_6
    if-eqz v7, :cond_b

    :try_start_a
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_7

    :catch_3
    move-exception v2

    :cond_b
    :goto_7
    throw v1

    :cond_c
    return-void

    :cond_d
    :goto_8
    return-void
.end method

.method applyPendingPermissionGrantsLPw(Ljava/lang/String;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_2

    const-string v3, "PackageSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t find supposedly installed package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v3

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v7, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-boolean v7, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v7, :cond_3

    invoke-virtual {v3, v6, p2}, Lcom/android/server/pm/permission/PermissionsState;->grantRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    :cond_3
    const/16 v7, 0xb

    iget v8, v5, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    invoke-virtual {v3, v6, p2, v7, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    :cond_4
    goto :goto_0

    :cond_5
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->remove(I)V

    :cond_6
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    return-void

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    return-void
.end method

.method areDefaultRuntimePermissionsGrantedLPr(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->areDefaultRuntimPermissionsGrantedLPr(I)Z

    move-result v0

    return v0
.end method

.method public canPropagatePermissionToInstantApp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/PermissionSettings;->canPropagatePermissionToInstantApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method createIntentFilterVerificationIfNeededLPw(Ljava/lang/String;Landroid/util/ArraySet;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/IntentFilterVerificationInfo;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v2, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v2, p1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Ljava/lang/String;Landroid/util/ArraySet;)V

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_3

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating new IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v1, p2}, Landroid/content/pm/IntentFilterVerificationInfo;->setDomains(Landroid/util/ArraySet;)V

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_3

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting domains to existing IntentFilterVerificationInfo for pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and with domains: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/IntentFilterVerificationInfo;->getDomainsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v1
.end method

.method createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;I[Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p3

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/String;

    new-array v7, v4, [I

    new-array v8, v4, [Ljava/lang/String;

    new-array v9, v4, [I

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v4, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/pm/PackageSetting;

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v14, :cond_6

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v14, :cond_0

    nop

    :goto_1
    move-object/from16 v12, p4

    move-object/from16 v17, v0

    goto/16 :goto_5

    :cond_0
    const/16 v14, 0x3e7

    if-ne v11, v14, :cond_1

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v14}, Landroid/os/OnePlusParallelAppUtils;->isBasicParallelApp(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v15, v12, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1

    :cond_1
    invoke-virtual {v15}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/pm/OemPackageManagerHelper;->isReserveApp(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_3

    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/server/pm/OemPackageManagerHelper;->checkAppHasDeleted(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v12, p4

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v14, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v12, p4

    :try_start_1
    invoke-static {v12, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    const/16 v16, 0x1

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v16, 0x0

    :goto_4
    move/from16 v14, v16

    invoke-virtual {v15, v14, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-nez v14, :cond_5

    invoke-virtual {v1, v15}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :cond_5
    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    aput-object v0, v5, v13

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    aput-object v0, v6, v13

    iget v0, v15, Lcom/android/server/pm/PackageSetting;->appId:I

    aput v0, v7, v13

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    aput-object v0, v8, v13

    iget-object v0, v15, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    aput v0, v9, v13

    goto :goto_5

    :cond_6
    move-object/from16 v12, p4

    move-object/from16 v17, v0

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v17

    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v12, p4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move v10, v4

    const/4 v0, 0x0

    :goto_6
    move v9, v0

    if-ge v9, v10, :cond_9

    aget-object v0, v14, v9

    if-nez v0, :cond_8

    nop

    move/from16 v21, v9

    move/from16 v22, v10

    goto :goto_8

    :cond_8
    const/4 v0, 0x3

    move/from16 v19, v0

    :try_start_2
    aget-object v4, v13, v9

    aget-object v5, v14, v9

    const/4 v7, 0x3

    aget v8, v15, v9

    aget-object v0, v17, v9

    aget v20, v18, v9
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v3, p2

    move v6, v11

    move/from16 v21, v9

    move-object v9, v0

    move/from16 v22, v10

    move/from16 v10, v20

    :try_start_3
    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/Installer;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    :try_end_3
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v21, v9

    move/from16 v22, v10

    :goto_7
    const-string v3, "PackageSettings"

    const-string v4, "Failed to prepare app data"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    add-int/lit8 v0, v21, 0x1

    move/from16 v10, v22

    goto :goto_6

    :cond_9
    move/from16 v22, v10

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_4
    invoke-virtual {v1, v2, v11}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(Lcom/android/server/pm/PackageManagerService;I)V

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v3, 0x1

    new-array v0, v3, [I

    const/4 v3, 0x0

    aput v3, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v11}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Lcom/android/server/pm/PackageManagerService;->setGMSEnabledSetting(Landroid/os/UserHandle;I)V

    :cond_a
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v12, p4

    :goto_9
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_9
.end method

.method disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not an installed package"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v3}, Landroid/content/pm/PackageParser$Package;->isUpdatedSystemApp()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v3, v3, 0x80

    iput v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    new-instance v1, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/pm/Settings;->replacePackageLPw(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    return v1
.end method

.method dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 1

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "gids="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/pm/PackageManagerService;->arrayToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionsState;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "install permissions:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    if-eqz p3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": granted="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string v3, ", flags="

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p7

    if-eqz v9, :cond_d

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v0, "?"

    :goto_1
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_2

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "-"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "splt,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "base,"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v13, 0x0

    :goto_2
    move v0, v13

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "-"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "splt,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    aget v1, v1, v0

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v13, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "usr"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ","

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "I"

    goto :goto_4

    :cond_3
    const-string/jumbo v2, "i"

    :goto_4
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "B"

    goto :goto_5

    :cond_4
    const-string v2, "b"

    :goto_5
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "SU"

    goto :goto_6

    :cond_5
    const-string/jumbo v2, "su"

    :goto_6
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "S"

    goto :goto_7

    :cond_6
    const-string/jumbo v2, "s"

    :goto_7
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "l"

    goto :goto_8

    :cond_7
    const-string v2, "L"

    :goto_8
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "IA"

    goto :goto_9

    :cond_8
    const-string/jumbo v2, "ia"

    :goto_9
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "VPI"

    goto :goto_a

    :cond_9
    const-string/jumbo v2, "vpi"

    :goto_a
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v3, "HA"

    goto :goto_b

    :cond_a
    const-string/jumbo v3, "ha"

    :goto_b
    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(I)V

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v3}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_b

    move-object v4, v3

    goto :goto_c

    :cond_b
    const-string v4, "?"

    :goto_c
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_3

    :cond_c
    return-void

    :cond_d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Package ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_d

    :cond_e
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_d
    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static/range {p5 .. p5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  compat name="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_10

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  sharedUser="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkg="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  codePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v10, :cond_11

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  resourcePath="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  legacyNativeLibraryDir="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  primaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  secondaryCpuAbi="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionCode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_12

    const-string v0, " minSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " targetSdk="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_31

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_17

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_13

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    iget-object v2, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    :cond_14
    if-eqz v1, :cond_16

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  parentPackage="

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v2, :cond_15

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_e

    :cond_15
    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_e
    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_16
    goto :goto_11

    :cond_17
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  childPackages=["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1d

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v3, v6, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v3, :cond_18

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    :cond_18
    iget-object v4, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    :cond_19
    if-eqz v3, :cond_1c

    if-lez v1, :cond_1a

    const-string v4, ", "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1a
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v4, :cond_1b

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    goto :goto_10

    :cond_1b
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    :goto_10
    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1d
    const-string v1, "]"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1e
    :goto_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  versionName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  splits="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v7, v0}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Landroid/content/pm/PackageParser$Package;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  apkSigningVersion="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  applicationInfo="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  flags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    sget-object v2, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    if-eqz v1, :cond_1f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  privateFlags="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-object v2, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_1f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  dataDir="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  supportsScreens=["

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_21

    if-nez v1, :cond_20

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_20
    const/4 v1, 0x0

    const-string/jumbo v2, "small"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_21
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_23

    if-nez v1, :cond_22

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_22
    const/4 v1, 0x0

    const-string/jumbo v2, "medium"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_23
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_25

    if-nez v1, :cond_24

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_24
    const/4 v1, 0x0

    const-string/jumbo v2, "large"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_25
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_27

    if-nez v1, :cond_26

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_26
    const/4 v1, 0x0

    const-string/jumbo v2, "xlarge"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_27
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_29

    if-nez v1, :cond_28

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_28
    const/4 v1, 0x0

    const-string/jumbo v2, "resizeable"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_29
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_2b

    if-nez v1, :cond_2a

    const-string v2, ", "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2a
    const/4 v1, 0x0

    const-string v2, "anyDensity"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2b
    const-string v2, "]"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_2c

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  dynamic libraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_12
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_2c
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v2, :cond_2d

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  static library:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    "

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "name:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " version:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-wide v2, v2, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    invoke-virtual {v7, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    :cond_2d
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_2e

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_13
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2e
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_2f

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesStaticLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_14
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " version:"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    aget-wide v3, v3, v2

    invoke-virtual {v7, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_2f
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    if-eqz v2, :cond_30

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_30

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesOptionalLibraries:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_15
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_30

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_30
    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_31

    iget-object v2, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_31

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  usesLibraryFiles:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_16
    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_31

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_31
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  timeStamp="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  firstInstallTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  lastUpdateTime="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v11, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-virtual {v12, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual/range {p6 .. p7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_32

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installerPackageName="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_33

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  volumeUuid="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_33
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  signatures="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  installPermissionsFixed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v11, Lcom/android/server/pm/PackageSetting;->installPermissionsFixed:Z

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  pkgFlags="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v11, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    sget-object v1, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_34

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v0, :cond_34

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayTarget="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlayCategory="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_34
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_39

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_39

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  declared permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Permission;

    if-eqz v10, :cond_35

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_18

    :cond_35
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ": prot="

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_36

    const-string v3, ", COSTS_MONEY"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_36
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_37

    const-string v3, ", HIDDEN"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_37
    iget-object v3, v2, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_38

    const-string v3, ", INSTALLED"

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_38
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_39
    if-nez v10, :cond_3a

    if-eqz p9, :cond_3c

    :cond_3a
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_3c

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v0, :cond_3c

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3c

    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  requested permissions:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v10, :cond_3b

    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_1a

    :cond_3b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3c
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_3d

    if-nez v10, :cond_3d

    if-eqz p9, :cond_3e

    :cond_3d
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v10, v0}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    :cond_3e
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ceDataInode="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string v0, " installed="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " hidden="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHidden(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " suspended="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    const-string v1, " suspendingPackage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " dialogMessage="

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3f
    const-string v0, " stopped="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " notLaunched="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " enabled="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " instant="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " virtual="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getVirtulalPreload(I)Z

    move-result v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getOverlayPaths(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    array-length v0, v4

    if-lez v0, :cond_40

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  overlay paths:"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    array-length v0, v4

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_40

    aget-object v2, v4, v1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "    "

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_40
    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getLastDisabledAppCaller(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "    lastDisabledCaller: "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_41
    iget-object v0, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_42

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v1}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iget v0, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v0}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v16

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v17, v2

    move-object v2, v15

    move-object v15, v3

    move-object v3, v10

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move-object v13, v5

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    goto :goto_1d

    :cond_42
    move-object v15, v3

    move-object/from16 v18, v4

    move-object v13, v5

    :goto_1d
    iget v0, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v0}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "      harmfulAppWarning: "

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_43
    if-nez v10, :cond_45

    iget v1, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v1}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_44

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    disabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    :cond_44
    iget v2, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v11, v2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_45

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    enabledComponents:"

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "      "

    invoke-virtual {v7, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1f

    :cond_45
    goto/16 :goto_1b

    :cond_46
    return-void
.end method

.method dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v18

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    if-eqz v13, :cond_0

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p5, :cond_2

    if-eqz v13, :cond_2

    iget-object v1, v11, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    move-object/from16 v9, p4

    invoke-virtual {v9, v1}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_1

    :cond_2
    move-object/from16 v9, p4

    :goto_1
    if-nez p5, :cond_4

    if-nez v0, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_3
    const-string v1, "Packages:"

    invoke-virtual {v14, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_4
    move/from16 v16, v0

    const-string v5, "  "

    if-eqz p5, :cond_5

    const-string/jumbo v0, "pkg"

    move-object v4, v0

    nop

    :cond_5
    if-eqz v13, :cond_6

    move/from16 v17, v3

    goto :goto_2

    :cond_6
    move/from16 v17, v2

    :goto_2
    move-object v0, v15

    move-object v1, v14

    move-object v2, v5

    move-object v3, v4

    move-object v4, v12

    move-object v5, v11

    move-object/from16 v8, v18

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    nop

    move/from16 v0, v16

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_d

    if-nez v12, :cond_d

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    if-nez p5, :cond_b

    if-nez v0, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_9
    const-string v8, "Renamed packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_a
    const-string v8, "  "

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const-string/jumbo v8, "ren,"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_4
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_c

    const-string v8, " -> "

    goto :goto_5

    :cond_c
    const-string v8, ","

    :goto_5
    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_13

    if-nez v12, :cond_13

    iget-object v1, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v13, :cond_e

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_6

    :cond_e
    if-nez p5, :cond_10

    if-nez v0, :cond_10

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_f
    const-string v8, "Hidden system packages:"

    invoke-virtual {v14, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_10
    const-string v10, "  "

    if-eqz p5, :cond_11

    const-string v8, "dis"

    move-object v11, v8

    goto :goto_7

    :cond_11
    move-object v11, v4

    :goto_7
    if-eqz v13, :cond_12

    move/from16 v17, v3

    goto :goto_8

    :cond_12
    move/from16 v17, v2

    :goto_8
    move-object v8, v15

    move-object v9, v14

    move-object/from16 v12, p3

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v18

    invoke-virtual/range {v8 .. v17}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;Z)V

    nop

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    goto :goto_6

    :cond_13
    return-void
.end method

.method dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5, v0}, Lcom/android/server/pm/PackageSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/pm/DumpState;)V

    return-void
.end method

.method dumpReadMessagesLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 1

    const-string v0, "Settings parse messages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method dumpRestoredPermissionGrantsLPr(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Restored (pending) permission grants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mRestoredUserGrants:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    const-string v4, "  User "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "    "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, " :"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;

    const-string v9, "      "

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->permissionName:Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->granted:Z

    if-eqz v9, :cond_0

    const-string v9, " GRANTED"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    const-string v9, " user_set"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_2

    const-string v9, " user_fixed"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    iget v9, v8, Lcom/android/server/pm/Settings$RestoredPermissionGrant;->grantBits:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_3

    const-string v9, " revoke_on_upgrade"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_7
    return-void
.end method

.method dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_2

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "runtime permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    if-eqz p3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": granted="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, ", flags="

    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/DumpState;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    const/4 v0, 0x0

    iget-object v1, v6, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p2, :cond_0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eq v10, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/server/pm/permission/PermissionsState;->hasRequestedPermission(Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p5, :cond_8

    if-nez v0, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_2
    const-string v1, "Shared users:"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_3
    move v11, v0

    const-string v0, "  SharedUser ["

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "] ("

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "):"

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v12, "    "

    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v13

    invoke-virtual {v6, v7, v12, v8, v13}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/PermissionsState;)V

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    array-length v4, v5

    const/4 v14, 0x0

    move v3, v14

    :goto_1
    if-ge v3, v4, :cond_7

    aget v2, v5, v3

    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/PermissionsState;->computeGids(I)[I

    move-result-object v1

    nop

    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/PermissionsState;->getRuntimePermissionStates(I)Ljava/util/List;

    move-result-object v0

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v19, v3

    move/from16 v20, v4

    move-object/from16 v21, v5

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual {v7, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v16, v0

    const-string v0, "User "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {v7, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v17, v2

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_6

    const/4 v0, 0x1

    move v15, v0

    goto :goto_3

    :cond_6
    move v15, v14

    :goto_3
    move-object v0, v6

    move-object/from16 v18, v1

    move-object v1, v7

    move/from16 v19, v3

    move-object v3, v8

    move/from16 v20, v4

    move-object/from16 v4, v16

    move-object/from16 v21, v5

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Z)V

    :goto_4
    add-int/lit8 v3, v19, 0x1

    move/from16 v4, v20

    move-object/from16 v5, v21

    goto :goto_1

    :cond_7
    nop

    move v0, v11

    goto :goto_5

    :cond_8
    const-string/jumbo v1, "suid,"

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ","

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Internal:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string/jumbo v3, "primary_physical"

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "External:"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "sdkVersion"

    iget v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "databaseVersion"

    iget v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v3, "fingerprint"

    iget-object v4, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v1}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 23

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-object v0, v15, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    if-nez v13, :cond_0

    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not disabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v0, :cond_1

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_1
    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    iget-object v3, v13, Lcom/android/server/pm/PackageSetting;->codePath:Ljava/io/File;

    iget-object v4, v13, Lcom/android/server/pm/PackageSetting;->resourcePath:Ljava/io/File;

    iget-object v5, v13, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    iget-object v6, v13, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    iget-object v7, v13, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    iget-object v8, v13, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    iget v9, v13, Lcom/android/server/pm/PackageSetting;->appId:I

    iget-wide v10, v13, Lcom/android/server/pm/PackageSetting;->versionCode:J

    iget v12, v13, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    iget v1, v13, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    iget-object v0, v13, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    move/from16 v18, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    move-object/from16 v19, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    move-object/from16 v20, v12

    iget-object v12, v13, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    move-object/from16 v16, v0

    move-object v0, v15

    move/from16 v17, v1

    move-object v1, v14

    move-object/from16 v21, v12

    move/from16 v12, v18

    move-object/from16 v18, v13

    move/from16 v13, v17

    move-object/from16 v14, v16

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    invoke-virtual/range {v0 .. v17}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJIILjava/lang/String;Ljava/util/List;[Ljava/lang/String;[J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v1}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method getAllSharedUsersLPw()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getBlockUninstallLPr(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result v3

    return v3

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getDefaultBrowserPackageNameLPw(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method getDefaultDialerPackageNameLPw(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    const-string/jumbo v1, "primary_physical"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getHarmfulAppWarningLPr(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getHarmfulAppWarning(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getInstallerPackageNameLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getIntentFilterVerificationLPr(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v1

    return-object v1
.end method

.method getIntentFilterVerificationStatusLPr(Ljava/lang/String;I)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getDomainVerificationStatusForUser(I)J

    move-result-wide v1

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    long-to-int v1, v1

    return v1
.end method

.method getIntentFilterVerificationsLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object v0
.end method

.method getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    return-object v0
.end method

.method getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    new-instance v1, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    move-object v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/pm/Settings;->newUserIdLPw(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iget v1, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    if-ltz v1, :cond_0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New shared user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating shared user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getUserIdLPr(I)Ljava/lang/Object;
    .locals 3

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit16 v1, p1, -0x2710

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mUserIds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mOtherUserIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeLPr()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object v0
.end method

.method getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method hasOtherDisabledSystemPkgWithChildLPr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$Package;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v0, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, p2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v1, v0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    :cond_1
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v2

    return v2
.end method

.method isOrphaned(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method onDefaultRuntimePermissionsGrantedLPr(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onDefaultRuntimePermissionsGrantedLPr(I)V

    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public processRestoredPermissionGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->rememberRestoredUserGrantLPr(Ljava/lang/String;Ljava/lang/String;ZII)V

    return-void
.end method

.method pruneSharedUsersLPw()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/SharedUserSetting;

    if-nez v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v7, v5, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v4, v3, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method readAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_6

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_6

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "domain-verification"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v3, p1}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setIntentFilterVerificationInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_4

    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restored IVI for existing app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_4

    const-string v6, "PackageSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restored IVI for pending app "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/IntentFilterVerificationInfo;->getStatusString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <all-intent-filter-verification>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "block-uninstall"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    const-string/jumbo v5, "packageName"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    return-void
.end method

.method readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "default-browser"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    const-string v3, "default-dialer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_5
    return-void
.end method

.method readInstallPermissionsLPr(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/permission/PermissionsState;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_b

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_b

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "item"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "name"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v6

    if-nez v6, :cond_3

    const-string v3, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown permission: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "granted"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_5

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    move v3, v8

    nop

    :cond_5
    :goto_1
    const-string v9, "flags"

    invoke-interface {p1, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const/16 v8, 0x10

    invoke-static {v5, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    nop

    :cond_6
    const/16 v9, 0xff

    const/4 v10, -0x1

    if-eqz v3, :cond_8

    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v11

    if-ne v11, v10, :cond_7

    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p2, v6, v10, v9, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v6}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v11

    if-ne v11, v10, :cond_9

    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission already added: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p2, v6, v10, v9, v8}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    :goto_2
    goto :goto_3

    :cond_a
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <permissions>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method readLPw(Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, v1, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "Reading from backup settings file\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Need to read from backup settings file"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up settings file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_3

    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v7, "No settings file found\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "No settings file; creating initial state"

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    const-string/jumbo v0, "primary_physical"

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    return v6

    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    goto/16 :goto_b

    :cond_3
    :goto_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    const/4 v9, 0x2

    if-eq v0, v9, :cond_4

    if-eq v8, v5, :cond_4

    goto :goto_2

    :cond_4
    if-eq v8, v9, :cond_5

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in settings file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    const-string v3, "No start tag found in package manager settings"

    invoke-static {v0, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v0, "PackageManager"

    const-string v3, "No start tag found in package manager settings"

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :goto_3
    move v9, v0

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    if-eq v0, v5, :cond_21

    const/4 v0, 0x3

    if-ne v8, v0, :cond_6

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v9, :cond_21

    :cond_6
    if-eq v8, v0, :cond_20

    if-ne v8, v3, :cond_7

    goto/16 :goto_9

    :cond_7
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const-string/jumbo v0, "package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {v1, v7}, Lcom/android/server/pm/Settings;->readPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_8
    const-string/jumbo v0, "permissions"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissions(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_9
    const-string/jumbo v0, "permission-trees"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v0, v7}, Lcom/android/server/pm/permission/PermissionSettings;->readPermissionTrees(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_a
    const-string/jumbo v0, "shared-user"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {v1, v7}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_b
    const-string/jumbo v0, "preferred-packages"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_8

    :cond_c
    const-string/jumbo v0, "preferred-activities"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1, v7, v6}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_8

    :cond_d
    const-string/jumbo v0, "persistent-preferred-activities"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {v1, v7, v6}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_8

    :cond_e
    const-string v0, "crossProfile-intent-filters"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {v1, v7, v6}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_8

    :cond_f
    const-string v0, "default-browser"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v1, v7, v6}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto/16 :goto_8

    :cond_10
    const-string/jumbo v0, "updated-package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {v1, v7}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_11
    const-string v0, "cleaning-package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "name"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const-string/jumbo v0, "user"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const-string v0, "code"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v11, v0

    if-eqz v12, :cond_14

    const/4 v14, 0x0

    move v15, v5

    if-eqz v13, :cond_12

    :try_start_2
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v14, v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_12
    :goto_4
    nop

    :goto_5
    if-eqz v11, :cond_13

    :try_start_3
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    move v15, v0

    :cond_13
    new-instance v0, Landroid/content/pm/PackageCleanItem;

    invoke-direct {v0, v14, v12, v15}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    :cond_14
    goto/16 :goto_8

    :cond_15
    const-string/jumbo v0, "renamed-package"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string/jumbo v0, "new"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "old"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v0, :cond_16

    if-eqz v11, :cond_16

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    goto/16 :goto_8

    :cond_17
    const-string/jumbo v0, "restored-ivi"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {v1, v7}, Lcom/android/server/pm/Settings;->readRestoredIntentFilterVerifications(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    :cond_18
    const-string/jumbo v0, "last-platform-version"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    const-string/jumbo v11, "primary_physical"

    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    const-string/jumbo v12, "internal"

    invoke-static {v7, v12, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const-string v12, "external"

    invoke-static {v7, v12, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const-string v12, "fingerprint"

    invoke-static {v7, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v12, v0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto/16 :goto_8

    :cond_19
    const-string v0, "database-version"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    const-string/jumbo v11, "primary_physical"

    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    const-string/jumbo v12, "internal"

    invoke-static {v7, v12, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const-string v12, "external"

    invoke-static {v7, v12, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    goto/16 :goto_8

    :cond_1a
    const-string/jumbo v0, "verifier"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "device"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v11, v0

    :try_start_4
    invoke-static {v11}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_4
    move-exception v0

    :try_start_5
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Discard invalid verifier device id: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    goto/16 :goto_8

    :cond_1b
    const-string/jumbo v0, "read-external-storage"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "enforcement"

    invoke-interface {v7, v11, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    const-string v11, "1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_1c
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    iput-object v11, v1, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    goto :goto_8

    :cond_1d
    const-string/jumbo v0, "keyset-settings"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mKeySetRefs:Landroid/util/ArrayMap;

    invoke-virtual {v0, v7, v11}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_8

    :cond_1e
    const-string/jumbo v0, "version"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "volumeUuid"

    invoke-static {v7, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v11

    const-string/jumbo v12, "sdkVersion"

    invoke-static {v7, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const-string v12, "databaseVersion"

    invoke-static {v7, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    const-string v12, "fingerprint"

    invoke-static {v7, v12}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    goto :goto_8

    :cond_1f
    const-string v0, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <packages>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_8
    nop

    :cond_20
    :goto_9
    move v0, v9

    goto/16 :goto_3

    :cond_21
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_c

    :goto_a
    nop

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading settings: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v3, "PackageManager"

    const-string v7, "Error reading package manager settings"

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    :goto_b
    nop

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error reading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error reading settings: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v3, "PackageManager"

    const-string v7, "Error reading package manager settings"

    invoke-static {v3, v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    nop

    :goto_d
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v6

    :goto_e
    if-ge v3, v0, :cond_24

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSharedUserId()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v10, :cond_22

    move-object v10, v9

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    iput-object v10, v7, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v11, v10, Lcom/android/server/pm/SharedUserSetting;->userId:I

    iput v11, v7, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {v1, v7, v10}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_f

    :cond_22
    if-eqz v9, :cond_23

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad package setting: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has shared uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " that is not a shared uid\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_f

    :cond_23
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bad package setting: package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has shared uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " that is not defined\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v10}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_24
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_26

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_25

    goto :goto_11

    :cond_25
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(I)V

    goto :goto_10

    :cond_26
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v3, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_27
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget-object v6, v1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v7, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSyncLPr(I)V

    goto :goto_12

    :cond_28
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget v6, v4, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->getUserIdLPr(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_29

    instance-of v7, v6, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v7, :cond_29

    move-object v7, v6

    check-cast v7, Lcom/android/server/pm/SharedUserSetting;

    iput-object v7, v4, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    :cond_29
    goto :goto_13

    :cond_2a
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read completed successfully: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " packages, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " shared uids\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    return v5
.end method

.method readPackageRestrictionsLPr(I)V
    .locals 52

    move-object/from16 v1, p0

    move/from16 v15, p1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v14

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x4

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v0

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "Reading from backup stopped packages file\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Need to read from backup stopped packages file"

    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_0
    move-object/from16 v25, v2

    const/4 v11, 0x6

    if-nez v25, :cond_4

    :try_start_1
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    if-nez v0, :cond_3

    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No stopped packages file found\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "No stopped packages file; assuming all started"

    invoke-static {v12, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move v3, v15

    move v11, v12

    move-object/from16 v12, v16

    move-object/from16 v30, v13

    move-object/from16 v13, v17

    move-object/from16 v31, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move-object/from16 v18, v22

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move/from16 v21, v26

    move/from16 v22, v27

    move/from16 v23, v28

    move-object/from16 v24, v29

    :try_start_3
    invoke-virtual/range {v2 .. v24}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    nop

    move-object/from16 v13, v30

    move-object/from16 v14, v31

    const/4 v11, 0x6

    move/from16 v15, p1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    goto :goto_3

    :cond_2
    move-object/from16 v30, v13

    move-object/from16 v31, v14

    return-void

    :catch_3
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v47, v14

    move v3, v15

    move-object/from16 v14, v25

    goto/16 :goto_1d

    :catch_4
    move-exception v0

    move-object/from16 v30, v13

    move v5, v11

    move-object/from16 v47, v14

    move v3, v15

    move-object/from16 v14, v25

    goto/16 :goto_1e

    :cond_3
    move-object/from16 v30, v13

    move-object/from16 v31, v14

    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v15, v31

    :try_start_5
    invoke-direct {v0, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    move-object/from16 v25, v0

    move-object/from16 v14, v25

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v47, v15

    move-object/from16 v14, v25

    :goto_2
    move/from16 v3, p1

    goto/16 :goto_1d

    :catch_6
    move-exception v0

    move-object/from16 v47, v15

    move-object/from16 v14, v25

    :goto_3
    move/from16 v3, p1

    :goto_4
    const/4 v5, 0x6

    goto/16 :goto_1e

    :catch_7
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    move/from16 v3, p1

    goto/16 :goto_1d

    :catch_8
    move-exception v0

    move-object/from16 v14, v25

    move-object/from16 v47, v31

    move/from16 v3, p1

    const/4 v5, 0x6

    goto/16 :goto_1e

    :catch_9
    move-exception v0

    move-object/from16 v30, v13

    move-object/from16 v47, v14

    move-object/from16 v14, v25

    move/from16 v3, p1

    goto/16 :goto_1d

    :catch_a
    move-exception v0

    move-object/from16 v30, v13

    move v5, v11

    move-object/from16 v47, v14

    move-object/from16 v14, v25

    move/from16 v3, p1

    goto/16 :goto_1e

    :cond_4
    move-object/from16 v30, v13

    move-object v15, v14

    move-object/from16 v14, v25

    :goto_5
    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v14, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_6
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1b

    move v3, v2

    const/4 v11, 0x2

    const/4 v6, 0x1

    if-eq v2, v11, :cond_5

    if-eq v3, v6, :cond_5

    goto :goto_6

    :cond_5
    if-eq v3, v11, :cond_6

    :try_start_7
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v4, "No start tag found in package restrictions file\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    const-string v4, "No start tag found in package manager stopped packages"

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    return-void

    :catch_b
    move-exception v0

    move-object/from16 v47, v15

    goto :goto_2

    :catch_c
    move-exception v0

    move-object/from16 v47, v15

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :try_start_8
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v13, v4

    const/4 v10, 0x0

    move v9, v2

    move-object v2, v10

    :goto_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1b

    move v3, v4

    if-eq v4, v6, :cond_21

    const/4 v8, 0x3

    if-ne v3, v8, :cond_8

    :try_start_9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    if-le v4, v13, :cond_7

    goto :goto_8

    :cond_7
    move/from16 v45, v3

    move v12, v9

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    goto/16 :goto_1c

    :cond_8
    :goto_8
    if-eq v3, v8, :cond_20

    if-ne v3, v12, :cond_9

    nop

    move/from16 v45, v3

    move/from16 v42, v6

    move-object/from16 v41, v10

    move/from16 v38, v11

    move/from16 v46, v12

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    move v12, v9

    goto/16 :goto_1a

    :cond_9
    :try_start_a
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    const-string/jumbo v4, "pkg"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_18
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_17

    if-eqz v4, :cond_1a

    :try_start_b
    const-string/jumbo v4, "name"

    invoke-interface {v0, v10, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11

    move-object/from16 v25, v5

    if-nez v25, :cond_a

    :try_start_c
    const-string v2, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No package known for stopped package "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_b

    nop

    move-object/from16 v2, v25

    goto :goto_7

    :cond_a
    :try_start_d
    const-string v2, "ceDataInode"

    move/from16 v33, v9

    const-wide/16 v8, 0x0

    invoke-static {v0, v2, v8, v9}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    move-object v2, v4

    move-wide v4, v8

    const-string/jumbo v8, "inst"

    invoke-static {v0, v8, v6}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    move-object v9, v7

    move v7, v8

    const-string/jumbo v8, "stopped"

    const/4 v11, 0x0

    invoke-static {v0, v8, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v8

    const/4 v12, 0x3

    const-string/jumbo v6, "nl"

    invoke-static {v0, v6, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v6

    move-object/from16 v39, v9

    move/from16 v12, v33

    move v9, v6

    const-string v6, "blocked"

    invoke-interface {v0, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_b

    move/from16 v16, v11

    goto :goto_9

    :cond_b
    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v16

    :goto_9
    const-string/jumbo v11, "hidden"

    invoke-interface {v0, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_c

    move/from16 v17, v16

    goto :goto_a

    :cond_c
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v17

    :goto_a
    move-wide/from16 v41, v4

    move-object v4, v10

    move/from16 v10, v17

    const-string/jumbo v5, "suspended"

    const/4 v4, 0x0

    invoke-static {v0, v5, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v5

    move/from16 v26, v5

    const-string/jumbo v4, "suspending-package"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "suspend_dialog_message"

    move/from16 v45, v3

    const/4 v3, 0x0

    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    move/from16 v27, v13

    move-object v13, v5

    if-eqz v26, :cond_d

    if-nez v4, :cond_d

    :try_start_e
    const-string v3, "android"
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b

    move-object/from16 v28, v3

    goto :goto_b

    :cond_d
    move-object/from16 v28, v4

    :goto_b
    :try_start_f
    const-string v3, "blockUninstall"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v3

    move/from16 v29, v3

    const-string/jumbo v3, "instant-app"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v16

    const-string/jumbo v3, "virtual-preload"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v17

    const-string v3, "enabled"

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v31, v6

    const/4 v4, 0x1

    move v6, v3

    const-string v3, "enabledCaller"

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v3, "harmful-app-warning"

    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v3, "domainVerificationStatus"

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v21

    const-string v3, "app-link-generation"

    invoke-static {v0, v3, v5}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    move v5, v3

    if-le v5, v12, :cond_e

    move v3, v5

    move/from16 v33, v3

    goto :goto_c

    :cond_e
    move/from16 v33, v12

    :goto_c
    const-string/jumbo v3, "install-reason"

    const/4 v12, 0x0

    invoke-static {v0, v3, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v23

    const/4 v3, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v34

    move-object/from16 v37, v3

    move-object/from16 v40, v19

    move-object/from16 v43, v20

    move-object/from16 v44, v22

    :goto_d
    move/from16 v3, v34

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    move/from16 v47, v12

    if-eq v12, v4, :cond_18

    move/from16 v12, v47

    const/4 v4, 0x3

    if-ne v12, v4, :cond_10

    :try_start_10
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v3, :cond_f

    goto :goto_e

    :cond_f
    move/from16 v48, v3

    move-object/from16 v49, v11

    goto/16 :goto_12

    :cond_10
    :goto_e
    const/4 v4, 0x3

    if-eq v12, v4, :cond_17

    const/4 v4, 0x4

    if-ne v12, v4, :cond_11

    nop

    move/from16 v48, v3

    move-object/from16 v49, v11

    goto/16 :goto_11

    :cond_11
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v19, -0x1

    move/from16 v48, v3

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object/from16 v49, v11

    const v11, -0x78da70f9

    if-eq v3, v11, :cond_15

    const v11, -0x75017ede

    if-eq v3, v11, :cond_14

    const v11, -0x5ee8613f

    if-eq v3, v11, :cond_13

    const v11, -0x54ce12c2

    if-eq v3, v11, :cond_12

    goto :goto_f

    :cond_12
    const-string/jumbo v3, "suspended-launcher-extras"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v19, 0x3

    goto :goto_f

    :cond_13
    const-string/jumbo v3, "suspended-app-extras"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v19, 0x2

    goto :goto_f

    :cond_14
    const-string v3, "enabled-components"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v19, 0x0

    goto :goto_f

    :cond_15
    const-string v3, "disabled-components"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/16 v19, 0x1

    :cond_16
    :goto_f
    packed-switch v19, :pswitch_data_0

    const-string v3, "PackageSettings"

    goto :goto_10

    :pswitch_0
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    move-object/from16 v44, v3

    goto :goto_11

    :pswitch_1
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v3

    move-object/from16 v43, v3

    goto :goto_11

    :pswitch_2
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    move-object/from16 v40, v3

    goto :goto_11

    :pswitch_3
    invoke-direct {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/ArraySet;

    move-result-object v3

    move-object/from16 v37, v3

    goto :goto_11

    :goto_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown tag "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " under tag "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "pkg"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b

    goto :goto_11

    :cond_17
    move/from16 v48, v3

    move-object/from16 v49, v11

    :goto_11
    move/from16 v45, v12

    move/from16 v34, v48

    move-object/from16 v11, v49

    const/4 v4, 0x1

    const/4 v12, 0x0

    goto/16 :goto_d

    :cond_18
    move/from16 v48, v3

    move-object/from16 v49, v11

    move/from16 v12, v47

    :goto_12
    if-eqz v29, :cond_19

    move/from16 v4, p1

    const/4 v11, 0x1

    :try_start_11
    invoke-virtual {v1, v4, v2, v11}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_13

    :catch_d
    move-exception v0

    move v3, v4

    move-object/from16 v47, v15

    goto/16 :goto_1d

    :catch_e
    move-exception v0

    move v3, v4

    move-object/from16 v47, v15

    goto/16 :goto_4

    :cond_19
    move/from16 v4, p1

    const/4 v11, 0x1

    :goto_13
    move-object/from16 v32, v2

    move-object/from16 v2, v25

    move/from16 v34, v48

    move v3, v4

    move/from16 v36, v11

    move-object/from16 v35, v49

    const/16 v38, 0x2

    move/from16 v11, v26

    move/from16 v45, v12

    const/16 v46, 0x4

    move-object/from16 v12, v28

    move-object/from16 v50, v14

    move-object/from16 v14, v43

    move-object/from16 v47, v15

    move-object/from16 v15, v44

    move-object/from16 v19, v37

    move-object/from16 v20, v40

    move/from16 v22, v5

    move v1, v4

    move/from16 v51, v36

    move/from16 v36, v5

    move-wide/from16 v4, v41

    const/16 v41, 0x0

    move/from16 v42, v51

    :try_start_12
    invoke-virtual/range {v2 .. v24}, Lcom/android/server/pm/PackageSetting;->setUserState(IJIZZZZZLjava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IIILjava/lang/String;)V
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f

    nop

    move v3, v1

    move-object/from16 v2, v25

    move/from16 v9, v33

    move-object/from16 v1, p0

    goto/16 :goto_15

    :catch_f
    move-exception v0

    move v3, v1

    move-object/from16 v14, v50

    move-object/from16 v1, p0

    goto/16 :goto_1d

    :catch_10
    move-exception v0

    move v3, v1

    move-object/from16 v14, v50

    move-object/from16 v1, p0

    goto/16 :goto_4

    :catch_11
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move-object/from16 v1, p0

    goto/16 :goto_18

    :catch_12
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move-object/from16 v1, p0

    goto/16 :goto_19

    :cond_1a
    move/from16 v45, v3

    move/from16 v42, v6

    move-object/from16 v39, v7

    move-object/from16 v41, v10

    move/from16 v38, v11

    move/from16 v46, v12

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v1, p1

    move v12, v9

    :try_start_13
    const-string/jumbo v3, "preferred-activities"

    move-object/from16 v4, v39

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_15

    if-eqz v3, :cond_1b

    move v3, v1

    move-object/from16 v1, p0

    :try_start_14
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_14

    :catch_13
    move-exception v0

    goto :goto_16

    :catch_14
    move-exception v0

    goto :goto_17

    :cond_1b
    move v3, v1

    move-object/from16 v1, p0

    const-string/jumbo v5, "persistent-preferred-activities"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_14

    :cond_1c
    const-string v5, "crossProfile-intent-filters"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-direct {v1, v0, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_14

    :cond_1d
    const-string v5, "default-apps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_14

    :cond_1e
    const-string v5, "block-uninstall-packages"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_14

    :cond_1f
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <stopped-packages>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_13

    :goto_14
    move v9, v12

    :goto_15
    goto :goto_1b

    :catch_15
    move-exception v0

    move v3, v1

    move-object/from16 v1, p0

    :goto_16
    move-object/from16 v14, v50

    goto/16 :goto_1d

    :catch_16
    move-exception v0

    move v3, v1

    move-object/from16 v1, p0

    :goto_17
    move-object/from16 v14, v50

    goto/16 :goto_4

    :catch_17
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    :goto_18
    move/from16 v3, p1

    goto/16 :goto_1d

    :catch_18
    move-exception v0

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    :goto_19
    move/from16 v3, p1

    const/4 v5, 0x6

    goto/16 :goto_1e

    :cond_20
    move/from16 v45, v3

    move/from16 v42, v6

    move-object/from16 v41, v10

    move/from16 v38, v11

    move/from16 v46, v12

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    move v12, v9

    :goto_1a
    move v9, v12

    :goto_1b
    move/from16 v13, v27

    move/from16 v11, v38

    move-object/from16 v10, v41

    move/from16 v6, v42

    move/from16 v3, v45

    move/from16 v12, v46

    move-object/from16 v15, v47

    move-object/from16 v14, v50

    goto/16 :goto_7

    :cond_21
    move/from16 v45, v3

    move v12, v9

    move/from16 v27, v13

    move-object/from16 v50, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    :goto_1c
    move-object/from16 v4, v50

    :try_start_15
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    iget-object v5, v1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    add-int/lit8 v9, v12, 0x1

    invoke-virtual {v5, v3, v9}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_19

    nop

    move-object v14, v4

    goto/16 :goto_1f

    :catch_19
    move-exception v0

    move-object v14, v4

    goto :goto_1d

    :catch_1a
    move-exception v0

    move-object v14, v4

    goto/16 :goto_4

    :catch_1b
    move-exception v0

    move-object v4, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    :goto_1d
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v2, "PackageManager"

    const-string v4, "Error reading package manager stopped packages"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    :catch_1c
    move-exception v0

    move-object v4, v14

    move-object/from16 v47, v15

    move/from16 v3, p1

    const/4 v5, 0x6

    :goto_1e
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error reading: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading stopped packages: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v2, "PackageManager"

    const-string v4, "Error reading package manager stopped packages"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :goto_1f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method readPreferredActivitiesLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x5

    if-eqz v3, :cond_4

    new-instance v3, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v3, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v5, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v5}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/pm/PreferredIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    goto :goto_1

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v6}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1
    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <preferred-activities>: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    goto :goto_0

    :cond_5
    return-void
.end method

.method readStoppedLPw()V
    .locals 15

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "Reading from backup stopped packages file\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Need to read from backup stopped packages file"

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning up stopped packages file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    const/4 v1, 0x6

    const/4 v3, 0x0

    if-nez v0, :cond_4

    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "No stopped packages file found\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "No stopped packages file file; assuming all started"

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    invoke-virtual {v4, v3, v3}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    goto :goto_2

    :catch_1
    move-exception v2

    goto/16 :goto_7

    :catch_2
    move-exception v2

    goto/16 :goto_8

    :cond_4
    :goto_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v7, v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v6, v8, :cond_5

    if-eq v7, v9, :cond_5

    goto :goto_3

    :cond_5
    if-eq v7, v8, :cond_6

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in stopped packages file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    const-string v3, "No start tag found in package manager stopped packages"

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void

    :cond_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    :cond_7
    :goto_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v7, v8

    if-eq v8, v9, :cond_d

    const/4 v8, 0x3

    if-ne v7, v8, :cond_8

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v6, :cond_d

    :cond_8
    if-eq v7, v8, :cond_7

    if-ne v7, v2, :cond_9

    goto :goto_4

    :cond_9
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "pkg"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    const-string/jumbo v10, "name"

    invoke-interface {v4, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    if-eqz v11, :cond_a

    invoke-virtual {v11, v9, v3}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    const-string v12, "1"

    const-string/jumbo v13, "nl"

    invoke-interface {v4, v5, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v11, v9, v3}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_5

    :cond_a
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No package known for stopped package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_5
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    :cond_c
    const-string v10, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <stopped-packages>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_6
    goto :goto_4

    :cond_d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    :goto_7
    nop

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v1, "PackageManager"

    const-string v3, "Error reading package manager stopped packages"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :goto_8
    nop

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading stopped packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    const-string v1, "PackageManager"

    const-string v3, "Error reading package manager stopped packages"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    nop

    :goto_a
    return-void
.end method

.method readUsesStaticLibLPw(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "name"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "version"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v4, v6

    goto :goto_1

    :catch_0
    move-exception v6

    :goto_1
    if-eqz v1, :cond_3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    const-class v6, Ljava/lang/String;

    iget-object v7, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    invoke-static {v6, v7, v1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-static {v6, v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object v6

    iput-object v6, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    :cond_3
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method removeCrossProfileIntentFiltersLPw(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/CrossProfileIntentResolver;

    const/4 v5, 0x0

    new-instance v6, Landroid/util/ArraySet;

    invoke-virtual {v4}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_1

    const/4 v5, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/pm/CrossProfileIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    :cond_1
    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v1, :cond_0

    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No package known: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->clearDomainVerificationStatusForUser(I)V

    const/4 v1, 0x1

    return v1
.end method

.method removeIntentFilterVerificationLPw(Ljava/lang/String;[I)Z
    .locals 5

    const/4 v0, 0x0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p2, v2

    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/Settings;->removeIntentFilterVerificationLPw(Ljava/lang/String;I)Z

    move-result v4

    or-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method removePackageLPw(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)V

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    iget-object v1, v0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget v1, v1, Lcom/android/server/pm/SharedUserSetting;->userId:I

    return v1

    :cond_0
    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v1}, Lcom/android/server/pm/Settings;->removeUserIdLPw(I)V

    iget v1, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    return v1

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method removeUserLPw(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v2, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->access$100(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    return-void
.end method

.method setBlockUninstallLPw(ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz p3, :cond_1

    if-nez v0, :cond_0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method setDefaultBrowserPackageNameLPw(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    const/4 v0, 0x1

    return v0
.end method

.method setDefaultDialerPackageNameLPw(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    const/4 v0, 0x1

    return v0
.end method

.method setHarmfulAppWarningLPw(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p3, v1}, Lcom/android/server/pm/PackageSetting;->setHarmfulAppWarning(ILjava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->setInstallerPackageName(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method setPackageStoppedStateLPw(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZZII)Z
    .locals 5

    invoke-static {p5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_5

    if-nez p4, :cond_1

    iget v2, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: attempt to change stopped state from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", package uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eq v2, p3, :cond_4

    invoke-virtual {v1, p3, p6}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    invoke-virtual {v1, p6}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v4, p6}, Lcom/android/server/pm/PackageManagerService;->notifyFirstLaunch(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {v1, v3, p6}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    :cond_3
    const/4 v2, 0x1

    return v2

    :cond_4
    return v3

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method updateIntentFilterVerificationStatusLPw(Ljava/lang/String;II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v2, :cond_0

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No package known: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_2
    nop

    :goto_0
    invoke-virtual {v0, p2, v1, p3}, Lcom/android/server/pm/PackageSetting;->setDomainVerificationStatusForUser(III)V

    return v3
.end method

.method updateSharedUserPermsLPw(Lcom/android/server/pm/PackageSetting;I)I
    .locals 12

    const/16 v0, -0x2710

    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/PermissionSettings;->getPermission(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/server/pm/SharedUserSetting;->packages:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v8, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v7

    if-eqz v7, :cond_8

    const/4 v8, 0x0

    iget-object v9, v7, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v8, :cond_8

    goto :goto_0

    :cond_8
    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-virtual {v6, v4, p2, v8, v9}, Lcom/android/server/pm/permission/PermissionsState;->updatePermissionFlags(Lcom/android/server/pm/permission/BasePermission;III)Z

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionsState;->revokeInstallPermission(Lcom/android/server/pm/permission/BasePermission;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/4 v0, -0x1

    return v0

    :cond_9
    invoke-virtual {v6, v4, p2}, Lcom/android/server/pm/permission/PermissionsState;->revokeRuntimePermission(Lcom/android/server/pm/permission/BasePermission;I)I

    move-result v8

    if-ne v8, v9, :cond_a

    return p2

    :cond_a
    goto/16 :goto_0

    :cond_b
    return v0

    :cond_c
    :goto_5
    const-string v1, "PackageManager"

    const-string v2, "Trying to update info for null package. Just ignoring"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageSetting;->getNotLaunched(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method writeAllDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "all-intent-filter-verifications"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getIntentFilterVerificationInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "all-intent-filter-verifications"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeAllRuntimePermissionsLPr()V
    .locals 5

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method writeAllUsersPackageRestrictionsLPr()V
    .locals 4

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_1

    const-string v1, "block-uninstall-packages"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    const-string v3, "block-uninstall"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "block-uninstall"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "block-uninstall-packages"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method

.method writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "child-package"

    const/4 v4, 0x0

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v4, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "child-package"

    invoke-interface {p1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "crossProfile-intent-filters"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/CrossProfileIntentFilter;

    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    const-string v2, "crossProfile-intent-filters"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "default-apps"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDefaultBrowserApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "default-browser"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "packageName"

    invoke-interface {p1, v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "default-browser"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDefaultDialerApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "default-dialer"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "default-dialer"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const-string v3, "default-apps"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "updated-package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "realName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v0, "codePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "version"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "resourcePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "cpuAbiOverride"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_6

    const-string/jumbo v0, "userId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "sharedUserId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "parentPackageName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_8

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    :cond_8
    const-string/jumbo v0, "updated-package"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "domain-verification"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p2, p1}, Landroid/content/pm/IntentFilterVerificationInfo;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v0, :cond_0

    const-string v0, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote domain verification for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/IntentFilterVerificationInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "domain-verification"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method

.method writeKernelMappingLPr()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    iget-object v5, v4, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_1

    :cond_2
    nop

    :goto_2
    move v2, v3

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object v4

    if-nez v3, :cond_3

    iget-object v5, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    nop

    :cond_3
    :goto_1
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    new-instance v6, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings$1;)V

    move-object v0, v6

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Landroid/util/ArrayMap;

    iget-object v7, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    if-eq v6, v7, :cond_5

    new-instance v6, Ljava/io/File;

    const-string v7, "appid"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v7, p1, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_5
    if-eqz v2, :cond_b

    move v6, v1

    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_8

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v7, :cond_6

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v8, v4, v6

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    new-instance v7, Ljava/io/File;

    const-string v8, "excluded_userids"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v8, v4, v6

    invoke-direct {p0, v7, v8}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz v6, :cond_a

    nop

    :goto_3
    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length v6, v6

    if-ge v1, v6, :cond_a

    iget-object v6, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v6, v6, v1

    invoke-static {v4, v6}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v6

    if-nez v6, :cond_9

    new-instance v6, Ljava/io/File;

    const-string v7, "clear_userid"

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget v7, v7, v1

    invoke-direct {p0, v6, v7}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    iput-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    :cond_b
    return-void

    :cond_c
    :goto_4
    return-void
.end method

.method writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v2, "defined-keyset"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "alias"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "identifier"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "defined-keyset"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method writeLPr()V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PackageManager"

    const-string v3, "Unable to backup package manager settings,  current changes will be lost at reboot"

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v2, "PackageManager"

    const-string v3, "Preserving older settings backup"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v6, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v5, "packages"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-object v8, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/pm/Settings;->mVersion:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/Settings$VersionInfo;

    const-string/jumbo v10, "version"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "volumeUuid"

    invoke-static {v4, v10, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v10, "sdkVersion"

    iget v11, v9, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v10, "databaseVersion"

    iget v11, v9, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v10, "fingerprint"

    iget-object v11, v9, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v10, "version"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v6, :cond_3

    const-string/jumbo v6, "verifier"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "device"

    iget-object v8, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v8}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "verifier"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    if-eqz v6, :cond_5

    const-string/jumbo v6, "read-external-storage"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "enforcement"

    iget-object v8, p0, Lcom/android/server/pm/Settings;->mReadExternalStorageEnforced:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "1"

    goto :goto_1

    :cond_4
    const-string v8, "0"

    :goto_1
    invoke-interface {v4, v7, v6, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "read-external-storage"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string/jumbo v6, "permission-trees"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissionTrees(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v6, "permission-trees"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "permissions"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/PermissionSettings;

    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/PermissionSettings;->writePermissions(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v6, "permissions"

    invoke-interface {v4, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/Settings;->writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    const-string/jumbo v9, "shared-user"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "name"

    iget-object v10, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "userId"

    iget v10, v8, Lcom/android/server/pm/SharedUserSetting;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v9, v8, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v10, "sigs"

    iget-object v11, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v9, v4, v10, v11}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v8}, Lcom/android/server/pm/SharedUserSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0, v4, v9}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    const-string/jumbo v9, "shared-user"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    :cond_8
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageCleanItem;

    iget v9, v8, Landroid/content/pm/PackageCleanItem;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cleaning-package"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "name"

    iget-object v11, v8, Landroid/content/pm/PackageCleanItem;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "code"

    iget-boolean v11, v8, Landroid/content/pm/PackageCleanItem;->andCode:Z

    if-eqz v11, :cond_9

    const-string/jumbo v11, "true"

    goto :goto_6

    :cond_9
    const-string v11, "false"

    :goto_6
    invoke-interface {v4, v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v10, "user"

    invoke-interface {v4, v7, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v10, "cleaning-package"

    invoke-interface {v4, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_b

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    const-string/jumbo v9, "renamed-package"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "new"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "old"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v4, v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "renamed-package"

    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_7

    :cond_b
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_e

    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v8, :cond_c

    const-string v8, "PackageSettings"

    const-string v9, "Writing restored-ivi entries to packages.xml"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const-string/jumbo v8, "restored-ivi"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    :goto_8
    if-ge v5, v6, :cond_d

    iget-object v8, p0, Lcom/android/server/pm/Settings;->mRestoredIntentFilterVerifications:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, v4, v8}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_d
    const-string/jumbo v5, "restored-ivi"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_9

    :cond_e
    sget-boolean v5, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v5, :cond_f

    const-string v5, "PackageSettings"

    const-string v8, "  no restored IVI entries to write"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_9
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v5, "packages"

    invoke-interface {v4, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mBackupSettingsFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1b0

    const/4 v8, -0x1

    invoke-static {v5, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr()V

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    const-string/jumbo v5, "package"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    invoke-static {v5, v7, v8}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string v3, "PackageManager"

    const-string v4, "Unable to write package manager settings, current changes will be lost at reboot"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clean up mangled file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method writePackageLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "realName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->realName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string v0, "codePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "resourcePath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->resourcePathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nativeLibraryPath"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->legacyNativeLibraryPathString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "primaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->primaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "secondaryCpuAbi"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->secondaryCpuAbiString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "cpuAbiOverride"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    const-string/jumbo v0, "publicFlags"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "privateFlags"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "ft"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "it"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->firstInstallTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "ut"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->lastUpdateTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "version"

    iget-wide v2, p2, Lcom/android/server/pm/PackageSetting;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_6

    const-string/jumbo v0, "userId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "sharedUserId"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_0
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->uidError:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "uidError"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "installer"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->isOrphaned:Z

    if-eqz v0, :cond_9

    const-string/jumbo v0, "isOrphaned"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string/jumbo v0, "volumeUuid"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->volumeUuid:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget v0, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    const-string v0, "categoryHint"

    iget v2, p2, Lcom/android/server/pm/PackageSetting;->categoryHint:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string/jumbo v0, "parentPackageName"

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->parentPackageName:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    iget-boolean v0, p2, Lcom/android/server/pm/PackageSetting;->updateAvailable:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "updateAvailable"

    const-string/jumbo v2, "true"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->childPackageNames:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeChildPackagesLPw(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibraries:[Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/pm/PackageSetting;->usesStaticLibrariesVersions:[J

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v2, "sigs"

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPastSignatures:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionsState;->getInstallPermissionStates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->keySetData:Lcom/android/server/pm/PackageKeySetData;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    iget-object v0, p2, Lcom/android/server/pm/PackageSetting;->verificationInfo:Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeDomainVerificationsLPr(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/pm/IntentFilterVerificationInfo;)V

    const-string/jumbo v0, "package"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePackageListLPr()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    return-void
.end method

.method writePackageListLPr(I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v6, 0x0

    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    aput v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    :cond_1
    move-object v6, v0

    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    new-instance v0, Lcom/android/internal/util/JournaledFile;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v0, v8, v7}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v9

    const/4 v0, 0x0

    move-object v10, v0

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v11, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v12, v0, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v10, v11

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    const/16 v12, 0x1a0

    const/16 v13, 0x3e8

    const/16 v14, 0x408

    invoke-static {v11, v12, v13, v14}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v14, :cond_8

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_8

    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    if-nez v14, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v14, v13, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v14, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v14, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget v3, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v13}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/permission/PermissionsState;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/server/pm/permission/PermissionsState;->computeGids([I)[I

    move-result-object v5

    const/16 v1, 0x20

    invoke-virtual {v15, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    nop

    move-object/from16 v1, p0

    goto/16 :goto_7

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    const-string v1, " 1 "

    goto :goto_3

    :cond_5
    const-string v1, " 0 "

    :goto_3
    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_6

    array-length v1, v5

    if-lez v1, :cond_6

    const/4 v1, 0x0

    aget v2, v5, v1

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_4
    array-length v1, v5

    if-ge v2, v1, :cond_7

    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v5, v2

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const-string/jumbo v1, "none"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v1, "\n"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_6

    :cond_8
    :goto_5
    const-string v1, "android"

    iget-object v2, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "PackageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " due to missing metadata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    move-object/from16 v1, p0

    move/from16 v2, p1

    :goto_7
    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->flush()V

    invoke-static {v0}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v1, "PackageSettings"

    const-string v2, "Failed to write packages.list"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v8}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_8
    return-void
.end method

.method writePackageRestrictionsLPr(I)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Ljava/io/File;

    move-result-object v5

    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateBackupFile(I)Ljava/io/File;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PackageManager"

    const-string v7, "Unable to backup user packages state file, current changes will be lost at reboot"

    invoke-static {v0, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const-string v0, "PackageManager"

    const-string v7, "Preserving older stopped packages backup"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v0

    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v0

    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    move-object v9, v0

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v9, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v0, "package-restrictions"

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    move-object v13, v0

    invoke-virtual {v13, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v0

    move-object v14, v0

    const-string/jumbo v0, "pkg"

    invoke-interface {v9, v11, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "name"

    iget-object v15, v13, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-interface {v9, v11, v0, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-wide v10, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    const-wide/16 v16, 0x0

    cmp-long v0, v10, v16

    if-eqz v0, :cond_2

    const-string v0, "ceDataInode"

    iget-wide v10, v14, Landroid/content/pm/PackageUserState;->ceDataInode:J

    invoke-static {v9, v0, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    :cond_2
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->installed:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "inst"

    const-string v10, "false"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "stopped"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_4
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->notLaunched:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "nl"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "hidden"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "suspended"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string/jumbo v0, "suspending-package"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "suspend_dialog_message"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->dialogMessage:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "suspended-app-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedAppExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while trying to write suspendedAppExtras for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ". Will be lost on reboot"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const-string/jumbo v0, "suspended-app-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_a

    const-string/jumbo v0, "suspended-launcher-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    const-string v10, "PackageSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception while trying to write suspendedLauncherExtras for "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ". Will be lost on reboot"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string/jumbo v0, "suspended-launcher-extras"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_a
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "instant-app"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_b
    iget-boolean v0, v14, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_c

    const-string/jumbo v0, "virtual-preload"

    const-string/jumbo v10, "true"

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_c
    iget v0, v14, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v0, :cond_d

    const-string v0, "enabled"

    iget v10, v14, Landroid/content/pm/PackageUserState;->enabled:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    if-eqz v0, :cond_d

    const-string v0, "enabledCaller"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_d
    iget v0, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    if-eqz v0, :cond_e

    const-string v0, "domainVerificationStatus"

    iget v10, v14, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_e
    iget v0, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    if-eqz v0, :cond_f

    const-string v0, "app-link-generation"

    iget v10, v14, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    invoke-static {v9, v0, v10}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    :cond_f
    iget v0, v14, Landroid/content/pm/PackageUserState;->installReason:I

    if-eqz v0, :cond_10

    const-string/jumbo v0, "install-reason"

    iget v10, v14, Landroid/content/pm/PackageUserState;->installReason:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    if-eqz v0, :cond_11

    const-string/jumbo v0, "harmful-app-warning"

    iget-object v10, v14, Landroid/content/pm/PackageUserState;->harmfulAppWarning:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-interface {v9, v11, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_11
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "enabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v14, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "item"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "name"

    invoke-interface {v9, v15, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "item"

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    :cond_12
    const-string v0, "enabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_13
    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "disabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v14, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "item"

    const/4 v15, 0x0

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "name"

    invoke-interface {v9, v15, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "item"

    invoke-interface {v9, v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    :cond_14
    const-string v0, "disabled-components"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_15
    const-string/jumbo v0, "pkg"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    nop

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_16
    const/4 v10, 0x1

    invoke-virtual {v1, v9, v2, v10}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V

    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    invoke-virtual {v1, v9, v2}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    const-string/jumbo v0, "package-restrictions"

    const/4 v10, 0x0

    invoke-interface {v9, v10, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v7}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x1b0

    const/4 v11, -0x1

    invoke-static {v0, v10, v11, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "package-user-"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    invoke-static {v0, v10, v11}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    return-void

    :catch_2
    move-exception v0

    const-string v7, "PackageManager"

    const-string v8, "Unable to write package manager user packages state,  current changes will be lost at reboot"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clean up mangled file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    return-void
.end method

.method writePermissionLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/permission/BasePermission;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/android/server/pm/permission/BasePermission;->writeLPr(Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method

.method writePermissionsLPr(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionsState$PermissionState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "perms"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionsState$PermissionState;

    const-string/jumbo v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "name"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "granted"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->isGranted()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "flags"

    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionsState$PermissionState;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "item"

    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "perms"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePersistentPreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "persistent-preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PersistentPreferredActivity;

    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "persistent-preferred-activities"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writePreferredActivitiesLPr(Lorg/xmlpull/v1/XmlSerializer;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "preferred-activities"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PreferredIntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PreferredActivity;

    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v3, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    const-string/jumbo v4, "item"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "preferred-activities"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeRuntimePermissionsForUserLPr(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserSyncLPr(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePermissionsForUserAsyncLPr(I)V

    :goto_0
    return-void
.end method

.method writeSigningKeySetLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "proper-signing-keyset"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "identifier"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method writeUpgradeKeySetsLPr(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const-string/jumbo v5, "upgrade-keyset"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "identifier"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "upgrade-keyset"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    if-nez p2, :cond_2

    sget-object v3, Lcom/android/server/pm/PackageSettingBase;->DEFAULT_USER_STATE:Landroid/content/pm/PackageUserState;

    goto :goto_1

    :cond_2
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    :goto_1
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageUserState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_3
    goto :goto_0

    :cond_4
    return-void
.end method

.method writeUsesStaticLibLPw(Lorg/xmlpull/v1/XmlSerializer;[Ljava/lang/String;[J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result v0

    if-nez v0, :cond_2

    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    aget-wide v3, p3, v1

    const-string/jumbo v5, "uses-static-lib"

    const/4 v6, 0x0

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    invoke-interface {p1, v6, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "version"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "uses-static-lib"

    invoke-interface {p1, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method
