.class public Lcom/android/internal/accessibility/AccessibilityShortcutController;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;
    }
.end annotation


# static fields
.field public static final COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "AccessibilityShortcutController"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static sFrameworkShortcutFeaturesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mEnabledOnLockScreen:Z

.field public mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

.field private mIsShortcutEnabled:Z

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.accessibility"

    const-string v2, "ColorInversion"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.accessibility"

    const-string v2, "Daltonizer"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-direct {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_on_lock_screen"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_dialog_shown"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/accessibility/AccessibilityShortcutController;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    return v0
.end method

.method private createShortcutWarningDialog(I)Landroid/app/AlertDialog;
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutFeatureDescription(Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v4, 0x1040044

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-virtual {v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getSystemUiContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x1040045

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104031b

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x10401ce

    new-instance v4, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$2NcDVJHkpsPbwr45v1_NfIM8row;

    invoke-direct {v4, p0, p1}, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$2NcDVJHkpsPbwr45v1_NfIM8row;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$T96D356-n5VObNOonEIYV8s83Fc;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/accessibility/-$$Lambda$AccessibilityShortcutController$T96D356-n5VObNOonEIYV8s83Fc;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public static getFrameworkShortcutFeaturesMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const-string v3, "accessibility_display_inversion_enabled"

    const-string v4, "1"

    const-string v5, "0"

    const v6, 0x104010c

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const-string v3, "accessibility_display_daltonizer_enabled"

    const-string v4, "1"

    const-string v5, "0"

    const v6, 0x104010b

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    return-object v0
.end method

.method private getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    nop

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    return-object v2
.end method

.method private getShortcutFeatureDescription(Z)Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    nop

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz p1, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    const-string v7, "%s\n%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_4
    :goto_0
    return-object v5
.end method

.method public static getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v1, 0x1040139

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private hasFeatureLeanback()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static synthetic lambda$createShortcutWarningDialog$0(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    const-string v2, ""

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public static synthetic lambda$createShortcutWarningDialog$1(Lcom/android/internal/accessibility/AccessibilityShortcutController;ILandroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public isAccessibilityShortcutAvailable(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSettingsChanged()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_shortcut_enabled"

    iget v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v5, "accessibility_shortcut_dialog_shown"

    iget v6, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-static {v2, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    const-string v6, "accessibility_shortcut_on_lock_screen"

    iget v7, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-static {v2, v6, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v1, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    return-void
.end method

.method public performAccessibilityShortcut()V
    .locals 13

    const-string v0, "AccessibilityShortcutController"

    const-string v1, "Accessibility shortcut activated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string v2, "accessibility_shortcut_dialog_shown"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->hasFeatureLeanback()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto :goto_0

    :cond_0
    const/16 v4, 0xa

    :goto_0
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v6, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    invoke-virtual {v5}, Landroid/media/Ringtone;->play()V

    :cond_1
    iget-object v6, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "vibrator"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v7

    const/4 v8, -0x1

    sget-object v9, Lcom/android/internal/accessibility/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    :cond_2
    const/4 v7, 0x1

    if-nez v2, :cond_4

    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->createShortcutWarningDialog(I)Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v3, :cond_3

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    const/16 v9, 0x7d9

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v3, v8}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v9, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    const-string v9, "accessibility_shortcut_dialog_shown"

    invoke-static {v0, v9, v7, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_4
    iget-object v8, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutFeatureDescription(Z)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    const-string v3, "AccessibilityShortcutController"

    const-string v7, "Accessibility shortcut set to invalid service"

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v9

    if-eqz v9, :cond_8

    iget-object v10, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v11

    if-eqz v11, :cond_7

    const v11, 0x1040042

    goto :goto_1

    :cond_7
    const v11, 0x1040043

    :goto_1
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v8, v11, v3

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v11, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v12, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12, v3, v7}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->makeToastFromText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_8
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    :goto_2
    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->onSettingsChanged()V

    return-void
.end method
