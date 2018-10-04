.class public Lcom/android/internal/app/ChooserActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;,
        Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;,
        Lcom/android/internal/app/ChooserActivity$ServiceResultInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;,
        Lcom/android/internal/app/ChooserActivity$RowViewHolder;,
        Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;,
        Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;,
        Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;,
        Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;,
        Lcom/android/internal/app/ChooserActivity$ChooserListController;
    }
.end annotation


# static fields
.field private static final CALLER_TARGET_SCORE_BOOST:F = 900.0f

.field private static final CHOOSER_TARGET_SERVICE_RESULT:I = 0x1

.field private static final CHOOSER_TARGET_SERVICE_WATCHDOG_TIMEOUT:I = 0x2

.field private static final DEBUG:Z = false

.field public static final EXTRA_PRIVATE_RETAIN_IN_ON_STOP:Ljava/lang/String; = "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

.field private static final PINNED_SHARED_PREFS_NAME:Ljava/lang/String; = "chooser_pin_settings"

.field private static final PINNED_TARGET_SCORE_BOOST:F = 1000.0f

.field private static final QUERY_TARGET_SERVICE_LIMIT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "ChooserActivity"

.field private static final TARGET_DETAILS_FRAGMENT_TAG:Ljava/lang/String; = "targetDetailsFragment"

.field private static final WATCHDOG_TIMEOUT_MILLIS:I = 0x7d0


# instance fields
.field private mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

.field private final mChooserHandler:Landroid/os/Handler;

.field private mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

.field private mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field private mChooserShownTime:J

.field private mChosenComponentSender:Landroid/content/IntentSender;

.field private mFilteredComponentNames:[Landroid/content/ComponentName;

.field protected mIsSuccessfullySelected:Z

.field private mPinnedSharedPrefs:Landroid/content/SharedPreferences;

.field private mReferrerFillInIntent:Landroid/content/Intent;

.field private mRefinementIntentSender:Landroid/content/IntentSender;

.field private mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

.field private mReplacementExtras:Landroid/os/Bundle;

.field private final mServiceConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    new-instance v0, Lcom/android/internal/app/ChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/app/ChooserActivity;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/ChooserActivity;)[Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    goto :goto_1

    :cond_1
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    move-object v1, p2

    goto :goto_0

    :cond_2
    nop

    :goto_1
    move-object v0, v1

    return-object v0
.end method

.method static getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "chooser_pin_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1
.end method

.method private modifyTargetIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x8080000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    return-void
.end method


# virtual methods
.method checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z
    .locals 5

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3, p2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public createAdapter(Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)",
            "Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;"
        }
    .end annotation

    new-instance v9, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->createListController()Lcom/android/internal/app/ResolverListController;

    move-result-object v8

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZLcom/android/internal/app/ResolverListController;)V

    return-object v0
.end method

.method protected createListController()Lcom/android/internal/app/ResolverListController;
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v7, Lcom/android/internal/app/ChooserActivity$ChooserListController;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getReferrerPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/app/ChooserActivity;->mLaunchedFromUid:I

    move-object v0, v7

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ChooserActivity$ChooserListController;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;I)V

    return-object v7
.end method

