.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$SigningDetails;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$ParseFlags;,
        Landroid/content/pm/PackageParser$CallbackImpl;,
        Landroid/content/pm/PackageParser$Callback;,
        Landroid/content/pm/PackageParser$CachedComponentArgs;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation


# static fields
.field public static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final APK_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field private static final CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final DEFAULT_PRE_O_MAX_ASPECT_RATIO:F

.field private static final LOG_PARSE_TIMINGS:Z

.field private static final LOG_PARSE_TIMINGS_THRESHOLD_MS:I = 0x64

.field private static final LOG_UNSAFE_BROADCASTS:Z = false

.field private static final MARKET_NAME:Ljava/lang/String; = "com.oppo.market"

.field private static final METADATA_MAX_ASPECT_RATIO:Ljava/lang/String; = "android.max_aspect"

.field private static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field private static final MULTI_PACKAGE_APK_ENABLED:Z

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = -0x80000000

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x20

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field private static final PARSE_DEFAULT_TARGET_SANDBOX:I = 0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x40

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x8

.field public static final PARSE_FORCE_SDK:I = 0x80

.field public static final PARSE_FORWARD_LOCK:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PARSE_IGNORE_PROCESSES:I = 0x2

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x10

.field public static final PARSE_MUST_BE_APK:I = 0x1

.field private static final PROPERTY_CHILD_PACKAGES_ENABLED:Ljava/lang/String; = "persist.sys.child_packages_enabled"

.field private static final RECREATE_ON_CONFIG_CHANGES_MASK:I = 0x3

.field private static final RIGID_PARSER:Z = false

.field private static final SAFE_BROADCASTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field private static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field private static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field private static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field private static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field private static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field private static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field private static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field private static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field private static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field private static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field private static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field private static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field private static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field private static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field private static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static final TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field public static final sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sCompatibilityModeEnabled:Z

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mCacheDir:Ljava/io/File;

.field private mCallback:Landroid/content/pm/PackageParser$Callback;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 155
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    .line 161
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.child_packages_enabled"

    .line 162
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    .line 171
    new-array v0, v1, [I

    const/16 v3, 0x23

    aput v3, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const v0, 0x3fee147b    # 1.86f

    :goto_1
    sput v0, Landroid/content/pm/PackageParser;->DEFAULT_PRE_O_MAX_ASPECT_RATIO:F

    .line 225
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 227
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "application"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-m"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-23"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-configuration"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-feature"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "feature-group"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-sdk"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "instrumentation"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-gl-texture"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "compatible-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-input"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 240
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "eat-comment"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 251
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    .line 253
    sget-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    const/4 v0, 0x2

    new-array v3, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v4, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v4, v3, v2

    new-instance v4, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-direct {v4, v5, v6, v2}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v4, v3, v1

    sput-object v3, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 307
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    new-instance v4, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x2711

    invoke-direct {v4, v5, v6, v7}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v4, v3, v2

    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v4, "android.permission.READ_CONTACTS"

    const-string v5, "android.permission.READ_CALL_LOG"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-direct {v2, v4, v5, v6}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v3, v1

    new-instance v2, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string v4, "android.permission.WRITE_CONTACTS"

    const-string v5, "android.permission.WRITE_CALL_LOG"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5, v6}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v2, v3, v0

    sput-object v3, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 336
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 337
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 341
    sput-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 893
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$1;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 588
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 589
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 590
    return-void
.end method

