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

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.child_packages_enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

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

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "application"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-m"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-permission-sdk-23"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-configuration"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-feature"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "feature-group"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-sdk"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "instrumentation"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "uses-gl-texture"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "compatible-screens"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v3, "supports-input"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string v3, "eat-comment"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    sget-object v0, Landroid/content/pm/PackageParser;->SAFE_BROADCASTS:Ljava/util/Set;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

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

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    sput-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$1;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    return-void
.end method

.method static synthetic access$400(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 1

    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V
    .locals 5

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

    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iget-object v2, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    return-object v1

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

    const/4 v0, 0x0

    return-object v0
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_2

    const/16 v5, 0x3a

    if-ne v2, v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

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

    return-object v4

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

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

    return-object v4

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {v0, v3, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v5, "system"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

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

    return-object v4

    :cond_3
    return-object v0
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-string/jumbo v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p4, :cond_4

    array-length v0, p4

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    aget-object v1, p4, v0

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

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object p0

    :cond_4
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_5

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "process"

    invoke-static {p0, p2, v0, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_3
    return-object p1
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V
    .locals 7

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to delete cache file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p3}, Landroid/content/pm/PackageParser;->toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v2, :cond_2

    return-void

    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_0
    move-exception v5

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

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

    :catch_2
    move-exception v3

    :try_start_7
    const-string v4, "PackageParser"

    const-string v5, "Error writing cache entry."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :goto_2
    goto :goto_3

    :catch_3
    move-exception v0

    const-string v1, "PackageParser"

    const-string v2, "Error saving package cache."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return v2

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

    return v1
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

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

    :goto_1
    return v0
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isStaticSharedLibrary()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    :cond_0
    if-nez p2, :cond_2

    const-string v2, "/system/reserve"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/vendor/reserve"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->verify(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureVerifier;->plsCertsNoVerifyOnlyCerts(Ljava/lang/String;I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    :goto_1
    nop

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v4, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-ne v3, v4, :cond_3

    iput-object v2, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_2

    :cond_3
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v4, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v3, v4}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    return-void

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    nop

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const-string v0, "collectCertificates"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public static computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    if-gt p0, p2, :cond_0

    return p0

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

    return v0

    :cond_1
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x2710

    return v0

    :cond_2
    array-length v2, p3

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires development platform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (current platform is any of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p4, v1

    goto :goto_0

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

    :goto_0
    return v0
.end method

.method public static computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 3

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires development platform "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (current platform is any of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p3, v1

    goto :goto_0

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

    :goto_0
    const/4 v0, -0x1

    return v0

    :cond_3
    :goto_1
    const/16 v0, 0x2710

    return v0
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    return v0

    :cond_0
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v1, v0, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v3, v1, :cond_2

    return v0

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

    :goto_1
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v3, v1, :cond_4

    return v0

    :cond_4
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v3, :cond_6

    return v0

    :cond_6
    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    iget-object v4, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v4

    if-eq v3, v4, :cond_7

    return v0

    :cond_7
    and-int/lit16 v3, p0, 0x80

    if-eqz v3, :cond_9

    if-nez p3, :cond_8

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v3, :cond_9

    :cond_8
    return v0

    :cond_9
    and-int/lit16 v3, p0, 0x400

    if-eqz v3, :cond_a

    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v3, :cond_a

    return v0

    :cond_a
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v3, :cond_b

    return v0

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v0
.end method

.method public static fromCacheEntryStatic([B)Landroid/content/pm/PackageParser$Package;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$ReadHelper;->startAndInstall()V

    new-instance v2, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser$Package;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    sget-object v3, Landroid/content/pm/PackageParser;->sCachedPackageReadCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-object v2
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    move-object p0, v0

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    iget-object v0, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v0

    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p1, p2, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object p0, v0

    invoke-virtual {p0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    return-object p0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

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

    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0

    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_4
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    :cond_5
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_6

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    return-object v0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 10
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

    nop

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

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

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p9

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, v3, v5}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_d

    :cond_0
    new-instance v5, Landroid/content/pm/PackageInfo;

    invoke-direct {v5}, Landroid/content/pm/PackageInfo;-><init>()V

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    iget v7, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    invoke-static {v0, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->installLocation:I

    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->isStub:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->isStub:Z

    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->coreApp:Z

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-nez v7, :cond_1

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_2

    :cond_1
    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    :cond_2
    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-boolean v7, v0, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    iput-boolean v7, v5, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    iget v7, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v7, v5, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    iget-object v7, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    move-wide/from16 v9, p3

    iput-wide v9, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v11, p5

    iput-wide v11, v5, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    and-int/lit16 v7, v1, 0x100

    if-eqz v7, :cond_3

    move-object/from16 v7, p1

    iput-object v7, v5, Landroid/content/pm/PackageInfo;->gids:[I

    goto :goto_0

    :cond_3
    move-object/from16 v7, p1

    :goto_0
    and-int/lit16 v13, v1, 0x4000

    if-eqz v13, :cond_9

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    if-eqz v13, :cond_4

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    goto :goto_1

    :cond_4
    const/4 v13, 0x0

    :goto_1
    if-lez v13, :cond_5

    new-array v15, v13, [Landroid/content/pm/ConfigurationInfo;

    iput-object v15, v5, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_5
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    if-lez v6, :cond_7

    new-array v13, v6, [Landroid/content/pm/FeatureInfo;

    iput-object v13, v5, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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

    if-lez v6, :cond_9

    new-array v13, v6, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v13, v5, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    iget-object v15, v5, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_9
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_c

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c

    const/4 v13, 0x0

    new-array v15, v6, [Landroid/content/pm/ActivityInfo;

    move v14, v13

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v6, :cond_b

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Activity;

    move/from16 v17, v6

    iget-object v6, v8, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_a

    add-int/lit8 v6, v14, 0x1

    invoke-static {v8, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    aput-object v18, v15, v14

    move v14, v6

    :cond_a
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v17

    const/4 v8, 0x1

    goto :goto_4

    :cond_b
    move/from16 v17, v6

    invoke-static {v15, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ActivityInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_c
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_f

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    const/4 v8, 0x0

    new-array v13, v6, [Landroid/content/pm/ActivityInfo;

    move v14, v8

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_e

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Activity;

    move/from16 v19, v6

    iget-object v6, v15, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_d

    add-int/lit8 v6, v14, 0x1

    invoke-static {v15, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    aput-object v17, v13, v14

    move v14, v6

    :cond_d
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v19

    goto :goto_5

    :cond_e
    move/from16 v19, v6

    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ActivityInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_f
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_12

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_12

    const/4 v8, 0x0

    new-array v13, v6, [Landroid/content/pm/ServiceInfo;

    move v14, v8

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v6, :cond_11

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Service;

    move/from16 v20, v6

    iget-object v6, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_10

    add-int/lit8 v6, v14, 0x1

    invoke-static {v15, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v17

    aput-object v17, v13, v14

    move v14, v6

    :cond_10
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v20

    goto :goto_6

    :cond_11
    move/from16 v20, v6

    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ServiceInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_12
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_15

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_15

    const/4 v8, 0x0

    new-array v13, v6, [Landroid/content/pm/ProviderInfo;

    move v14, v8

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_14

    iget-object v15, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Provider;

    move/from16 v21, v6

    iget-object v6, v15, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v3, v6, v1}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v6

    if-eqz v6, :cond_13

    add-int/lit8 v6, v14, 0x1

    invoke-static {v15, v1, v3, v4}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v17

    aput-object v17, v13, v14

    move v14, v6

    :cond_13
    add-int/lit8 v8, v8, 0x1

    move/from16 v6, v21

    goto :goto_7

    :cond_14
    move/from16 v21, v6

    invoke-static {v13, v14}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/pm/ProviderInfo;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_15
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_16

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_16

    new-array v8, v6, [Landroid/content/pm/InstrumentationInfo;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v6, :cond_16

    iget-object v13, v5, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-static {v14, v1}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v14

    aput-object v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_16
    and-int/lit16 v6, v1, 0x1000

    if-eqz v6, :cond_19

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_17

    new-array v8, v6, [Landroid/content/pm/PermissionInfo;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v6, :cond_17

    iget-object v13, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$Permission;

    invoke-static {v14, v1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v14

    aput-object v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_17
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_19

    new-array v8, v6, [Ljava/lang/String;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    new-array v8, v6, [I

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    const/4 v8, 0x0

    :goto_a
    if-ge v8, v6, :cond_19

    iget-object v13, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v13, v14, v8

    iget-object v14, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v8

    const/16 v16, 0x1

    or-int/lit8 v15, v15, 0x1

    aput v15, v14, v8

    if-eqz v2, :cond_18

    invoke-interface {v2, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    iget-object v14, v5, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v8

    or-int/lit8 v15, v15, 0x2

    aput v15, v14, v8

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    :cond_19
    and-int/lit8 v6, v1, 0x40

    if-eqz v6, :cond_1b

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v6

    if-eqz v6, :cond_1a

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/pm/Signature;

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    const/4 v13, 0x0

    aget-object v8, v8, v13

    aput-object v8, v6, v13

    goto :goto_b

    :cond_1a
    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v6}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v6

    if-eqz v6, :cond_1b

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v6, v6, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    new-array v8, v6, [Landroid/content/pm/Signature;

    iput-object v8, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v8, v8, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v13, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v14, 0x0

    invoke-static {v8, v14, v13, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1b
    :goto_b
    const/high16 v6, 0x8000000

    and-int/2addr v6, v1

    if-eqz v6, :cond_1d

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v8, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v6, v8, :cond_1c

    new-instance v6, Landroid/content/pm/SigningInfo;

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v6, v8}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_c

    :cond_1c
    const/4 v6, 0x0

    iput-object v6, v5, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    :cond_1d
    :goto_c
    return-object v5

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

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    and-int/lit16 v0, p1, 0x80

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object v0

    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

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

    :cond_2
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v0

    :cond_3
    new-instance v1, Landroid/content/pm/ProviderInfo;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v1, v2}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    and-int/lit16 v2, p1, 0x800

    if-nez v2, :cond_4

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :cond_4
    iget-object v0, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1, p2, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v0, p2, v1, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    iget-object v0, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v0

    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static getActivityConfigChanges(II)I
    .locals 1

    not-int v0, p1

    and-int/lit8 v0, v0, 0x3

    or-int/2addr v0, p0

    return v0
.end method

.method private getCacheKey(Ljava/io/File;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 10

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCacheKey(Ljava/io/File;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1, v2}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageParser;->fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;

    move-result-object v4

    iget-object v5, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    iget-object v6, v4, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/content/pm/PackageParser$Callback;->getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    array-length v6, v5

    if-lez v6, :cond_3

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v2}, Landroid/content/pm/PackageParser;->isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v9, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    return-object v4

    :catch_0
    move-exception v3

    const-string v4, "PackageParser"

    const-string v5, "Error reading package cache: "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-object v1
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_7

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageParser$Activity;

    iget-object v5, v4, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_2

    :cond_2
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    const-string v9, "http"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "https"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_5
    return v0
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isApkPath(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method private static isCacheUpToDate(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

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

    :catch_0
    move-exception v1

    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    if-eq v2, v3, :cond_1

    const-string v2, "Error while stating package cache : "

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v0
.end method

.method private isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z
    .locals 1

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SENDTO"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageParser$IntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.SEND_MULTIPLE"

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

    :goto_1
    return v0
.end method

.method static synthetic lambda$parseBaseApplication$0(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .locals 2

    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseBaseApplication$1(Landroid/content/pm/PackageParser$Activity;Landroid/content/pm/PackageParser$Activity;)I
    .locals 2

    iget v0, p1, Landroid/content/pm/PackageParser$Activity;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseBaseApplication$2(Landroid/content/pm/PackageParser$Service;Landroid/content/pm/PackageParser$Service;)I
    .locals 2

    iget v0, p1, Landroid/content/pm/PackageParser$Service;->order:I

    iget v1, p0, Landroid/content/pm/PackageParser$Service;->order:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method private static newConfiguredAssetManager()Landroid/content/res/AssetManager;
    .locals 20

    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

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

    return-object v0
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 27
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

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_0

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

    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p7, :cond_1

    const-string v8, "<receiver>"

    goto :goto_0

    :cond_1
    const-string v8, "<activity>"

    :goto_0
    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v10, Landroid/content/pm/ActivityInfo;

    invoke-direct {v10}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-direct {v0, v9, v10}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v9, v0

    const/4 v10, 0x0

    aget-object v0, v3, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v11

    :cond_2
    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v13, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v13, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_3
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    iput v13, v0, Landroid/content/pm/ActivityInfo;->theme:I

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0x1a

    iget-object v14, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    invoke-virtual {v1, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    const/16 v0, 0x1b

    const/16 v13, 0x400

    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v14, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aget-object v15, v3, v10

    if-nez v15, :cond_4

    iget-object v15, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v0, v15, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_1

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

    const/4 v10, 0x0

    aput-object v11, v3, v10

    :cond_5
    :goto_1
    const/4 v13, 0x4

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v15, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto :goto_3

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

    :goto_3
    const/16 v10, 0x8

    const/16 v15, 0x400

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    iget-object v15, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    invoke-static {v11, v10, v0, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v15, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x30

    const/4 v15, 0x0

    invoke-virtual {v1, v11, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v10, 0x9

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v15, v11

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_8
    const/16 v10, 0xa

    const/4 v15, 0x0

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/4 v15, 0x2

    if-eqz v10, :cond_9

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v11, v15

    iput v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_9
    const/16 v10, 0xb

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v15, v13

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_a
    const/16 v10, 0x15

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v11, v11, 0x80

    iput v11, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_b
    const/16 v10, 0x12

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v16, 0x8

    or-int/lit8 v15, v15, 0x8

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_c
    const/16 v10, 0xc

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v11, 0x10

    if-eqz v10, :cond_d

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v15, v11

    iput v15, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_d
    const/16 v10, 0xd

    const/4 v15, 0x0

    invoke-virtual {v1, v10, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v15, 0x20

    if-eqz v10, :cond_e

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v13, v15

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

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

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v13, v13, 0x40

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_10
    const/16 v10, 0x16

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v13, v13, 0x100

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_11
    const/16 v10, 0x1d

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-nez v10, :cond_12

    const/16 v10, 0x27

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_13

    :cond_12
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v15, 0x400

    or-int/2addr v13, v15

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_13
    const/16 v10, 0x18

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_14

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v13, v13, 0x800

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_14
    const/16 v10, 0x36

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    if-eqz v10, :cond_15

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v15, 0x20000000

    or-int/2addr v13, v15

    iput v13, v10, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_15
    if-nez p7, :cond_1f

    const/16 v13, 0x19

    move/from16 v15, p8

    invoke-virtual {v1, v13, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    if-eqz v13, :cond_16

    iget-object v13, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v13, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x200

    iput v10, v13, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_16
    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0xe

    const/4 v11, 0x0

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v10, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v13, 0x21

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    iput v13, v10, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x22

    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    move-result v13

    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    iput v11, v10, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v11, 0x0

    const/16 v13, 0x10

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    move-object/from16 v21, v0

    const/16 v0, 0x2f

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v13, v0}, Landroid/content/pm/PackageParser;->getActivityConfigChanges(II)I

    move-result v0

    iput v0, v10, Landroid/content/pm/ActivityInfo;->configChanges:I

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x14

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x20

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/16 v0, 0x1f

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, -0x80000000

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_17
    const/16 v0, 0x23

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x2000

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_18
    const/16 v0, 0x24

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_19
    const/16 v0, 0x25

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_1a
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0xf

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v7, v0, v1, v6}, Landroid/content/pm/PackageParser;->setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V

    const/16 v0, 0x29

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v13, 0x400000

    or-int/2addr v10, v13

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_1b
    const/16 v0, 0x35

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v13, 0x40000

    or-int/2addr v10, v13

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_1c
    const/16 v0, 0x32

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    const/4 v13, 0x4

    if-ne v10, v13, :cond_1d

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v9, v0}, Landroid/content/pm/PackageParser$Activity;->access$200(Landroid/content/pm/PackageParser$Activity;F)V

    :cond_1d
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x26

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v11, 0x2a

    invoke-virtual {v1, v11, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    iput-boolean v11, v10, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v11, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x2b

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x2e

    const/4 v11, -0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v10, 0x31

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    const/16 v0, 0x33

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x800000

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_1e
    const/16 v0, 0x34

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x1000000

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_5

    :cond_1f
    move/from16 v15, p8

    move-object/from16 v21, v0

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v10, 0x0

    iput v10, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput v10, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v0, 0x1c

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v11, 0x40000000    # 2.0f

    or-int/2addr v10, v11

    iput v10, v0, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_20
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v11, 0x0

    const/16 v13, 0x2a

    invoke-virtual {v1, v13, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v10, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v13, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    :cond_21
    :goto_5
    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v0, :cond_22

    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v10, v10, 0x100

    iput v10, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_22
    const/16 v0, 0x2d

    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    const/high16 v10, 0x100000

    if-eqz v11, :cond_23

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v13, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/2addr v13, v10

    iput v13, v0, Landroid/content/pm/ActivityInfo;->flags:I

    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    :cond_23
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p7, :cond_24

    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v13, 0x2

    and-int/2addr v0, v13

    if-eqz v0, :cond_24

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v13, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v13, :cond_24

    const-string v0, "Heavy-weight applications can not have receivers in main process"

    const/4 v13, 0x0

    aput-object v0, v3, v13

    goto :goto_6

    :cond_24
    const/4 v13, 0x0

    :goto_6
    aget-object v0, v3, v13

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    return-object v0

    :cond_25
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :goto_7
    move v13, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v22, v0

    const/4 v10, 0x1

    if-eq v0, v10, :cond_3f

    const/4 v0, 0x3

    move/from16 v10, v22

    if-ne v10, v0, :cond_27

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v13, :cond_26

    goto :goto_8

    :cond_26
    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move-object/from16 v18, v21

    const/16 v16, 0x0

    const/16 v17, 0x1

    goto/16 :goto_11

    :cond_27
    :goto_8
    const/4 v0, 0x3

    if-eq v10, v0, :cond_3d

    const/4 v0, 0x4

    if-ne v10, v0, :cond_28

    nop

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

    :cond_28
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v23, v1

    const-string v1, "intent-filter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v1, v0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v18, v21

    const/16 v19, 0x4

    move-object v0, v7

    move-object/from16 v24, v1

    move-object/from16 v20, v23

    move-object v1, v5

    move-object v2, v4

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v24

    move-object v8, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    const/4 v0, 0x0

    return-object v0

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

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "android.intent.category.LAUNCHER"

    move-object/from16 v1, v24

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->removeCategory(Ljava/lang/String;)V

    goto :goto_9

    :cond_2a
    move-object/from16 v1, v24

    :cond_2b
    :goto_9
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No actions in intent filter at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_2c
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v0

    iget v2, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/PackageParser$Activity;->order:I

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    if-eqz v11, :cond_2d

    nop

    move v0, v6

    goto :goto_b

    :cond_2d
    if-nez p7, :cond_2e

    invoke-direct {v7, v1}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_2e

    nop

    const/4 v0, 0x2

    goto :goto_b

    :cond_2e
    move/from16 v0, v16

    :goto_b
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_2f
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_30
    nop

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v17, v6

    const/high16 v4, 0x100000

    goto/16 :goto_10

    :cond_31
    move-object v8, v6

    move-object/from16 v18, v21

    move-object/from16 v20, v23

    const/4 v6, 0x1

    const/16 v16, 0x0

    const/16 v19, 0x4

    if-nez p7, :cond_39

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "preferred"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v5, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v25, v5

    move/from16 v17, v6

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x0

    return-object v0

    :cond_32
    move-object/from16 v0, v25

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No actions in preferred at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_33
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v1, :cond_34

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    :cond_34
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    if-eqz v11, :cond_35

    nop

    move/from16 v1, v17

    goto :goto_d

    :cond_35
    if-nez p7, :cond_36

    invoke-direct {v7, v0}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v1

    if-eqz v1, :cond_36

    nop

    const/4 v1, 0x2

    goto :goto_d

    :cond_36
    move/from16 v1, v16

    :goto_d
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    goto :goto_e

    :cond_37
    const/high16 v4, 0x100000

    :goto_e
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v2

    if-eqz v2, :cond_38

    iget-object v2, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x200000

    or-int/2addr v3, v5

    iput v3, v2, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_38
    nop

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    goto/16 :goto_10

    :cond_39
    move/from16 v17, v6

    const/high16 v4, 0x100000

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v7, v1, v2, v0, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_3e

    const/4 v0, 0x0

    return-object v0

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

    invoke-direct {v7, v1, v2, v9}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    goto/16 :goto_10

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

    if-eqz p7, :cond_3c

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

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

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

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_10

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

    :cond_3f
    move-object/from16 v20, v1

    move-object v2, v4

    move-object v1, v5

    move-object v8, v6

    move/from16 v17, v10

    move-object/from16 v18, v21

    move/from16 v10, v22

    const/16 v16, 0x0

    :goto_11
    if-nez v12, :cond_41

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

    :cond_41
    return-object v9
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;
    .locals 32
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

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v0, 0x400

    const/4 v8, 0x7

    invoke-virtual {v1, v8, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v8

    const/16 v21, 0x0

    const/4 v15, 0x0

    if-nez v8, :cond_0

    const-string v0, "<activity-alias> does not specify android:targetActivity"

    aput-object v0, v3, v15

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v21

    :cond_0
    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, v8, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v21

    :cond_1
    iget-object v8, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v8, :cond_2

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

    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v24

    move/from16 v18, v20

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v8 .. v20}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    iput-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v8, "<activity-alias>"

    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object/from16 v26, v14

    :goto_0
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    const/4 v0, 0x0

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_4

    iget-object v11, v6, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Activity;

    iget-object v12, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v13, v26

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v0, v11

    nop

    move-object v10, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v26, v13

    goto :goto_1

    :cond_4
    move-object/from16 v13, v26

    move-object v10, v0

    :goto_2
    if-nez v10, :cond_5

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

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v21

    :cond_5
    const/4 v11, 0x0

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object v12, v0

    iput-object v13, v12, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->flags:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->icon:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->logo:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->logo:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->banner:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->banner:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->labelRes:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget v0, v12, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v0, :cond_6

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    :cond_6
    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->theme:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v0, v12, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    iput v0, v12, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, v12, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iget-object v0, v10, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v0, v12, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v0, v12, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    new-instance v0, Landroid/content/pm/PackageParser$Activity;

    iget-object v14, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    invoke-direct {v0, v14, v12}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    move-object v14, v0

    aget-object v0, v3, v11

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v21

    :cond_7
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_8

    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v2, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_8
    const/4 v2, 0x3

    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

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

    :cond_a
    const/16 v2, 0x9

    const/16 v11, 0x400

    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v2, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v11, v3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0x0

    aget-object v17, v3, v16

    if-nez v17, :cond_b

    move-object/from16 v27, v0

    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    goto :goto_4

    :cond_b
    move-object/from16 v27, v0

    const-string v0, "PackageParser"

    move-object/from16 v28, v2

    new-instance v2, Ljava/lang/StringBuilder;

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

    const/4 v0, 0x0

    aput-object v21, v3, v0

    goto :goto_4

    :cond_c
    move-object/from16 v27, v0

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

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v18, 0x0

    aget-object v0, v3, v18

    if-eqz v0, :cond_e

    return-object v21

    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :goto_6
    move v2, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v29, v0

    if-eq v0, v6, :cond_1c

    move/from16 v0, v29

    const/4 v6, 0x3

    if-ne v0, v6, :cond_10

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_f

    goto :goto_7

    :cond_f
    move/from16 v23, v0

    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move-object/from16 v22, v27

    const/16 v19, 0x1

    goto/16 :goto_b

    :cond_10
    :goto_7
    const/4 v6, 0x3

    if-eq v0, v6, :cond_1a

    const/4 v6, 0x4

    if-ne v0, v6, :cond_11

    nop

    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move-object/from16 v22, v27

    const/16 v19, 0x1

    const/16 v26, 0x3

    goto/16 :goto_a

    :cond_11
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    move/from16 v30, v0

    const-string v0, "intent-filter"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-direct {v0, v14}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    move-object v6, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    move-object/from16 v22, v27

    move/from16 v23, v30

    move-object v0, v7

    move-object/from16 v24, v1

    move-object v1, v5

    move/from16 v25, v2

    const/16 v26, 0x3

    move-object v2, v4

    move/from16 v3, v19

    move/from16 v4, v20

    move-object v5, v6

    move-object v8, v6

    const/16 v19, 0x1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    return-object v21

    :cond_12
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No actions in intent filter at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_13
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getOrder()I

    move-result v0

    iget v1, v14, Landroid/content/pm/PackageParser$Activity;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v14, Landroid/content/pm/PackageParser$Activity;->order:I

    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    if-eqz v17, :cond_14

    nop

    move/from16 v0, v19

    goto :goto_9

    :cond_14
    invoke-direct {v7, v8}, Landroid/content/pm/PackageParser;->isImplicitlyExposedIntent(Landroid/content/pm/PackageParser$IntentInfo;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    goto :goto_9

    :cond_15
    move/from16 v0, v18

    :goto_9
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->setVisibilityToInstantApp(I)V

    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    or-int v2, v2, v16

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_16
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isImplicitlyVisibleToInstantApp()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v14, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x200000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ActivityInfo;->flags:I

    :cond_17
    nop

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p2

    goto/16 :goto_a

    :cond_18
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object/from16 v22, v27

    move/from16 v23, v30

    const/16 v19, 0x1

    const/16 v26, 0x3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v1, p2

    invoke-direct {v7, v1, v2, v0, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v14, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1b

    return-object v21

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

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_a

    :cond_1a
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move/from16 v26, v6

    move-object/from16 v22, v27

    const/16 v19, 0x1

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

    :cond_1c
    move-object/from16 v24, v1

    move/from16 v25, v2

    move-object v2, v4

    move-object v1, v5

    move/from16 v19, v6

    move-object/from16 v22, v27

    move/from16 v23, v29

    :goto_b
    if-nez v15, :cond_1e

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

    :cond_1e
    return-object v14
.end method

.method private parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_5

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "additional-certificate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestAdditionalCertificate:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p3, v5

    const/16 v5, -0x6c

    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v5, 0x0

    return-object v5

    :cond_3
    const-string v5, ":"

    const-string v7, ""

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-class v6, Ljava/lang/String;

    invoke-static {v6, v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 5
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

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    invoke-direct {p0, p1, p2, v1, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_3
    const-string v1, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return v3
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, p1}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method public static parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/content/pm/PackageParser;->parseApkLiteInner(Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    return-object v0
.end method

.method private static parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 45
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-static/range {p2 .. p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, ""

    move/from16 v16, v2

    move/from16 v37, v12

    move-object/from16 v36, v13

    move v12, v6

    move v13, v11

    move v6, v4

    move v11, v5

    move/from16 v4, v16

    move v5, v3

    const/4 v3, 0x0

    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    if-ge v3, v2, :cond_8

    invoke-interface {v0, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v38, v7

    const-string v7, "installLocation"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, -0x1

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    goto/16 :goto_1

    :cond_0
    const-string/jumbo v7, "versionCode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v5

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    const-string/jumbo v7, "versionCodeMajor"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    const-string/jumbo v7, "revisionCode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v11

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    const-string v7, "coreApp"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v12

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    const-string/jumbo v7, "isolatedSplits"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v13

    goto :goto_1

    :cond_5
    const-string v7, "configForSplit"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v36, v7

    goto :goto_1

    :cond_6
    const-string/jumbo v7, "isFeatureSplit"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    invoke-interface {v0, v3, v7}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v2

    move/from16 v37, v2

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v38

    goto/16 :goto_0

    :cond_8
    move/from16 v38, v7

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    move-object/from16 v39, v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    move/from16 v40, v15

    if-eq v15, v3, :cond_1d

    const/4 v15, 0x3

    move/from16 v3, v40

    if-ne v3, v15, :cond_a

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-lt v15, v2, :cond_9

    goto :goto_3

    :cond_9
    move/from16 v42, v2

    move/from16 v41, v3

    goto/16 :goto_e

    :cond_a
    :goto_3
    const/4 v15, 0x3

    if-eq v3, v15, :cond_1b

    const/4 v15, 0x4

    if-ne v3, v15, :cond_b

    nop

    :goto_4
    move/from16 v42, v2

    :goto_5
    const/4 v15, 0x1

    goto/16 :goto_d

    :cond_b
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    if-eq v15, v2, :cond_10

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    move/from16 v41, v3

    add-int/lit8 v3, v2, 0x1

    if-ne v15, v3, :cond_1b

    const-string/jumbo v3, "meta-data"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    move-object/from16 v15, p1

    invoke-virtual {v15, v0, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_4

    :cond_c
    move/from16 v42, v2

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_d

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_5

    :cond_d
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v15, "oneplus_libs"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v43, v2

    const/4 v15, 0x1

    invoke-virtual {v3, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    goto :goto_6

    :cond_e
    move-object/from16 v43, v2

    :cond_f
    move-object/from16 v15, v39

    :goto_6
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_c

    :cond_10
    move/from16 v42, v2

    move/from16 v41, v3

    const-string/jumbo v2, "package-verifier"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static/range {p3 .. p3}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    goto :goto_5

    :cond_12
    const-string v2, "application"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x0

    :goto_7
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v3

    if-ge v2, v3, :cond_17

    invoke-interface {v0, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v15, "debuggable"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    const/4 v15, 0x0

    invoke-interface {v0, v2, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v38

    goto :goto_8

    :cond_13
    const/4 v15, 0x0

    :goto_8
    const-string/jumbo v15, "multiArch"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    const/4 v15, 0x0

    invoke-interface {v0, v2, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v8

    goto :goto_9

    :cond_14
    const/4 v15, 0x0

    :goto_9
    const-string/jumbo v15, "use32bitAbi"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    const/4 v15, 0x0

    invoke-interface {v0, v2, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v9

    goto :goto_a

    :cond_15
    const/4 v15, 0x0

    :goto_a
    const-string v15, "extractNativeLibs"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    const/4 v15, 0x1

    invoke-interface {v0, v2, v15}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v10

    goto :goto_b

    :cond_16
    const/4 v15, 0x1

    :goto_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    move-object/from16 v15, v39

    :goto_c
    move/from16 v2, v42

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_18
    const/4 v15, 0x1

    const-string/jumbo v2, "uses-split"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    if-eqz v14, :cond_19

    const-string v2, "PackageParser"

    const-string v3, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_19
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v3, "name"

    invoke-interface {v0, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1a

    goto :goto_d

    :cond_1a
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v3, -0x6c

    const-string v15, "<uses-split> tag requires \'android:name\' attribute"

    invoke-direct {v2, v3, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1b
    move/from16 v42, v2

    const/4 v15, 0x1

    :cond_1c
    :goto_d
    move v3, v15

    move-object/from16 v15, v39

    move/from16 v2, v42

    goto/16 :goto_2

    :cond_1d
    move/from16 v42, v2

    move/from16 v41, v40

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    if-eqz p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    move-object v2, v1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1, p2, v3, v3}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ZZ)Landroid/content/res/ApkAssets;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :cond_1
    invoke-static {v0}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    nop

    nop

    :try_start_1
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v5}, Landroid/util/DisplayMetrics;->setToDefaults()V

    new-instance v6, Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/pm/PackageParser;->newConfiguredAssetManager()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-direct {v6, v7, v5, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const-string v7, "AndroidManifest.xml"

    invoke-virtual {v4, v7}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    move-object v2, v7

    and-int/lit8 v7, p3, 0x20

    if-eqz v7, :cond_3

    new-instance v7, Landroid/content/pm/PackageParser$Package;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v7, v1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    move-object v1, v7

    and-int/lit8 v7, p3, 0x10

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    const-string v7, "collectCertificates"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, p0, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    nop

    iget-object v7, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    move-object v1, v7

    goto :goto_2

    :catchall_1
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7

    :cond_3
    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    :goto_2
    move-object v3, v2

    invoke-static {v0, v6, v2, v3, v1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v7
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v7

    :goto_3
    nop

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

    :goto_4
    nop

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

    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    const-string v1, "/mnt/expand/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2f

    const-string v2, "/mnt/expand/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const-string v2, "/mnt/expand/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v7, v0

    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    invoke-virtual {p2, v6}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v3

    move v8, v3

    if-eqz v8, :cond_2

    const-string v3, "AndroidManifest.xml"

    invoke-virtual {p2, v8, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v9, v3

    :try_start_1
    new-instance v2, Landroid/content/res/Resources;

    iget-object v3, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v2, p2, v3, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    move-object v0, p0

    move-object v1, v6

    move-object v3, v9

    move v4, p3

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)V
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    iget v3, p0, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v9

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v9

    goto :goto_1

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

    :catchall_1
    move-exception v0

    move-object v9, v2

    goto :goto_2

    :catch_2
    move-exception v0

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

    :catch_3
    move-exception v0

    :goto_1
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private parseBaseApk(Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    const/16 v1, -0x6a

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v9, v9}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v0

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v10, v3

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object v11, v3

    const/4 v3, 0x0

    if-eqz v10, :cond_0

    invoke-static {v3, v10}, Landroid/app/ActivityThread;->inCompatConfigList(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t allowed to install package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v3

    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v2

    :cond_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected base APK, but found split "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v3

    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_1
    nop

    nop

    iget-object v0, v8, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v0, :cond_2

    iget-object v0, v8, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    move-object/from16 v12, p1

    invoke-interface {v0, v10, v12}, Landroid/content/pm/PackageParser$Callback;->getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    array-length v1, v0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v5, v0, v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->addOverlayPath(Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v12, p1

    :cond_3
    new-instance v0, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v13, p2

    invoke-virtual {v13, v9, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v14

    const/4 v1, 0x1

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    const/16 v1, 0xb

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionCodeMajor:I

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    const/4 v1, 0x5

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    const/4 v1, 0x2

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    :cond_4
    const-string v1, "coreApp"

    invoke-interface {v9, v2, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    const/16 v1, 0x9

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersion:I

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    const/16 v1, 0xa

    invoke-virtual {v14, v1, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    :cond_5
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->mCompileSdkVersionCodename:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

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

    :catch_0
    move-exception v0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iput v1, v8, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v2
.end method

.method private parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    move-object/from16 v9, p3

    invoke-interface {v9, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, -0x6a

    iput v0, v7, Landroid/content/pm/PackageParser;->mParseError:I

    return v12

    :cond_0
    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, -0x6c

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageParser"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v0, p5, v12

    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    return v12

    :cond_1
    invoke-virtual {v8, v10}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate child package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PackageParser"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v0, p5, v12

    iput v1, v7, Landroid/content/pm/PackageParser;->mParseError:I

    return v12

    :cond_2
    new-instance v0, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    iget v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, v13, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iget v0, v8, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v0, v13, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iget-object v0, v8, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, v13, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v0, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, v7

    move-object v1, v13

    move-object/from16 v3, p2

    move-object v4, v9

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-nez v0, :cond_3

    return v12

    :cond_3
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    :cond_4
    iget-object v1, v8, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v8, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    return v11
.end method

.method private parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 47
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

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    const/4 v13, 0x0

    iput-object v13, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    invoke-virtual {v9, v10, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v14, 0x0

    invoke-virtual {v1, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x3

    const/4 v4, 0x1

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v15, v4, v14}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "android"

    iget-object v4, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

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

    const/16 v3, -0x6b

    iput v3, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v13

    :cond_0
    invoke-virtual {v15}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    invoke-virtual {v1, v5, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    :cond_1
    const/4 v2, -0x1

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, v7, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v7, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v3, 0x7

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v13, v2, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v3, v4

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_2
    and-int/lit8 v2, v11, 0x8

    if-eqz v2, :cond_3

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v18, 0x40000

    or-int v3, v3, v18

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_3
    const/4 v3, 0x6

    invoke-virtual {v1, v3, v14}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v18, 0x8000

    or-int v3, v3, v18

    iput v3, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v18, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

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

    :goto_0
    move/from16 v26, v23

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    move/from16 v27, v14

    const/4 v4, 0x1

    if-eq v14, v4, :cond_4a

    move/from16 v14, v27

    if-ne v14, v5, :cond_6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v5, v26

    if-le v4, v5, :cond_5

    goto :goto_1

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

    :cond_6
    move/from16 v5, v26

    :goto_1
    const/4 v4, 0x3

    if-eq v14, v4, :cond_49

    const/4 v4, 0x4

    if-ne v14, v4, :cond_7

    nop

    move/from16 v16, v0

    move/from16 v19, v1

    move v14, v2

    move/from16 v17, v5

    move/from16 v28, v13

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    :goto_2
    const/4 v0, 0x0

    const/16 v22, 0x3

    const/16 v23, 0x7

    move v15, v3

    goto/16 :goto_1d

    :cond_7
    move/from16 v28, v13

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v8, :cond_8

    invoke-interface {v8, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    const-string v4, "PackageParser"

    move/from16 v29, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v1

    const-string v1, "Skipping unsupported element under <manifest>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    :goto_3
    move v14, v2

    move/from16 v17, v5

    move-object/from16 v32, v15

    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v16, v29

    move/from16 v19, v30

    goto :goto_2

    :cond_8
    move/from16 v29, v0

    move/from16 v30, v1

    const-string v0, "application"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v18, :cond_9

    const-string v0, "PackageParser"

    const-string v1, "<manifest> has more than one <application>"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    :cond_9
    const/16 v16, 0x1

    move/from16 v4, v29

    move-object v0, v6

    move/from16 v8, v30

    move-object v1, v7

    move/from16 v31, v14

    move v14, v2

    move-object v2, v9

    move/from16 v33, v8

    move-object/from16 v32, v15

    const/4 v8, 0x6

    move v15, v3

    move-object v3, v10

    move/from16 v34, v4

    const/4 v8, 0x1

    const/16 v17, 0x3

    move v4, v11

    move/from16 v17, v5

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    move v2, v14

    move v3, v15

    move/from16 v18, v16

    :goto_4
    move/from16 v1, v33

    :goto_5
    const/4 v0, 0x0

    const/16 v22, 0x3

    :goto_6
    const/16 v23, 0x7

    goto/16 :goto_1c

    :cond_b
    move/from16 v17, v5

    move/from16 v31, v14

    move-object/from16 v32, v15

    move/from16 v34, v29

    move/from16 v33, v30

    const/4 v8, 0x1

    move v14, v2

    move v15, v3

    const-string/jumbo v0, "overlay"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->mOverlayCategory:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    const/16 v4, -0x6c

    if-nez v3, :cond_c

    const-string v3, "<overlay> does not specify a target package"

    const/4 v5, 0x0

    aput-object v3, v12, v5

    iput v4, v6, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v3, 0x0

    return-object v3

    :cond_c
    iget v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v3, :cond_f

    iget v3, v7, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v5, 0x270f

    if-le v3, v5, :cond_d

    goto :goto_8

    :cond_d
    invoke-direct {v6, v2, v1}, Landroid/content/pm/PackageParser;->checkOverlayRequiredSystemProperty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

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

    const/4 v3, 0x0

    return-object v3

    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    move-object/from16 v20, v0

    :goto_7
    move v2, v14

    move v3, v15

    goto/16 :goto_4

    :cond_f
    :goto_8
    const-string v3, "<overlay> priority must be between 0 and 9999"

    const/4 v5, 0x0

    aput-object v3, v12, v5

    iput v4, v6, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v3, 0x0

    return-object v3

    :cond_10
    const/4 v3, 0x0

    const-string/jumbo v0, "key-sets"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    return-object v3

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

    :cond_13
    const-string/jumbo v0, "permission-group"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

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

    const/4 v0, 0x0

    return-object v0

    :cond_14
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    const/4 v0, 0x0

    goto :goto_9

    :cond_15
    const/4 v0, 0x0

    const-string/jumbo v3, "permission"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    return-object v0

    :cond_16
    const-string/jumbo v3, "permission-tree"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    return-object v0

    :cond_17
    const-string/jumbo v3, "uses-permission"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-direct {v6, v7, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v1

    if-nez v1, :cond_12

    return-object v0

    :cond_18
    const-string/jumbo v0, "uses-permission-sdk-m"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const-string/jumbo v0, "uses-permission-sdk-23"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    const/16 v22, 0x3

    const/16 v23, 0x7

    goto/16 :goto_1a

    :cond_19
    const-string/jumbo v0, "uses-configuration"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    invoke-virtual {v9, v10, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    invoke-virtual {v1, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v4, v8

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_1a
    const/4 v5, 0x3

    invoke-virtual {v1, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    if-eqz v16, :cond_1b

    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v2, v3

    iput v2, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    :cond_1b
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    move-object/from16 v20, v1

    move/from16 v22, v5

    move v2, v14

    move v3, v15

    move/from16 v1, v33

    :goto_b
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_1c
    const/4 v4, 0x4

    const/4 v5, 0x3

    const-string/jumbo v0, "uses-feature"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {v6, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v1, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_1d

    new-instance v1, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v1}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    iget v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    :cond_1d
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    move/from16 v22, v5

    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    :goto_c
    const/4 v0, 0x0

    goto/16 :goto_a

    :cond_1e
    const-string v0, "feature-group"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    new-instance v0, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    const/4 v1, 0x0

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    :goto_d
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move/from16 v35, v3

    if-eq v3, v8, :cond_24

    move/from16 v3, v35

    if-ne v3, v5, :cond_20

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_1f

    goto :goto_e

    :cond_1f
    move/from16 v36, v2

    goto :goto_11

    :cond_20
    :goto_e
    if-eq v3, v5, :cond_23

    if-ne v3, v4, :cond_21

    nop

    move/from16 v36, v2

    goto :goto_10

    :cond_21
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v4, "uses-feature"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-direct {v6, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v4

    iget v5, v4, Landroid/content/pm/FeatureInfo;->flags:I

    const/16 v16, 0x1

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/FeatureInfo;->flags:I

    invoke-static {v1, v4}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    nop

    move/from16 v36, v2

    goto :goto_f

    :cond_22
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v36, v2

    const-string v2, "Unknown element under <feature-group>: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_10

    :cond_23
    move/from16 v36, v2

    :goto_10
    move/from16 v31, v3

    move/from16 v2, v36

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v8, 0x1

    goto :goto_d

    :cond_24
    move/from16 v36, v2

    move/from16 v3, v35

    :goto_11
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/FeatureInfo;

    iput-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    iget-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/pm/FeatureInfo;

    iput-object v2, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    :cond_25
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v7, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    nop

    move/from16 v31, v3

    goto/16 :goto_7

    :cond_26
    const-string/jumbo v0, "uses-sdk"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v0, :cond_2f

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_28

    iget v5, v8, Landroid/util/TypedValue;->type:I

    move/from16 v37, v1

    const/4 v1, 0x3

    if-ne v5, v1, :cond_27

    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_27

    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v4, v1

    move/from16 v5, v37

    goto :goto_12

    :cond_27
    iget v1, v8, Landroid/util/TypedValue;->data:I

    move v5, v1

    move v3, v1

    goto :goto_12

    :cond_28
    move/from16 v37, v1

    move/from16 v5, v37

    :goto_12
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_2b

    iget v1, v8, Landroid/util/TypedValue;->type:I

    move/from16 v38, v3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2a

    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    iget-object v1, v8, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_29

    move-object v2, v4

    :cond_29
    move/from16 v3, v38

    goto :goto_13

    :cond_2a
    iget v3, v8, Landroid/util/TypedValue;->data:I

    goto :goto_13

    :cond_2b
    move/from16 v38, v3

    :goto_13
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v1, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move-object/from16 v39, v0

    sget-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v5, v2, v1, v0, v12}, Landroid/content/pm/PackageParser;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/16 v1, -0xc

    if-gez v0, :cond_2c

    iput v1, v6, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v1, 0x0

    return-object v1

    :cond_2c
    and-int/lit16 v1, v11, 0x80

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_14

    :cond_2d
    const/4 v1, 0x0

    :goto_14
    move-object/from16 v40, v2

    sget-object v2, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v3, v4, v2, v12, v1}, Landroid/content/pm/PackageParser;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v2

    if-gez v2, :cond_2e

    move/from16 v41, v1

    const/16 v1, -0xc

    iput v1, v6, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v1, 0x0

    return-object v1

    :cond_2e
    move/from16 v41, v1

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_15

    :cond_2f
    move-object/from16 v39, v20

    :goto_15
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v2, v14

    move v3, v15

    move/from16 v1, v33

    move-object/from16 v20, v39

    goto/16 :goto_5

    :cond_30
    const-string/jumbo v0, "supports-screens"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x0

    const/4 v8, 0x6

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v3, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v3, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    iget-object v3, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v8, 0x8

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    iput v8, v3, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v0, v2, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    move/from16 v4, v33

    const/4 v14, 0x3

    invoke-virtual {v0, v14, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    move/from16 v15, v34

    invoke-virtual {v0, v1, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    move/from16 v15, v24

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v15}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v15

    move/from16 v8, v25

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object/from16 v20, v0

    move/from16 v34, v1

    move v1, v4

    move/from16 v25, v8

    move/from16 v22, v14

    move/from16 v24, v15

    goto/16 :goto_b

    :cond_31
    move/from16 v21, v24

    move/from16 v8, v25

    move/from16 v4, v33

    move/from16 v16, v34

    const/4 v5, 0x3

    const-string/jumbo v0, "protected-broadcast"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_33

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v1, :cond_32

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    :cond_32
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

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

    :cond_34
    const-string v0, "instrumentation"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-direct {v6, v7, v9, v10, v12}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v0

    if-nez v0, :cond_35

    const/4 v0, 0x0

    return-object v0

    :cond_35
    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v42, v8

    goto/16 :goto_c

    :cond_36
    const-string/jumbo v0, "original-package"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v1, :cond_37

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    :cond_37
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_38
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_16

    :cond_39
    const-string v0, "adopt-permissions"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v2, :cond_3b

    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v1, :cond_3a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    :cond_3a
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_16

    :cond_3c
    const-string/jumbo v0, "uses-gl-texture"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    :goto_17
    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v42, v8

    const/4 v0, 0x0

    const/16 v23, 0x7

    goto/16 :goto_1d

    :cond_3d
    const-string v0, "compatible-screens"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    :cond_3e
    const-string/jumbo v0, "supports-input"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    :cond_3f
    const-string v0, "eat-comment"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    :cond_40
    const-string/jumbo v0, "package"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    sget-boolean v0, Landroid/content/pm/PackageParser;->MULTI_PACKAGE_APK_ENABLED:Z

    if-nez v0, :cond_41

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_17

    :cond_41
    move-object v0, v6

    move-object v1, v7

    move-object v2, v9

    move-object v3, v10

    move/from16 v19, v4

    move/from16 v42, v8

    const/4 v8, 0x4

    move v4, v11

    move/from16 v22, v5

    const/16 v23, 0x7

    move-object v5, v12

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    const/4 v0, 0x0

    return-object v0

    :cond_42
    move/from16 v19, v4

    move/from16 v22, v5

    move/from16 v42, v8

    const/4 v8, 0x4

    const/16 v23, 0x7

    const-string/jumbo v0, "restrict-update"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_45

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    invoke-virtual {v9, v10, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v7, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    if-eqz v2, :cond_44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v3, v1, 0x2

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v1, :cond_43

    div-int/lit8 v5, v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v43, v0

    const/16 v0, 0x10

    invoke-static {v8, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    const/16 v20, 0x4

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v4, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move/from16 v44, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    add-int/2addr v8, v0

    int-to-byte v0, v8

    aput-byte v0, v3, v5

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v43

    move/from16 v1, v44

    const/4 v8, 0x4

    goto :goto_18

    :cond_43
    move-object/from16 v43, v0

    move/from16 v44, v1

    iput-object v3, v7, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    goto :goto_19

    :cond_44
    move-object/from16 v43, v0

    goto :goto_19

    :cond_45
    move-object/from16 v43, v20

    :goto_19
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move v2, v14

    move v3, v15

    move/from16 v34, v16

    move/from16 v1, v19

    move/from16 v24, v21

    move/from16 v25, v42

    move-object/from16 v20, v43

    const/4 v0, 0x0

    goto :goto_1c

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

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    const/4 v0, 0x0

    goto :goto_1d

    :cond_47
    move/from16 v21, v24

    move/from16 v42, v25

    move/from16 v19, v33

    move/from16 v16, v34

    const/16 v22, 0x3

    const/16 v23, 0x7

    :goto_1a
    invoke-direct {v6, v7, v9, v10}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    if-nez v0, :cond_48

    const/4 v0, 0x0

    return-object v0

    :cond_48
    const/4 v0, 0x0

    :goto_1b
    move v2, v14

    move v3, v15

    move/from16 v34, v16

    move/from16 v1, v19

    move/from16 v24, v21

    move/from16 v25, v42

    :goto_1c
    move/from16 v23, v17

    move/from16 v5, v22

    move/from16 v13, v28

    move-object/from16 v15, v32

    move/from16 v0, v34

    goto :goto_1e

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

    :goto_1e
    const/4 v4, 0x4

    move-object/from16 v8, p2

    const/4 v14, 0x0

    goto/16 :goto_0

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

    :goto_1f
    if-nez v18, :cond_4b

    iget-object v0, v7, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v2, 0x0

    aput-object v0, v12, v2

    const/16 v0, -0x6d

    iput v0, v6, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_20

    :cond_4b
    const/4 v2, 0x0

    :goto_20
    sget-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v0, v0

    const/4 v1, 0x0

    move-object v3, v1

    move v1, v2

    :goto_21
    if-ge v1, v0, :cond_4f

    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v4, v4, v1

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v8, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v5, v8, :cond_4c

    goto :goto_23

    :cond_4c
    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4e

    if-nez v3, :cond_4d

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v8, 0x80

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v5

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": compat added "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_4d
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_22
    iget-object v5, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_4f
    :goto_23
    if-eqz v3, :cond_50

    const-string v1, "PackageParser"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    sget-object v1, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v1, v1

    move v4, v2

    :goto_24
    if-ge v4, v1, :cond_54

    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    aget-object v5, v5, v4

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v8, v13, :cond_53

    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iget-object v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_51

    goto :goto_26

    :cond_51
    move v8, v2

    :goto_25
    iget-object v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v13, v13

    if-ge v8, v13, :cond_53

    iget-object v13, v5, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    aget-object v13, v13, v8

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_52
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_25

    :cond_53
    :goto_26
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_24

    :cond_54
    if-ltz v15, :cond_55

    if-lez v15, :cond_56

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_56

    :cond_55
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_56
    if-eqz v14, :cond_57

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_57
    if-ltz v19, :cond_58

    if-lez v19, :cond_59

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_59

    :cond_58
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_59
    if-ltz v16, :cond_5a

    if-lez v16, :cond_5b

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x9

    if-lt v2, v4, :cond_5b

    :cond_5a
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_5b
    if-ltz v21, :cond_5c

    if-lez v21, :cond_5d

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_5d

    :cond_5c
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_5d
    if-ltz v42, :cond_5e

    if-lez v42, :cond_5f

    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v4, 0x4

    if-lt v2, v4, :cond_5f

    :cond_5e
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_5f
    iget-object v2, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->usesCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->adjustPackageToBeUnresizeableAndUnpipable(Landroid/content/pm/PackageParser$Package;)V

    :cond_60
    return-object v7
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 34
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

    move-object/from16 v11, p5

    iget-object v10, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

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

    move-object/from16 v21, v9

    move/from16 v9, v17

    move-object/from16 v22, v10

    move/from16 v10, v18

    move-object v13, v11

    move/from16 v11, v19

    invoke-static/range {v0 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    const/16 v11, -0x6c

    const/4 v10, 0x0

    if-nez v0, :cond_0

    move-object/from16 v7, v20

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    iput v11, v15, Landroid/content/pm/PackageParser;->mParseError:I

    return v10

    :cond_0
    move-object/from16 v7, v20

    move-object/from16 v9, v22

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    :cond_1
    const/4 v8, 0x4

    const/16 v0, 0x400

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object/from16 v5, v21

    invoke-static {v5, v6, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object/from16 v5, v21

    :goto_0
    const/16 v1, 0x11

    const/4 v4, 0x1

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    const/16 v3, 0x10

    const/16 v2, 0x20

    if-eqz v16, :cond_8

    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const v17, 0x8000

    or-int v11, v11, v17

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v7, v3, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-static {v5, v11, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    const/16 v3, 0x12

    invoke-virtual {v7, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x10000

    or-int v3, v3, v17

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_3
    const/16 v3, 0x15

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x20000

    or-int v3, v3, v17

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_4
    invoke-virtual {v7, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v17, 0x4000000

    or-int v3, v3, v17

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_5
    const/16 v3, 0x28

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_6
    const/16 v3, 0x23

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    if-eqz v3, :cond_8

    iget v1, v3, Landroid/util/TypedValue;->resourceId:I

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v1, :cond_8

    iget v1, v3, Landroid/util/TypedValue;->data:I

    if-nez v1, :cond_7

    const/4 v1, -0x1

    goto :goto_1

    :cond_7
    move v1, v10

    :goto_1
    iput v1, v9, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    :cond_8
    invoke-virtual {v7, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->theme:I

    const/16 v1, 0xd

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    const/16 v1, 0x8

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x2d

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v11, v15, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v11, v3}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    iget v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v11, v1

    iput v11, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_a
    const/16 v3, 0x1b

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    iput-boolean v4, v14, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    :cond_b
    const/16 v3, 0x1c

    invoke-virtual {v7, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_c

    iput-object v11, v14, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    :cond_c
    const/16 v1, 0x1d

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_d

    iput-object v1, v14, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    :cond_d
    const/16 v0, 0xa

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move-object/from16 v29, v1

    const/4 v1, 0x2

    if-eqz v0, :cond_e

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_e
    const/16 v0, 0x14

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

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

    iget-boolean v0, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    if-eqz v0, :cond_11

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x20000000

    or-int/2addr v0, v1

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_11
    const/4 v0, 0x7

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v8

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_12
    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v0, v2

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_13
    const/4 v0, 0x5

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_14
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v0, :cond_15

    const/16 v0, 0xf

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_15
    const/16 v0, 0x18

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

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

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8000000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_18
    const/16 v1, 0x1a

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_19

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x400000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_19
    const/16 v1, 0x21

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_1a
    const/16 v1, 0x22

    invoke-virtual {v7, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    or-int/2addr v1, v3

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_1b
    const/16 v1, 0x26

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v1, v2

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_1c
    const/16 v1, 0x27

    invoke-virtual {v7, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_1d
    const/16 v1, 0x25

    invoke-virtual {v7, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v0, 0x25

    invoke-virtual {v7, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/16 v1, 0x400

    or-int/2addr v0, v1

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    :cond_1e
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    :cond_1f
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-lt v1, v0, :cond_20

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_20
    :goto_4
    const/16 v0, 0x2c

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    const/16 v0, 0x29

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    const/16 v0, 0x2b

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v0, 0x6

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

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

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_22

    const/16 v2, 0xc

    const/16 v3, 0x400

    invoke-virtual {v7, v2, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    :goto_6
    move-object v8, v0

    goto :goto_7

    :cond_22
    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :goto_7
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v2, v8, v13}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    const/16 v0, 0x30

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v13}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    :cond_23
    aget-object v0, v13, v10

    if-nez v0, :cond_28

    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x8

    if-lt v0, v2, :cond_24

    const/16 v0, 0xb

    const/16 v2, 0x400

    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    :goto_8
    move-object v2, v0

    goto :goto_9

    :cond_24
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :goto_9
    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v17, 0x0

    iget-object v4, v15, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object/from16 v18, v29

    move-object/from16 v1, v17

    move-object/from16 v17, v3

    const/16 v19, 0x10

    move/from16 v3, p4

    const/4 v10, 0x1

    move-object/from16 v31, v5

    move-object v5, v13

    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {v7, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_25

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x2000000

    or-int/2addr v0, v3

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_25
    const/16 v0, 0x2f

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_27

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/4 v5, 0x2

    or-int/2addr v0, v5

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "cantSaveState applications can not use custom processes"

    const/4 v1, 0x0

    aput-object v0, v13, v1

    goto :goto_a

    :cond_26
    const/4 v1, 0x0

    goto :goto_a

    :cond_27
    const/4 v1, 0x0

    const/4 v5, 0x2

    goto :goto_a

    :cond_28
    move-object/from16 v17, v3

    move-object/from16 v31, v5

    move v1, v10

    move-object/from16 v18, v29

    const/4 v5, 0x2

    const/16 v19, 0x10

    move v10, v4

    :goto_a
    const/16 v0, 0x19

    invoke-virtual {v7, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    const/16 v0, 0x2e

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

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

    :cond_29
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    aget-object v0, v13, v1

    if-eqz v0, :cond_2a

    const/16 v0, -0x6c

    iput v0, v15, Landroid/content/pm/PackageParser;->mParseError:I

    return v1

    :cond_2a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    new-instance v0, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$1;)V

    move-object/from16 v20, v6

    move-object v6, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    move/from16 v21, v0

    move/from16 v22, v1

    move-object/from16 v25, v7

    const/4 v0, 0x0

    :goto_c
    move/from16 v26, v0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v7, v0

    if-eq v0, v10, :cond_4d

    const/4 v0, 0x3

    if-ne v7, v0, :cond_2c

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-le v0, v4, :cond_2b

    goto :goto_d

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

    :cond_2c
    :goto_d
    const/4 v0, 0x3

    if-eq v7, v0, :cond_4c

    const/4 v3, 0x4

    if-ne v7, v3, :cond_2d

    nop

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

    :cond_2d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v27, 0x0

    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v0, v15

    move/from16 v28, v1

    move-object v1, v14

    move-object/from16 v32, v2

    move-object/from16 v2, p2

    move/from16 v23, v3

    move-object v3, v12

    move/from16 v29, v4

    move/from16 v4, p4

    move-object v5, v13

    move/from16 v30, v7

    move/from16 v7, v27

    move/from16 v27, v23

    move-object/from16 v23, v8

    move/from16 v8, v28

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    if-nez v0, :cond_2e

    const/16 v1, -0x6c

    iput v1, v15, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v2, 0x0

    return v2

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

    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v7, p2

    move/from16 v21, v3

    move-object v5, v9

    move-object/from16 v24, v11

    move-object v8, v12

    move-object v9, v13

    move-object v0, v15

    :cond_30
    :goto_f
    move-object/from16 v11, v31

    goto/16 :goto_18

    :cond_31
    move-object/from16 v32, v2

    move/from16 v27, v3

    move/from16 v29, v4

    move/from16 v30, v7

    move-object/from16 v23, v8

    const/16 v1, -0x6c

    const/4 v2, 0x0

    const-string/jumbo v0, "receiver"

    move-object/from16 v3, v32

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    const/4 v4, 0x0

    move-object v7, v15

    move-object v8, v14

    move-object v5, v9

    move-object/from16 v9, p2

    move v1, v10

    move-object v10, v12

    move-object/from16 v24, v11

    const/16 v1, -0x6c

    move/from16 v11, p4

    move-object v12, v13

    move-object v13, v6

    move v14, v0

    move-object v0, v15

    move v15, v4

    invoke-direct/range {v7 .. v15}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    if-nez v4, :cond_32

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v2

    :cond_32
    iget v7, v4, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v7, :cond_33

    const/4 v7, 0x1

    goto :goto_10

    :cond_33
    move v7, v2

    :goto_10
    or-int v7, v22, v7

    move-object/from16 v14, p1

    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v22, v7

    :goto_11
    move-object/from16 v11, v31

    move-object/from16 v7, p2

    goto/16 :goto_18

    :cond_34
    move-object v5, v9

    move-object/from16 v24, v11

    move-object v0, v15

    const-string/jumbo v4, "service"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move-object v7, v0

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v4

    if-nez v4, :cond_35

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v2

    :cond_35
    iget v7, v4, Landroid/content/pm/PackageParser$Service;->order:I

    if-eqz v7, :cond_36

    const/4 v7, 0x1

    goto :goto_12

    :cond_36
    move v7, v2

    :goto_12
    or-int v7, v26, v7

    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v26, v7

    goto :goto_11

    :cond_37
    const-string/jumbo v4, "provider"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    move-object v7, v0

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v4

    if-nez v4, :cond_38

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v2

    :cond_38
    iget-object v7, v14, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    goto/16 :goto_f

    :cond_39
    const-string v4, "activity-alias"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    move-object v7, v0

    move-object v8, v14

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v4

    if-nez v4, :cond_3a

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v2

    :cond_3a
    iget v7, v4, Landroid/content/pm/PackageParser$Activity;->order:I

    if-eqz v7, :cond_3b

    const/4 v7, 0x1

    goto :goto_13

    :cond_3b
    move v7, v2

    :goto_13
    or-int v7, v21, v7

    iget-object v8, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move/from16 v21, v7

    goto/16 :goto_11

    :cond_3c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, v14, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    invoke-direct {v0, v7, v8, v4, v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v14, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_30

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v2

    :cond_3d
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    const-string/jumbo v4, "static-library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestStaticLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    const/4 v11, 0x2

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v10, :cond_42

    if-gez v13, :cond_3e

    move-object/from16 v11, v31

    goto :goto_15

    :cond_3e
    iget-object v11, v14, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    if-eqz v11, :cond_3f

    const-string/jumbo v1, "sharedUserId not allowed in static shared library"

    aput-object v1, v9, v2

    const/16 v1, -0x6b

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v2

    :cond_3f
    iget-object v11, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-eqz v11, :cond_40

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Multiple static-shared libs for package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v31

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v2

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v2

    :cond_40
    move-object/from16 v11, v31

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibName:Ljava/lang/String;

    if-ltz v13, :cond_41

    nop

    invoke-static {v15, v13}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v1

    iput-wide v1, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    goto :goto_14

    :cond_41
    int-to-long v1, v13

    iput-wide v1, v14, Landroid/content/pm/PackageParser$Package;->staticSharedLibVersion:J

    :goto_14
    iget v1, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v1, v1, 0x4000

    iput v1, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    move-object/from16 v25, v4

    const/16 v1, -0x6c

    goto :goto_16

    :cond_42
    move-object/from16 v11, v31

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

    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v2

    :cond_43
    move-object/from16 v11, v31

    const-string/jumbo v4, "library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v10, :cond_44

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    invoke-static {v2, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, v14, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    :cond_44
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    move-object/from16 v25, v4

    :cond_45
    :goto_16
    const/4 v2, 0x0

    goto :goto_18

    :cond_46
    const-string/jumbo v2, "uses-static-library"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-direct {v0, v14, v7, v8, v9}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_45

    const/4 v2, 0x0

    return v2

    :cond_47
    const/4 v2, 0x0

    const-string/jumbo v4, "uses-library"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v7, v8, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v4, v12, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v10, :cond_49

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    if-eqz v13, :cond_48

    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    goto :goto_17

    :cond_48
    iget-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v12, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v12

    iput-object v12, v14, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    :cond_49
    :goto_17
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    move-object/from16 v25, v4

    goto :goto_18

    :cond_4a
    const-string/jumbo v4, "uses-package"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_18
    goto :goto_19

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

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_19

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

    :goto_1a
    if-eqz v21, :cond_4e

    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    sget-object v2, Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0aobsT7Zf7WVZCqMZ5z2clAuQf4;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4e
    if-eqz v22, :cond_4f

    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    sget-object v2, Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$0DZRgzfgaIMpCOhJqjw6PUiU5vw;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4f
    if-eqz v26, :cond_50

    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    sget-object v2, Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;->INSTANCE:Landroid/content/pm/-$$Lambda$PackageParser$M-9fHqS_eEp1oYkuKJhRHOGUxf8;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_50
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/PackageParser;->setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V

    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageBackwardCompatibility;->modifySharedLibraries(Landroid/content/pm/PackageParser$Package;)V

    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_1b

    :cond_51
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :goto_1b
    const/4 v1, 0x1

    return v1
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v2, :cond_0

    goto :goto_0

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

    :cond_1
    :goto_0
    const/4 v2, 0x0

    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->isolatedSplits:Z

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    invoke-static {v1}, Landroid/content/pm/split/SplitAssetDependencyLoader;->createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Landroid/content/pm/split/SplitAssetDependencyLoader;

    invoke-direct {v3, v1, v2, p2}, Landroid/content/pm/split/SplitAssetDependencyLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    :try_end_0
    .catch Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    const/16 v4, -0x65

    invoke-virtual {v0}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_2
    new-instance v3, Landroid/content/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v3, v1, p2}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v5, v4, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, v1, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    new-array v8, v7, [I

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    new-array v8, v7, [I

    iput-object v8, v6, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v8, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    iget-object v8, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-array v9, v7, [Ljava/lang/String;

    iput-object v9, v8, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    nop

    :goto_2
    if-ge v0, v7, :cond_3

    invoke-interface {v3, v0}, Landroid/content/pm/split/SplitAssetLoader;->getSplitAssetManager(I)Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-direct {p0, v6, v0, v8, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    iget-boolean v0, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v6

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

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

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

    :goto_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "parseApkLite"

    const-wide/32 v4, 0x40000

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    array-length v6, v0

    const/4 v7, 0x0

    move v8, v2

    move-object v2, v1

    move v1, v7

    :goto_0
    const/16 v9, -0x65

    if-ge v1, v6, :cond_5

    aget-object v10, v0, v1

    invoke-static {v10}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v11

    if-eqz v11, :cond_4

    move/from16 v11, p1

    invoke-static {v10, v11}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v12

    if-nez v2, :cond_0

    iget-object v2, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    iget v8, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    goto :goto_1

    :cond_0
    iget-object v13, v12, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    iget v13, v12, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    if-ne v8, v13, :cond_2

    :goto_1
    iget-object v13, v12, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    invoke-virtual {v3, v13, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1

    goto :goto_2

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

    :cond_4
    move/from16 v11, p1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    move/from16 v11, p1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    if-eqz v1, :cond_7

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v21, 0x0

    if-lez v4, :cond_6

    new-array v5, v4, [Ljava/lang/String;

    new-array v6, v4, [Z

    new-array v9, v4, [Ljava/lang/String;

    new-array v10, v4, [Ljava/lang/String;

    new-array v12, v4, [Ljava/lang/String;

    new-array v13, v4, [I

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    move-object v5, v14

    check-cast v5, [Ljava/lang/String;

    sget-object v14, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v5, v14}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    nop

    :goto_3
    if-ge v7, v4, :cond_6

    aget-object v14, v5, v7

    invoke-virtual {v3, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    aput-object v15, v9, v7

    iget-boolean v15, v14, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    aput-boolean v15, v6, v7

    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    aput-object v15, v10, v7

    iget-object v15, v14, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v15, v12, v7

    iget v15, v14, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v15, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    move-object v7, v12

    move-object/from16 v22, v13

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    move-object/from16 v5, p2

    move-object/from16 v4, p3

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

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

    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    :cond_0
    iget-object v0, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v3, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    new-instance v0, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v1, v6, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v2, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v2}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    move-object v7, v0

    const/4 v0, 0x0

    aget-object v1, p4, v0

    const/16 v8, -0x6c

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v9

    :cond_1
    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_2
    move-object v10, v9

    :goto_0
    iput-object v10, v2, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v3, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v9

    :goto_1
    iput-object v2, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x4

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v2, 0x5

    invoke-virtual {v3, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v7, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v1, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p4, v0

    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v9

    :cond_4
    const-string v11, "<instrumentation>"

    move-object v0, v6

    move-object v1, v5

    move-object v2, v4

    move-object v12, v3

    move-object v3, v11

    move-object v4, v7

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iput v8, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return-object v9

    :cond_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageParser$IntentInfo;->setOrder(I)V

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    if-eqz v9, :cond_0

    iget v10, v9, Landroid/util/TypedValue;->resourceId:I

    iput v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v10, :cond_0

    invoke-virtual {v9}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11200ca

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    const/4 v11, 0x7

    if-eqz v10, :cond_1

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    goto :goto_0

    :cond_1
    move v12, v5

    :goto_0
    const/4 v13, 0x1

    if-eqz v12, :cond_2

    iput v12, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    :goto_1
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, v3, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    const/4 v11, 0x5

    invoke-virtual {v0, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    const/4 v4, 0x6

    if-eqz p4, :cond_3

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    invoke-virtual {v3, v11}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v15, v4

    if-eq v4, v13, :cond_1c

    move v4, v15

    if-ne v4, v7, :cond_5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v11, :cond_4

    goto :goto_3

    :cond_4
    move-object/from16 v1, p0

    move/from16 v16, v4

    goto/16 :goto_e

    :cond_5
    :goto_3
    if-eq v4, v7, :cond_1b

    const/4 v13, 0x4

    if-ne v4, v13, :cond_6

    goto/16 :goto_c

    :cond_6
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v7, "action"

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v5, "name"

    invoke-interface {v2, v7, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v7, ""

    if-ne v5, v7, :cond_7

    goto :goto_5

    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    nop

    :goto_4
    move-object/from16 v1, p0

    move/from16 v16, v4

    goto/16 :goto_b

    :cond_8
    :goto_5
    const-string v7, "No value supplied for <android:name>"

    const/4 v14, 0x0

    aput-object v7, p6, v14

    return v14

    :cond_9
    const-string v5, "category"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v7, "name"

    invoke-interface {v2, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v7, ""

    if-ne v5, v7, :cond_a

    goto :goto_6

    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    :goto_6
    const-string v7, "No value supplied for <android:name>"

    move/from16 v16, v4

    const/4 v4, 0x0

    aput-object v7, p6, v4

    return v4

    :cond_c
    move/from16 v16, v4

    const/4 v4, 0x0

    const-string v5, "data"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5, v4, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    :try_start_0
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v4, v0

    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    aput-object v4, p6, v1

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :cond_d
    :goto_7
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    :cond_e
    const/4 v7, 0x7

    invoke-virtual {v5, v7, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_f
    const/16 v4, 0x8

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_10
    const/16 v4, 0x9

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    if-nez p3, :cond_11

    const-string/jumbo v4, "sspPattern not allowed here; ssp must be literal"

    aput-object v4, p6, v1

    return v1

    :cond_11
    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_8

    :cond_12
    const/4 v4, 0x2

    :goto_8
    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v0

    const/4 v4, 0x3

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_13

    invoke-virtual {v3, v7, v0}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    move-object/from16 v18, v0

    const/4 v4, 0x4

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_14
    const/4 v4, 0x5

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    :cond_15
    const/4 v4, 0x6

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    if-nez p3, :cond_16

    const-string/jumbo v4, "pathPattern not allowed here; path must be literal"

    aput-object v4, p6, v1

    return v1

    :cond_16
    const/4 v4, 0x2

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_9

    :cond_17
    const/4 v4, 0x2

    :goto_9
    const/16 v4, 0xa

    invoke-virtual {v5, v4, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    if-nez p3, :cond_18

    const-string/jumbo v4, "pathAdvancedPattern not allowed here; path must be literal"

    aput-object v4, p6, v1

    return v1

    :cond_18
    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    goto :goto_a

    :cond_19
    const/4 v4, 0x3

    :goto_a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    move-object/from16 v1, p0

    move-object v0, v5

    goto :goto_b

    :cond_1a
    move v1, v4

    const/4 v4, 0x3

    const-string v5, "PackageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <intent-filter>: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_b
    goto :goto_d

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

    :cond_1c
    move-object/from16 v1, p0

    move/from16 v16, v15

    :goto_e
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    const/4 v4, 0x1

    return v4
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 22
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

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x0

    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v12, v11

    const/4 v13, 0x1

    if-eq v11, v13, :cond_e

    const/4 v11, 0x3

    if-ne v12, v11, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v4, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v12

    goto/16 :goto_7

    :cond_1
    :goto_1
    if-ne v12, v11, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v11

    if-ne v11, v5, :cond_2

    const/4 v6, 0x0

    const/4 v5, -0x1

    goto :goto_0

    :cond_2
    move/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_6

    :cond_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "key-set"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    if-eqz v6, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Improperly nested \'key-set\' tag at "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, p4, v14

    const/16 v13, -0x6c

    iput v13, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v14

    :cond_4
    const/4 v14, 0x0

    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    invoke-virtual {v2, v3, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-virtual {v13, v14}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v16, v4

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v9, v14, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v14

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    nop

    move-object v6, v4

    move/from16 v18, v12

    goto/16 :goto_5

    :cond_5
    move/from16 v16, v4

    const-string/jumbo v4, "public-key"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v6, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Improperly nested \'key-set\' tag at "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x0

    aput-object v4, p4, v13

    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v13

    :cond_6
    const/4 v13, 0x0

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_7

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_7

    move/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v12

    const-string v12, "\'public-key\' "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " must define a public-key value on first use at "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, p4, v12

    const/16 v5, -0x6c

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return v12

    :cond_7
    move/from16 v17, v5

    move/from16 v18, v12

    if-eqz v13, :cond_b

    invoke-static {v13}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v5

    if-nez v5, :cond_8

    const-string v12, "PackageParser"

    move-object/from16 v19, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v12, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    :cond_8
    move-object/from16 v19, v13

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v7, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/PublicKey;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_2

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value of \'public-key\' "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " conflicts with previously defined value at "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, p4, v12

    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    return v12

    :cond_a
    :goto_2
    invoke-virtual {v7, v14, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    move-object/from16 v19, v13

    :goto_3
    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_c
    move/from16 v17, v5

    move/from16 v18, v12

    const-string/jumbo v1, "upgrade-key-set"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    :goto_4
    move/from16 v5, v17

    :goto_5
    move/from16 v4, v16

    move-object/from16 v1, p1

    goto/16 :goto_0

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

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    :goto_6
    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_e
    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v12

    :goto_7
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v9}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_f

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

    const/16 v4, -0x6c

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v11

    :cond_f
    move-object/from16 v5, p1

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

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

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArraySet;

    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-nez v13, :cond_10

    const-string v13, "PackageParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v1

    const-string v1, "Package"

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

    nop

    :goto_9
    move-object/from16 v1, v20

    goto :goto_8

    :cond_10
    move-object/from16 v20, v1

    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

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

    goto :goto_9

    :cond_11
    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    nop

    move-object/from16 v1, v21

    goto :goto_a

    :cond_12
    goto :goto_9

    :cond_13
    move-object/from16 v20, v1

    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_14

    iput-object v8, v5, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    const/4 v1, 0x1

    return v1

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

    const/16 v1, -0x6c

    iput v1, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v4
.end method

.method private parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .locals 23

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, -0x1

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, -0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x3

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v8

    const/4 v9, 0x5

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v11, 0x6

    const/4 v12, -0x1

    const/4 v13, 0x1

    if-ne v8, v11, :cond_0

    invoke-virtual {v0, v7, v13, v13, v10}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    goto :goto_0

    :cond_0
    if-ne v8, v9, :cond_1

    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    :cond_1
    :goto_0
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v15

    if-ne v15, v11, :cond_2

    invoke-virtual {v0, v7, v13, v13, v10}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    goto :goto_1

    :cond_2
    if-ne v15, v9, :cond_3

    invoke-virtual {v0, v7, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    :cond_3
    :goto_1
    const/4 v7, 0x0

    const/16 v9, 0x11

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v0, v13, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v0, v10, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v11, p3

    iget-object v12, v11, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v13, Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object v14, v13

    move/from16 v22, v15

    move v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v13, v12, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-void
.end method

.method private parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez p3, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object p3, v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p4, v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_2

    iget v1, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_9

    iget v6, v4, Landroid/util/TypedValue;->type:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    :cond_3
    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v3, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v3, v6, :cond_6

    iget v3, v4, Landroid/util/TypedValue;->data:I

    if-eqz v3, :cond_5

    move v1, v5

    nop

    :cond_5
    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_7

    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_7

    iget v1, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_7
    iget v1, v4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_8

    invoke-virtual {v4}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_8
    const-string v1, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    const-string v3, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v3, p4, v1

    const/4 p3, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object p3
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const-string/jumbo v0, "parseApkLite"

    const-wide/32 v1, 0x40000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not contain any attributes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    return v5

    :cond_0
    move/from16 v6, p6

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    if-eqz p5, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v5

    return v5

    :cond_1
    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v7, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_2

    return v5

    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11200ca

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_3

    move/from16 v9, p9

    invoke-virtual {v4, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    goto :goto_0

    :cond_3
    move/from16 v9, p9

    move v10, v5

    :goto_0
    const/4 v11, 0x0

    if-eqz v10, :cond_4

    iput v10, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    iput-object v11, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move/from16 v12, p8

    goto :goto_1

    :cond_4
    move/from16 v12, p8

    invoke-virtual {v4, v12, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    if-eqz v13, :cond_5

    iput v13, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    iput-object v11, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_5
    :goto_1
    const/4 v11, 0x1

    new-array v13, v11, [I

    aput v5, v13, v5

    invoke-static {v13}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "com.oppo.market"

    iget-object v14, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const v13, 0x5060049

    iput v13, v1, Landroid/content/pm/PackageItemInfo;->icon:I

    :cond_6
    move/from16 v13, p10

    invoke-virtual {v4, v13, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    if-eqz v14, :cond_7

    iput v14, v1, Landroid/content/pm/PackageItemInfo;->logo:I

    :cond_7
    move/from16 v11, p11

    invoke-virtual {v4, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_8

    iput v2, v1, Landroid/content/pm/PackageItemInfo;->banner:I

    :cond_8
    move/from16 v5, p7

    move v15, v2

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    if-eqz v2, :cond_9

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    iput v3, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_9

    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_9
    move-object/from16 v16, v2

    const/4 v3, 0x1

    new-array v2, v3, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "com.oppo.market"

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x50c0065

    iput v2, v1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    :cond_a
    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    return v2
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 8
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

    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_0

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, -0x6c

    if-ne v1, v2, :cond_8

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "manifest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "android"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, -0x6a

    if-nez v4, :cond_2

    invoke-static {v0, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

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

    :cond_2
    :goto_1
    const-string/jumbo v3, "split"

    invoke-interface {p1, v2, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_2

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

    :cond_5
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    move-object v4, v2

    :goto_3
    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    :cond_7
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No <manifest> tag"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_8
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v0, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v4, p2

    move-object/from16 v3, p3

    invoke-virtual {v4, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    new-instance v0, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    move-object v1, v0

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

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return v8

    :cond_0
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x4

    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    :cond_1
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x5

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/16 v9, 0xa

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->requestRes:I

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x3

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v9, 0x7

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v0, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_2

    const-string v0, "<permission> does not specify protectionLevel"

    aput-object v0, p4, v8

    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return v8

    :cond_2
    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v9, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v9, v9, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    iget-object v0, v1, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0}, Landroid/content/pm/PermissionInfo;->getProtectionFlags()I

    move-result v0

    if-eqz v0, :cond_3

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

    const-string v0, "<permission>  protectionLevel specifies a non-instant flag but is not based on signature type"

    aput-object v0, p4, v8

    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return v8

    :cond_3
    const-string v9, "<permission>"

    move-object v0, v6

    move-object v10, v1

    move-object v1, v4

    move-object v11, v2

    move-object v2, v3

    move-object v3, v9

    move-object v4, v10

    move-object v9, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return v8

    :cond_4
    iget-object v0, v9, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    new-instance v0, Landroid/content/pm/PackageParser$PermissionGroup;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    move-object v4, v0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v3, p3

    move-object/from16 v2, p4

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

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

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return v8

    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v9, 0x4

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/16 v9, 0x9

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v9, 0x6

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    iget-object v0, v4, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v9, 0x3

    invoke-virtual {v1, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string v9, "<permission-group>"

    move-object v0, v6

    move-object v10, v1

    move-object v1, v3

    move-object/from16 v2, p4

    move-object v3, v9

    move-object v9, v4

    move-object v11, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return v8

    :cond_1
    iget-object v0, v11, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v5, p1

    new-instance v0, Landroid/content/pm/PackageParser$Permission;

    invoke-direct {v0, v5}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    move-object v4, v0

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v3, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

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

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return v8

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v9, 0x2e

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v10, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v10, v10, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v10, v9, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :cond_1
    move v9, v0

    if-gez v9, :cond_2

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

    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return v8

    :cond_2
    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->requestRes:I

    iget-object v0, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iput v8, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v11, 0x1

    iput-boolean v11, v4, Landroid/content/pm/PackageParser$Permission;->tree:Z

    const-string v12, "<permission-tree>"

    move-object v0, v6

    move-object v13, v1

    move-object v1, v3

    move-object/from16 v2, p3

    move-object v3, v12

    move-object v12, v4

    move-object v14, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iput v7, v6, Landroid/content/pm/PackageParser;->mParseError:I

    return v8

    :cond_3
    iget-object v0, v14, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v11
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v12, p2

    move-object/from16 v11, p3

    invoke-virtual {v12, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_0

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

    move/from16 v11, v16

    move/from16 v12, v17

    invoke-direct/range {v0 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, v19

    iput-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v1, "<provider>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v20, v10

    :goto_0
    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v6, v20

    iput-object v6, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget-object v0, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v7, p4

    iput v7, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    new-instance v0, Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v14, Landroid/content/pm/PackageParser$CachedComponentArgs;->mProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v2, Landroid/content/pm/ProviderInfo;

    invoke-direct {v2}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    move-object v8, v0

    const/4 v0, 0x0

    aget-object v1, p5, v0

    const/4 v9, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    return-object v9

    :cond_1
    const/4 v1, 0x0

    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    move v10, v1

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v2, 0x7

    invoke-virtual {v6, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->exported:Z

    const/16 v1, 0xa

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0xb

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    const/4 v1, 0x3

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x4

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v12

    :cond_3
    if-nez v1, :cond_4

    iget-object v2, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v2, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

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

    :goto_2
    const/4 v2, 0x5

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    move-object v1, v12

    :cond_6
    move-object v5, v1

    if-nez v5, :cond_7

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

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

    :goto_4
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0xd

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0x9

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0xc

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v1, Landroid/content/pm/ProviderInfo;->initOrder:I

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v2, 0x15

    invoke-virtual {v6, v2, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ProviderInfo;->splitName:Ljava/lang/String;

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput v0, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/16 v1, 0x10

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    :cond_9
    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v2, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v3, 0x12

    invoke-virtual {v6, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v2, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    iput-boolean v3, v1, Landroid/content/pm/ProviderInfo;->encryptionAware:Z

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v1, v1, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v1, :cond_a

    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_a
    const/16 v1, 0x14

    invoke-virtual {v6, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    if-eqz v15, :cond_b

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ProviderInfo;->flags:I

    const/4 v1, 0x1

    iput-boolean v1, v13, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    :cond_b
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, v13, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    iget-object v1, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    iget-object v2, v13, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v1, v2, :cond_c

    const-string v1, "Heavy-weight applications can not have providers in main process"

    aput-object v1, p5, v0

    return-object v9

    :cond_c
    if-nez v11, :cond_d

    const-string v1, "<provider> does not include authorities attribute"

    aput-object v1, p5, v0

    return-object v9

    :cond_d
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_e

    const-string v1, "<provider> has empty authorities attribute"

    aput-object v1, p5, v0

    return-object v9

    :cond_e
    iget-object v0, v8, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v15

    move-object v4, v8

    move-object/from16 v16, v5

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    return-object v9

    :cond_f
    return-object v8
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZLandroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 19
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

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :goto_0
    move v11, v0

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v12, v0

    const/4 v13, 0x1

    if-eq v0, v13, :cond_1a

    const/4 v0, 0x3

    if-ne v12, v0, :cond_0

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v11, :cond_1a

    :cond_0
    if-eq v12, v0, :cond_18

    const/4 v1, 0x4

    if-ne v12, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent-filter"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    new-instance v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    invoke-direct {v0, v10}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    move-object v15, v0

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

    return v14

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v15, v13}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->setVisibilityToInstantApp(I)V

    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    :cond_3
    invoke-virtual {v15}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getOrder()I

    move-result v0

    iget v1, v10, Landroid/content/pm/PackageParser$Provider;->order:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v10, Landroid/content/pm/PackageParser$Provider;->order:I

    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object/from16 v3, p5

    invoke-direct {v7, v8, v9, v0, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v10, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_19

    return v14

    :cond_5
    move-object/from16 v3, p5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "grant-uri-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_b

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    invoke-virtual {v8, v9, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v6, Landroid/os/PatternMatcher;

    invoke-direct {v6, v4, v14}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    :cond_6
    invoke-virtual {v0, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v6, Landroid/os/PatternMatcher;

    invoke-direct {v6, v4, v13}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    :cond_7
    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    new-instance v6, Landroid/os/PatternMatcher;

    invoke-direct {v6, v4, v5}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    move-object v1, v6

    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_a

    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v5, :cond_9

    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    new-array v6, v13, [Landroid/os/PatternMatcher;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    aput-object v1, v5, v14

    goto :goto_1

    :cond_9
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v5, v5

    add-int/lit8 v6, v5, 0x1

    new-array v6, v6, [Landroid/os/PatternMatcher;

    iget-object v15, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v15, v15, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-static {v15, v14, v6, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v1, v6, v5

    iget-object v14, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v6, v14, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :goto_1
    iget-object v5, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v13, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_a
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <path-permission>: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_b
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "path-permission"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    invoke-virtual {v8, v9, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v14, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v13, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_c

    move-object/from16 v16, v15

    :cond_c
    move-object/from16 v13, v16

    invoke-virtual {v4, v5, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_d

    move-object/from16 v16, v15

    :cond_d
    move-object/from16 v5, v16

    const/16 v16, 0x0

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0x1

    :cond_e
    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x1

    :cond_f
    if-nez v16, :cond_10

    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " at "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " "

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :cond_10
    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v0, Landroid/content/pm/PathPermission;

    invoke-direct {v0, v1, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    :cond_11
    const/4 v0, 0x4

    invoke-virtual {v4, v0, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v1, Landroid/content/pm/PathPermission;

    const/4 v14, 0x1

    invoke-direct {v1, v0, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    :cond_12
    const/4 v1, 0x5

    const/4 v14, 0x0

    invoke-virtual {v4, v1, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v1, Landroid/content/pm/PathPermission;

    const/4 v14, 0x2

    invoke-direct {v1, v0, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    :cond_13
    const/4 v1, 0x6

    const/4 v14, 0x0

    invoke-virtual {v4, v1, v14}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Landroid/content/pm/PathPermission;

    const/4 v14, 0x3

    invoke-direct {v1, v0, v14, v13, v5}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    :cond_14
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v6, :cond_16

    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v1, :cond_15

    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v14, 0x1

    new-array v14, v14, [Landroid/content/pm/PathPermission;

    iput-object v14, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v14, 0x0

    aput-object v6, v1, v14

    move-object/from16 v17, v0

    goto :goto_2

    :cond_15
    iget-object v1, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v1, v1

    add-int/lit8 v14, v1, 0x1

    new-array v14, v14, [Landroid/content/pm/PathPermission;

    move-object/from16 v17, v0

    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v2, 0x0

    invoke-static {v0, v2, v14, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v6, v14, v1

    iget-object v0, v10, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v14, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    nop

    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_16
    move-object/from16 v17, v0

    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_17
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <provider>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    :cond_18
    :goto_3
    move-object/from16 v3, p5

    :cond_19
    :goto_4
    move v0, v11

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v3, p5

    const/4 v0, 0x1

    return v0
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "PackageParser"

    const-string v2, "Could not parse null public key"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    move-object v1, v2

    nop

    nop

    :try_start_1
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "PackageParser"

    const-string v4, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    :try_start_2
    const-string v2, "EC"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v3

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    const-string v3, "PackageParser"

    const-string v4, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    :try_start_3
    const-string v2, "DSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    return-object v3

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    const-string v3, "PackageParser"

    const-string v4, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    return-object v0

    :catch_6
    move-exception v1

    const-string v2, "PackageParser"

    const-string v3, "Could not parse verifier public key; invalid Base64"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;
    .locals 23
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

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    invoke-virtual {v5, v4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v0, :cond_0

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

    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string v8, "<service>"

    iput-object v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    :cond_0
    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget-object v0, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v8, p4

    iput v8, v0, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    new-instance v0, Landroid/content/pm/PackageParser$Service;

    iget-object v9, v2, Landroid/content/pm/PackageParser$CachedComponentArgs;->mServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v10, Landroid/content/pm/ServiceInfo;

    invoke-direct {v10}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-direct {v0, v9, v10}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    move-object v9, v0

    const/4 v10, 0x0

    aget-object v0, v3, v10

    const/4 v11, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v11

    :cond_1
    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v13, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v13, Landroid/content/pm/ServiceInfo;->exported:Z

    :cond_2
    const/4 v13, 0x3

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v15, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_1

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

    :goto_1
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v15, 0x11

    invoke-virtual {v1, v15, v10}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v0, Landroid/content/pm/ServiceInfo;->splitName:Ljava/lang/String;

    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/16 v0, 0x9

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v13, v15

    iput v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_5
    const/16 v0, 0xa

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v13, v13, 0x2

    iput v13, v0, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_6
    const/16 v0, 0xe

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v13, 0x4

    if-eqz v0, :cond_7

    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v11, v13

    iput v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_7
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v16, 0x40000000    # 2.0f

    or-int v11, v11, v16

    iput v11, v0, Landroid/content/pm/ServiceInfo;->flags:I

    :cond_8
    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v11, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/16 v13, 0xd

    invoke-virtual {v1, v13, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13

    iput-boolean v13, v11, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    iput-boolean v13, v0, Landroid/content/pm/ServiceInfo;->encryptionAware:Z

    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v0, :cond_9

    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v11, v11, 0x100

    iput v11, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :cond_9
    const/16 v0, 0x10

    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    const/high16 v13, 0x100000

    if-eqz v11, :cond_a

    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/2addr v10, v13

    iput v10, v0, Landroid/content/pm/ServiceInfo;->flags:I

    iput-boolean v15, v6, Landroid/content/pm/PackageParser$Package;->visibleToInstantApps:Z

    :cond_a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    iget-object v0, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v0, v10, :cond_b

    const-string v0, "Heavy-weight applications can not have services in main process"

    const/4 v10, 0x0

    aput-object v0, v3, v10

    const/4 v0, 0x0

    return-object v0

    :cond_b
    const/4 v10, 0x0

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10

    move/from16 v21, v10

    if-eq v10, v15, :cond_15

    move/from16 v10, v21

    const/4 v13, 0x3

    if-ne v10, v13, :cond_d

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v0, :cond_c

    goto :goto_3

    :cond_c
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    move-object v2, v5

    const/4 v0, 0x1

    move-object v4, v3

    goto/16 :goto_6

    :cond_d
    :goto_3
    if-eq v10, v13, :cond_14

    const/4 v15, 0x4

    if-ne v10, v15, :cond_e

    nop

    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    move-object v2, v5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v4, v3

    const/high16 v3, 0x100000

    goto/16 :goto_5

    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v15, "intent-filter"

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    new-instance v13, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    invoke-direct {v13, v9}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v17, v0

    move-object v0, v7

    move-object/from16 v18, v1

    move-object v1, v5

    move-object v2, v4

    move v3, v15

    move-object v15, v4

    move/from16 v4, v16

    move-object v5, v13

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    :cond_f
    if-eqz v11, :cond_10

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->setVisibilityToInstantApp(I)V

    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v3, 0x100000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/ServiceInfo;->flags:I

    goto :goto_4

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

    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v4, p5

    const/4 v1, 0x0

    move-object/from16 v2, p2

    goto/16 :goto_5

    :cond_11
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    const/4 v0, 0x1

    const/high16 v3, 0x100000

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "meta-data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object/from16 v4, p5

    move-object/from16 v2, p2

    invoke-direct {v7, v2, v15, v1, v4}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v9, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_12

    const/4 v1, 0x0

    return-object v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_5

    :cond_13
    move-object/from16 v4, p5

    const/4 v1, 0x0

    move-object/from16 v2, p2

    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <service>: "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " at "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v7, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    :cond_14
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v15, v4

    move-object v2, v5

    const/4 v0, 0x1

    const/4 v1, 0x0

    move-object v4, v3

    const/high16 v3, 0x100000

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

    :cond_15
    move/from16 v17, v0

    move-object/from16 v18, v1

    move-object v2, v5

    move v0, v15

    move/from16 v10, v21

    move-object v15, v4

    move-object v4, v3

    :goto_6
    if-nez v12, :cond_17

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

    :cond_17
    return-object v9
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object v0, p3

    invoke-static {p3, v0}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v2, 0x0

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_6

    const/4 v4, 0x3

    if-ne v5, v4, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_6

    :cond_1
    if-eq v5, v4, :cond_0

    const/4 v4, 0x4

    if-ne v5, v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "application"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v2, :cond_3

    const-string v6, "PackageParser"

    const-string v7, "<manifest> has more than one <application>"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    return-object v1

    :cond_4
    goto :goto_0

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

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    const/4 v1, 0x0

    const-string v4, "<manifest> does not contain an <application>"

    aput-object v4, p6, v1

    const/16 v1, -0x6d

    iput v1, p0, Landroid/content/pm/PackageParser;->mParseError:I

    :cond_7
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p3

    move-object v10, p1

    iget-object v0, v10, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v11, v0, p2

    const/4 v0, 0x1

    iput v0, v8, Landroid/content/pm/PackageParser;->mParseError:I

    iput-object v11, v8, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    invoke-virtual {v9, v11}, Landroid/content/res/AssetManager;->findCookieForPath(Ljava/lang/String;)I

    move-result v3

    move v12, v3

    if-eqz v12, :cond_1

    const-string v3, "AndroidManifest.xml"

    invoke-virtual {v9, v12, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v13, v3

    :try_start_1
    new-instance v3, Landroid/content/res/Resources;

    iget-object v2, v8, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {v3, v9, v2, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    new-array v0, v0, [Ljava/lang/String;

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

    if-eqz v1, :cond_0

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    nop

    return-void

    :cond_0
    :try_start_2
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    iget v4, v8, Landroid/content/pm/PackageParser;->mParseError:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " (at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :catchall_0
    move-exception v0

    move-object v10, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v10, v1

    goto :goto_2

    :catchall_1
    move-exception v0

    :goto_0
    move-object v2, v13

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_1
    move-object v2, v13

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_2
    move-object v2, v13

    goto :goto_4

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

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

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

    :catch_5
    move-exception v0

    :goto_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .locals 24
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

    move-object/from16 v11, p6

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {v13, v12, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v10, 0x1

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v9, 0x4

    if-eqz v1, :cond_0

    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v2, v1, p5

    or-int/2addr v2, v9

    aput v2, v1, p5

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v7, -0x6c

    const/4 v5, 0x0

    if-eqz v8, :cond_2

    invoke-static {v8}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid class loader name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v11, v5

    iput v7, v15, Landroid/content/pm/PackageParser;->mParseError:I

    return v5

    :cond_2
    :goto_0
    iget-object v1, v14, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object v8, v1, p5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    move-object/from16 v16, v0

    :goto_1
    move v4, v1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v3, v0

    if-eq v0, v10, :cond_19

    const/4 v0, 0x3

    if-ne v3, v0, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    if-le v1, v4, :cond_3

    goto :goto_2

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

    :cond_4
    :goto_2
    if-eq v3, v0, :cond_18

    if-ne v3, v9, :cond_5

    nop

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

    :cond_5
    const/16 v17, 0x0

    new-instance v6, Landroid/content/pm/PackageParser$CachedComponentArgs;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/content/pm/PackageParser$CachedComponentArgs;-><init>(Landroid/content/pm/PackageParser$1;)V

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v0, "activity"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v18, 0x0

    iget-boolean v1, v14, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move-object v0, v15

    move/from16 v19, v1

    move-object v1, v14

    move-object/from16 v20, v2

    move-object v2, v13

    move/from16 v21, v3

    move-object v3, v12

    move/from16 v22, v4

    move/from16 v4, p4

    move v10, v5

    move-object v5, v11

    move v10, v7

    move/from16 v7, v18

    move-object/from16 v18, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v0

    if-nez v0, :cond_6

    iput v10, v15, Landroid/content/pm/PackageParser;->mParseError:I

    const/4 v1, 0x0

    return v1

    :cond_6
    const/4 v1, 0x0

    iget-object v2, v14, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    nop

    move-object v3, v0

    move v5, v10

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    move-object/from16 v2, v20

    goto/16 :goto_6

    :cond_7
    move-object/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move v1, v5

    move v10, v7

    move-object/from16 v18, v8

    const-string/jumbo v0, "receiver"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

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

    if-nez v3, :cond_8

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v1

    :cond_8
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    nop

    :goto_3
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    goto/16 :goto_6

    :cond_9
    move v5, v10

    move-object v4, v14

    move-object v0, v15

    const-string/jumbo v3, "service"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v7, v0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Service;

    move-result-object v3

    if-nez v3, :cond_a

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v1

    :cond_a
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    goto :goto_3

    :cond_b
    const-string/jumbo v3, "provider"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v7, v0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v3

    if-nez v3, :cond_c

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v1

    :cond_c
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    goto :goto_3

    :cond_d
    const-string v3, "activity-alias"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v7, v0

    move-object v8, v4

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p6

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;Landroid/content/pm/PackageParser$CachedComponentArgs;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v3

    if-nez v3, :cond_e

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v1

    :cond_e
    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_3

    :cond_f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "meta-data"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    invoke-direct {v0, v7, v8, v3, v9}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v4, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v3, :cond_15

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    return v1

    :cond_10
    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p6

    const-string/jumbo v3, "uses-static-library"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-direct {v0, v4, v7, v8, v9}, Landroid/content/pm/PackageParser;->parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    return v1

    :cond_11
    const-string/jumbo v3, "uses-library"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    invoke-virtual {v7, v8, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v3, v11, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    if-eqz v12, :cond_12

    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_4

    :cond_12
    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    invoke-static {v11, v10}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v11

    iput-object v11, v4, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    :cond_13
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    nop

    move-object/from16 v16, v3

    goto :goto_5

    :cond_14
    const-string/jumbo v3, "uses-package"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_15
    :goto_5
    move-object/from16 v3, v17

    :goto_6
    if-eqz v3, :cond_16

    iget-object v10, v3, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    if-nez v10, :cond_16

    iget-object v10, v4, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    aget-object v10, v10, p5

    iput-object v10, v3, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    :cond_16
    goto :goto_7

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

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_7

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

    :cond_19
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v18, v8

    move-object v9, v11

    move-object v8, v12

    move-object v7, v13

    move-object v4, v14

    move-object v0, v15

    :goto_8
    const/4 v1, 0x1

    return v1
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5

    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    sget-object v1, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Landroid/content/pm/FeatureInfo;->version:I

    iget-object v3, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/2addr v2, v4

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    iget v6, v5, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-gt v6, v7, :cond_0

    iget v3, v5, Landroid/util/TypedValue;->data:I

    :cond_0
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    if-nez v2, :cond_1

    return v4

    :cond_1
    if-eqz v3, :cond_2

    sget v7, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-ge v3, v7, :cond_2

    return v4

    :cond_2
    if-eqz v6, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v7, v6}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    return v4

    :cond_3
    if-eqz v1, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    invoke-interface {v7, v1}, Landroid/content/pm/PackageParser$Callback;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    return v4

    :cond_4
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

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

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v4
.end method

.method private parseUsesStaticLibrary(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestUsesStaticLibrary:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v6, -0x6c

    if-eqz v2, :cond_4

    if-ltz v4, :cond_4

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Depending on multiple versions of static library "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p4, v1

    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1b

    if-lt v7, v8, :cond_2

    invoke-direct {p0, p2, p3, p4}, Landroid/content/pm/PackageParser;->parseAdditionalCertificates(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    return v1

    :cond_2
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_3
    array-length v7, v6

    add-int/2addr v7, v3

    new-array v7, v7, [Ljava/lang/String;

    aput-object v5, v7, v1

    array-length v8, v6

    invoke-static {v6, v1, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibraries:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    int-to-long v8, v4

    invoke-static {v1, v8, v9, v3}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v1

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesVersions:[J

    const-class v1, [Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    invoke-static {v1, v8, v7, v3}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    iput-object v1, p1, Landroid/content/pm/PackageParser$Package;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return v3

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

    iput v6, p0, Landroid/content/pm/PackageParser;->mParseError:I

    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return v1
.end method

.method private static parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p0}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v4

    const v5, 0x1010003

    if-eq v4, v5, :cond_1

    const v5, 0x10103a6

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v3}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v1}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse verifier public key for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_4
    new-instance v3, Landroid/content/pm/VerifierInfo;

    invoke-direct {v3, v0, v4}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v3

    :cond_5
    :goto_2
    const-string v4, "PackageParser"

    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private setActivityResizeMode(Landroid/content/pm/ActivityInfo;Landroid/content/res/TypedArray;Landroid/content/pm/PackageParser$Package;)V
    .locals 5

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

    :goto_0
    const/16 v3, 0x28

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2

    iput v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x7

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    :goto_1
    return-void

    :cond_6
    :goto_2
    iget-object v4, p3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v1, 0x2

    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto :goto_4

    :cond_8
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    :goto_4
    return-void
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0

    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void
.end method

.method private setMaxAspectRatio(Landroid/content/pm/PackageParser$Package;)V
    .locals 5

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    sget v0, Landroid/content/pm/PackageParser;->DEFAULT_PRE_O_MAX_ASPECT_RATIO:F

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

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

    :cond_1
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v2, "android.max_aspect"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    const-string v2, "android.max_aspect"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

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

    invoke-static {v2}, Landroid/content/pm/PackageParser$Activity;->access$300(Landroid/content/pm/PackageParser$Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v2, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    iget-object v3, v2, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    const-string v4, "android.max_aspect"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    invoke-static {v2, v3}, Landroid/content/pm/PackageParser$Activity;->access$200(Landroid/content/pm/PackageParser$Activity;F)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static toCacheEntryStatic(Landroid/content/pm/PackageParser$Package;)[B
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;

    invoke-direct {v1, v0}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;-><init>(Landroid/os/Parcel;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageParser$Package;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/content/pm/PackageParserCacheHelper$WriteHelper;->finishAndUninstall()V

    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v2
.end method

.method public static toSigningKeys([Landroid/content/pm/Signature;)Landroid/util/ArraySet;
    .locals 3
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

    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 4

    sget-boolean v0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_0
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    :cond_2
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x40000001    # -1.9999999f

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_1
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_2

    :cond_3
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :goto_2
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_3

    :cond_4
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :goto_3
    iget-boolean v0, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_4

    :cond_5
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    :goto_4
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v0, v1, :cond_6

    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_6

    :cond_6
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_8

    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_6

    :cond_8
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    :cond_9
    iput-boolean v3, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :cond_a
    :goto_6
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    iget v0, p2, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    :cond_b
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    :cond_c
    invoke-static {p2}, Landroid/content/pm/SELinuxUtil;->assignSeinfoUser(Landroid/content/pm/PackageUserState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    iget-object v0, p2, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    return-void
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x61

    if-lt v4, v5, :cond_0

    const/16 v5, 0x7a

    if-le v4, v5, :cond_1

    :cond_0
    const/16 v5, 0x41

    if-lt v4, v5, :cond_2

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-nez v2, :cond_4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3

    const/16 v5, 0x39

    if-le v4, v5, :cond_5

    :cond_3
    const/16 v5, 0x5f

    if-ne v4, v5, :cond_4

    goto :goto_1

    :cond_4
    const/16 v5, 0x2e

    if-ne v4, v5, :cond_6

    const/4 v1, 0x1

    const/4 v2, 0x1

    nop

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

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

    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "Invalid filename"

    return-object v3

    :cond_8
    if-nez v1, :cond_a

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    const-string/jumbo v3, "must have at least one \'.\' separator"

    goto :goto_3

    :cond_a
    :goto_2
    const/4 v3, 0x0

    :goto_3
    return-object v3
.end method


# virtual methods
.method protected fromCacheEntry([B)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Landroid/content/pm/PackageParser;->fromCacheEntryStatic([B)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v1, :cond_0

    goto :goto_0

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

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/pm/split/DefaultSplitAssetLoader;

    invoke-direct {v1, v0, p2}, Landroid/content/pm/split/DefaultSplitAssetLoader;-><init>(Landroid/content/pm/PackageParser$PackageLite;I)V

    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/split/SplitAssetLoader;->getBaseAssetManager()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    iget-boolean v3, v0, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

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

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public parsePackage(Ljava/io/File;IZ)Landroid/content/pm/PackageParser$Package;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->getCachedResult(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-boolean v1, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move-wide v4, v2

    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    :goto_2
    sget-boolean v1, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    nop

    :cond_4
    move-wide v1, v2

    invoke-direct {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->cacheResult(Ljava/io/File;ILandroid/content/pm/PackageParser$Package;)V

    sget-boolean v3, Landroid/content/pm/PackageParser;->LOG_PARSE_TIMINGS:Z

    if-eqz v3, :cond_5

    sub-long v4, v1, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v1, v6, v1

    add-long v6, v4, v1

    const-wide/16 v8, 0x64

    cmp-long v3, v6, v8

    if-lez v3, :cond_5

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

    :cond_5
    return-object v0
.end method

.method public setCacheDir(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCacheDir:Ljava/io/File;

    return-void
.end method

.method public setCallback(Landroid/content/pm/PackageParser$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mCallback:Landroid/content/pm/PackageParser$Callback;

    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    return-void
.end method

.method protected toCacheEntry(Landroid/content/pm/PackageParser$Package;)[B
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Landroid/content/pm/PackageParser;->toCacheEntryStatic(Landroid/content/pm/PackageParser$Package;)[B

    move-result-object v0

    return-object v0
.end method
