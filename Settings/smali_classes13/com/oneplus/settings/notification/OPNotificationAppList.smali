.class public Lcom/oneplus/settings/notification/OPNotificationAppList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNotificationAppList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;,
        Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    }
.end annotation


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

.field private static final DEBUG:Z = true

.field private static final EXTRA_HAS_SETTINGS_INTENT:Ljava/lang/String; = "has_settings_intent"

.field private static final EXTRA_SETTINGS_INTENT:Ljava/lang/String; = "settings_intent"

.field private static final KEY_ALLOW_LED_APPS:Ljava/lang/String; = "op_notification_allow_led"

.field private static final KEY_NOT_ALLOW_LED_APPS:Ljava/lang/String; = "op_notification_not_allow_led"

.field private static PROGRESS_MIN_SHOW_TIME:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "OPNotificationAppList"

.field private static WILL_SHOW_PROGRESS_TIME:J

.field private static final mRowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private emptyView:Landroid/view/View;

.field private mAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

.field private mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

.field private final mCollectAppsRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mHandler1:Landroid/os/Handler;

.field private mHasShowProgress:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListViewState:Landroid/os/Parcelable;

.field private mNotAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mRefreshAppsListRunnable:Ljava/lang/Runnable;

.field private mRoot:Landroid/support/v7/preference/PreferenceScreen;

.field private final mRows:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllowLEDApps:Z

.field private mShowNotAllowLEDApps:Z

.field private mShowPromptRunnable:Ljava/lang/Runnable;

.field private mShowPromptTime:J

.field private final mSortedRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemSignature:[Landroid/content/pm/Signature;

.field private mUM:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->WILL_SHOW_PROGRESS_TIME:J

    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->PROGRESS_MIN_SHOW_TIME:J

    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$3;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$3;-><init>()V

    sput-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowAllowLEDApps:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowNotAllowLEDApps:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler1:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$4;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$6;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$6;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/settings/notification/OPNotificationAppList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHasShowProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mBackend:Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRowComparator:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/notification/OPNotificationAppList;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowPromptTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppsList()V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->refreshDisplayedItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/settings/notification/OPNotificationAppList;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRefreshAppsListRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/notification/OPNotificationAppList;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRows:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "OPNotificationAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " preference activities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, " ;_;"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    if-nez v4, :cond_1

    const-string v5, "OPNotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") for unknown package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v5, v4, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    const-string v5, "OPNotificationAppList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/content/Intent;

    sget-object v6, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v6, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v4, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->settingsIntent:Landroid/content/Intent;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static collectConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->applyConfigActivities(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    return-void
.end method

.method public static loadAppRow(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;)Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;
    .locals 5

    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    invoke-direct {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OPNotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getNotificationsBanned(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->banned:Z

    iget-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getHighPriority(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->priority:Z

    iget-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v2, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getSensitive(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->sensitive:Z

    iget-object v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList$Backend;->getLedDisabled(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->ledDisabled:Z

    return-object v0
.end method

.method private loadAppsList()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mCollectAppsRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static queryNotificationConfigActivities(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const-string v0, "OPNotificationAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/settings/notification/OPNotificationAppList;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private refreshDisplayedItems(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->resetUI()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;

    move v2, v0

    new-instance v3, Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v4, "com.oneplus.deskclock"

    iget-object v5, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.android.incallui"

    iget-object v5, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.google.android.calendar"

    iget-object v5, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.oneplus.calendar"

    iget-object v5, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.android.dialer"

    iget-object v5, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/oneplus/settings/notification/OPNotificationAppList$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/oneplus/settings/notification/OPNotificationAppList$5;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;I)V

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-boolean v4, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->ledDisabled:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iput-boolean v5, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowNotAllowLEDApps:Z

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_1
    iput-boolean v5, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowAllowLEDApps:Z

    iget-object v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    iget-boolean v4, v1, Lcom/oneplus/settings/notification/OPNotificationAppList$AppRow;->ledDisabled:Z

    xor-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->removeCatagoryIfNoneApp()V

    const-string v0, "OPNotificationAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mSortedRows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " displayed items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeCatagoryIfNoneApp()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowNotAllowLEDApps:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowAllowLEDApps:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    return-void
.end method

.method private resetUI()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowNotAllowLEDApps:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowAllowLEDApps:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160073

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mUM:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mPM:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mRoot:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "op_notification_allow_led"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    const-string v0, "op_notification_not_allow_led"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mNotAllowLEDApps:Landroid/support/v7/preference/PreferenceCategory;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method protected final onPostExecute()V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHasShowProgress:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowPromptTime:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/oneplus/settings/notification/OPNotificationAppList;->PROGRESS_MIN_SHOW_TIME:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler1:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/notification/OPNotificationAppList$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$2;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppsList()V

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->loadAppsList()V

    :goto_1
    return-void
.end method

.method protected final onPreExecute()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHasShowProgress:Z

    new-instance v0, Lcom/oneplus/settings/notification/OPNotificationAppList$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/notification/OPNotificationAppList$1;-><init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    iput-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowPromptRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mHandler1:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->mShowPromptRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/oneplus/settings/notification/OPNotificationAppList;->WILL_SHOW_PROGRESS_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d00f4

    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList;->emptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->onPreExecute()V

    invoke-direct {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->resetUI()V

    invoke-virtual {p0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->onPostExecute()V

    return-void
.end method