.method static synthetic access$400(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "x1"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/content/res/TypedArray;
    .param p5, "x5"    # Z
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # I
    .param p10, "x10"    # I
    .param p11, "x11"    # I

    .line 151
    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/CharSequence;
    .param p3, "x3"    # I
    .param p4, "x4"    # [Ljava/lang/String;
    .param p5, "x5"    # [Ljava/lang/String;

    .line 151
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 2646
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 2647
    .local v1, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 2648
    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 2649
    .end local v1    # "a":Landroid/content/pm/PackageParser$Activity;
    goto :goto_0

    .line 2650
    :cond_0
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .line 2971
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2975
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2976
    .local v1, "cls":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2977
    .local v0, "c":C
    const/16 v2, 0x2e

    if-ne v0, v2, :cond_1

    .line 2978
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2980
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    .line 2981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2982
    .local v3, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2983
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2984
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2986
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_2
    return-object v1

    .line 2972
    .end local v0    # "c":C
    .end local v1    # "cls":Ljava/lang/String;
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty class name in package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    .line 2973
    const/4 v0, 0x0

    return-object v0
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 2991
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2992
    .local v0, "proc":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2993
    .local v2, "c":C
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_2

    .line 2994
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 2995
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": must be at least two characters"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v1

    .line 2997
    return-object v4

    .line 2999
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3000
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3, v1, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 3001
    .local v5, "nameError":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 3002
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v1

    .line 3004
    return-object v4

    .line 3006
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3008
    .end local v3    # "subName":Ljava/lang/String;
    .end local v5    # "nameError":Ljava/lang/String;
    :cond_2
    invoke-static {v0, v3, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 3009
    .local v3, "nameError":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string/jumbo v5, "system"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3010
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p3, v1

    .line 3012
    return-object v4

    .line 3014
    :cond_3
    return-object v0
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .line 3020
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3021
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    .line 3023
    :cond_1
    if-eqz p4, :cond_4

    .line 3024
    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    .line 3024
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 3025
    aget-object v1, p4, v0

    .line 3026
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 3024
    .end local v1    # "sp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3027
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_3
    :goto_2
    return-object p0

    .line 3031
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_5

    goto :goto_3

    .line 3034
    :cond_5
    const-string/jumbo v0, "process"

    invoke-static {p0, p2, v0, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3032
    :cond_6
    :goto_3
    return-object p1
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    .line 3039
    if-nez p2, :cond_0

    .line 3040
    return-object p1

    .line 3042
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3043
    const/4 v0, 0x0

    return-object v0

    .line 3045
    :cond_1
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V
    .locals 7
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "parsed"    # Landroid/content/pm/PackageParser$Package;

    .line 1215
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 1216
    return-void

    .line 1220
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 1221
    .local v0, "cacheKey":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1223
    .local v1, "cacheFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1224
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1225
    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete cache file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_1
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageParser;->toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 1231
    .local v2, "cacheEntry":[B
    if-nez v2, :cond_2

    .line 1232
    return-void

    .line 1235
    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 1236
    :try_start_2
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1237
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1240
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1237
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    goto :goto_0

    .line 1235
    :catch_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1237
    :goto_0
    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_6
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    throw v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    .line 1238
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_7
    const-string v4, "PackageParser"

    const-string v5, "Error writing cache entry."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1239
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    .line 1243
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v1    # "cacheFile":Ljava/io/File;
    .end local v2    # "cacheEntry":[B
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_2
    goto :goto_3

    .line 1241
    :catch_3
    move-exception v0

    .line 1242
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "PackageParser"

    const-string v2, "Error saving package cache."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1244
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3
    return-void
.end method

.method private checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "propName"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .line 2622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2635
    :cond_0
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2636
    .local v0, "currValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 2623
    .end local v0    # "currValue":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 2631
    :cond_3
    return v2

    .line 2625
    :cond_4
    :goto_1
    const-string v0, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disabling overlay - incomplete property :\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' - require both requiredSystemPropertyName AND requiredSystemPropertyValue to be specified."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2628
    return v1
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/PackageUserState;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 688
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 689
    invoke-virtual {p2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x402000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 688
    :goto_1
    return v0
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    .locals 7
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1550
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1552
    .local v0, "apkPath":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1553
    .local v1, "minSignatureScheme":I
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1555
    const/4 v1, 0x2

    .line 1564
    :cond_0
    if-nez p2, :cond_2

    const-string v2, "/system/reserve"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/vendor/reserve"

    .line 1565
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1571
    :cond_1
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    goto :goto_1

    .line 1568
    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->plsCertsNoVerifyOnlyCerts(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    .line 1571
    .local v2, "verified":Landroid/content/pm/PackageParser$SigningDetails;
    :goto_1
    nop

    .line 1577
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v4, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v3, v4, :cond_3

    .line 1578
    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_2

    .line 1580
    :cond_3
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v4, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1586
    :goto_2
    return-void

    .line 1581
    :cond_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x68

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has mismatched certificates"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1522
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V

    .line 1523
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1524
    .local v0, "childCount":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1525
    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 1526
    .local v2, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1524
    .end local v2    # "childPkg":Landroid/content/pm/PackageParser$Package;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1528
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private static collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 5
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "skipVerify"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1532
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1534
    const-string v0, "collectCertificates"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1536
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V

    .line 1538
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1540
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1544
    .end local v0    # "i":I
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1545
    nop

    .line 1546
    return-void

    .line 1544
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "minVers"    # I
    .param p1, "minCode"    # Ljava/lang/String;
    .param p2, "platformSdkVersion"    # I
    .param p3, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p4, "outError"    # [Ljava/lang/String;

    .line 2754
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 2755
    if-gt p0, p2, :cond_0

    .line 2756
    return p0

    .line 2760
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires newer sdk version #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (current version is #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    .line 2762
    return v0

    .line 2767
    :cond_1
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2768
    const/16 v0, 0x2710

    return v0

    .line 2772
    :cond_2
    array-length v2, p3

    if-lez v2, :cond_3

    .line 2773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires development platform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (current platform is any of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    goto :goto_0

    .line 2777
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires development platform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but this is a release platform."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    .line 2780
    :goto_0
    return v0
.end method

.method public static computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 3
    .param p0, "targetVers"    # I
    .param p1, "targetCode"    # Ljava/lang/String;
    .param p2, "platformSdkCodenames"    # [Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;
    .param p4, "forceCurrentDev"    # Z

    .line 2689
    if-nez p1, :cond_0

    .line 2690
    return p0

    .line 2695
    :cond_0
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_1

    goto :goto_1

    .line 2700
    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires development platform "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (current platform is any of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2703
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_0

    .line 2705
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires development platform "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but this is a release platform."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    .line 2708
    :goto_0
    const/4 v0, -0x1

    return v0

    .line 2696
    :cond_3
    :goto_1
    const/16 v0, 0x2710

    return v0
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 5
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .line 7503
    const/4 v0, 0x1

    if-eqz p4, :cond_0

    .line 7506
    return v0

    .line 7508
    :cond_0
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 7509
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 7510
    .local v1, "enabled":Z
    :goto_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v3, v1, :cond_2

    .line 7511
    return v0

    .line 7514
    .end local v1    # "enabled":Z
    :cond_2
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v1, v3

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v2

    .line 7515
    .local v1, "suspended":Z
    :goto_1
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v3, v1, :cond_4

    .line 7516
    return v0

    .line 7518
    :cond_4
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v3, :cond_5

    goto :goto_2

    .line 7521
    :cond_5
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v3, :cond_6

    .line 7522
    return v0

    .line 7524
    :cond_6
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    if-eq v3, v4, :cond_7

    .line 7525
    return v0

    .line 7527
    :cond_7
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_9

    if-nez p3, :cond_8

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v3, :cond_9

    .line 7529
    :cond_8
    return v0

    .line 7531
    :cond_9
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_a

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 7533
    return v0

    .line 7535
    :cond_a
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 7536
    return v0

    .line 7538
    :cond_b
    return v2

    .line 7519
    :cond_c
    :goto_2
    return v0
.end method

.method public static fromCacheEntryStatic([B)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1101
    .local v0, "p":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1104
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    .line 1105
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$ReadHelper;
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    .line 1107
    new-instance v2, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Landroid/os/Parcel;)V

    .line 1109
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1111
    sget-object v3, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1113
    return-object v2
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7778
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7779
    :cond_0
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7780
    return-object v0

    .line 7784
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object p0, v0

    .line 7785
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7786
    return-object p0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7761
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7762
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7763
    return-object v0

    .line 7765
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7766
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7767
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 7770
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 7771
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 7772
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7773
    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7636
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7637
    :cond_0
    invoke-static {p1, p2, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7638
    return-object v0

    .line 7642
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object p0, v0

    .line 7643
    invoke-virtual {p0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 7644
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v0, :cond_2

    .line 7645
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 7647
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7649
    :goto_0
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7650
    return-object p0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .line 7543
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7598
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7599
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 7602
    :cond_1
    invoke-static {p1, p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 7612
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7613
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    .line 7617
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 7618
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 7619
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_4

    .line 7620
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 7622
    :cond_4
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_5

    .line 7623
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 7625
    :cond_5
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_6

    .line 7626
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 7628
    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7630
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7631
    return-object v0

    .line 7600
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_7
    :goto_1
    return-object v0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    .line 8026
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 8027
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 8028
    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v0

    .line 8030
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 8031
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 8032
    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 10
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 675
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    nop

    .line 676
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 675
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 22
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    .line 700
    move/from16 v4, p9

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v3, v5}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_d

    .line 703
    :cond_0
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 704
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 705
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 706
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 707
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    .line 708
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 709
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 710
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 711
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 712
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 713
    invoke-static {v0, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 714
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 715
    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->isStub:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->isStub:Z

    .line 716
    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 717
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-nez v7, :cond_1

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_2

    .line 719
    :cond_1
    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 721
    :cond_2
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 722
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 723
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 724
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 725
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->overlayPriority:I

    .line 726
    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    .line 727
    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    .line 728
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 729
    move-wide/from16 v9, p3

    iput-wide v9, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 730
    move-wide/from16 v11, p5

    iput-wide v11, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 731
    and-int/lit16 v7, v1, 0x100

    if-eqz v7, :cond_3

    .line 732
    move-object/from16 v7, p1

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->gids:[I

    goto :goto_0

    .line 734
    :cond_3
    move-object/from16 v7, p1

    :goto_0
    and-int/lit16 v13, v1, 0x4000

    if-eqz v13, :cond_9

    .line 735
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    .line 736
    .local v13, "N":I
    :goto_1
    if-lez v13, :cond_5

    .line 737
    new-array v15, v13, [Landroid/content/pm/ConfigurationInfo;

    iput-object v15, v5, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 738
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 740
    :cond_5
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    .line 741
    .end local v13    # "N":I
    .local v6, "N":I
    :goto_2
    if-lez v6, :cond_7

    .line 742
    new-array v13, v6, [Landroid/content/pm/FeatureInfo;

    iput-object v13, v5, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 743
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 745
    :cond_7
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    if-eqz v13, :cond_8

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto :goto_3

    :cond_8
    const/4 v13, 0x0

    :goto_3
    move v6, v13

    .line 746
    if-lez v6, :cond_9

    .line 747
    new-array v13, v6, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v13, v5, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 748
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 751
    .end local v6    # "N":I
    :cond_9
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_c

    .line 752
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 753
    .restart local v6    # "N":I
    if-lez v6, :cond_c

    .line 754
    const/4 v13, 0x0

    .line 755
    .local v13, "num":I
    new-array v15, v6, [Landroid/content/pm/ActivityInfo;

    .line 756
    .local v15, "res":[Landroid/content/pm/ActivityInfo;
    move v14, v13

    const/4 v13, 0x0

    .local v13, "i":I
    .local v14, "num":I
    :goto_4
    if-ge v13, v6, :cond_b

    .line 757
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Activity;

    .line 758
    .local v8, "a":Landroid/content/pm/PackageParser$Activity;
    move/from16 v17, v6

    iget-object v6, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .end local v6    # "N":I
    .local v17, "N":I
    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 759
    add-int/lit8 v6, v14, 0x1

    .local v6, "num":I
    invoke-static {v8, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    aput-object v18, v15, v14

    .line 756
    .end local v8    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v14    # "num":I
    move v14, v6

    .end local v6    # "num":I
    .restart local v14    # "num":I
    :cond_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v17

    const/4 v8, 0x1

    goto :goto_4

    .line 762
    .end local v13    # "i":I
    .end local v17    # "N":I
    .local v6, "N":I
    :cond_b
    move/from16 v17, v6

    .end local v6    # "N":I
    .restart local v17    # "N":I
    invoke-static {v15, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ActivityInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 765
    .end local v14    # "num":I
    .end local v15    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v17    # "N":I
    :cond_c
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_f

    .line 766
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 767
    .restart local v6    # "N":I
    if-lez v6, :cond_f

    .line 768
    const/4 v8, 0x0

    .line 769
    .local v8, "num":I
    new-array v13, v6, [Landroid/content/pm/ActivityInfo;

    .line 770
    .local v13, "res":[Landroid/content/pm/ActivityInfo;
    move v14, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .restart local v14    # "num":I
    :goto_5
    if-ge v8, v6, :cond_e

    .line 771
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Activity;

    .line 772
    .local v15, "a":Landroid/content/pm/PackageParser$Activity;
    move/from16 v19, v6

    iget-object v6, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .end local v6    # "N":I
    .local v19, "N":I
    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 773
    add-int/lit8 v6, v14, 0x1

    .local v6, "num":I
    invoke-static {v15, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    aput-object v17, v13, v14

    .line 770
    .end local v14    # "num":I
    .end local v15    # "a":Landroid/content/pm/PackageParser$Activity;
    move v14, v6

    .end local v6    # "num":I
    .restart local v14    # "num":I
    :cond_d
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v19

    goto :goto_5

    .line 776
    .end local v8    # "i":I
    .end local v19    # "N":I
    .local v6, "N":I
    :cond_e
    move/from16 v19, v6

    .end local v6    # "N":I
    .restart local v19    # "N":I
    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ActivityInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 779
    .end local v13    # "res":[Landroid/content/pm/ActivityInfo;
    .end local v14    # "num":I
    .end local v19    # "N":I
    :cond_f
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_12

    .line 780
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 781
    .restart local v6    # "N":I
    if-lez v6, :cond_12

    .line 782
    const/4 v8, 0x0

    .line 783
    .local v8, "num":I
    new-array v13, v6, [Landroid/content/pm/ServiceInfo;

    .line 784
    .local v13, "res":[Landroid/content/pm/ServiceInfo;
    move v14, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .restart local v14    # "num":I
    :goto_6
    if-ge v8, v6, :cond_11

    .line 785
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Service;

    .line 786
    .local v15, "s":Landroid/content/pm/PackageParser$Service;
    move/from16 v20, v6

    iget-object v6, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .end local v6    # "N":I
    .local v20, "N":I
    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 787
    add-int/lit8 v6, v14, 0x1

    .local v6, "num":I
    invoke-static {v15, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    aput-object v17, v13, v14

    .line 784
    .end local v14    # "num":I
    .end local v15    # "s":Landroid/content/pm/PackageParser$Service;
    move v14, v6

    .end local v6    # "num":I
    .restart local v14    # "num":I
    :cond_10
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v20

    goto :goto_6

    .line 790
    .end local v8    # "i":I
    .end local v20    # "N":I
    .local v6, "N":I
    :cond_11
    move/from16 v20, v6

    .end local v6    # "N":I
    .restart local v20    # "N":I
    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ServiceInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 793
    .end local v13    # "res":[Landroid/content/pm/ServiceInfo;
    .end local v14    # "num":I
    .end local v20    # "N":I
    :cond_12
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_15

    .line 794
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 795
    .restart local v6    # "N":I
    if-lez v6, :cond_15

    .line 796
    const/4 v8, 0x0

    .line 797
    .local v8, "num":I
    new-array v13, v6, [Landroid/content/pm/ProviderInfo;

    .line 798
    .local v13, "res":[Landroid/content/pm/ProviderInfo;
    move v14, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .restart local v14    # "num":I
    :goto_7
    if-ge v8, v6, :cond_14

    .line 799
    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Provider;

    .line 800
    .local v15, "pr":Landroid/content/pm/PackageParser$Provider;
    move/from16 v21, v6

    iget-object v6, v15, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .end local v6    # "N":I
    .local v21, "N":I
    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 801
    add-int/lit8 v6, v14, 0x1

    .local v6, "num":I
    invoke-static {v15, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v17

    aput-object v17, v13, v14

    .line 798
    .end local v14    # "num":I
    .end local v15    # "pr":Landroid/content/pm/PackageParser$Provider;
    move v14, v6

    .end local v6    # "num":I
    .restart local v14    # "num":I
    :cond_13
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v21

    goto :goto_7

    .line 804
    .end local v8    # "i":I
    .end local v21    # "N":I
    .local v6, "N":I
    :cond_14
    move/from16 v21, v6

    .end local v6    # "N":I
    .restart local v21    # "N":I
    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ProviderInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 807
    .end local v13    # "res":[Landroid/content/pm/ProviderInfo;
    .end local v14    # "num":I
    .end local v21    # "N":I
    :cond_15
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_16

    .line 808
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 809
    .restart local v6    # "N":I
    if-lez v6, :cond_16

    .line 810
    new-array v8, v6, [Landroid/content/pm/InstrumentationInfo;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 811
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_8
    if-ge v8, v6, :cond_16

    .line 812
    iget-object v13, v5, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    .line 813
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Instrumentation;

    .line 812
    invoke-static {v14, v1}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v14

    aput-object v14, v13, v8

    .line 811
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 817
    .end local v6    # "N":I
    .end local v8    # "i":I
    :cond_16
    and-int/lit16 v6, v1, 0x1000

    if-eqz v6, :cond_19

    .line 818
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 819
    .restart local v6    # "N":I
    if-lez v6, :cond_17

    .line 820
    new-array v8, v6, [Landroid/content/pm/PermissionInfo;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 821
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_9
    if-ge v8, v6, :cond_17

    .line 822
    iget-object v13, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    invoke-static {v14, v1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v14

    aput-object v14, v13, v8

    .line 821
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 825
    .end local v8    # "i":I
    :cond_17
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 826
    if-lez v6, :cond_19

    .line 827
    new-array v8, v6, [Ljava/lang/String;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 828
    new-array v8, v6, [I

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 829
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_a
    if-ge v8, v6, :cond_19

    .line 830
    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 831
    .local v13, "perm":Ljava/lang/String;
    iget-object v14, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v13, v14, v8

    .line 833
    iget-object v14, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v8

    const/16 v16, 0x1

    or-int/lit8 v15, v15, 0x1

    aput v15, v14, v8

    .line 834
    if-eqz v2, :cond_18

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 835
    iget-object v14, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v8

    or-int/lit8 v15, v15, 0x2

    aput v15, v14, v8

    .line 829
    .end local v13    # "perm":Ljava/lang/String;
    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 841
    .end local v6    # "N":I
    .end local v8    # "i":I
    :cond_19
    and-int/lit8 v6, v1, 0x40

    if-eqz v6, :cond_1b

    .line 842
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 845
    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/pm/Signature;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 846
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    const/4 v13, 0x0

    aget-object v8, v8, v13

    aput-object v8, v6, v13

    goto :goto_b

    .line 847
    :cond_1a
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 849
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, v6, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    .line 850
    .local v6, "numberOfSigs":I
    new-array v8, v6, [Landroid/content/pm/Signature;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 851
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v13, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v14, 0x0

    invoke-static {v8, v14, v13, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    .end local v6    # "numberOfSigs":I
    :cond_1b
    :goto_b
    const/high16 v6, 0x8000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_1d

    .line 857
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v8, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v6, v8, :cond_1c

    .line 859
    new-instance v6, Landroid/content/pm/SigningInfo;

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v6, v8}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_c

    .line 861
    :cond_1c
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 864
    :cond_1d
    :goto_c
    return-object v5

    .line 701
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1e
    :goto_d
    move-object/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v6, 0x0

    return-object v6
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    .line 7666
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7667
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 7668
    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v0

    .line 7670
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 7671
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 7672
    return-object v0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    .line 7655
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 7656
    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    .line 7657
    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object v0

    .line 7659
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 7660
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 7661
    return-object v0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7945
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7946
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7947
    return-object v0

    .line 7949
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_3

    .line 7952
    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7953
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v0

    .line 7956
    :cond_3
    new-instance v1, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 7957
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 7958
    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_4

    .line 7959
    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 7961
    :cond_4
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7962
    return-object v1
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 2
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .line 7851
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 7852
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7853
    return-object v0

    .line 7855
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7856
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 7857
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 7860
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 7861
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 7862
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7863
    return-object v0
.end method

.method public static getActivityConfigChanges(II)I
    .locals 1
    .param p0, "configChanges"    # I
    .param p1, "recreateOnConfigChanges"    # I

    .line 4700
    not-int v0, p1

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p0

    return v0
.end method

.method private getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .locals 2
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1087
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I

    .line 1174
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1175
    return-object v1

    .line 1178
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    .line 1179
    .local v0, "cacheKey":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1183
    .local v2, "cacheFile":Ljava/io/File;
    :try_start_0
    invoke-static {p1, v2}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1184
    return-object v1

    .line 1187
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 1188
    .local v3, "bytes":[B
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser;->fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    .line 1189
    .local v4, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v5, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v5, :cond_3

    .line 1190
    iget-object v5, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/content/pm/PackageParser$Callback;->getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1191
    .local v5, "overlayApks":[Ljava/lang/String;
    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    .line 1192
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 1194
    .local v8, "overlayApk":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v2}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_2

    .line 1195
    return-object v1

    .line 1192
    .end local v8    # "overlayApk":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1200
    .end local v5    # "overlayApks":[Ljava/lang/String;
    :cond_3
    return-object v4

    .line 1201
    .end local v3    # "bytes":[B
    .end local v4    # "p":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v3

    .line 1202
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "PackageParser"

    const-string v5, "Error reading package cache: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1206
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1207
    return-object v1
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 3965
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_5

    .line 3966
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 3967
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3968
    .local v2, "countActivities":I
    move v3, v0

    .local v3, "n":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 3969
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    .line 3970
    .local v4, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 3971
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_1

    .end local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    goto :goto_4

    .line 3972
    .restart local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    .restart local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 3973
    .local v6, "countFilters":I
    move v7, v0

    .local v7, "m":I
    :goto_1
    if-ge v7, v6, :cond_6

    .line 3974
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3975
    .local v8, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    goto :goto_2

    .line 3976
    .restart local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    goto :goto_2

    .line 3977
    .restart local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_3
    const-string v9, "http"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "https"

    .line 3978
    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    .line 3973
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3979
    .restart local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_5
    :goto_3
    const/4 v0, 0x1

    return v0

    .line 3968
    .end local v4    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "countFilters":I
    .end local v7    # "m":I
    .end local v8    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3983
    .end local v3    # "n":I
    :cond_7
    return v0

    .line 3965
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    .end local v2    # "countActivities":I
    :cond_8
    :goto_5
    return v0
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .line 658
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 662
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 2
    .param p0, "state"    # Landroid/content/pm/PackageUserState;

    .line 694
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method private static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "cacheFile"    # Ljava/io/File;

    .line 1147
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 1148
    .local v1, "pkg":Landroid/system/StructStat;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 1149
    .local v2, "cache":Landroid/system/StructStat;
    iget-wide v3, v1, Landroid/system/StructStat;->st_mtime:J

    iget-wide v5, v2, Landroid/system/StructStat;->st_mtime:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 1150
    .end local v1    # "pkg":Landroid/system/StructStat;
    .end local v2    # "cache":Landroid/system/StructStat;
    :catch_0
    move-exception v1

    .line 1161
    .local v1, "ee":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    if-eq v2, v3, :cond_1

    .line 1162
    const-string v2, "Error while stating package cache : "

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1165
    :cond_1
    return v0
.end method

.method private isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/pm/PackageParser$IntentInfo;

    .line 5425
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEND"

    .line 5426
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SENDTO"

    .line 5427
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    .line 5428
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5425
    :goto_1
    return v0
.end method

.method static synthetic lambda$parseBaseApplication$0(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .locals 2
    .param p0, "a1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "a2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3938
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseBaseApplication$1(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .locals 2
    .param p0, "r1"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "r2"    # Landroid/content/pm/PackageParser$Activity;

    .line 3941
    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseBaseApplication$2(Landroid/content/pm/PackageParser$Service;Landroid/content/pm/PackageParser$Service;)I
    .locals 2
    .param p0, "s1"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "s2"    # Landroid/content/pm/PackageParser$Service;

    .line 3944
    iget v0, p1, Landroid/content/pm/PackageParser$Service;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static newConfiguredAssetManager()Landroid/content/res/AssetManager;
    .locals 20

    .line 1589
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 1590
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

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

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 1592
    return-object v0
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .param p7, "receiver"    # Z
    .param p8, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    move-object/from16 v2, p6

    .line 4239
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4241
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_0

    .line 4242
    new-instance v0, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/16 v14, 0x2c

    const/16 v15, 0x17

    const/16 v16, 0x1e

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v18, 0x7

    const/16 v19, 0x11

    const/16 v20, 0x5

    move-object v8, v0

    move-object v9, v6

    move-object/from16 v17, v10

    move-object v10, v3

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4255
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_1

    const-string v8, "<receiver>"

    goto :goto_0

    :cond_1
    const-string v8, "<activity>"

    :goto_0
    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4256
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4257
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4259
    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v0, v9, v10}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v9, v0

    .line 4260
    .local v9, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v10, 0x0

    aget-object v0, v3, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    .line 4261
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4262
    return-object v11

    .line 4265
    :cond_2
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 4266
    .local v12, "setExported":Z
    if-eqz v12, :cond_3

    .line 4267
    iget-object v13, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v13, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4270
    :cond_3
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4272
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0x1a

    iget-object v14, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4275
    const/16 v0, 0x1b

    const/16 v13, 0x400

    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 4278
    .local v14, "parentName":Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 4279
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v14, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4280
    .local v0, "parentClassName":Ljava/lang/String;
    aget-object v15, v3, v10

    if-nez v15, :cond_4

    .line 4281
    iget-object v15, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, v15, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_1

    .line 4283
    :cond_4
    const-string v15, "PackageParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " specified invalid parentActivityName "

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    const/4 v10, 0x0

    aput-object v11, v3, v10

    .line 4290
    .end local v0    # "parentClassName":Ljava/lang/String;
    :cond_5
    :goto_1
    const/4 v13, 0x4

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 4291
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 4292
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v15, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto :goto_3

    .line 4294
    :cond_6
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    goto :goto_2

    :cond_7
    move-object v15, v11

    :goto_2
    iput-object v15, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4297
    :goto_3
    const/16 v10, 0x8

    const/16 v15, 0x400

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 4300
    iget-object v15, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v11, v10, v0, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v15, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4303
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x30

    .line 4304
    const/4 v15, 0x0

    invoke-virtual {v1, v11, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 4306
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4307
    const/16 v10, 0x9

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8

    .line 4309
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v15, v11

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4312
    :cond_8
    const/16 v10, 0xa

    const/4 v15, 0x0

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/4 v15, 0x2

    if-eqz v10, :cond_9

    .line 4313
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v11, v15

    iput v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4316
    :cond_9
    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 4317
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v15, v13

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4320
    :cond_a
    const/16 v10, 0x15

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4321
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4324
    :cond_b
    const/16 v10, 0x12

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 4325
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v16, 0x8

    or-int/lit8 v15, v15, 0x8

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4328
    :cond_c
    const/16 v10, 0xc

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v11, 0x10

    if-eqz v10, :cond_d

    .line 4329
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v15, v11

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4332
    :cond_d
    const/16 v10, 0xd

    const/4 v15, 0x0

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v15, 0x20

    if-eqz v10, :cond_e

    .line 4333
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v13, v15

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4336
    :cond_e
    const/16 v10, 0x13

    iget-object v13, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v13, v15

    if-eqz v13, :cond_f

    const/4 v13, 0x1

    goto :goto_4

    :cond_f
    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4338
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v13, v13, 0x40

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4341
    :cond_10
    const/16 v10, 0x16

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4342
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v13, v13, 0x100

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4345
    :cond_11
    const/16 v10, 0x1d

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_12

    const/16 v10, 0x27

    .line 4346
    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 4347
    :cond_12
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v15, 0x400

    or-int/2addr v13, v15

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4350
    :cond_13
    const/16 v10, 0x18

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 4351
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v13, v13, 0x800

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4354
    :cond_14
    const/16 v10, 0x36

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 4355
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v15, 0x20000000

    or-int/2addr v13, v15

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4358
    :cond_15
    if-nez p7, :cond_1f

    .line 4359
    const/16 v13, 0x19

    move/from16 v15, p8

    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 4361
    iget-object v13, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v13, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x200

    iput v10, v13, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4364
    :cond_16
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0xe

    const/4 v11, 0x0

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4366
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0x21

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v10, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 4369
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x22

    .line 4371
    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    move-result v13

    .line 4369
    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v10, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4372
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4373
    const/4 v11, 0x0

    const/16 v13, 0x10

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v21, v0

    const/16 v0, 0x2f

    .line 4374
    .end local v0    # "str":Ljava/lang/String;
    .local v21, "str":Ljava/lang/String;
    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 4372
    invoke-static {v13, v0}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v0

    iput v0, v10, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4375
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x14

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4378
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x20

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 4382
    const/16 v0, 0x1f

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4383
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, -0x80000000

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4386
    :cond_17
    const/16 v0, 0x23

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4387
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x2000

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4390
    :cond_18
    const/16 v0, 0x24

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4391
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4394
    :cond_19
    const/16 v0, 0x25

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4395
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4398
    :cond_1a
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0xf

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4402
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v7, v0, v1, v6}, Landroid/content/pm/PackageParser;->setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V

    .line 4404
    const/16 v0, 0x29

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4406
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v13, 0x400000

    or-int/2addr v10, v13

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4409
    :cond_1b
    const/16 v0, 0x35

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 4410
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v13, 0x40000

    or-int/2addr v10, v13

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4413
    :cond_1c
    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 4414
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    const/4 v13, 0x4

    if-ne v10, v13, :cond_1d

    .line 4416
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v9, v0}, Landroid/content/pm/PackageParser$Activity;->access$200(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4420
    :cond_1d
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x26

    .line 4421
    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4423
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x2a

    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v10, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v11, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 4427
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x2b

    .line 4428
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4430
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x2e

    .line 4431
    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    .line 4433
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x31

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 4436
    const/16 v0, 0x33

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 4437
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x800000

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4440
    :cond_1e
    const/16 v0, 0x34

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 4441
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x1000000

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_5

    .line 4445
    .end local v21    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_1f
    move/from16 v15, p8

    move-object/from16 v21, v0

    .line 4445
    .end local v0    # "str":Ljava/lang/String;
    .restart local v21    # "str":Ljava/lang/String;
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4446
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v10, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4448
    const/16 v0, 0x1c

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4449
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x40000000    # 2.0f

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4452
    :cond_20
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v11, 0x0

    const/16 v13, 0x2a

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v10, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v13, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 4457
    :cond_21
    :goto_5
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v0, :cond_22

    .line 4458
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v10, v10, 0x100

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4463
    :cond_22
    const/16 v0, 0x2d

    .line 4464
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 4465
    .local v11, "visibleToEphemeral":Z
    const/high16 v10, 0x100000

    if-eqz v11, :cond_23

    .line 4466
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v13, v10

    iput v13, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4467
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 4470
    :cond_23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4472
    if-eqz p7, :cond_24

    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v13, 0x2

    and-int/2addr v0, v13

    if-eqz v0, :cond_24

    .line 4476
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v13, :cond_24

    .line 4477
    const-string v0, "Heavy-weight applications can not have receivers in main process"

    const/4 v13, 0x0

    aput-object v0, v3, v13

    goto :goto_6

    .line 4481
    :cond_24
    const/4 v13, 0x0

    :goto_6
    aget-object v0, v3, v13

    if-eqz v0, :cond_25

    .line 4482
    const/4 v0, 0x0

    return-object v0

    .line 4485
    :cond_25
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 4485
    .local v0, "outerDepth":I
    :goto_7
    move v13, v0

    .line 4487
    .end local v0    # "outerDepth":I
    .local v13, "outerDepth":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v22, v0

    .line 4487
    .local v22, "type":I
    const/4 v10, 0x1

    if-eq v0, v10, :cond_3f

    const/4 v0, 0x3

    move/from16 v10, v22

    if-ne v10, v0, :cond_27

    .line 4489
    .end local v22    # "type":I
    .local v10, "type":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v13, :cond_26

    goto :goto_8

    .line 4602
    :cond_26
    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move-object/from16 v18, v21

    const/16 v16, 0x0

    const/16 v17, 0x1

    goto/16 :goto_11

    .line 4490
    :cond_27
    :goto_8
    const/4 v0, 0x3

    if-eq v10, v0, :cond_3d

    const/4 v0, 0x4

    if-ne v10, v0, :cond_28

    .line 4491
    nop

    .line 4485
    move/from16 v19, v0

    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move-object/from16 v18, v21

    const/high16 v4, 0x100000

    const/16 v16, 0x0

    const/16 v17, 0x1

    goto/16 :goto_10

    .line 4494
    :cond_28
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v1

    const-string v1, "intent-filter"

    .line 4494
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v23, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4495
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v1, v0

    .line 4496
    .local v1, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v18, v21

    const/16 v19, 0x4

    move-object v0, v7

    .line 4496
    .end local v21    # "str":Ljava/lang/String;
    .local v18, "str":Ljava/lang/String;
    move-object/from16 v24, v1

    move-object/from16 v20, v23

    move-object v1, v5

    .line 4496
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v23    # "sa":Landroid/content/res/TypedArray;
    .local v20, "sa":Landroid/content/res/TypedArray;
    .local v24, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    move-object v2, v4

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v24

    move-object v8, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 4498
    const/4 v0, 0x0

    return-object v0

    .line 4502
    :cond_29
    const/4 v6, 0x1

    new-array v0, v6, [I

    const/16 v16, 0x0

    aput v16, v0, v16

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v1, "com.android.stk.StkMain"

    .line 4503
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "android.intent.category.LAUNCHER"

    .line 4504
    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    .line 4504
    .end local v24    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .restart local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-eqz v0, :cond_2b

    .line 4505
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->removeCategory(Ljava/lang/String;)V

    goto :goto_9

    .line 4508
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .restart local v24    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2a
    move-object/from16 v1, v24

    .line 4508
    .end local v24    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .restart local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2b
    :goto_9
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_2c

    .line 4509
    const-string v0, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No actions in intent filter at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4511
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4509
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 4513
    :cond_2c
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v0

    iget v2, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 4514
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4517
    :goto_a
    if-eqz v11, :cond_2d

    .line 4518
    nop

    .line 4521
    move v0, v6

    goto :goto_b

    .line 4519
    :cond_2d
    if-nez p7, :cond_2e

    invoke-direct {v7, v1}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4520
    nop

    .line 4521
    const/4 v0, 0x2

    goto :goto_b

    :cond_2e
    move/from16 v0, v16

    .line 4522
    .local v0, "visibility":I
    :goto_b
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4523
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 4524
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4526
    :cond_2f
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4527
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4541
    .end local v0    # "visibility":I
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_30
    nop

    .line 4485
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v17, v6

    const/high16 v4, 0x100000

    goto/16 :goto_10

    .line 4541
    .end local v18    # "str":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "str":Ljava/lang/String;
    .restart local v23    # "sa":Landroid/content/res/TypedArray;
    :cond_31
    move-object v8, v6

    move-object/from16 v18, v21

    move-object/from16 v20, v23

    const/4 v6, 0x1

    const/16 v16, 0x0

    const/16 v19, 0x4

    .line 4541
    .end local v21    # "str":Ljava/lang/String;
    .end local v23    # "sa":Landroid/content/res/TypedArray;
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    if-nez p7, :cond_39

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 4542
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v5, v0

    .line 4543
    .local v5, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v25, v5

    .line 4543
    .end local v5    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v25, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    move/from16 v17, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 4545
    const/4 v0, 0x0

    return-object v0

    .line 4547
    :cond_32
    move-object/from16 v0, v25

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v1

    .line 4547
    .end local v25    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v0, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez v1, :cond_33

    .line 4548
    const-string v1, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No actions in preferred at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4550
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4548
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 4552
    :cond_33
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v1, :cond_34

    .line 4553
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 4555
    :cond_34
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4558
    :goto_c
    if-eqz v11, :cond_35

    .line 4559
    nop

    .line 4562
    move/from16 v1, v17

    goto :goto_d

    .line 4560
    :cond_35
    if-nez p7, :cond_36

    invoke-direct {v7, v0}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 4561
    nop

    .line 4562
    const/4 v1, 0x2

    goto :goto_d

    :cond_36
    move/from16 v1, v16

    .line 4563
    .local v1, "visibility":I
    :goto_d
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4564
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 4565
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_e

    .line 4567
    :cond_37
    const/high16 v4, 0x100000

    :goto_e
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 4568
    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x200000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4570
    .end local v0    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v1    # "visibility":I
    :cond_38
    nop

    .line 4485
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    goto/16 :goto_10

    .line 4570
    :cond_39
    move/from16 v17, v6

    const/high16 v4, 0x100000

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4571
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v7, v1, v2, v0, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_3e

    .line 4573
    const/4 v0, 0x0

    return-object v0

    .line 4575
    :cond_3a
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    const/4 v0, 0x0

    if-nez p7, :cond_3b

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "layout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 4576
    invoke-direct {v7, v1, v2, v9}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    goto/16 :goto_10

    .line 4579
    :cond_3b
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Problem in package "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    if-eqz p7, :cond_3c

    .line 4581
    const-string v0, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <receiver>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4583
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4581
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 4585
    :cond_3c
    const-string v0, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <activity>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4587
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4585
    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    :goto_f
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4590
    goto :goto_10

    .line 4485
    .end local v10    # "type":I
    .end local v18    # "str":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v1, "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "str":Ljava/lang/String;
    :cond_3d
    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move-object/from16 v18, v21

    const/high16 v4, 0x100000

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x4

    .line 4485
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v21    # "str":Ljava/lang/String;
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_3e
    :goto_10
    move-object v5, v1

    move v10, v4

    move-object v6, v8

    move v0, v13

    move-object/from16 v21, v18

    move-object/from16 v1, v20

    move/from16 v8, p4

    move-object v4, v2

    move-object/from16 v2, p6

    goto/16 :goto_7

    .line 4602
    .end local v18    # "str":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "str":Ljava/lang/String;
    .restart local v22    # "type":I
    :cond_3f
    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move/from16 v17, v10

    move-object/from16 v18, v21

    move/from16 v10, v22

    const/16 v16, 0x0

    .line 4602
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v21    # "str":Ljava/lang/String;
    .end local v22    # "type":I
    .restart local v10    # "type":I
    .restart local v18    # "str":Ljava/lang/String;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :goto_11
    if-nez v12, :cond_41

    .line 4603
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_40

    move/from16 v4, v17

    goto :goto_12

    :cond_40
    move/from16 v4, v16

    :goto_12
    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4606
    :cond_41
    return-object v9
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;
    .locals 32
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    .line 4750
    move-object/from16 v2, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 4753
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/16 v0, 0x400

    const/4 v8, 0x7

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    .line 4756
    .local v8, "targetActivity":Ljava/lang/String;
    const/16 v21, 0x0

    const/4 v15, 0x0

    if-nez v8, :cond_0

    .line 4757
    const-string v0, "<activity-alias> does not specify android:targetActivity"

    aput-object v0, v3, v15

    .line 4758
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4759
    return-object v21

    .line 4762
    :cond_0
    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v8, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4764
    .end local v8    # "targetActivity":Ljava/lang/String;
    .local v14, "targetActivity":Ljava/lang/String;
    if-nez v14, :cond_1

    .line 4765
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4766
    return-object v21

    .line 4769
    :cond_1
    iget-object v8, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v8, :cond_2

    .line 4770
    new-instance v13, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xb

    const/16 v18, 0x8

    const/16 v19, 0xa

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x4

    move-object v8, v13

    move-object v9, v6

    move-object/from16 v24, v10

    move-object v10, v3

    move-object v0, v13

    move/from16 v13, v16

    move-object/from16 v26, v14

    move/from16 v14, v17

    .end local v14    # "targetActivity":Ljava/lang/String;
    .local v26, "targetActivity":Ljava/lang/String;
    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v24

    move/from16 v18, v20

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4781
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v8, "<activity-alias>"

    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_0

    .line 4784
    .end local v26    # "targetActivity":Ljava/lang/String;
    .restart local v14    # "targetActivity":Ljava/lang/String;
    :cond_2
    move-object/from16 v26, v14

    .line 4784
    .end local v14    # "targetActivity":Ljava/lang/String;
    .restart local v26    # "targetActivity":Ljava/lang/String;
    :goto_0
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4785
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4787
    const/4 v0, 0x0

    .line 4789
    .local v0, "target":Landroid/content/pm/PackageParser$Activity;
    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 4790
    .local v9, "NA":I
    const/4 v10, 0x0

    .line 4790
    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_4

    .line 4791
    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Activity;

    .line 4792
    .local v11, "t":Landroid/content/pm/PackageParser$Activity;
    iget-object v12, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v13, v26

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 4792
    .end local v26    # "targetActivity":Ljava/lang/String;
    .local v13, "targetActivity":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 4793
    move-object v0, v11

    .line 4794
    nop

    .line 4798
    move-object v10, v0

    goto :goto_2

    .line 4790
    .end local v11    # "t":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v26, v13

    goto :goto_1

    .line 4798
    .end local v10    # "i":I
    .end local v13    # "targetActivity":Ljava/lang/String;
    .restart local v26    # "targetActivity":Ljava/lang/String;
    :cond_4
    move-object/from16 v13, v26

    move-object v10, v0

    .line 4798
    .end local v0    # "target":Landroid/content/pm/PackageParser$Activity;
    .end local v26    # "targetActivity":Ljava/lang/String;
    .local v10, "target":Landroid/content/pm/PackageParser$Activity;
    .restart local v13    # "targetActivity":Ljava/lang/String;
    :goto_2
    if-nez v10, :cond_5

    .line 4799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<activity-alias> target activity "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " not found in manifest"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v3, v11

    .line 4801
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4802
    return-object v21

    .line 4805
    :cond_5
    const/4 v11, 0x0

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object v12, v0

    .line 4806
    .local v12, "info":Landroid/content/pm/ActivityInfo;
    iput-object v13, v12, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 4807
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 4808
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4809
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->icon:I

    .line 4810
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->logo:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->logo:I

    .line 4811
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->banner:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->banner:I

    .line 4812
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 4813
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4814
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 4815
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 4816
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 4817
    iget v0, v12, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v0, :cond_6

    .line 4818
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 4820
    :cond_6
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 4821
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 4822
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->theme:I

    .line 4823
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 4824
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 4825
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 4826
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 4827
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4828
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4829
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    iput v0, v12, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 4830
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 4832
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v0, v12, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v0, v12, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 4834
    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    invoke-direct {v0, v14, v12}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v14, v0

    .line 4835
    .local v14, "a":Landroid/content/pm/PackageParser$Activity;
    aget-object v0, v3, v11

    if-eqz v0, :cond_7

    .line 4836
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4837
    return-object v21

    .line 4840
    :cond_7
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    .line 4842
    .local v15, "setExported":Z
    if-eqz v15, :cond_8

    .line 4843
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4848
    :cond_8
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 4850
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_a

    .line 4851
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_9
    move-object/from16 v11, v21

    :goto_3
    iput-object v11, v2, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 4854
    :cond_a
    const/16 v2, 0x9

    const/16 v11, 0x400

    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 4857
    .local v11, "parentName":Ljava/lang/String;
    if-eqz v11, :cond_c

    .line 4858
    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v11, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4859
    .local v2, "parentClassName":Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v17, v3, v16

    if-nez v17, :cond_b

    .line 4860
    move-object/from16 v27, v0

    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4860
    .end local v0    # "str":Ljava/lang/String;
    .local v27, "str":Ljava/lang/String;
    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_4

    .line 4862
    .end local v27    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_b
    move-object/from16 v27, v0

    .line 4862
    .end local v0    # "str":Ljava/lang/String;
    .restart local v27    # "str":Ljava/lang/String;
    const-string v0, "PackageParser"

    move-object/from16 v28, v2

    new-instance v2, Ljava/lang/StringBuilder;

    .line 4862
    .end local v2    # "parentClassName":Ljava/lang/String;
    .local v28, "parentClassName":Ljava/lang/String;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity alias "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " specified invalid parentActivityName "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    const/4 v0, 0x0

    aput-object v21, v3, v0

    .line 4864
    .end local v28    # "parentClassName":Ljava/lang/String;
    goto :goto_4

    .line 4869
    .end local v27    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_c
    move-object/from16 v27, v0

    .line 4869
    .end local v0    # "str":Ljava/lang/String;
    .restart local v27    # "str":Ljava/lang/String;
    :goto_4
    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x100000

    and-int v0, v0, v16

    const/4 v6, 0x1

    if-eqz v0, :cond_d

    move v0, v6

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    move/from16 v17, v0

    .line 4872
    .local v17, "visibleToEphemeral":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4874
    const/16 v18, 0x0

    aget-object v0, v3, v18

    if-eqz v0, :cond_e

    .line 4875
    return-object v21

    .line 4878
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 4878
    .local v0, "outerDepth":I
    :goto_6
    move v2, v0

    .line 4880
    .end local v0    # "outerDepth":I
    .local v2, "outerDepth":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v29, v0

    .line 4880
    .local v29, "type":I
    if-eq v0, v6, :cond_1c

    move/from16 v0, v29

    const/4 v6, 0x3

    if-ne v0, v6, :cond_10

    .line 4882
    .end local v29    # "type":I
    .local v0, "type":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_f

    goto :goto_7

    .line 4933
    :cond_f
    move/from16 v23, v0

    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move-object/from16 v22, v27

    const/16 v19, 0x1

    goto/16 :goto_b

    .line 4883
    :cond_10
    :goto_7
    const/4 v6, 0x3

    if-eq v0, v6, :cond_1a

    const/4 v6, 0x4

    if-ne v0, v6, :cond_11

    .line 4884
    nop

    .line 4878
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move-object/from16 v22, v27

    const/16 v19, 0x1

    const/16 v26, 0x3

    goto/16 :goto_a

    .line 4887
    :cond_11
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v30, v0

    const-string v0, "intent-filter"

    .line 4887
    .end local v0    # "type":I
    .local v30, "type":I
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4888
    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v6, v0

    .line 4889
    .local v6, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v22, v27

    move/from16 v23, v30

    move-object v0, v7

    .line 4889
    .end local v27    # "str":Ljava/lang/String;
    .end local v30    # "type":I
    .local v22, "str":Ljava/lang/String;
    .local v23, "type":I
    move-object/from16 v24, v1

    move-object v1, v5

    .line 4889
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v24, "sa":Landroid/content/res/TypedArray;
    move/from16 v25, v2

    const/16 v26, 0x3

    move-object v2, v4

    .line 4889
    .end local v2    # "outerDepth":I
    .local v25, "outerDepth":I
    move/from16 v3, v19

    move/from16 v4, v20

    move-object v5, v6

    move-object v8, v6

    const/16 v19, 0x1

    move-object/from16 v6, p5

    .line 4889
    .end local v6    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .local v8, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 4891
    return-object v21

    .line 4893
    :cond_12
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_13

    .line 4894
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No actions in intent filter at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4896
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4894
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 4898
    :cond_13
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v0

    iget v1, v14, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v14, Landroid/content/pm/PackageParser$Activity;->order:I

    .line 4899
    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4902
    :goto_8
    if-eqz v17, :cond_14

    .line 4903
    nop

    .line 4906
    move/from16 v0, v19

    goto :goto_9

    .line 4904
    :cond_14
    invoke-direct {v7, v8}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 4905
    const/4 v0, 0x2

    goto :goto_9

    .line 4906
    :cond_15
    move/from16 v0, v18

    .line 4907
    .local v0, "visibility":I
    :goto_9
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    .line 4908
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4909
    iget-object v1, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v2, v2, v16

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4911
    :cond_16
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 4912
    iget-object v1, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 4914
    .end local v0    # "visibility":I
    .end local v8    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_17
    nop

    .line 4878
    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p2

    goto/16 :goto_a

    .line 4914
    .end local v22    # "str":Ljava/lang/String;
    .end local v23    # "type":I
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "outerDepth":I
    .restart local v27    # "str":Ljava/lang/String;
    .restart local v30    # "type":I
    :cond_18
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v22, v27

    move/from16 v23, v30

    const/16 v19, 0x1

    const/16 v26, 0x3

    .line 4914
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "outerDepth":I
    .end local v27    # "str":Ljava/lang/String;
    .end local v30    # "type":I
    .restart local v22    # "str":Ljava/lang/String;
    .restart local v23    # "type":I
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "outerDepth":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 4915
    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p2

    invoke-direct {v7, v1, v2, v0, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1b

    .line 4917
    return-object v21

    .line 4921
    :cond_19
    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p2

    const-string v0, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity-alias>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4923
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4921
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4925
    goto :goto_a

    .line 4878
    .end local v22    # "str":Ljava/lang/String;
    .end local v23    # "type":I
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "outerDepth":I
    .restart local v27    # "str":Ljava/lang/String;
    :cond_1a
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move/from16 v26, v6

    move-object/from16 v22, v27

    const/16 v19, 0x1

    .line 4878
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "outerDepth":I
    .end local v27    # "str":Ljava/lang/String;
    .restart local v22    # "str":Ljava/lang/String;
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "outerDepth":I
    :cond_1b
    :goto_a
    move-object v5, v1

    move-object v4, v2

    move/from16 v6, v19

    move-object/from16 v27, v22

    move-object/from16 v1, v24

    move/from16 v0, v25

    move/from16 v8, p4

    goto/16 :goto_6

    .line 4933
    .end local v22    # "str":Ljava/lang/String;
    .end local v24    # "sa":Landroid/content/res/TypedArray;
    .end local v25    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v2    # "outerDepth":I
    .restart local v27    # "str":Ljava/lang/String;
    .restart local v29    # "type":I
    :cond_1c
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move/from16 v19, v6

    move-object/from16 v22, v27

    move/from16 v23, v29

    .line 4933
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v2    # "outerDepth":I
    .end local v27    # "str":Ljava/lang/String;
    .end local v29    # "type":I
    .restart local v22    # "str":Ljava/lang/String;
    .restart local v23    # "type":I
    .restart local v24    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "outerDepth":I
    :goto_b
    if-nez v15, :cond_1e

    .line 4934
    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1d

    move/from16 v4, v19

    goto :goto_c

    :cond_1d
    move/from16 v4, v18

    :goto_c
    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 4937
    :cond_1e
    return-object v14
.end method

.method private parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2869
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2871
    .local v0, "certSha256Digests":[Ljava/lang/String;
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 2873
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 2874
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    .line 2875
    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    .line 2876
    goto :goto_0

    .line 2879
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2880
    .local v2, "nodeName":Ljava/lang/String;
    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2881
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 2883
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .line 2885
    .local v6, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2887
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2888
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p3, v5

    .line 2890
    const/16 v5, -0x6c

    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2891
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2892
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2893
    const/4 v5, 0x0

    return-object v5

    .line 2898
    :cond_3
    const-string v5, ":"

    const-string v7, ""

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2899
    .end local v6    # "certSha256Digest":Ljava/lang/String;
    .local v5, "certSha256Digest":Ljava/lang/String;
    const-class v6, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    .line 2901
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "certSha256Digest":Ljava/lang/String;
    goto :goto_1

    .line 2902
    :cond_4
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2904
    .end local v2    # "nodeName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 2906
    :cond_5
    return-object v0
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "tag"    # Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component<",
            "*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5433
    .local p4, "outInfo":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5435
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    .line 5435
    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 5437
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    .line 5438
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 5439
    goto :goto_0

    .line 5442
    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5443
    iget-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v1, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 5445
    const/4 v1, 0x0

    return v1

    .line 5449
    :cond_3
    const-string v1, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5450
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5451
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5449
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5453
    goto :goto_0

    .line 5460
    :cond_4
    return v3
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 1
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1605
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method public static parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "debugPathName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1619
    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method private static parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 45
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v0, p3

    .line 1769
    invoke-static/range {p2 .. p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v1

    .line 1771
    .local v1, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, -0x1

    .line 1772
    .local v2, "installLocation":I
    const/4 v3, 0x0

    .line 1773
    .local v3, "versionCode":I
    const/4 v4, 0x0

    .line 1774
    .local v4, "versionCodeMajor":I
    const/4 v5, 0x0

    .line 1775
    .local v5, "revisionCode":I
    const/4 v6, 0x0

    .line 1776
    .local v6, "coreApp":Z
    const/4 v7, 0x0

    .line 1777
    .local v7, "debuggable":Z
    const/4 v8, 0x0

    .line 1778
    .local v8, "multiArch":Z
    const/4 v9, 0x0

    .line 1779
    .local v9, "use32bitAbi":Z
    const/4 v10, 0x1

    .line 1780
    .local v10, "extractNativeLibs":Z
    const/4 v11, 0x0

    .line 1781
    .local v11, "isolatedSplits":Z
    const/4 v12, 0x0

    .line 1782
    .local v12, "isFeatureSplit":Z
    const/4 v13, 0x0

    .line 1783
    .local v13, "configForSplit":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1786
    .local v14, "usesSplitName":Ljava/lang/String;
    const-string v15, ""

    .line 1789
    .local v15, "oplibDependencyStr":Ljava/lang/String;
    move/from16 v16, v2

    .line 1789
    .end local v2    # "installLocation":I
    .local v16, "installLocation":I
    move/from16 v37, v12

    move-object/from16 v36, v13

    move v12, v6

    move v13, v11

    move v6, v4

    move v11, v5

    move/from16 v4, v16

    move v5, v3

    const/4 v3, 0x0

    .line 1789
    .end local v16    # "installLocation":I
    .local v3, "i":I
    .local v4, "installLocation":I
    .local v5, "versionCode":I
    .local v6, "versionCodeMajor":I
    .local v11, "revisionCode":I
    .local v12, "coreApp":Z
    .local v13, "isolatedSplits":Z
    .local v36, "configForSplit":Ljava/lang/String;
    .local v37, "isFeatureSplit":Z
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v3, v2, :cond_8

    .line 1790
    invoke-interface {v0, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1791
    .local v2, "attr":Ljava/lang/String;
    move/from16 v38, v7

    const-string v7, "installLocation"

    .line 1791
    .end local v7    # "debuggable":Z
    .local v38, "debuggable":Z
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1792
    const/4 v7, -0x1

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    goto/16 :goto_1

    .line 1794
    :cond_0
    const-string/jumbo v7, "versionCode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1795
    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v5

    goto :goto_1

    .line 1796
    :cond_1
    const/4 v7, 0x0

    const-string/jumbo v7, "versionCodeMajor"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1797
    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    goto :goto_1

    .line 1798
    :cond_2
    const/4 v7, 0x0

    const-string/jumbo v7, "revisionCode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1799
    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v11

    goto :goto_1

    .line 1800
    :cond_3
    const/4 v7, 0x0

    const-string v7, "coreApp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1801
    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v12

    goto :goto_1

    .line 1802
    :cond_4
    const/4 v7, 0x0

    const-string/jumbo v7, "isolatedSplits"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1803
    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v13

    goto :goto_1

    .line 1804
    :cond_5
    const-string v7, "configForSplit"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1805
    invoke-interface {v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 1789
    .end local v36    # "configForSplit":Ljava/lang/String;
    .local v7, "configForSplit":Ljava/lang/String;
    move-object/from16 v36, v7

    goto :goto_1

    .line 1806
    .end local v7    # "configForSplit":Ljava/lang/String;
    .restart local v36    # "configForSplit":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "isFeatureSplit"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1807
    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    .line 1789
    .end local v37    # "isFeatureSplit":Z
    .local v2, "isFeatureSplit":Z
    move/from16 v37, v2

    .line 1789
    .end local v2    # "isFeatureSplit":Z
    .restart local v37    # "isFeatureSplit":Z
    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v38

    goto/16 :goto_0

    .line 1813
    .end local v3    # "i":I
    .end local v38    # "debuggable":Z
    .local v7, "debuggable":Z
    :cond_8
    move/from16 v38, v7

    .line 1813
    .end local v7    # "debuggable":Z
    .restart local v38    # "debuggable":Z
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1815
    .local v2, "searchDepth":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    .local v7, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :goto_2
    move-object/from16 v39, v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    .line 1816
    .end local v15    # "oplibDependencyStr":Ljava/lang/String;
    .local v39, "oplibDependencyStr":Ljava/lang/String;
    move/from16 v40, v15

    .line 1816
    .local v40, "type":I
    if-eq v15, v3, :cond_1d

    const/4 v15, 0x3

    move/from16 v3, v40

    if-ne v3, v15, :cond_a

    .line 1817
    .end local v40    # "type":I
    .local v3, "type":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-lt v15, v2, :cond_9

    goto :goto_3

    .line 1897
    :cond_9
    move/from16 v42, v2

    move/from16 v41, v3

    goto/16 :goto_e

    .line 1818
    :cond_a
    :goto_3
    const/4 v15, 0x3

    if-eq v3, v15, :cond_1b

    const/4 v15, 0x4

    if-ne v3, v15, :cond_b

    .line 1819
    nop

    .line 1815
    .end local v2    # "searchDepth":I
    .end local v3    # "type":I
    .local v42, "searchDepth":I
    :goto_4
    move/from16 v42, v2

    :goto_5
    const/4 v15, 0x1

    goto/16 :goto_d

    .line 1822
    .end local v42    # "searchDepth":I
    .restart local v2    # "searchDepth":I
    .restart local v3    # "type":I
    :cond_b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-eq v15, v2, :cond_10

    .line 1826
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    move/from16 v41, v3

    add-int/lit8 v3, v2, 0x1

    .line 1826
    .end local v3    # "type":I
    .local v41, "type":I
    if-ne v15, v3, :cond_1b

    const-string/jumbo v3, "meta-data"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1827
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    move-object/from16 v15, p1

    invoke-virtual {v15, v0, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 1829
    .local v3, "sa":Landroid/content/res/TypedArray;
    if-nez v3, :cond_c

    .line 1830
    goto :goto_4

    .line 1832
    :cond_c
    move/from16 v42, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 1834
    .end local v2    # "searchDepth":I
    .local v15, "name":Ljava/lang/String;
    .restart local v42    # "searchDepth":I
    if-nez v15, :cond_d

    .line 1835
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1836
    goto :goto_5

    .line 1838
    :cond_d
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 1839
    .end local v15    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v15, "oneplus_libs"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 1840
    move-object/from16 v43, v2

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1842
    .local v2, "v":Landroid/util/TypedValue;
    .local v43, "name":Ljava/lang/String;
    if-eqz v2, :cond_f

    .line 1843
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1846
    .end local v39    # "oplibDependencyStr":Ljava/lang/String;
    .local v2, "oplibDependencyStr":Ljava/lang/String;
    move-object v15, v2

    goto :goto_6

    .line 1846
    .end local v43    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .restart local v39    # "oplibDependencyStr":Ljava/lang/String;
    :cond_e
    move-object/from16 v43, v2

    .line 1846
    .end local v2    # "name":Ljava/lang/String;
    .restart local v43    # "name":Ljava/lang/String;
    :cond_f
    move-object/from16 v15, v39

    .line 1846
    .end local v39    # "oplibDependencyStr":Ljava/lang/String;
    .local v15, "oplibDependencyStr":Ljava/lang/String;
    :goto_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 1847
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .end local v43    # "name":Ljava/lang/String;
    goto/16 :goto_c

    .line 1852
    .end local v15    # "oplibDependencyStr":Ljava/lang/String;
    .end local v41    # "type":I
    .end local v42    # "searchDepth":I
    .local v2, "searchDepth":I
    .local v3, "type":I
    .restart local v39    # "oplibDependencyStr":Ljava/lang/String;
    :cond_10
    move/from16 v42, v2

    move/from16 v41, v3

    .line 1852
    .end local v2    # "searchDepth":I
    .end local v3    # "type":I
    .restart local v41    # "type":I
    .restart local v42    # "searchDepth":I
    const-string/jumbo v2, "package-verifier"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1853
    invoke-static/range {p3 .. p3}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v2

    .line 1854
    .local v2, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v2, :cond_11

    .line 1855
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1857
    .end local v2    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_11
    goto :goto_5

    :cond_12
    const-string v2, "application"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1858
    const/4 v2, 0x0

    .line 1858
    .local v2, "i":I
    :goto_7
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_17

    .line 1859
    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1860
    .local v3, "attr":Ljava/lang/String;
    const-string v15, "debuggable"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 1861
    const/4 v15, 0x0

    invoke-interface {v0, v2, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v38

    goto :goto_8

    .line 1863
    :cond_13
    const/4 v15, 0x0

    :goto_8
    const-string/jumbo v15, "multiArch"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1864
    const/4 v15, 0x0

    invoke-interface {v0, v2, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    goto :goto_9

    .line 1866
    :cond_14
    const/4 v15, 0x0

    :goto_9
    const-string/jumbo v15, "use32bitAbi"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 1867
    const/4 v15, 0x0

    invoke-interface {v0, v2, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    goto :goto_a

    .line 1869
    :cond_15
    const/4 v15, 0x0

    :goto_a
    const-string v15, "extractNativeLibs"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    .line 1870
    const/4 v15, 0x1

    invoke-interface {v0, v2, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    .line 1870
    .end local v3    # "attr":Ljava/lang/String;
    goto :goto_b

    .line 1858
    :cond_16
    const/4 v15, 0x1

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1815
    .end local v2    # "i":I
    :cond_17
    move-object/from16 v15, v39

    .line 1815
    .end local v39    # "oplibDependencyStr":Ljava/lang/String;
    .end local v41    # "type":I
    .end local v42    # "searchDepth":I
    .local v2, "searchDepth":I
    .restart local v15    # "oplibDependencyStr":Ljava/lang/String;
    :goto_c
    move/from16 v2, v42

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1873
    .end local v2    # "searchDepth":I
    .end local v15    # "oplibDependencyStr":Ljava/lang/String;
    .restart local v39    # "oplibDependencyStr":Ljava/lang/String;
    .restart local v41    # "type":I
    .restart local v42    # "searchDepth":I
    :cond_18
    const/4 v15, 0x1

    const-string/jumbo v2, "uses-split"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1874
    if-eqz v14, :cond_19

    .line 1875
    const-string v2, "PackageParser"

    const-string v3, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    goto :goto_d

    .line 1879
    :cond_19
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "name"

    invoke-interface {v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1880
    if-eqz v14, :cond_1a

    .line 1880
    .end local v41    # "type":I
    goto :goto_d

    .line 1881
    .restart local v41    # "type":I
    :cond_1a
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x6c

    const-string v15, "<uses-split> tag requires \'android:name\' attribute"

    invoke-direct {v2, v3, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1815
    .end local v41    # "type":I
    .end local v42    # "searchDepth":I
    .restart local v2    # "searchDepth":I
    :cond_1b
    move/from16 v42, v2

    const/4 v15, 0x1

    .line 1815
    .end local v2    # "searchDepth":I
    .restart local v42    # "searchDepth":I
    :cond_1c
    :goto_d
    move v3, v15

    move-object/from16 v15, v39

    move/from16 v2, v42

    goto/16 :goto_2

    .line 1897
    .end local v42    # "searchDepth":I
    .restart local v2    # "searchDepth":I
    .restart local v40    # "type":I
    :cond_1d
    move/from16 v42, v2

    move/from16 v41, v40

    .line 1897
    .end local v2    # "searchDepth":I
    .end local v40    # "type":I
    .restart local v41    # "type":I
    .restart local v42    # "searchDepth":I
    :goto_e
    new-instance v2, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v18, v3

    check-cast v18, Ljava/lang/String;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v3

    check-cast v19, Ljava/lang/String;

    move-object/from16 v16, v2

    move-object/from16 v17, p0

    move/from16 v20, v37

    move-object/from16 v21, v36

    move-object/from16 v22, v14

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v11

    move/from16 v26, v4

    move-object/from16 v27, v7

    move-object/from16 v28, p4

    move/from16 v29, v12

    move/from16 v30, v38

    move/from16 v31, v8

    move/from16 v32, v9

    move/from16 v33, v10

    move/from16 v34, v13

    move-object/from16 v35, v39

    invoke-direct/range {v16 .. v35}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZLjava/lang/String;)V

    return-object v2
.end method

.method private static parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 10
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "debugPathName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1624
    if-eqz p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1626
    .local v0, "apkPath":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    .line 1630
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 1631
    :try_start_0
    invoke-static {p1, p2, v3, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v4

    goto :goto_1

    .line 1678
    :catchall_0
    move-exception v1

    goto/16 :goto_5

    .line 1673
    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 1633
    :catch_1
    move-exception v1

    goto :goto_3

    .line 1632
    :cond_1
    invoke-static {v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    .local v4, "apkAssets":Landroid/content/res/ApkAssets;
    :goto_1
    nop

    .line 1634
    nop

    .line 1640
    :try_start_1
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1641
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1642
    new-instance v6, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/pm/PackageParser;->newConfiguredAssetManager()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7, v5, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1645
    .local v6, "res":Landroid/content/res/Resources;
    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v4, v7}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    move-object v2, v7

    .line 1648
    and-int/lit8 v7, p3, 0x20

    if-eqz v7, :cond_3

    .line 1650
    new-instance v7, Landroid/content/pm/PackageParser$Package;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    .line 1651
    .local v1, "tempPkg":Landroid/content/pm/PackageParser$Package;
    and-int/lit8 v7, p3, 0x10

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    nop

    .line 1652
    .local v3, "skipVerify":Z
    :cond_2
    const-string v7, "collectCertificates"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1654
    :try_start_2
    invoke-static {v1, p0, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1656
    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1657
    nop

    .line 1658
    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .end local v1    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "skipVerify":Z
    move-object v1, v7

    .line 1659
    .local v1, "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    goto :goto_2

    .line 1656
    .local v1, "tempPkg":Landroid/content/pm/PackageParser$Package;
    .restart local v3    # "skipVerify":Z
    :catchall_1
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7

    .line 1660
    .end local v1    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    .end local v3    # "skipVerify":Z
    :cond_3
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    .line 1663
    .local v1, "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    :goto_2
    move-object v3, v2

    .line 1670
    .local v3, "attrs":Landroid/util/AttributeSet;
    invoke-static {v0, v6, v2, v3, v1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v7
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1678
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1670
    return-object v7

    .line 1633
    .end local v1    # "signingDetails":Landroid/content/pm/PackageParser$SigningDetails;
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "apkAssets":Landroid/content/res/ApkAssets;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .end local v6    # "res":Landroid/content/res/Resources;
    :goto_3
    nop

    .line 1634
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x64

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1673
    .end local v1    # "e":Ljava/io/IOException;
    :goto_4
    nop

    .line 1674
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1675
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1678
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 11
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1349
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 1351
    .local v6, "apkPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1352
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string v1, "/mnt/expand/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1353
    const/16 v1, 0x2f

    const-string v2, "/mnt/expand/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1354
    .local v1, "end":I
    const-string v2, "/mnt/expand/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1357
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .end local v1    # "end":I
    .local v7, "volumeUuid":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1358
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1362
    const/4 v1, 0x0

    move-object v2, v1

    .line 1364
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p2, v6}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v3

    move v8, v3

    .line 1365
    .local v8, "cookie":I
    if-eqz v8, :cond_2

    .line 1369
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {p2, v8, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v3

    .line 1370
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    new-instance v2, Landroid/content/res/Resources;

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v2, p2, v3, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1372
    .local v2, "res":Landroid/content/res/Resources;
    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    .line 1373
    .local v10, "outError":[Ljava/lang/String;
    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    move v4, p3

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1374
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_1

    .line 1379
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    .line 1380
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 1382
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)V
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1384
    nop

    .line 1392
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1384
    return-object v0

    .line 1375
    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    iget v3, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-object v5, v10, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1392
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v8    # "cookie":I
    .end local v10    # "outError":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1388
    :catch_0
    move-exception v0

    move-object v2, v9

    goto :goto_0

    .line 1386
    :catch_1
    move-exception v0

    move-object v2, v9

    goto :goto_1

    .line 1366
    .end local v9    # "parser":Landroid/content/res/XmlResourceParser;
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v8    # "cookie":I
    :cond_2
    :try_start_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1392
    .end local v8    # "cookie":I
    :catchall_1
    move-exception v0

    move-object v9, v2

    goto :goto_2

    .line 1388
    :catch_2
    move-exception v0

    .line 1389
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_4
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1386
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 1387
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1392
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_2
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 15
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    .line 1994
    const/16 v1, -0x6a

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v9, v9}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v0

    .line 1995
    .local v0, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v10, v3

    .line 1996
    .local v10, "pkgName":Ljava/lang/String;
    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v11, v3

    .line 2000
    .local v11, "splitName":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz v10, :cond_0

    invoke-static {v3, v10}, Landroid/app/ActivityThread;->inCompatConfigList(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t allowed to install package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v3

    .line 2003
    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2004
    return-object v2

    .line 2008
    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2009
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected base APK, but found split "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v3

    .line 2010
    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    return-object v2

    .line 2016
    .end local v0    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    nop

    .line 2015
    nop

    .line 2018
    iget-object v0, v8, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v0, :cond_2

    .line 2019
    iget-object v0, v8, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    move-object/from16 v12, p1

    invoke-interface {v0, v10, v12}, Landroid/content/pm/PackageParser$Callback;->getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2020
    .local v0, "overlayPaths":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 2021
    array-length v1, v0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    .line 2022
    .local v5, "overlayPath":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    .line 2021
    .end local v5    # "overlayPath":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2027
    .end local v0    # "overlayPaths":[Ljava/lang/String;
    :cond_2
    move-object/from16 v12, p1

    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 2029
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v13, p2

    invoke-virtual {v13, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    .line 2032
    .local v14, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 2034
    const/16 v1, 0xb

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    .line 2036
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    .line 2037
    const/4 v1, 0x5

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 2039
    const/4 v1, 0x2

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 2041
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2042
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 2045
    :cond_4
    const-string v1, "coreApp"

    invoke-interface {v9, v2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 2047
    const/16 v1, 0x9

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    .line 2049
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 2050
    const/16 v1, 0xa

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 2052
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 2053
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    .line 2055
    :cond_5
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 2057
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 2059
    const/4 v3, 0x0

    move-object v1, v8

    move-object v2, v0

    move-object v4, v13

    move-object v5, v9

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    return-object v1

    .line 2013
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "splitName":Ljava/lang/String;
    .end local v14    # "sa":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    .line 2014
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2015
    return-object v2
.end method

.method private parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 14
    .param p1, "parentPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    .line 1922
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    move-object/from16 v9, p3

    invoke-interface {v9, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1923
    .local v10, "childPackageName":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1924
    const/16 v0, -0x6a

    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1925
    return v12

    .line 1929
    :cond_0
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x6c

    if-eqz v0, :cond_1

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1932
    .local v0, "message":Ljava/lang/String;
    const-string v2, "PackageParser"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    aput-object v0, p5, v12

    .line 1934
    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1935
    return v12

    .line 1939
    .end local v0    # "message":Ljava/lang/String;
    :cond_1
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate child package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1941
    .restart local v0    # "message":Ljava/lang/String;
    const-string v2, "PackageParser"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    aput-object v0, p5, v12

    .line 1943
    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1944
    return v12

    .line 1948
    .end local v0    # "message":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 1951
    .local v13, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, v13, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1952
    iget v0, v8, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v0, v13, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1953
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, v13, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1954
    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1955
    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1957
    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, v7

    move-object v1, v13

    move-object/from16 v3, p2

    move-object v4, v9

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1958
    .end local v13    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "childPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v0, :cond_3

    .line 1960
    return v12

    .line 1964
    :cond_3
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    .line 1965
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 1967
    :cond_4
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    iput-object v8, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1970
    return v11
.end method

.method private parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 47
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2084
    .local p2, "acceptedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    .line 2084
    move-object/from16 v12, p6

    const/4 v13, 0x0

    iput-object v13, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2087
    const/4 v0, 0x0

    .line 2089
    .local v0, "foundApp":Z
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {v9, v10, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2092
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v14, 0x0

    invoke-virtual {v1, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 2094
    .local v15, "str":Ljava/lang/String;
    const/4 v5, 0x3

    const/4 v4, 0x1

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2095
    invoke-static {v15, v4, v14}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 2096
    .local v2, "nameError":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "android"

    iget-object v4, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2097
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v14

    .line 2099
    const/16 v3, -0x6b

    iput v3, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2100
    return-object v13

    .line 2102
    :cond_0
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 2103
    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 2107
    .end local v2    # "nameError":Ljava/lang/String;
    :cond_1
    const/4 v2, -0x1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v7, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 2110
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v7, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 2112
    const/4 v3, 0x7

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    .line 2115
    .local v13, "targetSandboxVersion":I
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v13, v2, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    .line 2118
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_2

    .line 2119
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2123
    :cond_2
    and-int/lit8 v2, v11, 0x8

    if-eqz v2, :cond_3

    .line 2124
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v18, 0x40000

    or-int v3, v3, v18

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2127
    :cond_3
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2128
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v18, 0x8000

    or-int v3, v3, v18

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2132
    :cond_4
    const/4 v2, 0x1

    .line 2133
    .local v2, "supportsSmallScreens":I
    const/4 v3, 0x1

    .line 2134
    .local v3, "supportsNormalScreens":I
    const/16 v18, 0x1

    .line 2135
    .local v18, "supportsLargeScreens":I
    const/16 v20, 0x1

    .line 2136
    .local v20, "supportsXLargeScreens":I
    const/16 v21, 0x1

    .line 2137
    .local v21, "resizeable":I
    const/16 v22, 0x1

    .line 2139
    .local v22, "anyDensity":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    move/from16 v24, v21

    move/from16 v25, v22

    move/from16 v45, v18

    move/from16 v18, v0

    move/from16 v0, v20

    move-object/from16 v20, v1

    move/from16 v1, v45

    move/from16 v46, v3

    move v3, v2

    move/from16 v2, v46

    .end local v21    # "resizeable":I
    .end local v22    # "anyDensity":I
    .local v0, "supportsXLargeScreens":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .local v3, "supportsSmallScreens":I
    .local v18, "foundApp":Z
    .local v20, "sa":Landroid/content/res/TypedArray;
    .local v23, "outerDepth":I
    .local v24, "resizeable":I
    .local v25, "anyDensity":I
    :goto_0
    move/from16 v26, v23

    .line 2140
    .end local v23    # "outerDepth":I
    .local v26, "outerDepth":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move/from16 v27, v14

    .line 2140
    .local v27, "type":I
    const/4 v4, 0x1

    if-eq v14, v4, :cond_4a

    move/from16 v14, v27

    if-ne v14, v5, :cond_6

    .line 2141
    .end local v27    # "type":I
    .local v14, "type":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v5, v26

    if-le v4, v5, :cond_5

    .line 2141
    .end local v26    # "outerDepth":I
    .local v5, "outerDepth":I
    goto :goto_1

    .line 2537
    :cond_5
    move/from16 v16, v0

    move/from16 v19, v1

    move/from16 v17, v5

    move/from16 v28, v13

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    move v14, v2

    move v15, v3

    goto/16 :goto_1f

    .line 2142
    .end local v5    # "outerDepth":I
    .restart local v26    # "outerDepth":I
    :cond_6
    move/from16 v5, v26

    .line 2142
    .end local v26    # "outerDepth":I
    .restart local v5    # "outerDepth":I
    :goto_1
    const/4 v4, 0x3

    if-eq v14, v4, :cond_49

    const/4 v4, 0x4

    if-ne v14, v4, :cond_7

    .line 2143
    nop

    .line 2139
    move/from16 v16, v0

    move/from16 v19, v1

    move v14, v2

    move/from16 v17, v5

    move/from16 v28, v13

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    .line 2139
    .end local v0    # "supportsXLargeScreens":I
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v5    # "outerDepth":I
    .end local v13    # "targetSandboxVersion":I
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .local v14, "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .local v16, "supportsXLargeScreens":I
    .local v17, "outerDepth":I
    .local v19, "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .local v28, "targetSandboxVersion":I
    .local v32, "str":Ljava/lang/String;
    .local v42, "anyDensity":I
    :goto_2
    const/4 v0, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x7

    move v15, v3

    goto/16 :goto_1d

    .line 2146
    .end local v16    # "supportsXLargeScreens":I
    .end local v17    # "outerDepth":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v28    # "targetSandboxVersion":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v42    # "anyDensity":I
    .restart local v0    # "supportsXLargeScreens":I
    .restart local v1    # "supportsLargeScreens":I
    .restart local v2    # "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v5    # "outerDepth":I
    .restart local v13    # "targetSandboxVersion":I
    .local v14, "type":I
    .local v15, "str":Ljava/lang/String;
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    :cond_7
    move/from16 v28, v13

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2148
    .local v13, "tagName":Ljava/lang/String;
    .restart local v28    # "targetSandboxVersion":I
    if-eqz v8, :cond_8

    invoke-interface {v8, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 2149
    const-string v4, "PackageParser"

    move/from16 v29, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2149
    .end local v0    # "supportsXLargeScreens":I
    .local v29, "supportsXLargeScreens":I
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v1

    const-string v1, "Skipping unsupported element under <manifest>: "

    .line 2149
    .end local v1    # "supportsLargeScreens":I
    .local v30, "supportsLargeScreens":I
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2149
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2153
    nop

    .line 2139
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v5    # "outerDepth":I
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v29    # "supportsXLargeScreens":I
    .end local v30    # "supportsLargeScreens":I
    .local v14, "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v17    # "outerDepth":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .restart local v32    # "str":Ljava/lang/String;
    .restart local v42    # "anyDensity":I
    :goto_3
    move v14, v2

    move/from16 v17, v5

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v16, v29

    move/from16 v19, v30

    goto :goto_2

    .line 2156
    .end local v16    # "supportsXLargeScreens":I
    .end local v17    # "outerDepth":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v42    # "anyDensity":I
    .restart local v0    # "supportsXLargeScreens":I
    .restart local v1    # "supportsLargeScreens":I
    .restart local v2    # "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v5    # "outerDepth":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .local v14, "type":I
    .local v15, "str":Ljava/lang/String;
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    :cond_8
    move/from16 v29, v0

    move/from16 v30, v1

    .line 2156
    .end local v0    # "supportsXLargeScreens":I
    .end local v1    # "supportsLargeScreens":I
    .restart local v29    # "supportsXLargeScreens":I
    .restart local v30    # "supportsLargeScreens":I
    const-string v0, "application"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2157
    if-eqz v18, :cond_9

    .line 2163
    const-string v0, "PackageParser"

    const-string v1, "<manifest> has more than one <application>"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2165
    goto :goto_3

    .line 2169
    :cond_9
    const/16 v16, 0x1

    .line 2170
    .end local v18    # "foundApp":Z
    .local v16, "foundApp":Z
    move/from16 v4, v29

    move-object v0, v6

    .line 2170
    .end local v29    # "supportsXLargeScreens":I
    .local v4, "supportsXLargeScreens":I
    move/from16 v8, v30

    move-object v1, v7

    .line 2170
    .end local v30    # "supportsLargeScreens":I
    .local v8, "supportsLargeScreens":I
    move/from16 v31, v14

    move v14, v2

    move-object v2, v9

    .line 2170
    .end local v2    # "supportsNormalScreens":I
    .local v14, "supportsNormalScreens":I
    .local v31, "type":I
    move/from16 v33, v8

    move-object/from16 v32, v15

    const/4 v8, 0x6

    move v15, v3

    move-object v3, v10

    .line 2170
    .end local v3    # "supportsSmallScreens":I
    .end local v8    # "supportsLargeScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v32    # "str":Ljava/lang/String;
    .local v33, "supportsLargeScreens":I
    move/from16 v34, v4

    const/4 v8, 0x1

    const/16 v17, 0x3

    move v4, v11

    .line 2170
    .end local v4    # "supportsXLargeScreens":I
    .local v34, "supportsXLargeScreens":I
    move/from16 v17, v5

    move-object v5, v12

    .line 2170
    .end local v5    # "outerDepth":I
    .restart local v17    # "outerDepth":I
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2171
    const/4 v0, 0x0

    return-object v0

    .line 2535
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_a
    move v2, v14

    move v3, v15

    move/from16 v18, v16

    .line 2535
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v16    # "foundApp":Z
    .end local v33    # "supportsLargeScreens":I
    .restart local v1    # "supportsLargeScreens":I
    .restart local v2    # "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v18    # "foundApp":Z
    :goto_4
    move/from16 v1, v33

    :goto_5
    const/4 v0, 0x0

    const/16 v22, 0x3

    :goto_6
    const/16 v23, 0x7

    goto/16 :goto_1c

    .line 2173
    .end local v1    # "supportsLargeScreens":I
    .end local v17    # "outerDepth":I
    .end local v31    # "type":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v34    # "supportsXLargeScreens":I
    .restart local v5    # "outerDepth":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .local v14, "type":I
    .local v15, "str":Ljava/lang/String;
    .restart local v29    # "supportsXLargeScreens":I
    .restart local v30    # "supportsLargeScreens":I
    :cond_b
    move/from16 v17, v5

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v34, v29

    move/from16 v33, v30

    const/4 v8, 0x1

    move v14, v2

    move v15, v3

    .line 2173
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v5    # "outerDepth":I
    .end local v29    # "supportsXLargeScreens":I
    .end local v30    # "supportsLargeScreens":I
    .local v14, "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v17    # "outerDepth":I
    .restart local v31    # "type":I
    .restart local v32    # "str":Ljava/lang/String;
    .restart local v33    # "supportsLargeScreens":I
    .restart local v34    # "supportsXLargeScreens":I
    const-string/jumbo v0, "overlay"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_10

    .line 2174
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2176
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 2178
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    .line 2180
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 2183
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    .line 2186
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2189
    .local v2, "propName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2192
    .local v1, "propValue":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2194
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    const/16 v4, -0x6c

    if-nez v3, :cond_c

    .line 2195
    const-string v3, "<overlay> does not specify a target package"

    const/4 v5, 0x0

    aput-object v3, v12, v5

    .line 2196
    iput v4, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2197
    const/4 v3, 0x0

    return-object v3

    .line 2200
    :cond_c
    iget v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v3, :cond_f

    iget v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v5, 0x270f

    if-le v3, v5, :cond_d

    goto :goto_8

    .line 2208
    :cond_d
    invoke-direct {v6, v2, v1}, Landroid/content/pm/PackageParser;->checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2209
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping target and overlay pair "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": overlay ignored due to required system property: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    const/4 v3, 0x0

    return-object v3

    .line 2215
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2217
    .end local v1    # "propValue":Ljava/lang/String;
    .end local v2    # "propName":Ljava/lang/String;
    nop

    .line 2535
    move-object/from16 v20, v0

    .line 2535
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v33    # "supportsLargeScreens":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :goto_7
    move v2, v14

    move v3, v15

    goto/16 :goto_4

    .line 2201
    .end local v3    # "supportsSmallScreens":I
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .local v1, "propValue":Ljava/lang/String;
    .local v2, "propName":Ljava/lang/String;
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "supportsNormalScreens":I
    .restart local v15    # "supportsSmallScreens":I
    .restart local v33    # "supportsLargeScreens":I
    :cond_f
    :goto_8
    const-string v3, "<overlay> priority must be between 0 and 9999"

    const/4 v5, 0x0

    aput-object v3, v12, v5

    .line 2202
    iput v4, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2204
    const/4 v3, 0x0

    return-object v3

    .line 2217
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "propValue":Ljava/lang/String;
    .end local v2    # "propName":Ljava/lang/String;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_10
    const/4 v3, 0x0

    const-string/jumbo v0, "key-sets"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2218
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2219
    return-object v3

    .line 2535
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_11
    move-object v0, v3

    :cond_12
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    :goto_9
    const/16 v22, 0x3

    :goto_a
    const/16 v23, 0x7

    goto/16 :goto_1b

    .line 2221
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_13
    const-string/jumbo v0, "permission-group"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2222
    move-object v0, v6

    move-object v1, v7

    move v2, v11

    move-object v3, v9

    const/4 v5, 0x4

    move-object v4, v10

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 2223
    const/4 v0, 0x0

    return-object v0

    .line 2535
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_14
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    const/4 v0, 0x0

    goto :goto_9

    .line 2225
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_15
    const/4 v0, 0x0

    const-string/jumbo v3, "permission"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2226
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2227
    return-object v0

    .line 2229
    :cond_16
    const-string/jumbo v3, "permission-tree"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2230
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2231
    return-object v0

    .line 2233
    :cond_17
    const-string/jumbo v3, "uses-permission"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2234
    invoke-direct {v6, v7, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 2235
    return-object v0

    .line 2237
    :cond_18
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string/jumbo v0, "uses-permission-sdk-23"

    .line 2238
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2239
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    const/16 v22, 0x3

    const/16 v23, 0x7

    goto/16 :goto_1a

    .line 2242
    :cond_19
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2243
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2244
    .local v0, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {v9, v10, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2246
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 2249
    invoke-virtual {v1, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 2252
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2255
    iget v4, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v4, v8

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2257
    :cond_1a
    const/4 v5, 0x3

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 2260
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 2263
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 2265
    :cond_1b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2266
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2268
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2270
    .end local v0    # "cPref":Landroid/content/pm/ConfigurationInfo;
    nop

    .line 2535
    move-object/from16 v20, v1

    move/from16 v22, v5

    move v2, v14

    move v3, v15

    move/from16 v1, v33

    .line 2535
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v33    # "supportsLargeScreens":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :goto_b
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 2270
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "supportsNormalScreens":I
    .restart local v15    # "supportsSmallScreens":I
    .restart local v33    # "supportsLargeScreens":I
    :cond_1c
    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string/jumbo v0, "uses-feature"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2271
    invoke-direct {v6, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 2272
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 2274
    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_1d

    .line 2275
    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 2276
    .local v1, "cPref":Landroid/content/pm/ConfigurationInfo;
    iget v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 2277
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 2280
    .end local v1    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_1d
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2282
    .end local v0    # "fi":Landroid/content/pm/FeatureInfo;
    nop

    .line 2535
    move/from16 v22, v5

    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    .line 2535
    .end local v13    # "tagName":Ljava/lang/String;
    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_a

    .line 2282
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_1e
    const-string v0, "feature-group"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2283
    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 2284
    .local v0, "group":Landroid/content/pm/FeatureGroupInfo;
    const/4 v1, 0x0

    .line 2285
    .local v1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 2286
    .local v2, "innerDepth":I
    :goto_d
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move/from16 v35, v3

    .line 2286
    .end local v31    # "type":I
    .local v35, "type":I
    if-eq v3, v8, :cond_24

    move/from16 v3, v35

    if-ne v3, v5, :cond_20

    .line 2287
    .end local v35    # "type":I
    .local v3, "type":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_1f

    goto :goto_e

    .line 2307
    :cond_1f
    move/from16 v36, v2

    goto :goto_11

    .line 2288
    :cond_20
    :goto_e
    if-eq v3, v5, :cond_23

    if-ne v3, v4, :cond_21

    .line 2289
    nop

    .line 2285
    move/from16 v36, v2

    goto :goto_10

    .line 2292
    :cond_21
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2293
    .local v8, "innerTagName":Ljava/lang/String;
    const-string/jumbo v4, "uses-feature"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2294
    invoke-direct {v6, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v4

    .line 2297
    .local v4, "featureInfo":Landroid/content/pm/FeatureInfo;
    iget v5, v4, Landroid/content/pm/FeatureInfo;->flags:I

    const/16 v16, 0x1

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2298
    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2299
    .end local v4    # "featureInfo":Landroid/content/pm/FeatureInfo;
    nop

    .line 2304
    move/from16 v36, v2

    goto :goto_f

    .line 2300
    :cond_22
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v2

    const-string v2, "Unknown element under <feature-group>: "

    .line 2300
    .end local v2    # "innerDepth":I
    .local v36, "innerDepth":I
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2302
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2300
    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :goto_f
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2305
    .end local v8    # "innerTagName":Ljava/lang/String;
    goto :goto_10

    .line 2285
    .end local v36    # "innerDepth":I
    .restart local v2    # "innerDepth":I
    :cond_23
    move/from16 v36, v2

    .line 2285
    .end local v3    # "type":I
    .restart local v31    # "type":I
    :goto_10
    move/from16 v31, v3

    move/from16 v2, v36

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v8, 0x1

    goto :goto_d

    .line 2307
    .end local v31    # "type":I
    .restart local v35    # "type":I
    :cond_24
    move/from16 v36, v2

    move/from16 v3, v35

    .line 2307
    .end local v2    # "innerDepth":I
    .end local v35    # "type":I
    .restart local v3    # "type":I
    .restart local v36    # "innerDepth":I
    :goto_11
    if-eqz v1, :cond_25

    .line 2308
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/FeatureInfo;

    iput-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2309
    iget-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/FeatureInfo;

    iput-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 2311
    :cond_25
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    .line 2313
    .end local v0    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v1    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .end local v36    # "innerDepth":I
    nop

    .line 2535
    move/from16 v31, v3

    goto/16 :goto_7

    .line 2313
    .end local v3    # "type":I
    .restart local v31    # "type":I
    :cond_26
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2314
    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v0, :cond_2f

    .line 2315
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2318
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    .line 2319
    .local v1, "minVers":I
    const/4 v2, 0x0

    .line 2320
    .local v2, "minCode":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2321
    .local v3, "targetVers":I
    const/4 v4, 0x0

    .line 2323
    .local v4, "targetCode":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 2325
    .local v8, "val":Landroid/util/TypedValue;
    if-eqz v8, :cond_28

    .line 2326
    iget v5, v8, Landroid/util/TypedValue;->type:I

    move/from16 v37, v1

    const/4 v1, 0x3

    if-ne v5, v1, :cond_27

    .line 2326
    .end local v1    # "minVers":I
    .local v37, "minVers":I
    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_27

    .line 2327
    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v4, v1

    .line 2334
    move/from16 v5, v37

    goto :goto_12

    .line 2330
    :cond_27
    iget v1, v8, Landroid/util/TypedValue;->data:I

    move v5, v1

    .line 2330
    .end local v37    # "minVers":I
    .local v5, "minVers":I
    move v3, v1

    goto :goto_12

    .line 2334
    .end local v5    # "minVers":I
    .restart local v1    # "minVers":I
    :cond_28
    move/from16 v37, v1

    move/from16 v5, v37

    .line 2334
    .end local v1    # "minVers":I
    .restart local v5    # "minVers":I
    :goto_12
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    .line 2336
    if-eqz v8, :cond_2b

    .line 2337
    iget v1, v8, Landroid/util/TypedValue;->type:I

    move/from16 v38, v3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2a

    .line 2337
    .end local v3    # "targetVers":I
    .local v38, "targetVers":I
    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    .line 2338
    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2339
    if-nez v2, :cond_29

    .line 2340
    move-object v2, v4

    .line 2348
    .end local v38    # "targetVers":I
    .restart local v3    # "targetVers":I
    :cond_29
    move/from16 v3, v38

    goto :goto_13

    .line 2344
    .end local v3    # "targetVers":I
    .restart local v38    # "targetVers":I
    :cond_2a
    iget v3, v8, Landroid/util/TypedValue;->data:I

    .line 2344
    .end local v38    # "targetVers":I
    .restart local v3    # "targetVers":I
    goto :goto_13

    .line 2348
    :cond_2b
    move/from16 v38, v3

    :goto_13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2350
    sget v1, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move-object/from16 v39, v0

    sget-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 2350
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v39, "sa":Landroid/content/res/TypedArray;
    invoke-static {v5, v2, v1, v0, v12}, Landroid/content/pm/PackageParser;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2352
    .local v0, "minSdkVersion":I
    const/16 v1, -0xc

    if-gez v0, :cond_2c

    .line 2353
    iput v1, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2354
    const/4 v1, 0x0

    return-object v1

    .line 2357
    :cond_2c
    and-int/lit16 v1, v11, 0x80

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_14

    :cond_2d
    const/4 v1, 0x0

    .line 2358
    .local v1, "defaultToCurrentDevBranch":Z
    :goto_14
    move-object/from16 v40, v2

    sget-object v2, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 2358
    .end local v2    # "minCode":Ljava/lang/String;
    .local v40, "minCode":Ljava/lang/String;
    invoke-static {v3, v4, v2, v12, v1}, Landroid/content/pm/PackageParser;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    .line 2360
    .local v2, "targetSdkVersion":I
    if-gez v2, :cond_2e

    .line 2361
    move/from16 v41, v1

    const/16 v1, -0xc

    iput v1, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2362
    .end local v1    # "defaultToCurrentDevBranch":Z
    .local v41, "defaultToCurrentDevBranch":Z
    const/4 v1, 0x0

    return-object v1

    .line 2365
    .end local v41    # "defaultToCurrentDevBranch":Z
    .restart local v1    # "defaultToCurrentDevBranch":Z
    :cond_2e
    move/from16 v41, v1

    .line 2365
    .end local v1    # "defaultToCurrentDevBranch":Z
    .restart local v41    # "defaultToCurrentDevBranch":Z
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2366
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2366
    .end local v0    # "minSdkVersion":I
    .end local v2    # "targetSdkVersion":I
    .end local v3    # "targetVers":I
    .end local v4    # "targetCode":Ljava/lang/String;
    .end local v5    # "minVers":I
    .end local v8    # "val":Landroid/util/TypedValue;
    .end local v40    # "minCode":Ljava/lang/String;
    .end local v41    # "defaultToCurrentDevBranch":Z
    goto :goto_15

    .line 2369
    .end local v39    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_2f
    move-object/from16 v39, v20

    .line 2369
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v39    # "sa":Landroid/content/res/TypedArray;
    :goto_15
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2535
    move v2, v14

    move v3, v15

    move/from16 v1, v33

    move-object/from16 v20, v39

    goto/16 :goto_5

    .line 2371
    .end local v39    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_30
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2372
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2375
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    const/4 v8, 0x6

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2378
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v3, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2381
    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v8, 0x8

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v3, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2387
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 2390
    .end local v15    # "supportsSmallScreens":I
    .local v3, "supportsSmallScreens":I
    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    .line 2393
    .end local v14    # "supportsNormalScreens":I
    .local v2, "supportsNormalScreens":I
    move/from16 v4, v33

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    .line 2396
    .end local v33    # "supportsLargeScreens":I
    .local v4, "supportsLargeScreens":I
    move/from16 v15, v34

    invoke-virtual {v0, v1, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 2399
    .end local v34    # "supportsXLargeScreens":I
    .local v1, "supportsXLargeScreens":I
    move/from16 v15, v24

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    .line 2402
    .end local v24    # "resizeable":I
    .local v15, "resizeable":I
    move/from16 v8, v25

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 2406
    .end local v25    # "anyDensity":I
    .local v8, "anyDensity":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2408
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2535
    move-object/from16 v20, v0

    move/from16 v34, v1

    move v1, v4

    move/from16 v25, v8

    move/from16 v22, v14

    move/from16 v24, v15

    goto/16 :goto_b

    .line 2410
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "supportsXLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .restart local v14    # "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    .restart local v33    # "supportsLargeScreens":I
    .restart local v34    # "supportsXLargeScreens":I
    :cond_31
    move/from16 v21, v24

    move/from16 v8, v25

    move/from16 v4, v33

    move/from16 v16, v34

    const/4 v5, 0x3

    .line 2410
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v33    # "supportsLargeScreens":I
    .end local v34    # "supportsXLargeScreens":I
    .restart local v4    # "supportsLargeScreens":I
    .restart local v8    # "anyDensity":I
    .local v16, "supportsXLargeScreens":I
    .restart local v21    # "resizeable":I
    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2411
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2416
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2419
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2421
    if-eqz v2, :cond_33

    .line 2422
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v1, :cond_32

    .line 2423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 2425
    :cond_32
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 2426
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2430
    :cond_33
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2432
    .end local v2    # "name":Ljava/lang/String;
    nop

    .line 2535
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v16    # "supportsXLargeScreens":I
    .end local v21    # "resizeable":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    .restart local v34    # "supportsXLargeScreens":I
    :goto_16
    move-object/from16 v20, v0

    move v1, v4

    move/from16 v22, v5

    move/from16 v25, v8

    move v2, v14

    move v3, v15

    move/from16 v34, v16

    move/from16 v24, v21

    goto/16 :goto_b

    .line 2432
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v34    # "supportsXLargeScreens":I
    .restart local v4    # "supportsLargeScreens":I
    .restart local v8    # "anyDensity":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v14    # "supportsNormalScreens":I
    .restart local v15    # "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v21    # "resizeable":I
    :cond_34
    const-string v0, "instrumentation"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2433
    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v0

    if-nez v0, :cond_35

    .line 2434
    const/4 v0, 0x0

    return-object v0

    .line 2535
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_35
    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v42, v8

    goto/16 :goto_c

    .line 2436
    .restart local v13    # "tagName":Ljava/lang/String;
    :cond_36
    const-string/jumbo v0, "original-package"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2437
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2440
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 2442
    .local v2, "orig":Ljava/lang/String;
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 2443
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v1, :cond_37

    .line 2444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2445
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2447
    :cond_37
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2450
    :cond_38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2452
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2454
    .end local v2    # "orig":Ljava/lang/String;
    goto :goto_16

    .line 2454
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_39
    const-string v0, "adopt-permissions"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2455
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2458
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 2461
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2463
    if-eqz v2, :cond_3b

    .line 2464
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v1, :cond_3a

    .line 2465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2467
    :cond_3a
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2470
    :cond_3b
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2472
    .end local v2    # "name":Ljava/lang/String;
    goto/16 :goto_16

    .line 2472
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_3c
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2474
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2475
    nop

    .line 2139
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .end local v13    # "tagName":Ljava/lang/String;
    .end local v31    # "type":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v42    # "anyDensity":I
    :goto_17
    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v42, v8

    const/4 v0, 0x0

    const/16 v23, 0x7

    goto/16 :goto_1d

    .line 2477
    .end local v19    # "supportsLargeScreens":I
    .end local v42    # "anyDensity":I
    .restart local v4    # "supportsLargeScreens":I
    .restart local v8    # "anyDensity":I
    .restart local v13    # "tagName":Ljava/lang/String;
    .restart local v31    # "type":I
    :cond_3d
    const-string v0, "compatible-screens"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 2479
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2480
    goto :goto_17

    .line 2481
    :cond_3e
    const-string/jumbo v0, "supports-input"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2482
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2483
    goto :goto_17

    .line 2485
    :cond_3f
    const-string v0, "eat-comment"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2487
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2488
    goto :goto_17

    .line 2490
    :cond_40
    const-string/jumbo v0, "package"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2491
    sget-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    if-nez v0, :cond_41

    .line 2492
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2493
    goto :goto_17

    .line 2495
    :cond_41
    move-object v0, v6

    move-object v1, v7

    move-object v2, v9

    move-object v3, v10

    move/from16 v19, v4

    move/from16 v42, v8

    const/4 v8, 0x4

    move v4, v11

    .line 2495
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v42    # "anyDensity":I
    move/from16 v22, v5

    const/16 v23, 0x7

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2497
    const/4 v0, 0x0

    return-object v0

    .line 2500
    .end local v19    # "supportsLargeScreens":I
    .end local v42    # "anyDensity":I
    .restart local v4    # "supportsLargeScreens":I
    .restart local v8    # "anyDensity":I
    :cond_42
    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v42, v8

    const/4 v8, 0x4

    const/16 v23, 0x7

    .line 2500
    .end local v4    # "supportsLargeScreens":I
    .end local v8    # "anyDensity":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v42    # "anyDensity":I
    const-string/jumbo v0, "restrict-update"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2501
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_45

    .line 2502
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2504
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 2506
    .local v2, "hash":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2508
    const/4 v1, 0x0

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2509
    if-eqz v2, :cond_44

    .line 2510
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 2511
    .local v1, "hashLength":I
    div-int/lit8 v3, v1, 0x2

    new-array v3, v3, [B

    .line 2512
    .local v3, "hashBytes":[B
    const/4 v4, 0x0

    .line 2512
    .local v4, "i":I
    :goto_18
    if-ge v4, v1, :cond_43

    .line 2513
    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v43, v0

    const/16 v0, 0x10

    .line 2513
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v43, "sa":Landroid/content/res/TypedArray;
    invoke-static {v8, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    const/16 v20, 0x4

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v4, 0x1

    .line 2514
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v44, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2514
    .end local v1    # "hashLength":I
    .local v44, "hashLength":I
    add-int/2addr v8, v0

    int-to-byte v0, v8

    aput-byte v0, v3, v5

    .line 2512
    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    const/4 v8, 0x4

    goto :goto_18

    .line 2516
    .end local v4    # "i":I
    .end local v43    # "sa":Landroid/content/res/TypedArray;
    .end local v44    # "hashLength":I
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "hashLength":I
    :cond_43
    move-object/from16 v43, v0

    move/from16 v44, v1

    .line 2516
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "hashLength":I
    .restart local v43    # "sa":Landroid/content/res/TypedArray;
    .restart local v44    # "hashLength":I
    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2516
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "hashBytes":[B
    .end local v44    # "hashLength":I
    goto :goto_19

    .line 2520
    .end local v43    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    :cond_44
    move-object/from16 v43, v0

    .line 2520
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v43    # "sa":Landroid/content/res/TypedArray;
    goto :goto_19

    .line 2520
    .end local v43    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_45
    move-object/from16 v43, v20

    .line 2520
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v43    # "sa":Landroid/content/res/TypedArray;
    :goto_19
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2535
    move v2, v14

    move v3, v15

    move/from16 v34, v16

    move/from16 v1, v19

    move/from16 v24, v21

    move/from16 v25, v42

    move-object/from16 v20, v43

    const/4 v0, 0x0

    goto :goto_1c

    .line 2529
    .end local v43    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_46
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <manifest>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2531
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2529
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2533
    nop

    .line 2139
    const/4 v0, 0x0

    goto :goto_1d

    .line 2239
    .end local v16    # "supportsXLargeScreens":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v42    # "anyDensity":I
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    .restart local v33    # "supportsLargeScreens":I
    .restart local v34    # "supportsXLargeScreens":I
    :cond_47
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    const/16 v22, 0x3

    const/16 v23, 0x7

    .line 2239
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v33    # "supportsLargeScreens":I
    .end local v34    # "supportsXLargeScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .restart local v42    # "anyDensity":I
    :goto_1a
    invoke-direct {v6, v7, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 2240
    const/4 v0, 0x0

    return-object v0

    .line 2535
    .end local v13    # "tagName":Ljava/lang/String;
    :cond_48
    const/4 v0, 0x0

    .line 2535
    .end local v16    # "supportsXLargeScreens":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v42    # "anyDensity":I
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    .restart local v33    # "supportsLargeScreens":I
    .restart local v34    # "supportsXLargeScreens":I
    :goto_1b
    move v2, v14

    move v3, v15

    move/from16 v34, v16

    move/from16 v1, v19

    move/from16 v24, v21

    move/from16 v25, v42

    .line 2139
    .end local v14    # "supportsNormalScreens":I
    .end local v15    # "supportsSmallScreens":I
    .end local v33    # "supportsLargeScreens":I
    .local v1, "supportsLargeScreens":I
    .local v2, "supportsNormalScreens":I
    .local v3, "supportsSmallScreens":I
    :goto_1c
    move/from16 v23, v17

    move/from16 v5, v22

    move/from16 v13, v28

    move-object/from16 v15, v32

    move/from16 v0, v34

    goto :goto_1e

    .line 2139
    .end local v17    # "outerDepth":I
    .end local v28    # "targetSandboxVersion":I
    .end local v31    # "type":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v34    # "supportsXLargeScreens":I
    .local v0, "supportsXLargeScreens":I
    .local v5, "outerDepth":I
    .local v13, "targetSandboxVersion":I
    .local v15, "str":Ljava/lang/String;
    :cond_49
    move/from16 v16, v0

    move/from16 v19, v1

    move v14, v2

    move/from16 v22, v4

    move/from16 v17, v5

    move/from16 v28, v13

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    const/4 v0, 0x0

    const/16 v23, 0x7

    move v15, v3

    .end local v0    # "supportsXLargeScreens":I
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v5    # "outerDepth":I
    .end local v13    # "targetSandboxVersion":I
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .restart local v14    # "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v17    # "outerDepth":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .restart local v28    # "targetSandboxVersion":I
    .restart local v32    # "str":Ljava/lang/String;
    .restart local v42    # "anyDensity":I
    :goto_1d
    move v2, v14

    move v3, v15

    move/from16 v0, v16

    move/from16 v23, v17

    move/from16 v1, v19

    move/from16 v24, v21

    move/from16 v5, v22

    move/from16 v13, v28

    move-object/from16 v15, v32

    move/from16 v25, v42

    .end local v14    # "supportsNormalScreens":I
    .end local v16    # "supportsXLargeScreens":I
    .end local v17    # "outerDepth":I
    .end local v19    # "supportsLargeScreens":I
    .end local v21    # "resizeable":I
    .end local v28    # "targetSandboxVersion":I
    .end local v32    # "str":Ljava/lang/String;
    .end local v42    # "anyDensity":I
    .restart local v0    # "supportsXLargeScreens":I
    .restart local v1    # "supportsLargeScreens":I
    .restart local v2    # "supportsNormalScreens":I
    .restart local v3    # "supportsSmallScreens":I
    .restart local v13    # "targetSandboxVersion":I
    .local v15, "str":Ljava/lang/String;
    .restart local v23    # "outerDepth":I
    .restart local v24    # "resizeable":I
    .restart local v25    # "anyDensity":I
    :goto_1e
    const/4 v4, 0x4

    move-object/from16 v8, p2

    const/4 v14, 0x0

    goto/16 :goto_0

    .line 2537
    .end local v23    # "outerDepth":I
    .restart local v26    # "outerDepth":I
    .restart local v27    # "type":I
    :cond_4a
    move/from16 v16, v0

    move/from16 v19, v1

    move v14, v2

    move/from16 v28, v13

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v17, v26

    move/from16 v31, v27

    move v15, v3

    .end local v0    # "supportsXLargeScreens":I
    .end local v1    # "supportsLargeScreens":I
    .end local v2    # "supportsNormalScreens":I
    .end local v3    # "supportsSmallScreens":I
    .end local v13    # "targetSandboxVersion":I
    .end local v24    # "resizeable":I
    .end local v25    # "anyDensity":I
    .end local v26    # "outerDepth":I
    .end local v27    # "type":I
    .restart local v14    # "supportsNormalScreens":I
    .local v15, "supportsSmallScreens":I
    .restart local v16    # "supportsXLargeScreens":I
    .restart local v17    # "outerDepth":I
    .restart local v19    # "supportsLargeScreens":I
    .restart local v21    # "resizeable":I
    .restart local v28    # "targetSandboxVersion":I
    .restart local v31    # "type":I
    .restart local v32    # "str":Ljava/lang/String;
    .restart local v42    # "anyDensity":I
    :goto_1f
    if-nez v18, :cond_4b

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4b

    .line 2538
    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v2, 0x0

    aput-object v0, v12, v2

    .line 2539
    const/16 v0, -0x6d

    iput v0, v6, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_20

    .line 2542
    :cond_4b
    const/4 v2, 0x0

    :goto_20
    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v0, v0

    .line 2543
    .local v0, "NP":I
    const/4 v1, 0x0

    .line 2544
    .local v1, "implicitPerms":Ljava/lang/StringBuilder;
    move-object v3, v1

    move v1, v2

    .line 2544
    .local v1, "ip":I
    .local v3, "implicitPerms":Ljava/lang/StringBuilder;
    :goto_21
    if-ge v1, v0, :cond_4f

    .line 2545
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v4, v4, v1

    .line 2547
    .local v4, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v8, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v5, v8, :cond_4c

    .line 2548
    goto :goto_23

    .line 2550
    :cond_4c
    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    .line 2551
    if-nez v3, :cond_4d

    .line 2552
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v5

    .line 2553
    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2554
    const-string v5, ": compat added "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 2556
    :cond_4d
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2558
    :goto_22
    iget-object v5, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2559
    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2544
    .end local v4    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 2562
    .end local v1    # "ip":I
    :cond_4f
    :goto_23
    if-eqz v3, :cond_50

    .line 2563
    const-string v1, "PackageParser"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2566
    :cond_50
    sget-object v1, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v1, v1

    .line 2567
    .local v1, "NS":I
    move v4, v2

    .line 2567
    .local v4, "is":I
    :goto_24
    if-ge v4, v1, :cond_54

    .line 2568
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    aget-object v5, v5, v4

    .line 2570
    .local v5, "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v8, v13, :cond_53

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    .line 2571
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 2572
    goto :goto_26

    .line 2574
    :cond_51
    move v8, v2

    .line 2574
    .local v8, "in":I
    :goto_25
    iget-object v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v13, v13

    if-ge v8, v13, :cond_53

    .line 2575
    iget-object v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    aget-object v13, v13, v8

    .line 2576
    .local v13, "perm":Ljava/lang/String;
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 2577
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2574
    .end local v13    # "perm":Ljava/lang/String;
    :cond_52
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_25

    .line 2567
    .end local v5    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    .end local v8    # "in":I
    :cond_53
    :goto_26
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_24

    .line 2582
    .end local v4    # "is":I
    :cond_54
    if-ltz v15, :cond_55

    if-lez v15, :cond_56

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_56

    .line 2585
    :cond_55
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2587
    :cond_56
    if-eqz v14, :cond_57

    .line 2588
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2590
    :cond_57
    if-ltz v19, :cond_58

    if-lez v19, :cond_59

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_59

    .line 2593
    :cond_58
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2595
    :cond_59
    if-ltz v16, :cond_5a

    if-lez v16, :cond_5b

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x9

    if-lt v2, v4, :cond_5b

    .line 2598
    :cond_5a
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2600
    :cond_5b
    if-ltz v21, :cond_5c

    if-lez v21, :cond_5d

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_5d

    .line 2603
    :cond_5c
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2605
    :cond_5d
    if-ltz v42, :cond_5e

    if-lez v42, :cond_5f

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_5f

    .line 2608
    :cond_5e
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2614
    :cond_5f
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->usesCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 2615
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V

    .line 2617
    :cond_60
    return-object v7
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 34
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 3436
    move-object/from16 v11, p5

    iget-object v10, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3437
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3439
    .local v9, "pkgName":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3442
    .local v8, "sa":Landroid/content/res/TypedArray;
    const-string v3, "<application>"

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/16 v16, 0x2

    const/16 v17, 0x2a

    const/16 v18, 0x16

    const/16 v19, 0x1e

    move-object v0, v14

    move-object v1, v10

    move-object v2, v11

    move-object v4, v8

    move-object/from16 v20, v8

    move/from16 v8, v16

    .end local v8    # "sa":Landroid/content/res/TypedArray;
    .local v20, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v21, v9

    move/from16 v9, v17

    .line 3442
    .end local v9    # "pkgName":Ljava/lang/String;
    .local v21, "pkgName":Ljava/lang/String;
    move-object/from16 v22, v10

    move/from16 v10, v18

    .line 3442
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v22, "ai":Landroid/content/pm/ApplicationInfo;
    move-object v13, v11

    move/from16 v11, v19

    invoke-static/range {v0 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v11, -0x6c

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 3450
    move-object/from16 v7, v20

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3451
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v7, "sa":Landroid/content/res/TypedArray;
    iput v11, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3452
    return v10

    .line 3455
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v7, v20

    .line 3455
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v7    # "sa":Landroid/content/res/TypedArray;
    move-object/from16 v9, v22

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 3455
    .end local v22    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 3456
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 3459
    :cond_1
    const/4 v8, 0x4

    const/16 v0, 0x400

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 3462
    .local v6, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 3463
    move-object/from16 v5, v21

    invoke-static {v5, v6, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3463
    .end local v21    # "pkgName":Ljava/lang/String;
    .local v5, "pkgName":Ljava/lang/String;
    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    goto :goto_0

    .line 3467
    .end local v5    # "pkgName":Ljava/lang/String;
    .restart local v21    # "pkgName":Ljava/lang/String;
    :cond_2
    move-object/from16 v5, v21

    .line 3467
    .end local v21    # "pkgName":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    :goto_0
    const/16 v1, 0x11

    const/4 v4, 0x1

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 3469
    .local v16, "allowBackup":Z
    const/16 v3, 0x10

    const/16 v2, 0x20

    if-eqz v16, :cond_8

    .line 3470
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v17, 0x8000

    or-int v11, v11, v17

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3475
    invoke-virtual {v7, v3, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 3478
    .local v11, "backupAgent":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 3479
    invoke-static {v5, v11, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 3485
    const/16 v3, 0x12

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3488
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x10000

    or-int v3, v3, v17

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3490
    :cond_3
    const/16 v3, 0x15

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3493
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x20000

    or-int v3, v3, v17

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3495
    :cond_4
    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3498
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x4000000

    or-int v3, v3, v17

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3500
    :cond_5
    const/16 v3, 0x28

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3503
    iget v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3507
    :cond_6
    const/16 v3, 0x23

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 3509
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_8

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v1, :cond_8

    .line 3515
    iget v1, v3, Landroid/util/TypedValue;->data:I

    if-nez v1, :cond_7

    const/4 v1, -0x1

    goto :goto_1

    :cond_7
    move v1, v10

    :goto_1
    iput v1, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 3522
    .end local v3    # "v":Landroid/util/TypedValue;
    .end local v11    # "backupAgent":Ljava/lang/String;
    :cond_8
    invoke-virtual {v7, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 3524
    const/16 v1, 0xd

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 3527
    const/16 v1, 0x8

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3531
    const/16 v3, 0x2d

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 3533
    .local v3, "requiredFeature":Ljava/lang/String;
    if-eqz v3, :cond_9

    iget-object v11, v15, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v11, v3}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 3534
    :cond_9
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v11, v1

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3538
    .end local v3    # "requiredFeature":Ljava/lang/String;
    :cond_a
    const/16 v3, 0x1b

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3541
    iput-boolean v4, v14, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 3544
    :cond_b
    const/16 v3, 0x1c

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3546
    .local v11, "restrictedAccountType":Ljava/lang/String;
    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_c

    .line 3547
    iput-object v11, v14, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 3550
    :cond_c
    const/16 v1, 0x1d

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3552
    .local v1, "requiredAccountType":Ljava/lang/String;
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_d

    .line 3553
    iput-object v1, v14, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 3556
    :cond_d
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move-object/from16 v29, v1

    const/4 v1, 0x2

    .line 3556
    .end local v1    # "requiredAccountType":Ljava/lang/String;
    .local v29, "requiredAccountType":Ljava/lang/String;
    if-eqz v0, :cond_e

    .line 3559
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3562
    :cond_e
    const/16 v0, 0x14

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3565
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3568
    :cond_f
    const/16 v0, 0x17

    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_10

    move v1, v4

    goto :goto_2

    :cond_10
    move v1, v10

    :goto_2
    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3571
    iget-boolean v0, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    if-eqz v0, :cond_11

    .line 3572
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3575
    :cond_11
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3578
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v8

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3581
    :cond_12
    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3584
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v2

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3587
    :cond_13
    const/4 v0, 0x5

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3590
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3594
    :cond_14
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_15

    .line 3595
    const/16 v0, 0xf

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3598
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3602
    :cond_15
    const/16 v0, 0x18

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 3605
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3608
    :cond_16
    const/16 v1, 0x24

    iget-object v3, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1c

    if-ge v3, v8, :cond_17

    move v3, v4

    goto :goto_3

    :cond_17
    move v3, v10

    :goto_3
    invoke-virtual {v7, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3611
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8000000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3614
    :cond_18
    const/16 v1, 0x1a

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3617
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x400000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3620
    :cond_19
    const/16 v1, 0x21

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3623
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3626
    :cond_1a
    const/16 v1, 0x22

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3629
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3632
    :cond_1b
    const/16 v1, 0x26

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 3635
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v1, v2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3637
    :cond_1c
    const/16 v1, 0x27

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3640
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3643
    :cond_1d
    const/16 v1, 0x25

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3644
    const/16 v0, 0x25

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3645
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    .line 3647
    :cond_1e
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    .line 3649
    :cond_1f
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v0, :cond_20

    .line 3650
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3653
    :cond_20
    :goto_4
    const/16 v0, 0x2c

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 3655
    const/16 v0, 0x29

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 3658
    const/16 v0, 0x2b

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->category:I

    .line 3663
    const/4 v0, 0x6

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 3665
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_21
    const/4 v2, 0x0

    :goto_5
    iput-object v2, v9, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 3667
    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_22

    .line 3668
    const/16 v2, 0xc

    const/16 v3, 0x400

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 3678
    .end local v0    # "str":Ljava/lang/String;
    .local v8, "str":Ljava/lang/String;
    :goto_6
    move-object v8, v0

    goto :goto_7

    .line 3675
    .end local v8    # "str":Ljava/lang/String;
    .restart local v0    # "str":Ljava/lang/String;
    :cond_22
    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 3678
    .end local v0    # "str":Ljava/lang/String;
    .restart local v8    # "str":Ljava/lang/String;
    :goto_7
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v8, v13}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3680
    const/16 v0, 0x30

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    .line 3682
    .local v3, "factory":Ljava/lang/String;
    if-eqz v3, :cond_23

    .line 3683
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    .line 3686
    :cond_23
    aget-object v0, v13, v10

    if-nez v0, :cond_28

    .line 3688
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_24

    .line 3689
    const/16 v0, 0xb

    const/16 v2, 0x400

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 3696
    .local v2, "pname":Ljava/lang/CharSequence;
    :goto_8
    move-object v2, v0

    goto :goto_9

    .line 3696
    .end local v2    # "pname":Ljava/lang/CharSequence;
    :cond_24
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 3699
    .restart local v2    # "pname":Ljava/lang/CharSequence;
    :goto_9
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    iget-object v4, v15, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object/from16 v18, v29

    move-object/from16 v1, v17

    .line 3699
    .end local v29    # "requiredAccountType":Ljava/lang/String;
    .local v18, "requiredAccountType":Ljava/lang/String;
    move-object/from16 v17, v3

    const/16 v19, 0x10

    move/from16 v3, p4

    .line 3699
    .end local v3    # "factory":Ljava/lang/String;
    .local v17, "factory":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v31, v5

    move-object v5, v13

    .line 3699
    .end local v5    # "pkgName":Ljava/lang/String;
    .local v31, "pkgName":Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3702
    const/16 v0, 0x9

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 3705
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3707
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x2000000

    or-int/2addr v0, v3

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3710
    :cond_25
    const/16 v0, 0x2f

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3713
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v5, 0x2

    or-int/2addr v0, v5

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3717
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 3718
    const-string v0, "cantSaveState applications can not use custom processes"

    const/4 v1, 0x0

    aput-object v0, v13, v1

    .line 3718
    .end local v2    # "pname":Ljava/lang/CharSequence;
    goto :goto_a

    .line 3723
    :cond_26
    const/4 v1, 0x0

    goto :goto_a

    :cond_27
    const/4 v1, 0x0

    const/4 v5, 0x2

    goto :goto_a

    .line 3723
    .end local v17    # "factory":Ljava/lang/String;
    .end local v18    # "requiredAccountType":Ljava/lang/String;
    .end local v31    # "pkgName":Ljava/lang/String;
    .restart local v3    # "factory":Ljava/lang/String;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v29    # "requiredAccountType":Ljava/lang/String;
    :cond_28
    move-object/from16 v17, v3

    move-object/from16 v31, v5

    move v1, v10

    move-object/from16 v18, v29

    const/4 v5, 0x2

    const/16 v19, 0x10

    move v10, v4

    .line 3723
    .end local v3    # "factory":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v29    # "requiredAccountType":Ljava/lang/String;
    .restart local v17    # "factory":Ljava/lang/String;
    .restart local v18    # "requiredAccountType":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :goto_a
    const/16 v0, 0x19

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3726
    const/16 v0, 0x2e

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3728
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 3729
    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 3730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid class loader name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v13, v1

    goto :goto_b

    .line 3733
    :cond_29
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 3735
    aget-object v0, v13, v1

    if-eqz v0, :cond_2a

    .line 3736
    const/16 v0, -0x6c

    iput v0, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3737
    return v1

    .line 3740
    :cond_2a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 3743
    .local v4, "innerDepth":I
    new-instance v0, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$1;)V

    move-object/from16 v20, v6

    move-object v6, v0

    .line 3745
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .local v20, "manageSpaceActivity":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3746
    .local v0, "hasActivityOrder":Z
    const/4 v1, 0x0

    .line 3747
    .local v1, "hasReceiverOrder":Z
    move/from16 v21, v0

    move/from16 v22, v1

    move-object/from16 v25, v7

    const/4 v0, 0x0

    .line 3747
    .end local v1    # "hasReceiverOrder":Z
    .end local v7    # "sa":Landroid/content/res/TypedArray;
    .local v0, "hasServiceOrder":Z
    .local v21, "hasActivityOrder":Z
    .local v22, "hasReceiverOrder":Z
    .local v25, "sa":Landroid/content/res/TypedArray;
    :goto_c
    move/from16 v26, v0

    .line 3748
    .end local v0    # "hasServiceOrder":Z
    .local v26, "hasServiceOrder":Z
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v7, v0

    .line 3748
    .local v7, "type":I
    if-eq v0, v10, :cond_4d

    const/4 v0, 0x3

    if-ne v7, v0, :cond_2c

    .line 3749
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v4, :cond_2b

    goto :goto_d

    .line 3937
    :cond_2b
    move/from16 v29, v4

    move/from16 v30, v7

    move-object/from16 v23, v8

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v31

    move-object/from16 v7, p2

    goto/16 :goto_1a

    .line 3750
    :cond_2c
    :goto_d
    const/4 v0, 0x3

    if-eq v7, v0, :cond_4c

    const/4 v3, 0x4

    if-ne v7, v3, :cond_2d

    .line 3751
    nop

    .line 3747
    move/from16 v27, v3

    move/from16 v29, v4

    move-object/from16 v23, v8

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v31

    const/16 v1, -0x6c

    const/4 v2, 0x0

    move-object/from16 v7, p2

    goto/16 :goto_19

    .line 3754
    :cond_2d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3755
    .local v2, "tagName":Ljava/lang/String;
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3756
    const/16 v27, 0x0

    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v0, v15

    move/from16 v28, v1

    move-object v1, v14

    move-object/from16 v32, v2

    move-object/from16 v2, p2

    .line 3756
    .end local v2    # "tagName":Ljava/lang/String;
    .local v32, "tagName":Ljava/lang/String;
    move/from16 v23, v3

    move-object v3, v12

    move/from16 v29, v4

    move/from16 v4, p4

    .line 3756
    .end local v4    # "innerDepth":I
    .local v29, "innerDepth":I
    move-object v5, v13

    move/from16 v30, v7

    move/from16 v7, v27

    .line 3756
    .end local v7    # "type":I
    .local v30, "type":I
    move/from16 v27, v23

    move-object/from16 v23, v8

    move/from16 v8, v28

    .line 3756
    .end local v8    # "str":Ljava/lang/String;
    .local v23, "str":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    .line 3758
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v0, :cond_2e

    .line 3759
    const/16 v1, -0x6c

    iput v1, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3760
    const/4 v2, 0x0

    return v2

    .line 3763
    :cond_2e
    const/16 v1, -0x6c

    const/4 v2, 0x0

    iget v3, v0, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v3, :cond_2f

    move v3, v10

    goto :goto_e

    :cond_2f
    move v3, v2

    :goto_e
    or-int v3, v21, v3

    .line 3764
    .end local v21    # "hasActivityOrder":Z
    .local v3, "hasActivityOrder":Z
    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3766
    .end local v0    # "a":Landroid/content/pm/PackageParser$Activity;
    nop

    .line 3935
    move-object/from16 v7, p2

    move/from16 v21, v3

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    .line 3935
    .end local v3    # "hasActivityOrder":Z
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v31    # "pkgName":Ljava/lang/String;
    .end local v32    # "tagName":Ljava/lang/String;
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "pkgName":Ljava/lang/String;
    .restart local v21    # "hasActivityOrder":Z
    .local v24, "restrictedAccountType":Ljava/lang/String;
    :cond_30
    :goto_f
    move-object/from16 v11, v31

    goto/16 :goto_18

    .line 3766
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "str":Ljava/lang/String;
    .end local v24    # "restrictedAccountType":Ljava/lang/String;
    .end local v29    # "innerDepth":I
    .end local v30    # "type":I
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v4    # "innerDepth":I
    .restart local v7    # "type":I
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_31
    move-object/from16 v32, v2

    move/from16 v27, v3

    move/from16 v29, v4

    move/from16 v30, v7

    move-object/from16 v23, v8

    const/16 v1, -0x6c

    const/4 v2, 0x0

    .line 3766
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v4    # "innerDepth":I
    .end local v7    # "type":I
    .end local v8    # "str":Ljava/lang/String;
    .restart local v23    # "str":Ljava/lang/String;
    .restart local v29    # "innerDepth":I
    .restart local v30    # "type":I
    .restart local v32    # "tagName":Ljava/lang/String;
    const-string/jumbo v0, "receiver"

    move-object/from16 v3, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3766
    .end local v32    # "tagName":Ljava/lang/String;
    .local v3, "tagName":Ljava/lang/String;
    if-eqz v0, :cond_34

    .line 3767
    const/4 v0, 0x1

    const/4 v4, 0x0

    move-object v7, v15

    move-object v8, v14

    move-object v5, v9

    move-object/from16 v9, p2

    .line 3767
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    move v1, v10

    move-object v10, v12

    move-object/from16 v24, v11

    const/16 v1, -0x6c

    move/from16 v11, p4

    .line 3767
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .restart local v24    # "restrictedAccountType":Ljava/lang/String;
    move-object v12, v13

    move-object v13, v6

    move v14, v0

    move-object v0, v15

    move v15, v4

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    .line 3769
    .local v4, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v4, :cond_32

    .line 3770
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3771
    return v2

    .line 3774
    :cond_32
    iget v7, v4, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v7, :cond_33

    const/4 v7, 0x1

    goto :goto_10

    :cond_33
    move v7, v2

    :goto_10
    or-int v7, v22, v7

    .line 3775
    .end local v22    # "hasReceiverOrder":Z
    .local v7, "hasReceiverOrder":Z
    move-object/from16 v14, p1

    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3777
    .end local v4    # "a":Landroid/content/pm/PackageParser$Activity;
    nop

    .line 3935
    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v22, v7

    .line 3935
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v7    # "hasReceiverOrder":Z
    .end local v31    # "pkgName":Ljava/lang/String;
    .local v11, "pkgName":Ljava/lang/String;
    .restart local v22    # "hasReceiverOrder":Z
    :goto_11
    move-object/from16 v11, v31

    move-object/from16 v7, p2

    goto/16 :goto_18

    .line 3777
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "restrictedAccountType":Ljava/lang/String;
    .restart local v3    # "tagName":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_34
    move-object v5, v9

    move-object/from16 v24, v11

    move-object v0, v15

    .line 3777
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "restrictedAccountType":Ljava/lang/String;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v24    # "restrictedAccountType":Ljava/lang/String;
    const-string/jumbo v4, "service"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3778
    move-object v7, v0

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v4

    .line 3779
    .local v4, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v4, :cond_35

    .line 3780
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3781
    return v2

    .line 3784
    :cond_35
    iget v7, v4, Landroid/content/pm/PackageParser$Service;->order:I

    if-eqz v7, :cond_36

    const/4 v7, 0x1

    goto :goto_12

    :cond_36
    move v7, v2

    :goto_12
    or-int v7, v26, v7

    .line 3785
    .end local v26    # "hasServiceOrder":Z
    .local v7, "hasServiceOrder":Z
    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3787
    .end local v4    # "s":Landroid/content/pm/PackageParser$Service;
    nop

    .line 3935
    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v26, v7

    goto :goto_11

    .line 3787
    .end local v7    # "hasServiceOrder":Z
    .restart local v26    # "hasServiceOrder":Z
    :cond_37
    const-string/jumbo v4, "provider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 3788
    move-object v7, v0

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v4

    .line 3789
    .local v4, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v4, :cond_38

    .line 3790
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3791
    return v2

    .line 3794
    :cond_38
    iget-object v7, v14, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3796
    .end local v4    # "p":Landroid/content/pm/PackageParser$Provider;
    nop

    .line 3935
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    goto/16 :goto_f

    .line 3796
    :cond_39
    const-string v4, "activity-alias"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 3797
    move-object v7, v0

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    .line 3798
    .local v4, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v4, :cond_3a

    .line 3799
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3800
    return v2

    .line 3803
    :cond_3a
    iget v7, v4, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v7, :cond_3b

    const/4 v7, 0x1

    goto :goto_13

    :cond_3b
    move v7, v2

    :goto_13
    or-int v7, v21, v7

    .line 3804
    .end local v21    # "hasActivityOrder":Z
    .local v7, "hasActivityOrder":Z
    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3806
    .end local v4    # "a":Landroid/content/pm/PackageParser$Activity;
    nop

    .line 3935
    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v21, v7

    goto/16 :goto_11

    .line 3806
    .end local v7    # "hasActivityOrder":Z
    .restart local v21    # "hasActivityOrder":Z
    :cond_3c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 3810
    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct {v0, v7, v8, v4, v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v14, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_30

    .line 3812
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3813
    return v2

    .line 3815
    :cond_3d
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    const-string/jumbo v4, "static-library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 3816
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3821
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3823
    .local v10, "lname":Ljava/lang/String;
    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 3825
    .local v13, "version":I
    const/4 v11, 0x2

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 3829
    .local v15, "versionMajor":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3832
    if-eqz v10, :cond_42

    if-gez v13, :cond_3e

    .line 3833
    move-object/from16 v11, v31

    goto :goto_15

    .line 3840
    :cond_3e
    iget-object v11, v14, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v11, :cond_3f

    .line 3841
    const-string/jumbo v1, "sharedUserId not allowed in static shared library"

    aput-object v1, v9, v2

    .line 3842
    const/16 v1, -0x6b

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3843
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3844
    return v2

    .line 3847
    :cond_3f
    iget-object v11, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v11, :cond_40

    .line 3848
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Multiple static-shared libs for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v31

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3848
    .end local v31    # "pkgName":Ljava/lang/String;
    .local v12, "pkgName":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v2

    .line 3849
    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3850
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3851
    return v2

    .line 3854
    .end local v12    # "pkgName":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_40
    move-object/from16 v11, v31

    .line 3854
    .end local v31    # "pkgName":Ljava/lang/String;
    .local v11, "pkgName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    .line 3855
    if-ltz v13, :cond_41

    .line 3856
    nop

    .line 3857
    invoke-static {v15, v13}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v1

    iput-wide v1, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    goto :goto_14

    .line 3859
    :cond_41
    int-to-long v1, v13

    iput-wide v1, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    .line 3861
    :goto_14
    iget v1, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3863
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3865
    .end local v10    # "lname":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v15    # "versionMajor":I
    nop

    .line 3935
    move-object/from16 v25, v4

    const/16 v1, -0x6c

    goto :goto_16

    .line 3833
    .end local v11    # "pkgName":Ljava/lang/String;
    .restart local v10    # "lname":Ljava/lang/String;
    .restart local v13    # "version":I
    .restart local v15    # "versionMajor":I
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_42
    move-object/from16 v11, v31

    .line 3833
    .end local v31    # "pkgName":Ljava/lang/String;
    .restart local v11    # "pkgName":Ljava/lang/String;
    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad static-library declaration name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v9, v2

    .line 3835
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3836
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3837
    return v2

    .line 3865
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v10    # "lname":Ljava/lang/String;
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v13    # "version":I
    .end local v15    # "versionMajor":I
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_43
    move-object/from16 v11, v31

    .line 3865
    .end local v31    # "pkgName":Ljava/lang/String;
    .restart local v11    # "pkgName":Ljava/lang/String;
    const-string/jumbo v4, "library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3866
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3871
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3874
    .restart local v10    # "lname":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3876
    if-eqz v10, :cond_44

    .line 3877
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 3878
    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 3879
    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 3884
    :cond_44
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3886
    .end local v10    # "lname":Ljava/lang/String;
    nop

    .line 3935
    move-object/from16 v25, v4

    .line 3935
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    :cond_45
    :goto_16
    const/4 v2, 0x0

    goto :goto_18

    .line 3886
    .restart local v3    # "tagName":Ljava/lang/String;
    :cond_46
    const-string/jumbo v2, "uses-static-library"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 3887
    invoke-direct {v0, v14, v7, v8, v9}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 3888
    const/4 v2, 0x0

    return v2

    .line 3891
    :cond_47
    const/4 v2, 0x0

    const-string/jumbo v4, "uses-library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 3892
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3897
    .end local v25    # "sa":Landroid/content/res/TypedArray;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3899
    .restart local v10    # "lname":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-virtual {v4, v12, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    .line 3903
    .local v13, "req":Z
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3905
    if-eqz v10, :cond_49

    .line 3906
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 3907
    if-eqz v13, :cond_48

    .line 3908
    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    goto :goto_17

    .line 3910
    :cond_48
    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3915
    :cond_49
    :goto_17
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3917
    .end local v10    # "lname":Ljava/lang/String;
    .end local v13    # "req":Z
    nop

    .line 3935
    move-object/from16 v25, v4

    goto :goto_18

    .line 3917
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v25    # "sa":Landroid/content/res/TypedArray;
    :cond_4a
    const-string/jumbo v4, "uses-package"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3920
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3935
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_18
    goto :goto_19

    .line 3924
    .restart local v3    # "tagName":Ljava/lang/String;
    :cond_4b
    const-string v4, "PackageParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown element under <application>: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " at "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3926
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3924
    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3928
    goto :goto_19

    .line 3747
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v23    # "str":Ljava/lang/String;
    .end local v24    # "restrictedAccountType":Ljava/lang/String;
    .end local v29    # "innerDepth":I
    .end local v30    # "type":I
    .local v4, "innerDepth":I
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "restrictedAccountType":Ljava/lang/String;
    .restart local v31    # "pkgName":Ljava/lang/String;
    :cond_4c
    move/from16 v29, v4

    move-object/from16 v23, v8

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v31

    const/16 v1, -0x6c

    const/4 v2, 0x0

    move-object/from16 v7, p2

    const/16 v27, 0x4

    .end local v26    # "hasServiceOrder":Z
    .local v0, "hasServiceOrder":Z
    :goto_19
    move-object v15, v0

    move-object v12, v8

    move-object v13, v9

    move-object/from16 v31, v11

    move-object/from16 v8, v23

    move-object/from16 v11, v24

    move/from16 v0, v26

    move/from16 v4, v29

    const/4 v10, 0x1

    move-object v9, v5

    const/4 v5, 0x2

    goto/16 :goto_c

    .line 3937
    .end local v0    # "hasServiceOrder":Z
    .local v7, "type":I
    .restart local v26    # "hasServiceOrder":Z
    :cond_4d
    move/from16 v29, v4

    move/from16 v30, v7

    move-object/from16 v23, v8

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    move-object/from16 v11, v31

    move-object/from16 v7, p2

    .end local v4    # "innerDepth":I
    .end local v7    # "type":I
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v31    # "pkgName":Ljava/lang/String;
    .restart local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v11, "pkgName":Ljava/lang/String;
    .restart local v23    # "str":Ljava/lang/String;
    .restart local v24    # "restrictedAccountType":Ljava/lang/String;
    .restart local v29    # "innerDepth":I
    .restart local v30    # "type":I
    :goto_1a
    if-eqz v21, :cond_4e

    .line 3938
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    sget-object v2, Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3940
    :cond_4e
    if-eqz v22, :cond_4f

    .line 3941
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    sget-object v2, Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3943
    :cond_4f
    if-eqz v26, :cond_50

    .line 3944
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    sget-object v2, Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3948
    :cond_50
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    .line 3950
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageBackwardCompatibility;->modifySharedLibraries(Landroid/content/pm/PackageParser$Package;)V

    .line 3952
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 3953
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_1b

    .line 3955
    :cond_51
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3958
    :goto_1b
    const/4 v1, 0x1

    return v1
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1256
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 1257
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v2, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1258
    :cond_0
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a coreApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1263
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 1265
    .local v2, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1267
    :try_start_0
    invoke-static {v1}, Landroid/content/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    move-result-object v3

    move-object v2, v3

    .line 1268
    new-instance v3, Landroid/content/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v3, v1, v2, p2}, Landroid/content/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_0
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    .local v3, "assetLoader":Landroid/content/pm/split/SplitAssetLoader;
    goto :goto_1

    .line 1269
    .end local v3    # "assetLoader":Landroid/content/pm/split/SplitAssetLoader;
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x65

    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1273
    .end local v0    # "e":Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    :cond_2
    new-instance v3, Landroid/content/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v3, v1, p2}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1277
    .restart local v3    # "assetLoader":Landroid/content/pm/split/SplitAssetLoader;
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 1278
    .local v4, "assets":Landroid/content/res/AssetManager;
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v5, "baseApk":Ljava/io/File;
    invoke-direct {p0, v5, v4, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 1280
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_4

    .line 1285
    iget-object v7, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1286
    iget-object v7, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v7, v7

    .line 1287
    .local v7, "num":I
    iget-object v8, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 1288
    iget-object v8, v1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 1289
    iget-object v8, v1, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 1290
    new-array v8, v7, [I

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 1291
    new-array v8, v7, [I

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 1292
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    .line 1293
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v8, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 1294
    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-array v9, v7, [Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    .line 1296
    nop

    .local v0, "i":I
    :goto_2
    if-ge v0, v7, :cond_3

    .line 1297
    invoke-interface {v3, v0}, Landroid/content/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v8

    .line 1298
    .local v8, "splitAssets":Landroid/content/res/AssetManager;
    invoke-direct {p0, v6, v0, v8, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 1296
    .end local v8    # "splitAssets":Landroid/content/res/AssetManager;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1302
    .end local v0    # "i":I
    .end local v7    # "num":I
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1303
    iget-boolean v0, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    nop

    .line 1309
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1304
    return-object v6

    .line 1281
    :cond_4
    :try_start_2
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v7, -0x64

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to parse base APK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1309
    .end local v4    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "baseApk":Ljava/io/File;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1305
    :catch_1
    move-exception v0

    .line 1306
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v5, -0x66

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1309
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 25
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 943
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 944
    .local v0, "files":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 949
    const/4 v1, 0x0

    .line 950
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 952
    .local v2, "versionCode":I
    const-string/jumbo v3, "parseApkLite"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 953
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 954
    .local v3, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    array-length v6, v0

    const/4 v7, 0x0

    move v8, v2

    move-object v2, v1

    move v1, v7

    .line 954
    .end local v1    # "packageName":Ljava/lang/String;
    .local v2, "packageName":Ljava/lang/String;
    .local v8, "versionCode":I
    :goto_0
    const/16 v9, -0x65

    if-ge v1, v6, :cond_5

    aget-object v10, v0, v1

    .line 955
    .local v10, "file":Ljava/io/File;
    invoke-static {v10}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 956
    move/from16 v11, p1

    invoke-static {v10, v11}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v12

    .line 960
    .local v12, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v2, :cond_0

    .line 961
    iget-object v2, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 962
    iget v8, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    goto :goto_1

    .line 964
    :cond_0
    iget-object v13, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 969
    iget v13, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-ne v8, v13, :cond_2

    .line 977
    :goto_1
    iget-object v13, v12, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1

    .line 977
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    goto :goto_2

    .line 978
    .restart local v10    # "file":Ljava/io/File;
    .restart local v12    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_1
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Split name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " defined more than once; most recent was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v9, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 970
    :cond_2
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v9, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 965
    :cond_3
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v9, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 954
    .end local v10    # "file":Ljava/io/File;
    .end local v12    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_4
    move/from16 v11, p1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 984
    :cond_5
    move/from16 v11, p1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 986
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    .line 987
    .local v1, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-eqz v1, :cond_7

    .line 993
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 995
    .local v4, "size":I
    const/4 v5, 0x0

    .line 996
    .local v5, "splitNames":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 997
    .local v6, "isFeatureSplits":[Z
    const/4 v9, 0x0

    .line 998
    .local v9, "usesSplitNames":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 999
    .local v10, "configForSplits":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 1000
    .local v12, "splitCodePaths":[Ljava/lang/String;
    const/4 v13, 0x0

    .line 1001
    .local v13, "splitRevisionCodes":[I
    const/16 v21, 0x0

    .line 1002
    .local v21, "splitClassLoaderNames":[Ljava/lang/String;
    if-lez v4, :cond_6

    .line 1003
    new-array v5, v4, [Ljava/lang/String;

    .line 1004
    new-array v6, v4, [Z

    .line 1005
    new-array v9, v4, [Ljava/lang/String;

    .line 1006
    new-array v10, v4, [Ljava/lang/String;

    .line 1007
    new-array v12, v4, [Ljava/lang/String;

    .line 1008
    new-array v13, v4, [I

    .line 1010
    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v5, v14

    check-cast v5, [Ljava/lang/String;

    .line 1011
    sget-object v14, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v5, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1013
    nop

    .line 1013
    .local v7, "i":I
    :goto_3
    if-ge v7, v4, :cond_6

    .line 1014
    aget-object v14, v5, v7

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$ApkLite;

    .line 1015
    .local v14, "apk":Landroid/content/pm/PackageParser$ApkLite;
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    aput-object v15, v9, v7

    .line 1016
    iget-boolean v15, v14, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    aput-boolean v15, v6, v7

    .line 1017
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    aput-object v15, v10, v7

    .line 1018
    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v15, v12, v7

    .line 1019
    iget v15, v14, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v15, v13, v7

    .line 1013
    .end local v14    # "apk":Landroid/content/pm/PackageParser$ApkLite;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1023
    .end local v7    # "i":I
    :cond_6
    move-object v7, v12

    move-object/from16 v22, v13

    .line 1023
    .end local v12    # "splitCodePaths":[Ljava/lang/String;
    .end local v13    # "splitRevisionCodes":[I
    .local v7, "splitCodePaths":[Ljava/lang/String;
    .local v22, "splitRevisionCodes":[I
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    .line 1024
    .local v23, "codePath":Ljava/lang/String;
    new-instance v24, Landroid/content/pm/PackageParser$PackageLite;

    move-object/from16 v12, v24

    move-object/from16 v13, v23

    move-object v14, v1

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v7

    move-object/from16 v20, v22

    invoke-direct/range {v12 .. v20}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v24

    .line 988
    .end local v4    # "size":I
    .end local v5    # "splitNames":[Ljava/lang/String;
    .end local v6    # "isFeatureSplits":[Z
    .end local v7    # "splitCodePaths":[Ljava/lang/String;
    .end local v9    # "usesSplitNames":[Ljava/lang/String;
    .end local v10    # "configForSplits":[Ljava/lang/String;
    .end local v21    # "splitClassLoaderNames":[Ljava/lang/String;
    .end local v22    # "splitRevisionCodes":[I
    .end local v23    # "codePath":Ljava/lang/String;
    :cond_7
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing base APK in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 945
    .end local v1    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    .end local v8    # "versionCode":I
    :cond_8
    move-object/from16 v6, p0

    move/from16 v11, p1

    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x64

    const-string v3, "No packages found in split"

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 17
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 3364
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3367
    .local v3, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

    .line 3368
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/16 v13, 0x8

    const/4 v14, 0x6

    const/4 v15, 0x7

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    iput-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 3375
    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 3378
    :cond_0
    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v3, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 3380
    new-instance v0, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v1, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v2, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v2}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    move-object v7, v0

    .line 3382
    .local v7, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v1, p4, v0

    const/16 v8, -0x6c

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 3383
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3384
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3385
    return-object v9

    .line 3391
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 3393
    .local v1, "str":Ljava/lang/String;
    iget-object v2, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_2
    move-object v10, v9

    :goto_0
    iput-object v10, v2, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 3395
    const/16 v2, 0x9

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 3397
    .end local v1    # "str":Ljava/lang/String;
    .local v10, "str":Ljava/lang/String;
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v9

    :goto_1
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    .line 3399
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x4

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 3403
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x5

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 3407
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3409
    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v1, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 3410
    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p4, v0

    .line 3411
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3412
    return-object v9

    .line 3415
    :cond_4
    const-string v11, "<instrumentation>"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v4

    move-object v12, v3

    move-object v3, v11

    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .local v12, "sa":Landroid/content/res/TypedArray;
    move-object v4, v7

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 3417
    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3418
    return-object v9

    .line 3421
    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3423
    return-object v7
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 20
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "allowAutoVerify"    # Z
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    .line 5615
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5618
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 5620
    .local v6, "priority":I
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 5622
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 5624
    .local v8, "order":I
    invoke-virtual {v3, v8}, Landroid/content/pm/PackageParser$IntentInfo;->setOrder(I)V

    .line 5626
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    .line 5628
    .local v9, "v":Landroid/util/TypedValue;
    if-eqz v9, :cond_0

    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    iput v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v10, :cond_0

    .line 5629
    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 5633
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11200ca

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 5634
    .local v10, "useRoundIcon":Z
    const/4 v11, 0x7

    if-eqz v10, :cond_1

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto :goto_0

    .line 5635
    :cond_1
    move v12, v5

    .line 5636
    .local v12, "roundIconVal":I
    :goto_0
    const/4 v13, 0x1

    if-eqz v12, :cond_2

    .line 5637
    iput v12, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto :goto_1

    .line 5639
    :cond_2
    invoke-virtual {v0, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 5643
    :goto_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v3, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 5646
    const/4 v11, 0x5

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 5649
    const/4 v4, 0x6

    if-eqz p4, :cond_3

    .line 5650
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    invoke-virtual {v3, v11}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    .line 5655
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5657
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    .line 5659
    .local v11, "outerDepth":I
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v15, v4

    .line 5659
    .local v15, "type":I
    if-eq v4, v13, :cond_1c

    move v4, v15

    if-ne v4, v7, :cond_5

    .line 5660
    .end local v15    # "type":I
    .local v4, "type":I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v11, :cond_4

    goto :goto_3

    .line 5784
    :cond_4
    move-object/from16 v1, p0

    move/from16 v16, v4

    goto/16 :goto_e

    .line 5661
    :cond_5
    :goto_3
    if-eq v4, v7, :cond_1b

    const/4 v13, 0x4

    if-ne v4, v13, :cond_6

    .line 5662
    goto/16 :goto_c

    .line 5665
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 5666
    .local v13, "nodeName":Ljava/lang/String;
    const-string v7, "action"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 5667
    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v5, "name"

    invoke-interface {v2, v7, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5669
    .local v5, "value":Ljava/lang/String;
    if-eqz v5, :cond_8

    const-string v7, ""

    if-ne v5, v7, :cond_7

    goto :goto_5

    .line 5673
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5675
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    .line 5676
    .end local v5    # "value":Ljava/lang/String;
    nop

    .line 5782
    .end local v4    # "type":I
    .end local v13    # "nodeName":Ljava/lang/String;
    .local v16, "type":I
    :goto_4
    move-object/from16 v1, p0

    move/from16 v16, v4

    goto/16 :goto_b

    .line 5670
    .end local v16    # "type":I
    .restart local v4    # "type":I
    .restart local v5    # "value":Ljava/lang/String;
    .restart local v13    # "nodeName":Ljava/lang/String;
    :cond_8
    :goto_5
    const-string v7, "No value supplied for <android:name>"

    const/4 v14, 0x0

    aput-object v7, p6, v14

    .line 5671
    return v14

    .line 5676
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    const-string v5, "category"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 5677
    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "name"

    invoke-interface {v2, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5679
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v5, :cond_b

    const-string v7, ""

    if-ne v5, v7, :cond_a

    goto :goto_6

    .line 5683
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5685
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    .line 5687
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_4

    .line 5680
    .restart local v5    # "value":Ljava/lang/String;
    :cond_b
    :goto_6
    const-string v7, "No value supplied for <android:name>"

    move/from16 v16, v4

    const/4 v4, 0x0

    aput-object v7, p6, v4

    .line 5681
    .end local v4    # "type":I
    .restart local v16    # "type":I
    return v4

    .line 5687
    .end local v5    # "value":Ljava/lang/String;
    .end local v16    # "type":I
    .restart local v4    # "type":I
    :cond_c
    move/from16 v16, v4

    const/4 v4, 0x0

    .line 5687
    .end local v4    # "type":I
    .restart local v16    # "type":I
    const-string v5, "data"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 5688
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 5691
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v5, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v5, v4, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 5693
    .local v7, "str":Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 5695
    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5700
    goto :goto_7

    .line 5696
    :catch_0
    move-exception v0

    move-object v4, v0

    .line 5697
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    aput-object v4, p6, v1

    .line 5698
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 5699
    return v1

    .line 5703
    .end local v0    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_d
    :goto_7
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5705
    .end local v7    # "str":Ljava/lang/String;
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 5706
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 5709
    :cond_e
    const/4 v7, 0x7

    invoke-virtual {v5, v7, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5711
    .end local v4    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_f

    .line 5712
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5715
    :cond_f
    const/16 v4, 0x8

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5717
    if-eqz v0, :cond_10

    .line 5718
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 5721
    :cond_10
    const/16 v4, 0x9

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5723
    if-eqz v0, :cond_12

    .line 5724
    if-nez p3, :cond_11

    .line 5725
    const-string/jumbo v4, "sspPattern not allowed here; ssp must be literal"

    aput-object v4, p6, v1

    .line 5726
    return v1

    .line 5728
    :cond_11
    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_8

    .line 5731
    :cond_12
    const/4 v4, 0x2

    :goto_8
    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 5733
    .local v7, "host":Ljava/lang/String;
    move-object/from16 v17, v0

    const/4 v4, 0x3

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5735
    .local v0, "port":Ljava/lang/String;
    .local v17, "str":Ljava/lang/String;
    if-eqz v7, :cond_13

    .line 5736
    invoke-virtual {v3, v7, v0}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 5739
    :cond_13
    move-object/from16 v18, v0

    const/4 v4, 0x4

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5741
    .end local v17    # "str":Ljava/lang/String;
    .local v0, "str":Ljava/lang/String;
    .local v18, "port":Ljava/lang/String;
    if-eqz v0, :cond_14

    .line 5742
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5745
    :cond_14
    const/4 v4, 0x5

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5747
    if-eqz v0, :cond_15

    .line 5748
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 5751
    :cond_15
    const/4 v4, 0x6

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5753
    if-eqz v0, :cond_17

    .line 5754
    if-nez p3, :cond_16

    .line 5755
    const-string/jumbo v4, "pathPattern not allowed here; path must be literal"

    aput-object v4, p6, v1

    .line 5756
    return v1

    .line 5758
    :cond_16
    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_9

    .line 5761
    :cond_17
    const/4 v4, 0x2

    :goto_9
    const/16 v4, 0xa

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5763
    if-eqz v0, :cond_19

    .line 5764
    if-nez p3, :cond_18

    .line 5765
    const-string/jumbo v4, "pathAdvancedPattern not allowed here; path must be literal"

    aput-object v4, p6, v1

    .line 5766
    return v1

    .line 5768
    :cond_18
    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_a

    .line 5771
    :cond_19
    const/4 v4, 0x3

    :goto_a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 5772
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5773
    .end local v0    # "str":Ljava/lang/String;
    .end local v7    # "host":Ljava/lang/String;
    .end local v18    # "port":Ljava/lang/String;
    nop

    .line 5782
    move-object/from16 v1, p0

    move-object v0, v5

    goto :goto_b

    .line 5774
    .end local v5    # "sa":Landroid/content/res/TypedArray;
    .local v0, "sa":Landroid/content/res/TypedArray;
    :cond_1a
    move v1, v4

    const/4 v4, 0x3

    const-string v5, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <intent-filter>: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5775
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p0

    iget-object v4, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5776
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5774
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5782
    .end local v13    # "nodeName":Ljava/lang/String;
    :goto_b
    goto :goto_d

    .line 5657
    .end local v16    # "type":I
    :cond_1b
    :goto_c
    move-object/from16 v1, p0

    :goto_d
    move-object/from16 v1, p1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v13, 0x1

    goto/16 :goto_2

    .line 5784
    .restart local v15    # "type":I
    :cond_1c
    move-object/from16 v1, p0

    move/from16 v16, v15

    .line 5784
    .end local v15    # "type":I
    .restart local v16    # "type":I
    :goto_e
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 5801
    const/4 v4, 0x1

    return v4
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 22
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 3054
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 3055
    .local v4, "outerDepth":I
    const/4 v5, -0x1

    .line 3057
    .local v5, "currentKeySetDepth":I
    const/4 v6, 0x0

    .line 3058
    .local v6, "currentKeySet":Ljava/lang/String;
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 3059
    .local v7, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 3060
    .local v8, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 3061
    .local v9, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 3062
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v12, v11

    .line 3062
    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v11, v13, :cond_e

    const/4 v11, 0x3

    if-ne v12, v11, :cond_1

    .line 3063
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v4, :cond_0

    goto :goto_1

    .line 3156
    :cond_0
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v12

    goto/16 :goto_7

    .line 3064
    :cond_1
    :goto_1
    if-ne v12, v11, :cond_3

    .line 3065
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-ne v11, v5, :cond_2

    .line 3066
    const/4 v6, 0x0

    .line 3067
    const/4 v5, -0x1

    goto :goto_0

    .line 3061
    .end local v12    # "type":I
    :cond_2
    move/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_6

    .line 3071
    .restart local v12    # "type":I
    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 3072
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v13, "key-set"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 3073
    if-eqz v6, :cond_4

    .line 3074
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Improperly nested \'key-set\' tag at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3075
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, p4, v14

    .line 3076
    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3077
    return v14

    .line 3079
    :cond_4
    const/4 v14, 0x0

    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    .line 3081
    .local v13, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 3083
    .local v14, "keysetName":Ljava/lang/String;
    move/from16 v16, v4

    new-instance v4, Landroid/util/ArraySet;

    .line 3083
    .end local v4    # "outerDepth":I
    .local v16, "outerDepth":I
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v14, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    move-object v4, v14

    .line 3085
    .end local v6    # "currentKeySet":Ljava/lang/String;
    .local v4, "currentKeySet":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 3086
    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    .line 3087
    .end local v13    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "keysetName":Ljava/lang/String;
    nop

    .line 3155
    move-object v6, v4

    move/from16 v18, v12

    goto/16 :goto_5

    .line 3087
    .end local v16    # "outerDepth":I
    .local v4, "outerDepth":I
    .restart local v6    # "currentKeySet":Ljava/lang/String;
    :cond_5
    move/from16 v16, v4

    .line 3087
    .end local v4    # "outerDepth":I
    .restart local v16    # "outerDepth":I
    const-string/jumbo v4, "public-key"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3088
    if-nez v6, :cond_6

    .line 3089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Improperly nested \'key-set\' tag at "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3090
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, p4, v13

    .line 3091
    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3092
    return v13

    .line 3094
    :cond_6
    const/4 v13, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3096
    .local v4, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 3098
    .local v14, "publicKeyName":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 3100
    .local v13, "encodedKey":Ljava/lang/String;
    if-nez v13, :cond_7

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_7

    .line 3101
    move/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 3101
    .end local v5    # "currentKeySetDepth":I
    .local v17, "currentKeySetDepth":I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v12

    const-string v12, "\'public-key\' "

    .line 3101
    .end local v12    # "type":I
    .local v18, "type":I
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " must define a public-key value on first use at "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, p4, v12

    .line 3103
    const/16 v5, -0x6c

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3104
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3105
    return v12

    .line 3106
    .end local v17    # "currentKeySetDepth":I
    .end local v18    # "type":I
    .restart local v5    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_7
    move/from16 v17, v5

    move/from16 v18, v12

    .line 3106
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v17    # "currentKeySetDepth":I
    .restart local v18    # "type":I
    if-eqz v13, :cond_b

    .line 3107
    invoke-static {v13}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    .line 3108
    .local v5, "currentKey":Ljava/security/PublicKey;
    if-nez v5, :cond_8

    .line 3109
    const-string v12, "PackageParser"

    move-object/from16 v19, v13

    new-instance v13, Ljava/lang/StringBuilder;

    .line 3109
    .end local v13    # "encodedKey":Ljava/lang/String;
    .local v19, "encodedKey":Ljava/lang/String;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " key-set "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " will not be added to the package\'s defined key-sets."

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3109
    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3113
    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3114
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3115
    goto/16 :goto_6

    .line 3117
    .end local v19    # "encodedKey":Ljava/lang/String;
    .restart local v13    # "encodedKey":Ljava/lang/String;
    :cond_8
    move-object/from16 v19, v13

    .line 3117
    .end local v13    # "encodedKey":Ljava/lang/String;
    .restart local v19    # "encodedKey":Ljava/lang/String;
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 3118
    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    .line 3123
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value of \'public-key\' "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " conflicts with previously defined value at "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, p4, v12

    .line 3126
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3127
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3128
    return v12

    .line 3121
    :cond_a
    :goto_2
    invoke-virtual {v7, v14, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3131
    .end local v5    # "currentKey":Ljava/security/PublicKey;
    .end local v19    # "encodedKey":Ljava/lang/String;
    .restart local v13    # "encodedKey":Ljava/lang/String;
    :cond_b
    move-object/from16 v19, v13

    .line 3131
    .end local v13    # "encodedKey":Ljava/lang/String;
    .restart local v19    # "encodedKey":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3132
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3133
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3134
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v14    # "publicKeyName":Ljava/lang/String;
    .end local v19    # "encodedKey":Ljava/lang/String;
    goto :goto_4

    .line 3134
    .end local v17    # "currentKeySetDepth":I
    .end local v18    # "type":I
    .local v5, "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_c
    move/from16 v17, v5

    move/from16 v18, v12

    .line 3134
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v17    # "currentKeySetDepth":I
    .restart local v18    # "type":I
    const-string/jumbo v1, "upgrade-key-set"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3135
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3137
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    .line 3139
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3140
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3141
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3142
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v4    # "name":Ljava/lang/String;
    nop

    .line 3155
    .end local v11    # "tagName":Ljava/lang/String;
    :goto_4
    move/from16 v5, v17

    .line 3061
    .end local v17    # "currentKeySetDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :goto_5
    move/from16 v4, v16

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 3149
    .end local v5    # "currentKeySetDepth":I
    .restart local v11    # "tagName":Ljava/lang/String;
    .restart local v17    # "currentKeySetDepth":I
    :cond_d
    const-string v1, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <key-sets>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3151
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3149
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3153
    nop

    .line 3061
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v16    # "outerDepth":I
    .end local v17    # "currentKeySetDepth":I
    .end local v18    # "type":I
    .local v4, "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    :goto_6
    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v1, p1

    .line 3061
    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .restart local v16    # "outerDepth":I
    .restart local v17    # "currentKeySetDepth":I
    goto/16 :goto_0

    .line 3156
    .end local v16    # "outerDepth":I
    .end local v17    # "currentKeySetDepth":I
    .restart local v4    # "outerDepth":I
    .restart local v5    # "currentKeySetDepth":I
    .restart local v12    # "type":I
    :cond_e
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v12

    .line 3156
    .end local v4    # "outerDepth":I
    .end local v5    # "currentKeySetDepth":I
    .end local v12    # "type":I
    .restart local v16    # "outerDepth":I
    .restart local v17    # "currentKeySetDepth":I
    .restart local v18    # "type":I
    :goto_7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 3157
    .local v1, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p1

    iget-object v11, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " AndroidManifext.xml \'key-set\' and \'public-key\' names must be distinct."

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aput-object v4, p4, v11

    .line 3160
    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3161
    return v11

    .line 3163
    :cond_f
    move-object/from16 v5, p1

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 3164
    invoke-virtual {v9}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 3165
    .local v11, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 3166
    .local v12, "keySetName":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-nez v13, :cond_10

    .line 3167
    const-string v13, "PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    const-string v1, "Package"

    .line 3167
    .end local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v20, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AndroidManifext.xml \'key-set\' "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has no valid associated \'public-key\'. Not including in package\'s defined key-sets."

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    nop

    .line 3164
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v12    # "keySetName":Ljava/lang/String;
    .end local v20    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_9
    move-object/from16 v1, v20

    goto :goto_8

    .line 3171
    .restart local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v12    # "keySetName":Ljava/lang/String;
    :cond_10
    move-object/from16 v20, v1

    .line 3171
    .end local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3172
    const-string v1, "PackageParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " AndroidManifext.xml \'key-set\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " contained improper \'public-key\' tags. Not including in package\'s defined key-sets."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3175
    goto :goto_9

    .line 3177
    :cond_11
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3178
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 3179
    .local v13, "s":Ljava/lang/String;
    iget-object v14, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArraySet;

    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v1

    move-object/from16 v1, v19

    check-cast v1, Ljava/security/PublicKey;

    invoke-virtual {v14, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3180
    .end local v13    # "s":Ljava/lang/String;
    nop

    .line 3178
    move-object/from16 v1, v21

    goto :goto_a

    .line 3181
    .end local v11    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v12    # "keySetName":Ljava/lang/String;
    :cond_12
    goto :goto_9

    .line 3182
    .end local v20    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_13
    move-object/from16 v20, v1

    .line 3182
    .end local v1    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20    # "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3183
    iput-object v8, v5, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 3190
    const/4 v1, 0x1

    return v1

    .line 3185
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " AndroidManifext.xml does not define all \'upgrade-key-set\'s ."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, p4, v4

    .line 3187
    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3188
    return v4
.end method

.method private parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .locals 23
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "a"    # Landroid/content/pm/PackageParser$Activity;

    .line 4704
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4706
    .local v0, "sw":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    .line 4707
    .local v3, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 4708
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    .line 4709
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    .line 4710
    .local v6, "heightFraction":F
    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    .line 4712
    .local v8, "widthType":I
    const/4 v9, 0x5

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x6

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v8, v11, :cond_0

    .line 4713
    invoke-virtual {v0, v7, v13, v13, v10}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    goto :goto_0

    .line 4716
    :cond_0
    if-ne v8, v9, :cond_1

    .line 4717
    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 4721
    :cond_1
    :goto_0
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v15

    .line 4723
    .local v15, "heightType":I
    if-ne v15, v11, :cond_2

    .line 4724
    invoke-virtual {v0, v7, v13, v13, v10}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    goto :goto_1

    .line 4727
    :cond_2
    if-ne v15, v9, :cond_3

    .line 4728
    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 4732
    :cond_3
    :goto_1
    const/4 v7, 0x0

    const/16 v9, 0x11

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 4735
    .local v7, "gravity":I
    invoke-virtual {v0, v13, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 4738
    .local v9, "minWidth":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    .line 4741
    .local v10, "minHeight":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4742
    move-object/from16 v11, p3

    iget-object v12, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v13, Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v14, v13

    move/from16 v22, v15

    move v15, v3

    .end local v15    # "heightType":I
    .local v22, "heightType":I
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v13, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 4744
    return-void
.end method

.method private parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5467
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5470
    .local v0, "sa":Landroid/content/res/TypedArray;
    if-nez p3, :cond_0

    .line 5471
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p3, v1

    .line 5474
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 5476
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5477
    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p4, v1

    .line 5478
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5479
    return-object v3

    .line 5482
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 5484
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5486
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_2

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_2

    .line 5488
    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 5490
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 5493
    if-eqz v4, :cond_9

    .line 5494
    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 5495
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 5496
    .local v1, "cs":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    :cond_3
    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5497
    .end local v1    # "cs":Ljava/lang/CharSequence;
    goto :goto_0

    :cond_4
    iget v3, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v3, v6, :cond_6

    .line 5498
    iget v3, v4, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_5

    move v1, v5

    nop

    :cond_5
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 5499
    :cond_6
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_7

    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_7

    .line 5501
    iget v1, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 5502
    :cond_7
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8

    .line 5503
    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 5506
    :cond_8
    const-string v1, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5507
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5508
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5506
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5515
    :cond_9
    const-string v3, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v3, p4, v1

    .line 5516
    const/4 p3, 0x0

    .line 5520
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5522
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5524
    return-object p3
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 13
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 934
    const-string/jumbo v0, "parseApkLite"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 935
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    .line 936
    .local v0, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 937
    .local v12, "packagePath":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 938
    new-instance v1, Landroid/content/pm/PackageParser$PackageLite;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    move-object v4, v12

    move-object v5, v0

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v1
.end method

.method private static parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 17
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 4164
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 4165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not contain any attributes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 4166
    return v5

    .line 4169
    :cond_0
    move/from16 v6, p6

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 4170
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 4171
    if-eqz p5, :cond_2

    .line 4172
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    .line 4173
    return v5

    .line 4176
    :cond_1
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4177
    invoke-static {v8, v7, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 4178
    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 4179
    return v5

    .line 4184
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11200ca

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 4185
    .local v8, "useRoundIcon":Z
    if-eqz v8, :cond_3

    move/from16 v9, p9

    invoke-virtual {v4, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    goto :goto_0

    :cond_3
    move/from16 v9, p9

    move v10, v5

    .line 4186
    .local v10, "roundIconVal":I
    :goto_0
    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 4187
    iput v10, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4188
    iput-object v11, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4199
    move/from16 v12, p8

    goto :goto_1

    .line 4190
    :cond_4
    move/from16 v12, p8

    invoke-virtual {v4, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 4191
    .local v13, "iconVal":I
    if-eqz v13, :cond_5

    .line 4192
    iput v13, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4193
    iput-object v11, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4199
    .end local v13    # "iconVal":I
    :cond_5
    :goto_1
    const/4 v11, 0x1

    new-array v13, v11, [I

    aput v5, v13, v5

    invoke-static {v13}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4200
    const-string v13, "com.oppo.market"

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 4201
    const v13, 0x5060049

    iput v13, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4206
    :cond_6
    move/from16 v13, p10

    invoke-virtual {v4, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 4207
    .local v14, "logoVal":I
    if-eqz v14, :cond_7

    .line 4208
    iput v14, v1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 4211
    :cond_7
    move/from16 v11, p11

    invoke-virtual {v4, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 4212
    .local v2, "bannerVal":I
    if-eqz v2, :cond_8

    .line 4213
    iput v2, v1, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 4216
    :cond_8
    move/from16 v5, p7

    move v15, v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 4217
    .local v2, "v":Landroid/util/TypedValue;
    .local v15, "bannerVal":I
    if-eqz v2, :cond_9

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    iput v3, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_9

    .line 4218
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4223
    :cond_9
    move-object/from16 v16, v2

    const/4 v3, 0x1

    new-array v2, v3, [I

    .end local v2    # "v":Landroid/util/TypedValue;
    .local v16, "v":Landroid/util/TypedValue;
    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4224
    const-string v2, "com.oppo.market"

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4225
    const v2, 0x50c0065

    iput v2, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    .line 4230
    :cond_a
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 4232
    const/4 v2, 0x1

    return v2
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 925
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    .line 928
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1718
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .line 1718
    .local v1, "type":I
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v3, :cond_0

    .line 1718
    .end local v1    # "type":I
    goto :goto_0

    .line 1722
    .restart local v1    # "type":I
    :cond_0
    const/16 v0, -0x6c

    if-ne v1, v2, :cond_8

    .line 1726
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "manifest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1731
    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "packageName":Ljava/lang/String;
    const-string v4, "android"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, -0x6a

    if-nez v4, :cond_2

    .line 1733
    invoke-static {v0, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1734
    .local v3, "error":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1734
    .end local v3    # "error":Ljava/lang/String;
    goto :goto_1

    .line 1735
    .restart local v3    # "error":Ljava/lang/String;
    :cond_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid manifest package: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v5, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1740
    .end local v3    # "error":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string/jumbo v3, "split"

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1741
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1742
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 1743
    const/4 v2, 0x0

    goto :goto_2

    .line 1745
    :cond_3
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1746
    .restart local v3    # "error":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 1746
    .end local v3    # "error":Ljava/lang/String;
    goto :goto_2

    .line 1747
    .restart local v3    # "error":Ljava/lang/String;
    :cond_4
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid manifest split: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1753
    .end local v3    # "error":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 1754
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 1753
    :cond_6
    move-object v4, v2

    :goto_3
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 1727
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "splitName":Ljava/lang/String;
    :cond_7
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No <manifest> tag"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1723
    :cond_8
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 20
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    .line 3240
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-virtual {v4, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 3243
    .local v2, "sa":Landroid/content/res/TypedArray;
    new-instance v0, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    move-object v1, v0

    .line 3244
    .local v1, "perm":Landroid/content/pm/PackageParser$Permission;
    iget-object v8, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v10, "<permission>"

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x9

    const/16 v17, 0x6

    const/16 v18, 0x8

    move-object v7, v5

    move-object/from16 v9, p4

    move-object v11, v2

    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v7, -0x6c

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 3252
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3253
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3254
    return v8

    .line 3259
    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3261
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3262
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 3265
    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x5

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3269
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v9, 0xa

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3272
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x3

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3276
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x7

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->flags:I

    .line 3279
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 3281
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    .line 3282
    const-string v0, "<permission> does not specify protectionLevel"

    aput-object v0, p4, v8

    .line 3283
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3284
    return v8

    .line 3287
    :cond_2
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v9, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3289
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3290
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v0, v0, 0x2000

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v9, 0x2

    if-eq v0, v9, :cond_3

    .line 3294
    const-string v0, "<permission>  protectionLevel specifies a non-instant flag but is not based on signature type"

    aput-object v0, p4, v8

    .line 3296
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3297
    return v8

    .line 3301
    :cond_3
    const-string v9, "<permission>"

    move-object v0, v6

    move-object v10, v1

    move-object v1, v4

    .end local v1    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v10, "perm":Landroid/content/pm/PackageParser$Permission;
    move-object v11, v2

    move-object v2, v3

    .end local v2    # "sa":Landroid/content/res/TypedArray;
    .local v11, "sa":Landroid/content/res/TypedArray;
    move-object v3, v9

    move-object v4, v10

    move-object v9, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3302
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3303
    return v8

    .line 3306
    :cond_4
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3308
    const/4 v0, 0x1

    return v0
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 19
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    .line 3196
    new-instance v0, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    move-object v4, v0

    .line 3198
    .local v4, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3200
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v8, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v10, "<permission-group>"

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x8

    const/16 v17, 0x5

    const/16 v18, 0x7

    move-object v7, v5

    move-object/from16 v9, p5

    move-object v11, v1

    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v7, -0x6c

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 3208
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3209
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3210
    return v8

    .line 3213
    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v9, 0x4

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 3216
    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/16 v9, 0x9

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    .line 3218
    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v9, 0x6

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 3220
    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 3223
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3225
    const-string v9, "<permission-group>"

    move-object v0, v6

    move-object v10, v1

    move-object v1, v3

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v10, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v2, p4

    move-object v3, v9

    move-object v9, v4

    .end local v4    # "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    .local v9, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    move-object v11, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3227
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3228
    return v8

    .line 3231
    :cond_1
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3233
    const/4 v0, 0x1

    return v0
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 19
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    .line 3314
    new-instance v0, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    move-object v4, v0

    .line 3316
    .local v4, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 3319
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v8, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v10, "<permission-tree>"

    const/4 v12, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x5

    const/16 v17, 0x3

    const/16 v18, 0x4

    move-object v7, v5

    move-object/from16 v9, p4

    move-object v11, v1

    invoke-static/range {v7 .. v18}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v7, -0x6c

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 3327
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3328
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3329
    return v8

    .line 3332
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3334
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v9, 0x2e

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 3335
    .local v0, "index":I
    if-lez v0, :cond_1

    .line 3336
    iget-object v10, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 3338
    .end local v0    # "index":I
    .local v9, "index":I
    :cond_1
    move v9, v0

    if-gez v9, :cond_2

    .line 3339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<permission-tree> name has less than three segments: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v8

    .line 3341
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3342
    return v8

    .line 3345
    :cond_2
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 3346
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->requestRes:I

    .line 3347
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 3348
    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 3350
    const-string v12, "<permission-tree>"

    move-object v0, v6

    move-object v13, v1

    move-object v1, v3

    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v13, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v2, p3

    move-object v3, v12

    move-object v12, v4

    .end local v4    # "perm":Landroid/content/pm/PackageParser$Permission;
    .local v12, "perm":Landroid/content/pm/PackageParser$Permission;
    move-object v14, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3352
    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3353
    return v8

    .line 3356
    :cond_3
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3358
    return v11
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;
    .locals 21
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p1

    .line 4944
    move-object/from16 v14, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    invoke-virtual {v12, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 4947
    .local v10, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_0

    .line 4948
    new-instance v9, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x13

    const/16 v7, 0xf

    const/16 v8, 0x11

    move-object/from16 v2, p0

    iget-object v1, v2, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v15, 0x8

    const/16 v16, 0xe

    const/16 v17, 0x6

    move-object v0, v9

    move-object/from16 v18, v1

    move-object v1, v13

    move-object/from16 v2, p5

    move-object/from16 v19, v9

    move-object/from16 v9, v18

    move-object/from16 v20, v10

    move v10, v15

    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .local v20, "sa":Landroid/content/res/TypedArray;
    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, v19

    iput-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4959
    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v1, "<provider>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_0

    .line 4962
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .restart local v10    # "sa":Landroid/content/res/TypedArray;
    :cond_0
    move-object/from16 v20, v10

    .end local v10    # "sa":Landroid/content/res/TypedArray;
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    :goto_0
    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v6, v20

    iput-object v6, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4963
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v7, p4

    iput v7, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4965
    new-instance v0, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v2, Landroid/content/pm/ProviderInfo;

    invoke-direct {v2}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    move-object v8, v0

    .line 4966
    .local v8, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v0, 0x0

    aget-object v1, p5, v0

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    .line 4967
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 4968
    return-object v9

    .line 4971
    :cond_1
    const/4 v1, 0x0

    .line 4973
    .local v1, "providerExportedDefault":Z
    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 4977
    const/4 v1, 0x1

    .line 4980
    .end local v1    # "providerExportedDefault":Z
    .local v10, "providerExportedDefault":Z
    :cond_2
    move v10, v1

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v2, 0x7

    invoke-virtual {v6, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 4984
    const/16 v1, 0xa

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 4987
    .local v11, "cpname":Ljava/lang/String;
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 4991
    const/4 v1, 0x3

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    .line 4993
    .local v12, "permission":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4995
    .local v1, "str":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 4996
    move-object v1, v12

    .line 4998
    :cond_3
    if-nez v1, :cond_4

    .line 4999
    iget-object v2, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_2

    .line 5001
    :cond_4
    iget-object v2, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5002
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v9

    :goto_1
    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 5004
    :goto_2
    const/4 v2, 0x5

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 5006
    if-nez v1, :cond_6

    .line 5007
    move-object v1, v12

    .line 5009
    .end local v1    # "str":Ljava/lang/String;
    .local v5, "str":Ljava/lang/String;
    :cond_6
    move-object v5, v1

    if-nez v5, :cond_7

    .line 5010
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_4

    .line 5012
    :cond_7
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5013
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_8
    move-object v2, v9

    :goto_3
    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 5016
    :goto_4
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0xd

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5020
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0x9

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 5024
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0xc

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 5028
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0x15

    .line 5029
    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    .line 5031
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v0, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5033
    const/16 v1, 0x10

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5036
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5039
    :cond_9
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x12

    invoke-virtual {v6, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    iput-boolean v3, v1, Landroid/content/pm/ProviderInfo;->encryptionAware:Z

    .line 5042
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v1, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v1, :cond_a

    .line 5043
    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5047
    :cond_a
    const/16 v1, 0x14

    .line 5048
    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 5049
    .local v15, "visibleToEphemeral":Z
    if-eqz v15, :cond_b

    .line 5050
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5051
    const/4 v1, 0x1

    iput-boolean v1, v13, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5054
    :cond_b
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 5056
    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    .line 5060
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v1, v2, :cond_c

    .line 5061
    const-string v1, "Heavy-weight applications can not have providers in main process"

    aput-object v1, p5, v0

    .line 5062
    return-object v9

    .line 5066
    :cond_c
    if-nez v11, :cond_d

    .line 5067
    const-string v1, "<provider> does not include authorities attribute"

    aput-object v1, p5, v0

    .line 5068
    return-object v9

    .line 5070
    :cond_d
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_e

    .line 5071
    const-string v1, "<provider> has empty authorities attribute"

    aput-object v1, p5, v0

    .line 5072
    return-object v9

    .line 5074
    :cond_e
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 5076
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v15

    move-object v4, v8

    move-object/from16 v16, v5

    move-object/from16 v5, p5

    .end local v5    # "str":Ljava/lang/String;
    .local v16, "str":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 5078
    return-object v9

    .line 5081
    :cond_f
    return-object v8
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 19
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "visibleToEphemeral"    # Z
    .param p4, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    .line 5087
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5087
    .local v0, "outerDepth":I
    :goto_0
    move v11, v0

    .line 5089
    .end local v0    # "outerDepth":I
    .local v11, "outerDepth":I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v12, v0

    .line 5089
    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v0, v13, :cond_1a

    const/4 v0, 0x3

    if-ne v12, v0, :cond_0

    .line 5091
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v11, :cond_1a

    .line 5092
    :cond_0
    if-eq v12, v0, :cond_18

    const/4 v1, 0x4

    if-ne v12, v1, :cond_1

    .line 5093
    goto/16 :goto_3

    .line 5096
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    .line 5097
    new-instance v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    move-object v15, v0

    .line 5098
    .local v15, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, v8

    move-object v2, v9

    move-object v5, v15

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5100
    return v14

    .line 5102
    :cond_2
    if-eqz p3, :cond_3

    .line 5103
    invoke-virtual {v15, v13}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5104
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    .line 5106
    :cond_3
    invoke-virtual {v15}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getOrder()I

    move-result v0

    iget v1, v10, Landroid/content/pm/PackageParser$Provider;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v10, Landroid/content/pm/PackageParser$Provider;->order:I

    .line 5107
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5109
    .end local v15    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    goto/16 :goto_3

    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5110
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v3, p5

    invoke-direct {v7, v8, v9, v0, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v10, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_19

    .line 5112
    return v14

    .line 5115
    :cond_5
    move-object/from16 v3, p5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "grant-uri-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_b

    .line 5116
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5119
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    .line 5121
    .local v1, "pa":Landroid/os/PatternMatcher;
    invoke-virtual {v0, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5123
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 5124
    new-instance v6, Landroid/os/PatternMatcher;

    invoke-direct {v6, v4, v14}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    .line 5127
    :cond_6
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5129
    if-eqz v4, :cond_7

    .line 5130
    new-instance v6, Landroid/os/PatternMatcher;

    invoke-direct {v6, v4, v13}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    .line 5133
    :cond_7
    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 5135
    if-eqz v4, :cond_8

    .line 5136
    new-instance v6, Landroid/os/PatternMatcher;

    invoke-direct {v6, v4, v5}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    .line 5139
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5141
    if-eqz v1, :cond_a

    .line 5142
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v5, :cond_9

    .line 5143
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-array v6, v13, [Landroid/os/PatternMatcher;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5144
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aput-object v1, v5, v14

    goto :goto_1

    .line 5146
    :cond_9
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v5, v5

    .line 5147
    .local v5, "N":I
    add-int/lit8 v6, v5, 0x1

    new-array v6, v6, [Landroid/os/PatternMatcher;

    .line 5148
    .local v6, "newp":[Landroid/os/PatternMatcher;
    iget-object v15, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v15, v14, v6, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5149
    aput-object v1, v6, v5

    .line 5150
    iget-object v14, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v6, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5152
    .end local v5    # "N":I
    .end local v6    # "newp":[Landroid/os/PatternMatcher;
    :goto_1
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v13, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 5165
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5167
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v4    # "str":Ljava/lang/String;
    goto/16 :goto_4

    .line 5155
    .restart local v0    # "sa":Landroid/content/res/TypedArray;
    .restart local v1    # "pa":Landroid/os/PatternMatcher;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_a
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <path-permission>: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5156
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5157
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5155
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5159
    goto/16 :goto_4

    .line 5167
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .end local v1    # "pa":Landroid/os/PatternMatcher;
    .end local v4    # "str":Ljava/lang/String;
    :cond_b
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "path-permission"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 5168
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 5171
    .local v4, "sa":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .line 5173
    .local v6, "pa":Landroid/content/pm/PathPermission;
    invoke-virtual {v4, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    .line 5175
    .local v15, "permission":Ljava/lang/String;
    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 5177
    .local v16, "readPermission":Ljava/lang/String;
    if-nez v16, :cond_c

    .line 5178
    move-object/from16 v16, v15

    .line 5180
    .end local v16    # "readPermission":Ljava/lang/String;
    .local v13, "readPermission":Ljava/lang/String;
    :cond_c
    move-object/from16 v13, v16

    invoke-virtual {v4, v5, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 5182
    .local v16, "writePermission":Ljava/lang/String;
    if-nez v16, :cond_d

    .line 5183
    move-object/from16 v16, v15

    .line 5186
    .end local v16    # "writePermission":Ljava/lang/String;
    .local v5, "writePermission":Ljava/lang/String;
    :cond_d
    move-object/from16 v5, v16

    const/16 v16, 0x0

    .line 5187
    .local v16, "havePerm":Z
    if-eqz v13, :cond_e

    .line 5188
    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    .line 5189
    const/16 v16, 0x1

    .line 5191
    :cond_e
    if-eqz v5, :cond_f

    .line 5192
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 5193
    const/16 v16, 0x1

    .line 5196
    :cond_f
    if-nez v16, :cond_10

    .line 5198
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5199
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " at "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5200
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5198
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5201
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5202
    goto/16 :goto_4

    .line 5209
    :cond_10
    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 5211
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_11

    .line 5212
    new-instance v0, Landroid/content/pm/PathPermission;

    invoke-direct {v0, v1, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    .line 5216
    :cond_11
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5218
    .end local v1    # "path":Ljava/lang/String;
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 5219
    new-instance v1, Landroid/content/pm/PathPermission;

    const/4 v14, 0x1

    invoke-direct {v1, v0, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    .line 5223
    :cond_12
    const/4 v1, 0x5

    const/4 v14, 0x0

    invoke-virtual {v4, v1, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5225
    if-eqz v0, :cond_13

    .line 5226
    new-instance v1, Landroid/content/pm/PathPermission;

    const/4 v14, 0x2

    invoke-direct {v1, v0, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    .line 5230
    :cond_13
    const/4 v1, 0x6

    const/4 v14, 0x0

    invoke-virtual {v4, v1, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    .line 5232
    if-eqz v0, :cond_14

    .line 5233
    new-instance v1, Landroid/content/pm/PathPermission;

    const/4 v14, 0x3

    invoke-direct {v1, v0, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    .line 5237
    :cond_14
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 5239
    if-eqz v6, :cond_16

    .line 5240
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v1, :cond_15

    .line 5241
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/content/pm/PathPermission;

    iput-object v14, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5242
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v14, 0x0

    aput-object v6, v1, v14

    .line 5261
    move-object/from16 v17, v0

    goto :goto_2

    .line 5244
    :cond_15
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v1, v1

    .line 5245
    .local v1, "N":I
    add-int/lit8 v14, v1, 0x1

    new-array v14, v14, [Landroid/content/pm/PathPermission;

    .line 5246
    .local v14, "newp":[Landroid/content/pm/PathPermission;
    move-object/from16 v17, v0

    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 5246
    .end local v0    # "path":Ljava/lang/String;
    .local v17, "path":Ljava/lang/String;
    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v2, 0x0

    invoke-static {v0, v2, v14, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5247
    aput-object v6, v14, v1

    .line 5248
    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v14, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 5249
    .end local v1    # "N":I
    .end local v14    # "newp":[Landroid/content/pm/PathPermission;
    nop

    .line 5261
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5263
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "writePermission":Ljava/lang/String;
    .end local v6    # "pa":Landroid/content/pm/PathPermission;
    .end local v13    # "readPermission":Ljava/lang/String;
    .end local v15    # "permission":Ljava/lang/String;
    .end local v16    # "havePerm":Z
    .end local v17    # "path":Ljava/lang/String;
    goto :goto_4

    .line 5252
    .restart local v0    # "path":Ljava/lang/String;
    .restart local v4    # "sa":Landroid/content/res/TypedArray;
    .restart local v5    # "writePermission":Ljava/lang/String;
    .restart local v6    # "pa":Landroid/content/pm/PathPermission;
    .restart local v13    # "readPermission":Ljava/lang/String;
    .restart local v15    # "permission":Ljava/lang/String;
    .restart local v16    # "havePerm":Z
    :cond_16
    move-object/from16 v17, v0

    .line 5252
    .end local v0    # "path":Ljava/lang/String;
    .restart local v17    # "path":Ljava/lang/String;
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5253
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5254
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5252
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5255
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5256
    goto :goto_4

    .line 5265
    .end local v4    # "sa":Landroid/content/res/TypedArray;
    .end local v5    # "writePermission":Ljava/lang/String;
    .end local v6    # "pa":Landroid/content/pm/PathPermission;
    .end local v13    # "readPermission":Ljava/lang/String;
    .end local v15    # "permission":Ljava/lang/String;
    .end local v16    # "havePerm":Z
    .end local v17    # "path":Ljava/lang/String;
    :cond_17
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <provider>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5266
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5267
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5265
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5268
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5269
    goto :goto_4

    .line 5087
    .end local v12    # "type":I
    :cond_18
    :goto_3
    move-object/from16 v3, p5

    :cond_19
    :goto_4
    move v0, v11

    goto/16 :goto_0

    .line 5276
    .restart local v12    # "type":I
    :cond_1a
    move-object/from16 v3, p5

    const/4 v0, 0x1

    return v0
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .line 5560
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 5561
    const-string v1, "PackageParser"

    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5562
    return-object v0

    .line 5567
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 5568
    .local v1, "encoded":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    .end local v1    # "encoded":[B
    move-object v1, v2

    .line 5572
    .local v1, "keySpec":Ljava/security/spec/EncodedKeySpec;
    nop

    .line 5571
    nop

    .line 5576
    :try_start_1
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 5577
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 5580
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 5578
    :catch_1
    move-exception v2

    .line 5579
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PackageParser"

    const-string v4, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5582
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5586
    :goto_0
    :try_start_2
    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 5587
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    .line 5590
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v2

    goto :goto_1

    .line 5588
    :catch_3
    move-exception v2

    .line 5589
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PackageParser"

    const-string v4, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5592
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5596
    :goto_1
    :try_start_3
    const-string v2, "DSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 5597
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    return-object v3

    .line 5600
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_4
    move-exception v2

    goto :goto_2

    .line 5598
    :catch_5
    move-exception v2

    .line 5599
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "PackageParser"

    const-string v4, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5602
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 5605
    :goto_2
    return-object v0

    .line 5569
    .end local v1    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_6
    move-exception v1

    .line 5570
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "PackageParser"

    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5571
    return-object v0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;
    .locals 23
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "cachedArgs"    # Landroid/content/pm/PackageParser$CachedComponentArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    move-object/from16 v3, p5

    .line 5283
    move-object/from16 v2, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5286
    .local v1, "sa":Landroid/content/res/TypedArray;
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_0

    .line 5287
    new-instance v0, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v14, 0xf

    const/16 v15, 0x8

    const/16 v16, 0xc

    iget-object v10, v7, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    const/16 v18, 0x6

    const/16 v19, 0x7

    const/16 v20, 0x4

    move-object v8, v0

    move-object v9, v6

    move-object/from16 v17, v10

    move-object v10, v3

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 5298
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v8, "<service>"

    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 5301
    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 5302
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 5304
    new-instance v0, Landroid/content/pm/PackageParser$Service;

    iget-object v9, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v10, Landroid/content/pm/ServiceInfo;

    invoke-direct {v10}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v0, v9, v10}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    move-object v9, v0

    .line 5305
    .local v9, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v10, 0x0

    aget-object v0, v3, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    .line 5306
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5307
    return-object v11

    .line 5310
    :cond_1
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    .line 5312
    .local v12, "setExported":Z
    if-eqz v12, :cond_2

    .line 5313
    iget-object v13, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v13, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5317
    :cond_2
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 5319
    .local v14, "str":Ljava/lang/String;
    if-nez v14, :cond_3

    .line 5320
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v15, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_1

    .line 5322
    :cond_3
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_4
    move-object v15, v11

    :goto_0
    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 5325
    :goto_1
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v15, 0x11

    .line 5326
    invoke-virtual {v1, v15, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    .line 5328
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5329
    const/16 v0, 0x9

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    .line 5332
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v13, v15

    iput v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5334
    :cond_5
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5337
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5339
    :cond_6
    const/16 v0, 0xe

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v13, 0x4

    if-eqz v0, :cond_7

    .line 5342
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v11, v13

    iput v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5344
    :cond_7
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5347
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v16, 0x40000000    # 2.0f

    or-int v11, v11, v16

    iput v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5350
    :cond_8
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v11, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v13, 0xd

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v11, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    iput-boolean v13, v0, Landroid/content/pm/ServiceInfo;->encryptionAware:Z

    .line 5353
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v0, :cond_9

    .line 5354
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v11, v11, 0x100

    iput v11, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5358
    :cond_9
    const/16 v0, 0x10

    .line 5359
    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 5360
    .local v11, "visibleToEphemeral":Z
    const/high16 v13, 0x100000

    if-eqz v11, :cond_a

    .line 5361
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v10, v13

    iput v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    .line 5362
    iput-boolean v15, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    .line 5365
    :cond_a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 5367
    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    .line 5371
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v10, :cond_b

    .line 5372
    const-string v0, "Heavy-weight applications can not have services in main process"

    const/4 v10, 0x0

    aput-object v0, v3, v10

    .line 5373
    const/4 v0, 0x0

    return-object v0

    .line 5377
    :cond_b
    const/4 v10, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 5379
    .local v0, "outerDepth":I
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move/from16 v21, v10

    .line 5379
    .local v21, "type":I
    if-eq v10, v15, :cond_15

    move/from16 v10, v21

    const/4 v13, 0x3

    if-ne v10, v13, :cond_d

    .line 5381
    .end local v21    # "type":I
    .local v10, "type":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v0, :cond_c

    goto :goto_3

    .line 5417
    :cond_c
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    move-object v2, v5

    const/4 v0, 0x1

    move-object v4, v3

    goto/16 :goto_6

    .line 5382
    :cond_d
    :goto_3
    if-eq v10, v13, :cond_14

    const/4 v15, 0x4

    if-ne v10, v15, :cond_e

    .line 5383
    nop

    .line 5377
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    move-object v2, v5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v4, v3

    const/high16 v3, 0x100000

    goto/16 :goto_5

    .line 5386
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v15, "intent-filter"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 5387
    new-instance v13, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v13, v9}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 5388
    .local v13, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v17, v0

    move-object v0, v7

    .line 5388
    .end local v0    # "outerDepth":I
    .local v17, "outerDepth":I
    move-object/from16 v18, v1

    move-object v1, v5

    .line 5388
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .local v18, "sa":Landroid/content/res/TypedArray;
    move-object v2, v4

    move v3, v15

    move-object v15, v4

    move/from16 v4, v16

    move-object v5, v13

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 5390
    const/4 v0, 0x0

    return-object v0

    .line 5392
    :cond_f
    if-eqz v11, :cond_10

    .line 5393
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->setVisibilityToInstantApp(I)V

    .line 5394
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    goto :goto_4

    .line 5396
    :cond_10
    const/4 v0, 0x1

    const/high16 v3, 0x100000

    :goto_4
    invoke-virtual {v13}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getOrder()I

    move-result v1

    iget v2, v9, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/PackageParser$Service;->order:I

    .line 5397
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5398
    .end local v13    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    nop

    .line 5377
    move-object/from16 v4, p5

    const/4 v1, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_5

    .line 5398
    .end local v17    # "outerDepth":I
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    :cond_11
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    const/4 v0, 0x1

    const/high16 v3, 0x100000

    .line 5398
    .end local v0    # "outerDepth":I
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v17    # "outerDepth":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 5399
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object/from16 v4, p5

    move-object/from16 v2, p2

    invoke-direct {v7, v2, v15, v1, v4}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_12

    .line 5401
    const/4 v1, 0x0

    return-object v1

    .line 5377
    .end local v10    # "type":I
    :cond_12
    const/4 v1, 0x0

    goto :goto_5

    .line 5405
    .restart local v10    # "type":I
    :cond_13
    move-object/from16 v4, p5

    const/4 v1, 0x0

    move-object/from16 v2, p2

    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <service>: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5406
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5407
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5405
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5408
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5409
    goto :goto_5

    .line 5377
    .end local v10    # "type":I
    .end local v17    # "outerDepth":I
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    :cond_14
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    move-object v2, v5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v4, v3

    const/high16 v3, 0x100000

    .line 5377
    .end local v0    # "outerDepth":I
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v17    # "outerDepth":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :goto_5
    move-object/from16 v6, p1

    move-object v5, v2

    move v13, v3

    move-object v3, v4

    move-object v4, v15

    move-object/from16 v1, v18

    const/4 v10, 0x0

    move-object/from16 v2, p6

    move v15, v0

    move/from16 v0, v17

    goto/16 :goto_2

    .line 5417
    .end local v17    # "outerDepth":I
    .end local v18    # "sa":Landroid/content/res/TypedArray;
    .restart local v0    # "outerDepth":I
    .restart local v1    # "sa":Landroid/content/res/TypedArray;
    .restart local v21    # "type":I
    :cond_15
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v2, v5

    move v0, v15

    move/from16 v10, v21

    move-object v15, v4

    move-object v4, v3

    .line 5417
    .end local v0    # "outerDepth":I
    .end local v1    # "sa":Landroid/content/res/TypedArray;
    .end local v21    # "type":I
    .restart local v10    # "type":I
    .restart local v17    # "outerDepth":I
    .restart local v18    # "sa":Landroid/content/res/TypedArray;
    :goto_6
    if-nez v12, :cond_17

    .line 5418
    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v3, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v1, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 5421
    :cond_17
    return-object v9
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1445
    move-object v0, p3

    .line 1448
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-static {p3, v0}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    .line 1450
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1454
    const/4 v2, 0x0

    .line 1456
    .local v2, "foundApp":Z
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1457
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    .line 1458
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_6

    .line 1459
    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    .line 1460
    goto :goto_0

    .line 1463
    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1464
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "application"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1465
    if-eqz v2, :cond_3

    .line 1471
    const-string v6, "PackageParser"

    const-string v7, "<manifest> has more than one <application>"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1473
    goto :goto_0

    .line 1477
    :cond_3
    const/4 v2, 0x1

    .line 1478
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1479
    return-object v1

    .line 1495
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 1489
    .restart local v4    # "tagName":Ljava/lang/String;
    :cond_5
    const-string v6, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <manifest>: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1489
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1493
    goto :goto_0

    .line 1497
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 1498
    const/4 v1, 0x0

    const-string v4, "<manifest> does not contain an <application>"

    aput-object v4, p6, v1

    .line 1499
    const/16 v1, -0x6d

    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1502
    :cond_7
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 14
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    .line 1398
    move-object v10, p1

    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v11, v0, p2

    .line 1400
    .local v11, "apkPath":Ljava/lang/String;
    const/4 v0, 0x1

    iput v0, v8, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1401
    iput-object v11, v8, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1406
    const/4 v1, 0x0

    move-object v2, v1

    .line 1409
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {v9, v11}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v3

    move v12, v3

    .line 1410
    .local v12, "cookie":I
    if-eqz v12, :cond_1

    .line 1415
    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v9, v12, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v13, v3

    .line 1416
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .local v13, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    new-instance v3, Landroid/content/res/Resources;

    iget-object v2, v8, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v3, v9, v2, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1418
    .local v3, "res":Landroid/content/res/Resources;
    new-array v0, v0, [Ljava/lang/String;

    .line 1419
    .local v0, "outError":[Ljava/lang/String;
    move-object v1, v8

    move-object v2, v10

    move-object v4, v13

    move/from16 v5, p4

    move/from16 v6, p2

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1420
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v1, :cond_0

    .line 1431
    .end local v0    # "outError":[Ljava/lang/String;
    .end local v12    # "cookie":I
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1432
    nop

    .line 1431
    nop

    .line 1433
    return-void

    .line 1421
    .restart local v0    # "outError":[Ljava/lang/String;
    .restart local v12    # "cookie":I
    :cond_0
    :try_start_2
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    iget v4, v8, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    invoke-interface {v13}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1431
    .end local v0    # "outError":[Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v12    # "cookie":I
    :catchall_0
    move-exception v0

    move-object v10, v1

    goto :goto_0

    .line 1427
    :catch_0
    move-exception v0

    move-object v10, v1

    goto :goto_1

    .line 1425
    :catch_1
    move-exception v0

    move-object v10, v1

    goto :goto_2

    .line 1431
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v0

    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .local v10, "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_0
    move-object v2, v13

    goto :goto_5

    .line 1427
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_2
    move-exception v0

    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_1
    move-object v2, v13

    goto :goto_3

    .line 1425
    .end local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_3
    move-exception v0

    .end local v13    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v2    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_2
    move-object v2, v13

    goto :goto_4

    .line 1411
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v12    # "cookie":I
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    :try_start_3
    new-instance v0, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v1, -0x65

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1431
    .end local v12    # "cookie":I
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 1427
    :catch_4
    move-exception v0

    .line 1428
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_3
    :try_start_4
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x66

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1425
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_5
    move-exception v0

    .line 1426
    .end local p1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .local v0, "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v10    # "pkg":Landroid/content/pm/PackageParser$Package;
    :goto_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1431
    .end local v0    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .locals 24
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    .line 3997
    move-object/from16 v11, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4000
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v10, 0x1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v9, 0x4

    if-eqz v1, :cond_0

    .line 4002
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v2, v1, p5

    or-int/2addr v2, v9

    aput v2, v1, p5

    .line 4005
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 4007
    .local v8, "classLoaderName":Ljava/lang/String;
    const/16 v7, -0x6c

    const/4 v5, 0x0

    if-eqz v8, :cond_2

    invoke-static {v8}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4010
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v5

    .line 4011
    iput v7, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4012
    return v5

    .line 4008
    :cond_2
    :goto_0
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object v8, v1, p5

    .line 4015
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    move-object/from16 v16, v0

    .line 4015
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    .local v1, "innerDepth":I
    .local v16, "sa":Landroid/content/res/TypedArray;
    :goto_1
    move v4, v1

    .line 4017
    .end local v1    # "innerDepth":I
    .local v4, "innerDepth":I
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v3, v0

    .line 4017
    .local v3, "type":I
    if-eq v0, v10, :cond_19

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    .line 4018
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v4, :cond_3

    goto :goto_2

    .line 4156
    :cond_3
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v18, v8

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    goto/16 :goto_8

    .line 4019
    :cond_4
    :goto_2
    if-eq v3, v0, :cond_18

    if-ne v3, v9, :cond_5

    .line 4020
    nop

    .line 4015
    move/from16 v22, v4

    move v1, v5

    move v5, v7

    move-object/from16 v18, v8

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    goto/16 :goto_7

    .line 4023
    :cond_5
    const/16 v17, 0x0

    .line 4027
    .local v17, "parsedComponent":Landroid/content/pm/ComponentInfo;
    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$1;)V

    .line 4028
    .local v6, "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4029
    .local v2, "tagName":Ljava/lang/String;
    const-string v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4030
    const/16 v18, 0x0

    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v0, v15

    move/from16 v19, v1

    move-object v1, v14

    move-object/from16 v20, v2

    move-object v2, v13

    .line 4030
    .end local v2    # "tagName":Ljava/lang/String;
    .local v20, "tagName":Ljava/lang/String;
    move/from16 v21, v3

    move-object v3, v12

    .line 4030
    .end local v3    # "type":I
    .local v21, "type":I
    move/from16 v22, v4

    move/from16 v4, p4

    .line 4030
    .end local v4    # "innerDepth":I
    .local v22, "innerDepth":I
    move v10, v5

    move-object v5, v11

    move v10, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v19

    .line 4030
    .end local v8    # "classLoaderName":Ljava/lang/String;
    .local v18, "classLoaderName":Ljava/lang/String;
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    .line 4032
    .local v0, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v0, :cond_6

    .line 4033
    iput v10, v15, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4034
    const/4 v1, 0x0

    return v1

    .line 4037
    :cond_6
    const/4 v1, 0x0

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4038
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4040
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v0, "parsedComponent":Landroid/content/pm/ComponentInfo;
    nop

    .line 4147
    move-object v3, v0

    move v5, v10

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    move-object/from16 v2, v20

    goto/16 :goto_6

    .line 4040
    .end local v0    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v18    # "classLoaderName":Ljava/lang/String;
    .end local v20    # "tagName":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "innerDepth":I
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v3    # "type":I
    .restart local v4    # "innerDepth":I
    .restart local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_7
    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move v1, v5

    move v10, v7

    move-object/from16 v18, v8

    .line 4040
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "type":I
    .end local v4    # "innerDepth":I
    .end local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v18    # "classLoaderName":Ljava/lang/String;
    .restart local v20    # "tagName":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v22    # "innerDepth":I
    const-string/jumbo v0, "receiver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4040
    .end local v20    # "tagName":Ljava/lang/String;
    .restart local v2    # "tagName":Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 4041
    const/4 v0, 0x1

    const/4 v3, 0x0

    move-object v7, v15

    move-object v8, v14

    move v4, v9

    move-object v9, v13

    move v5, v10

    const/4 v4, 0x1

    move-object v10, v12

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    move-object v4, v14

    move v14, v0

    move-object v0, v15

    move v15, v3

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v3

    .line 4043
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v3, :cond_8

    .line 4044
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4045
    return v1

    .line 4048
    :cond_8
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4049
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4051
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    nop

    .line 4147
    :goto_3
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    goto/16 :goto_6

    .line 4051
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_9
    move v5, v10

    move-object v4, v14

    move-object v0, v15

    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 4052
    move-object v7, v0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v3

    .line 4053
    .local v3, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v3, :cond_a

    .line 4054
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4055
    return v1

    .line 4058
    :cond_a
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4059
    iget-object v3, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4061
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    goto :goto_3

    .line 4061
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_b
    const-string/jumbo v3, "provider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 4062
    move-object v7, v0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v3

    .line 4063
    .local v3, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v3, :cond_c

    .line 4064
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4065
    return v1

    .line 4068
    :cond_c
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4069
    iget-object v3, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4071
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    goto :goto_3

    .line 4071
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_d
    const-string v3, "activity-alias"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 4072
    move-object v7, v0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v3

    .line 4073
    .local v3, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v3, :cond_e

    .line 4074
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4075
    return v1

    .line 4078
    :cond_e
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4079
    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 4081
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    goto :goto_3

    .line 4081
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4085
    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    invoke-direct {v0, v7, v8, v3, v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v3, :cond_15

    .line 4087
    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 4088
    return v1

    .line 4091
    :cond_10
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    const-string/jumbo v3, "uses-static-library"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4092
    invoke-direct {v0, v4, v7, v8, v9}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 4093
    return v1

    .line 4096
    :cond_11
    const-string/jumbo v3, "uses-library"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4097
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4102
    .end local v16    # "sa":Landroid/content/res/TypedArray;
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 4104
    .local v10, "lname":Ljava/lang/String;
    const/4 v11, 0x1

    invoke-virtual {v3, v11, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 4108
    .local v12, "req":Z
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 4110
    if-eqz v10, :cond_13

    .line 4111
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 4112
    if-eqz v12, :cond_12

    .line 4114
    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 4115
    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_4

    .line 4119
    :cond_12
    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 4120
    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 4126
    :cond_13
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4128
    .end local v10    # "lname":Ljava/lang/String;
    .end local v12    # "req":Z
    nop

    .line 4147
    move-object/from16 v16, v3

    goto :goto_5

    .line 4128
    .end local v3    # "sa":Landroid/content/res/TypedArray;
    .restart local v16    # "sa":Landroid/content/res/TypedArray;
    :cond_14
    const-string/jumbo v3, "uses-package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4131
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4147
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .local v3, "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_15
    :goto_5
    move-object/from16 v3, v17

    :goto_6
    if-eqz v3, :cond_16

    iget-object v10, v3, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-nez v10, :cond_16

    .line 4152
    iget-object v10, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v10, v10, p5

    iput-object v10, v3, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    .line 4154
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    :cond_16
    goto :goto_7

    .line 4135
    .restart local v2    # "tagName":Ljava/lang/String;
    .restart local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .restart local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    :cond_17
    const-string v3, "PackageParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown element under <application>: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4137
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4135
    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4138
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4139
    goto :goto_7

    .line 4015
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v6    # "cachedArgs":Landroid/content/pm/PackageParser$CachedComponentArgs;
    .end local v17    # "parsedComponent":Landroid/content/pm/ComponentInfo;
    .end local v18    # "classLoaderName":Ljava/lang/String;
    .end local v21    # "type":I
    .end local v22    # "innerDepth":I
    .restart local v4    # "innerDepth":I
    .restart local v8    # "classLoaderName":Ljava/lang/String;
    :cond_18
    move/from16 v22, v4

    move v1, v5

    move v5, v7

    move-object/from16 v18, v8

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    .line 4015
    .end local v4    # "innerDepth":I
    .restart local v1    # "innerDepth":I
    :goto_7
    move-object v15, v0

    move-object v14, v4

    move-object v13, v7

    move-object v12, v8

    move-object v11, v9

    move-object/from16 v8, v18

    const/4 v9, 0x4

    const/4 v10, 0x1

    move v7, v5

    move v5, v1

    move/from16 v1, v22

    goto/16 :goto_1

    .line 4156
    .end local v1    # "innerDepth":I
    .local v3, "type":I
    .restart local v4    # "innerDepth":I
    :cond_19
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v18, v8

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    .line 4156
    .end local v3    # "type":I
    .end local v4    # "innerDepth":I
    .end local v8    # "classLoaderName":Ljava/lang/String;
    .restart local v18    # "classLoaderName":Ljava/lang/String;
    .restart local v21    # "type":I
    .restart local v22    # "innerDepth":I
    :goto_8
    const/4 v1, 0x1

    return v1
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2784
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2785
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2789
    .local v1, "sa":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2791
    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 2793
    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2794
    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2798
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2800
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2802
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2803
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 11
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2911
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2916
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2919
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2920
    .local v3, "maxSdkVersion":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    .line 2922
    .local v5, "val":Landroid/util/TypedValue;
    if-eqz v5, :cond_0

    .line 2923
    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_0

    .line 2924
    iget v3, v5, Landroid/util/TypedValue;->data:I

    .line 2928
    :cond_0
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 2931
    .local v6, "requiredFeature":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2934
    .local v1, "requiredNotfeature":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2936
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2938
    if-nez v2, :cond_1

    .line 2939
    return v4

    .line 2942
    :cond_1
    if-eqz v3, :cond_2

    sget v7, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v3, v7, :cond_2

    .line 2943
    return v4

    .line 2947
    :cond_2
    if-eqz v6, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v7, v6}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2948
    return v4

    .line 2952
    :cond_3
    if-eqz v1, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 2953
    invoke-interface {v7, v1}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2954
    return v4

    .line 2957
    :cond_4
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 2958
    .local v7, "index":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 2959
    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2961
    :cond_5
    const-string v8, "PackageParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " in package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " at: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2961
    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2966
    :goto_0
    return v4
.end method

.method private parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2808
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2812
    .local v0, "sa":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2814
    .local v2, "lname":Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 2816
    .local v4, "version":I
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    .line 2818
    .local v5, "certSha256Digest":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2821
    const/16 v6, -0x6c

    if-eqz v2, :cond_4

    if-ltz v4, :cond_4

    if-nez v5, :cond_0

    goto :goto_0

    .line 2830
    :cond_0
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Depending on multiple versions of static library "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    .line 2832
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2833
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2834
    return v1

    .line 2837
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 2840
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2843
    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 2844
    .local v6, "additionalCertSha256Digests":[Ljava/lang/String;
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_2

    .line 2845
    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/PackageParser;->parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2846
    if-nez v6, :cond_3

    .line 2847
    return v1

    .line 2850
    :cond_2
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2853
    :cond_3
    array-length v7, v6

    add-int/2addr v7, v3

    new-array v7, v7, [Ljava/lang/String;

    .line 2854
    .local v7, "certSha256Digests":[Ljava/lang/String;
    aput-object v5, v7, v1

    .line 2855
    array-length v8, v6

    invoke-static {v6, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2858
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    .line 2859
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    int-to-long v8, v4

    invoke-static {v1, v8, v9, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    .line 2861
    const-class v1, [Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v1, v8, v7, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    .line 2864
    return v3

    .line 2822
    .end local v6    # "additionalCertSha256Digests":[Ljava/lang/String;
    .end local v7    # "certSha256Digests":[Ljava/lang/String;
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad uses-static-library declaration name: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " version: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " certDigest"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    .line 2824
    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2825
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2826
    return v1
.end method

.method private static parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .locals 8
    .param p0, "attrs"    # Landroid/util/AttributeSet;

    .line 5528
    const/4 v0, 0x0

    .line 5529
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5531
    .local v1, "encodedPublicKey":Ljava/lang/String;
    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 5532
    .local v2, "attrCount":I
    const/4 v3, 0x0

    .line 5532
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 5533
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    .line 5534
    .local v4, "attrResId":I
    const v5, 0x1010003

    if-eq v4, v5, :cond_1

    const v5, 0x10103a6

    if-eq v4, v5, :cond_0

    .line 5534
    .end local v4    # "attrResId":I
    goto :goto_1

    .line 5540
    .restart local v4    # "attrResId":I
    :cond_0
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 5540
    .end local v4    # "attrResId":I
    goto :goto_1

    .line 5536
    .restart local v4    # "attrResId":I
    :cond_1
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 5537
    nop

    .line 5532
    .end local v4    # "attrResId":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5545
    .end local v3    # "i":I
    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 5550
    :cond_3
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 5551
    .local v4, "publicKey":Ljava/security/PublicKey;
    if-nez v4, :cond_4

    .line 5552
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse verifier public key for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5553
    return-object v3

    .line 5556
    :cond_4
    new-instance v3, Landroid/content/pm/VerifierInfo;

    invoke-direct {v3, v0, v4}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v3

    .line 5546
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    :cond_5
    :goto_2
    const-string v4, "PackageParser"

    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5547
    return-object v3
.end method

.method private setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "sa"    # Landroid/content/res/TypedArray;
    .param p3, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4610
    iget-object v0, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, 0xc00

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4614
    .local v0, "appExplicitDefault":Z
    :goto_0
    const/16 v3, 0x28

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v0, :cond_1

    goto :goto_2

    .line 4628
    :cond_1
    iget-object v1, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    .line 4632
    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4633
    return-void

    .line 4638
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4639
    const/4 v1, 0x6

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    .line 4640
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4641
    const/4 v1, 0x5

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    .line 4642
    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4643
    const/4 v1, 0x7

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    .line 4645
    :cond_5
    const/4 v1, 0x4

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4647
    :goto_1
    return-void

    .line 4617
    :cond_6
    :goto_2
    iget-object v4, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    .line 4619
    .local v2, "appResizeable":Z
    :goto_3
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4621
    const/4 v1, 0x2

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_4

    .line 4623
    :cond_8
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 4625
    :goto_4
    return-void
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    .line 8141
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 8142
    return-void
.end method

.method private setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .locals 5
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;

    .line 4656
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    .line 4657
    sget v0, Landroid/content/pm/PackageParser;->DEFAULT_PRE_O_MAX_ASPECT_RATIO:F

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4659
    .local v0, "maxAspectRatio":F
    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    .line 4661
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 4664
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    .line 4665
    const-string v1, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActivityMaxAspectRatio: app set maxAspectRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4668
    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v2, "android.max_aspect"

    .line 4669
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4670
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v2, "android.max_aspect"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 4673
    :cond_2
    :goto_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 4675
    .local v2, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-static {v2}, Landroid/content/pm/PackageParser$Activity;->access$300(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4676
    goto :goto_2

    .line 4684
    :cond_3
    iget-object v3, v2, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    .line 4685
    iget-object v3, v2, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    const-string v4, "android.max_aspect"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    goto :goto_3

    .line 4686
    :cond_4
    move v3, v0

    .line 4688
    .local v3, "activityAspectRatio":F
    :goto_3
    invoke-static {v2, v3}, Landroid/content/pm/PackageParser$Activity;->access$200(Landroid/content/pm/PackageParser$Activity;F)V

    .line 4689
    .end local v2    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v3    # "activityAspectRatio":F
    goto :goto_2

    .line 4690
    :cond_5
    return-void
.end method

.method public static toCacheEntryStatic(Landroid/content/pm/PackageParser$Package;)[B
    .locals 3
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1126
    .local v0, "p":Landroid/os/Parcel;
    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    .line 1128
    .local v1, "helper":Landroid/content/pm/PackageParserCacheHelper$WriteHelper;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageParser$Package;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1130
    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    .line 1132
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 1133
    .local v2, "serialized":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1135
    return-object v2
.end method

.method public static toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .locals 3
    .param p0, "signatures"    # [Landroid/content/pm/Signature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/pm/Signature;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1508
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 1509
    .local v0, "keys":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/security/PublicKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1510
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1509
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1512
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .line 7549
    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_0

    .line 7550
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 7552
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v0, :cond_1

    .line 7553
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 7555
    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7557
    :goto_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_2

    .line 7558
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .line 7560
    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 7562
    :goto_1
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_3

    .line 7563
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_2

    .line 7565
    :cond_3
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 7567
    :goto_2
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_4

    .line 7568
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_3

    .line 7570
    :cond_4
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 7572
    :goto_3
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 7573
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    .line 7575
    :cond_5
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 7577
    :goto_4
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v0, v1, :cond_6

    .line 7578
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_6

    .line 7579
    :cond_6
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_8

    .line 7580
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_6

    .line 7581
    :cond_8
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 7583
    :cond_9
    iput-boolean v3, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 7585
    :cond_a
    :goto_6
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 7586
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 7587
    iget v0, p2, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 7589
    :cond_b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-ne v0, v1, :cond_c

    .line 7590
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    .line 7592
    :cond_c
    invoke-static {p2}, Landroid/content/pm/SELinuxUtil;->assignSeinfoUser(Landroid/content/pm/PackageUserState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    .line 7593
    iget-object v0, p2, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 7594
    return-void
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    .line 1685
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1686
    .local v0, "N":I
    const/4 v1, 0x0

    .line 1687
    .local v1, "hasSep":Z
    const/4 v2, 0x1

    .line 1688
    .local v2, "front":Z
    const/4 v3, 0x0

    .line 1688
    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_7

    .line 1689
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1690
    .local v4, "c":C
    const/16 v5, 0x61

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7a

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    .line 1691
    :cond_1
    const/4 v2, 0x0

    .line 1692
    goto :goto_1

    .line 1694
    :cond_2
    if-nez v2, :cond_4

    .line 1695
    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-le v4, v5, :cond_5

    :cond_3
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_4

    .line 1696
    goto :goto_1

    .line 1699
    :cond_4
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_6

    .line 1700
    const/4 v1, 0x1

    .line 1701
    const/4 v2, 0x1

    .line 1702
    nop

    .line 1688
    .end local v4    # "c":C
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1704
    .restart local v4    # "c":C
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1706
    .end local v3    # "i":I
    .end local v4    # "c":C
    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1707
    const-string v3, "Invalid filename"

    return-object v3

    .line 1709
    :cond_8
    if-nez v1, :cond_a

    if-nez p1, :cond_9

    goto :goto_2

    .line 1710
    :cond_9
    const-string/jumbo v3, "must have at least one \'.\' separator"

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x0

    .line 1709
    :goto_3
    return-object v3
.end method


# virtual methods
.method protected fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "bytes"    # [B
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1094
    invoke-static {p1}, Landroid/content/pm/PackageParser;->fromCacheEntryStatic([B)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1325
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    .line 1326
    .local v0, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_1

    .line 1327
    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1328
    :cond_0
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v2, -0x6c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not a coreApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1333
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v1, v0, p2}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    .line 1335
    .local v1, "assetLoader":Landroid/content/pm/split/SplitAssetLoader;
    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 1336
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 1337
    iget-boolean v3, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    nop

    .line 1343
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1338
    return-object v2

    .line 1343
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1339
    :catch_0
    move-exception v2

    .line 1340
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x66

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1343
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1078
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .param p3, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .line 1049
    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1050
    .local v0, "parsed":Landroid/content/pm/PackageParser$Package;
    :goto_0
    if-eqz v0, :cond_1

    .line 1051
    return-object v0

    .line 1054
    :cond_1
    sget-boolean v1, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move-wide v4, v2

    .line 1055
    .local v4, "parseTime":J
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1056
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_2

    .line 1058
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    .line 1061
    :goto_2
    sget-boolean v1, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    nop

    :cond_4
    move-wide v1, v2

    .line 1062
    .local v1, "cacheTime":J
    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V

    .line 1063
    sget-boolean v3, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    if-eqz v3, :cond_5

    .line 1064
    sub-long v4, v1, v4

    .line 1065
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    .line 1066
    add-long v6, v4, v1

    const-wide/16 v8, 0x64

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

    .line 1067
    const-string v3, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parse times for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\': parse="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms, update_cache="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_5
    return-object v0
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0
    .param p1, "cacheDir"    # Ljava/io/File;

    .line 613
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    .line 614
    return-void
.end method

.method public setCallback(Landroid/content/pm/PackageParser$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/content/pm/PackageParser$Callback;

    .line 654
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    .line 655
    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .line 606
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 607
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    .line 602
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 603
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    .line 593
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 594
    return-void
.end method

.method protected toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B
    .locals 1
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1118
    invoke-static {p1}, Landroid/content/pm/PackageParser;->toCacheEntryStatic(Landroid/content/pm/PackageParser$Package;)[B

    move-result-object v0

    return-object v0
.end method