.method filterServiceTargets(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_5

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_4

    :cond_1
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-boolean v7, v6, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v7, :cond_3

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v5, v2

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v5

    const-string v6, "ChooserActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Target "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " returned by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " component not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move v5, v2

    :goto_3
    if-eqz v5, :cond_4

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    const v0, 0x109004b

    return v0
.end method

.method public getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    move-object v0, p2

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    return-object v0
.end method

.method public onActivityStarted(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v6

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ChooserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch supplied IntentSender to report the chosen component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22

    move-object/from16 v8, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    iput-boolean v11, v8, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    invoke-static/range {p0 .. p0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ChooserActivity;->setTheme(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    instance-of v0, v13, Landroid/content/Intent;

    const/4 v14, 0x0

    if-nez v0, :cond_0

    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target is not an intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    invoke-super {v8, v14}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move-object v0, v13

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-direct {v8, v0}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    :cond_1
    const-string v1, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v15

    const/4 v1, 0x1

    if-eqz v15, :cond_8

    if-nez v0, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v11

    :goto_0
    if-eqz v2, :cond_3

    array-length v3, v15

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_3
    array-length v3, v15

    :goto_1
    new-array v3, v3, [Landroid/content/Intent;

    move-object v4, v0

    move v0, v11

    :goto_2
    array-length v5, v15

    if-ge v0, v5, :cond_7

    aget-object v5, v15, v0

    instance-of v5, v5, Landroid/content/Intent;

    if-nez v5, :cond_4

    const-string v1, "ChooserActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EXTRA_ALTERNATE_INTENTS array entry #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not an Intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v15, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    invoke-super {v8, v14}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_4
    aget-object v5, v15, v0

    check-cast v5, Landroid/content/Intent;

    if-nez v0, :cond_5

    if-nez v4, :cond_5

    move-object v4, v5

    invoke-direct {v8, v4}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    add-int/lit8 v6, v0, -0x1

    goto :goto_3

    :cond_6
    move v6, v0

    :goto_3
    aput-object v5, v3, v6

    invoke-direct {v8, v5}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v8, v3}, Lcom/android/internal/app/ChooserActivity;->setAdditionalTargets([Landroid/content/Intent;)V

    move-object/from16 v16, v4

    goto :goto_5

    :cond_8
    move-object/from16 v16, v0

    :goto_5
    const-string v0, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/app/ChooserActivity;->mReplacementExtras:Landroid/os/Bundle;

    const-string v0, "android.intent.extra.TITLE"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v17

    const/4 v0, 0x0

    if-nez v17, :cond_9

    const v0, 0x1040105

    :cond_9
    move/from16 v18, v0

    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v12, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    array-length v3, v0

    new-array v2, v3, [Landroid/content/Intent;

    move v3, v11

    :goto_6
    array-length v4, v0

    if-ge v3, v4, :cond_b

    aget-object v4, v0, v3

    instance-of v4, v4, Landroid/content/Intent;

    if-nez v4, :cond_a

    const-string v1, "ChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initial intent #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not an Intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    invoke-super {v8, v14}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :cond_a
    aget-object v4, v0, v3

    check-cast v4, Landroid/content/Intent;

    invoke-direct {v8, v4}, Lcom/android/internal/app/ChooserActivity;->modifyTargetIntent(Landroid/content/Intent;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v19, v2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.extra.REFERRER"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getReferrer()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v8, Lcom/android/internal/app/ChooserActivity;->mReferrerFillInIntent:Landroid/content/Intent;

    const-string v2, "android.intent.extra.CHOSEN_COMPONENT_INTENT_SENDER"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, v8, Lcom/android/internal/app/ChooserActivity;->mChosenComponentSender:Landroid/content/IntentSender;

    const-string v2, "android.intent.extra.CHOOSER_REFINEMENT_INTENT_SENDER"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/IntentSender;

    iput-object v2, v8, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    invoke-virtual {v8, v1}, Lcom/android/internal/app/ChooserActivity;->setSafeForwardingMode(Z)V

    const-string v1, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v1, v0

    new-array v1, v1, [Landroid/content/ComponentName;

    move v2, v11

    :goto_7
    array-length v3, v0

    if-ge v2, v3, :cond_d

    aget-object v3, v0, v2

    instance-of v3, v3, Landroid/content/ComponentName;

    if-nez v3, :cond_c

    const-string v3, "ChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtered component #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not a ComponentName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_8

    :cond_c
    aget-object v3, v0, v2

    check-cast v3, Landroid/content/ComponentName;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    iput-object v1, v8, Lcom/android/internal/app/ChooserActivity;->mFilteredComponentNames:[Landroid/content/ComponentName;

    :cond_e
    const-string v1, "android.intent.extra.CHOOSER_TARGETS"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    if-eqz v7, :cond_11

    array-length v0, v7

    new-array v0, v0, [Landroid/service/chooser/ChooserTarget;

    move v1, v11

    :goto_9
    array-length v2, v7

    if-ge v1, v2, :cond_10

    aget-object v2, v7, v1

    instance-of v2, v2, Landroid/service/chooser/ChooserTarget;

    if-nez v2, :cond_f

    const-string v2, "ChooserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Chooser target #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " not a ChooserTarget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_a

    :cond_f
    aget-object v2, v7, v1

    check-cast v2, Landroid/service/chooser/ChooserTarget;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_10
    :goto_a
    iput-object v0, v8, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    :cond_11
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v8, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    const-string v0, "com.android.internal.app.ChooserActivity.EXTRA_PRIVATE_RETAIN_IN_ON_STOP"

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ChooserActivity;->setRetainInOnStop(Z)V

    const-string v0, "IS_SHOW_PARALLEL_APP"

    invoke-virtual {v12, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/internal/app/ChooserActivity;->setParallelAppSupport(Z)V

    const/4 v6, 0x0

    const/16 v20, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v21, v7

    move/from16 v7, v20

    invoke-super/range {v0 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;I[Landroid/content/Intent;Ljava/util/List;Z)V

    const/16 v0, 0xd6

    invoke-static {v8, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    iget-wide v0, v8, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    sub-long/2addr v0, v9

    const-string/jumbo v2, "system_cost_for_smart_sharing"

    long-to-int v3, v0

    invoke-static {v14, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v2, v11}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x10303c6
        0x10303c7
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->unbindRemainingServices()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPrepareAdapterView(Landroid/widget/AbsListView;Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V
    .locals 4

    instance-of v0, p1, Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v2, p2

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iput-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    array-length v2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity;->mCallerChooserTargets:[Landroid/service/chooser/ChooserTarget;

    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V

    :cond_1
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-direct {v1, p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    new-instance v2, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/app/ChooserActivity$OffsetDataSetObserver;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/widget/AbsListView;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mChooserRowAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    :cond_2
    return-void
.end method

.method onRefinementCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    return-void
.end method

.method onRefinementResult(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "ChooserActivity"

    const-string v1, "Refinement result intent did not match any known targets; canceling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity;->checkTargetSourceIntent(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ChooserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRefinementResult: Selected target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cannot match refined source intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v1

    invoke-super {p0, v1, v0}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->finish()V

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->onRefinementCanceled()V

    return-void
.end method

.method public onSetupVoiceInteraction()V
    .locals 0

    return-void
.end method

.method protected onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
    .locals 9

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.extra.INTENT"

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    aput-object v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "android.intent.extra.ALTERNATE_INTENTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;->destroy()V

    :cond_2
    new-instance v1, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    const-string v1, "android.intent.extra.RESULT_RECEIVER"

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementResultReceiver:Lcom/android/internal/app/ChooserActivity$RefinementResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mRefinementIntentSender:Landroid/content/IntentSender;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    return v8

    :catch_0
    move-exception v1

    const-string v2, "ChooserActivity"

    const-string v3, "Refinement IntentSender failed to send"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity;->updateModelAndChooserCounts(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z

    move-result v0

    return v0
.end method

.method queryTargetServices(Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
    .locals 14

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfoCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p1, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayResolveInfo(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "android.service.chooser.chooser_target_service"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/android/internal/app/ChooserActivity;->convertServiceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x5

    if-eqz v7, :cond_3

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {v9, v10, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.service.chooser.ChooserTargetService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v0, v9, v11}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v11

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v12, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    const-string v8, "ChooserActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ChooserTargetService "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " does not require permission "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " - this service will not be queried for ChooserTargets. add android:permission=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "android.permission.BIND_CHOOSER_TARGET_SERVICE"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\" to the <service> tag for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in the manifest."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_2
    nop

    new-instance v11, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-direct {v11, p0, v4}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    nop

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {p0, v10, v11, v8, v12}, Lcom/android/internal/app/ChooserActivity;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    const-string v11, "ChooserActivity"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Could not look up service "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "; component name not found"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    :goto_2
    if-lt v1, v8, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    :goto_4
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    :goto_5
    return-void
.end method

.method public shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.AUTO_LAUNCH_SINGLE_CHOICE"

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity;->shouldAutoLaunchSingleChoice(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public shouldGetActivityMetadata()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showTargetDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mPinnedSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v2, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Z)V

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "targetDetailsFragment"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public startSelected(IZZ)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserShownTime:J

    sub-long/2addr v0, v2

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ResolverActivity;->startSelected(IZZ)V

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move v3, p1

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getPositionTargetType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, 0xd9

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    goto :goto_0

    :pswitch_1
    const/16 v2, 0xd8

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity;->mChooserListAdapter:Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_0

    :pswitch_2
    const/16 v2, 0xd7

    nop

    :goto_0
    if-eqz v2, :cond_0

    invoke-static {p0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "user_selection_cost_for_smart_sharing"

    long-to-int v5, v0

    const/4 v6, 0x0

    invoke-static {v6, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v4, "app_position_for_smart_sharing"

    invoke-static {v6, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method unbindRemainingServices()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method updateModelAndChooserCounts(Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-interface {p1}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateModel(Landroid/content/ComponentName;)V

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity;->mAdapter:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity;->getUserId()I

    move-result v4

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->updateChooserCounts(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity;->mIsSuccessfullySelected:Z

    return-void
.end method
