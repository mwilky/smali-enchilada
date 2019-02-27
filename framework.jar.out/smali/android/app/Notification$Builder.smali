.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final LIGHTNESS_TEXT_DIFFERENCE_DARK:I = -0xa

.field private static final LIGHTNESS_TEXT_DIFFERENCE_LIGHT:I = 0x14

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z


# instance fields
.field private mActionIntentOnStatusBar:Landroid/content/Intent;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundColor:I

.field private mBackgroundColorOnStatusBar:I

.field private mCachedAmbientColor:I

.field private mCachedAmbientColorIsFor:I

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mChronometerBase:J

.field private mChronometerState:I

.field private mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mContext:Landroid/content/Context;

.field private mForegroundColor:I

.field private mInNightMode:Z

.field private mIsLegacy:Z

.field private mIsLegacyInitialized:Z

.field private mN:Landroid/app/Notification;

.field private mNeutralColor:I

.field private mOriginalActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field mParams:Landroid/app/Notification$StandardTemplateParams;

.field private mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryTextColor:I

.field private mPriorityOnStatusBar:I

.field private mRebuildStyledRemoteViews:Z

.field private mSecondaryTextColor:I

.field private mShowChronometerOnStatusBar:Z

.field private mShowOnStatusBar:Z

.field private mStatusBarIcon:I

.field private mStyle:Landroid/app/Notification$Style;

.field private mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

.field private mTextColorsAreForBackground:I

.field private mTextOnStatusBar:I

.field private mTintActionButtons:Z

.field private mUserExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3322
    const-string/jumbo v0, "notifications.only_title"

    .line 3323
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    .line 3322
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3422
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3423
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toAdopt"    # Landroid/app/Notification;

    .line 3428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3340
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 3342
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 3343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 3350
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    .line 3351
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    .line 3352
    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    .line 3353
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    .line 3354
    iput v1, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    .line 3355
    iput v0, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    .line 3357
    iput v1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    .line 3358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    .line 3360
    iput-object v0, p0, Landroid/app/Notification$Builder;->mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

    .line 3367
    const/4 v2, 0x1

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    .line 3368
    iput v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 3372
    iput v2, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    .line 3373
    iput v2, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    .line 3377
    iput v2, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    .line 3383
    new-instance v3, Landroid/app/Notification$StandardTemplateParams;

    invoke-direct {v3, v0}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification$1;)V

    iput-object v3, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 3384
    iput v2, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 3385
    iput v2, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 3386
    iput v2, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 3387
    iput v2, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    .line 3388
    iput v2, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 3429
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 3430
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3431
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x11200c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    .line 3433
    const v3, 0x1120068

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3434
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 3435
    .local v3, "currentConfig":Landroid/content/res/Configuration;
    iget v4, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    iput-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 3439
    .end local v3    # "currentConfig":Landroid/content/res/Configuration;
    :cond_1
    if-nez p2, :cond_3

    .line 3440
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 3441
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_2

    .line 3442
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.showWhen"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3444
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->priority:I

    .line 3445
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->visibility:I

    goto/16 :goto_1

    .line 3447
    :cond_3
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 3448
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_4

    .line 3449
    iget-object v3, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3452
    :cond_4
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people.list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3453
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people.list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 3454
    .local v3, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    iget-object v4, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3457
    .end local v3    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    :cond_5
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_6

    .line 3458
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3461
    :cond_6
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    .line 3462
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 3465
    :cond_7
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.template"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3466
    .local v3, "templateClass":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3467
    nop

    .line 3468
    invoke-static {v3}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3469
    .local v4, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v4, :cond_8

    .line 3470
    const-string v1, "Notification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown style class: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3473
    :cond_8
    :try_start_0
    new-array v5, v1, [Ljava/lang/Class;

    .line 3474
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 3475
    .local v5, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 3476
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Style;

    .line 3477
    .local v1, "style":Landroid/app/Notification$Style;
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 3479
    if-eqz v1, :cond_9

    .line 3480
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3484
    .end local v1    # "style":Landroid/app/Notification$Style;
    .end local v5    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    :cond_9
    goto :goto_1

    .line 3482
    :catch_0
    move-exception v1

    .line 3483
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Notification"

    const-string v5, "Could not create Style"

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3489
    .end local v1    # "t":Ljava/lang/Throwable;
    .end local v3    # "templateClass":Ljava/lang/String;
    .end local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_a
    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 3412
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3413
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p2}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3414
    return-void
.end method

.method static synthetic access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/app/Notification$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Landroid/app/Notification$Builder;ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/Notification$TemplateBindResult;

    .line 3303
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 3303
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 3303
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Landroid/widget/RemoteViews;
    .param p2, "x2"    # I

    .line 3303
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    iget-object v0, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 3303
    iput-object p1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3702(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 3303
    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3900(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "x3"    # Landroid/app/Notification$TemplateBindResult;

    .line 3303
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Landroid/app/Notification$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/app/Notification$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->shouldTintActionButtons()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/app/Notification$Builder;IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/app/Notification$TemplateBindResult;

    .line 3303
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3303
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/app/Notification$Builder;ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/Notification$TemplateBindResult;

    .line 3303
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .line 3303
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "resId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 4580
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 4582
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 4584
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4585
    .local v1, "ex":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 4586
    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2, v3}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;ZLjava/lang/CharSequence;)V

    .line 4587
    invoke-direct {p0, v0, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIconAndReply(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 4588
    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    move-result v2

    .line 4589
    .local v2, "showProgress":Z
    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 4590
    const v3, 0x1020016

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4591
    iget-object v5, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4592
    iget-boolean v5, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v5, :cond_0

    .line 4593
    invoke-direct {p0, v0, v3}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 4595
    :cond_0
    if-eqz v2, :cond_1

    .line 4596
    const/4 v5, -0x2

    goto :goto_0

    .line 4597
    :cond_1
    const/4 v5, -0x1

    .line 4595
    :goto_0
    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewLayoutWidth(II)V

    .line 4599
    :cond_2
    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    .line 4600
    if-eqz v2, :cond_3

    const v3, 0x102045a

    goto :goto_1

    .line 4601
    :cond_3
    const v3, 0x102043e

    .line 4602
    .local v3, "textId":I
    :goto_1
    iget-object v5, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4603
    iget-boolean v5, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v5, :cond_4

    .line 4604
    invoke-direct {p0, v0, v3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4606
    :cond_4
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4609
    .end local v3    # "textId":I
    :cond_5
    if-nez v2, :cond_7

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v3}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    goto :goto_3

    :cond_7
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-virtual {p0, v0, v4}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    .line 4611
    return-object v0
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 4564
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 4574
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 4575
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 4574
    invoke-direct {p0, p1, v0, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 16
    .param p1, "layoutId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 5084
    invoke-direct/range {p0 .. p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 5086
    .local v2, "big":Landroid/widget/RemoteViews;
    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 5088
    const/4 v3, 0x0

    .line 5090
    .local v3, "validRemoteInput":Z
    iget-object v4, v0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5091
    .local v4, "N":I
    iget-object v5, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    iget-boolean v5, v1, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    .line 5092
    .local v5, "emphazisedMode":Z
    :goto_0
    const-string/jumbo v8, "setEmphasizedMode"

    const v9, 0x102018c

    invoke-virtual {v2, v9, v8, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5093
    const/16 v8, 0x8

    const v10, 0x102018d

    if-lez v4, :cond_3

    .line 5094
    invoke-virtual {v2, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5095
    invoke-virtual {v2, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5096
    const v10, 0x102033b

    invoke-virtual {v2, v10, v7}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 5097
    const/4 v10, 0x3

    if-le v4, v10, :cond_1

    const/4 v4, 0x3

    .line 5098
    :cond_1
    move v10, v3

    move v3, v7

    .line 5098
    .local v3, "i":I
    .local v10, "validRemoteInput":Z
    :goto_1
    if-ge v3, v4, :cond_4

    .line 5099
    iget-object v11, v0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Notification$Action;

    .line 5100
    .local v11, "action":Landroid/app/Notification$Action;
    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v12

    .line 5101
    .local v12, "actionHasValidInput":Z
    or-int/2addr v10, v12

    .line 5103
    iget-boolean v13, v1, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-direct {v0, v11, v5, v13}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;

    move-result-object v13

    .line 5105
    .local v13, "button":Landroid/widget/RemoteViews;
    if-eqz v12, :cond_2

    if-nez v5, :cond_2

    .line 5107
    const v14, 0x1020175

    const-string/jumbo v15, "setBackgroundResource"

    invoke-virtual {v13, v14, v15, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5109
    :cond_2
    invoke-virtual {v2, v9, v13}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 5098
    .end local v11    # "action":Landroid/app/Notification$Action;
    .end local v12    # "actionHasValidInput":Z
    .end local v13    # "button":Landroid/widget/RemoteViews;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5112
    .end local v10    # "validRemoteInput":Z
    .local v3, "validRemoteInput":Z
    :cond_3
    invoke-virtual {v2, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5115
    move v10, v3

    .line 5115
    .end local v3    # "validRemoteInput":Z
    .restart local v10    # "validRemoteInput":Z
    :cond_4
    iget-object v3, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v9, "android.remoteInputHistory"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 5116
    .local v3, "replyText":[Ljava/lang/CharSequence;
    iget-boolean v9, v1, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v9, :cond_7

    if-eqz v10, :cond_7

    if-eqz v3, :cond_7

    array-length v9, v3

    if-lez v9, :cond_7

    aget-object v9, v3, v7

    .line 5117
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    iget v9, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-lez v9, :cond_7

    .line 5119
    iget-object v9, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.remoteInputSpinner"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 5120
    .local v9, "showSpinner":Z
    const v11, 0x102033f

    invoke-virtual {v2, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5121
    const v11, 0x1020342

    invoke-virtual {v2, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5123
    aget-object v11, v3, v7

    .line 5124
    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 5123
    const v12, 0x1020341

    invoke-virtual {v2, v12, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5125
    invoke-direct {v0, v2, v12}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 5126
    nop

    .line 5127
    if-eqz v9, :cond_5

    .line 5126
    move v8, v7

    goto :goto_2

    .line 5127
    :cond_5
    nop

    .line 5126
    :goto_2
    const v11, 0x1020340

    invoke-virtual {v2, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5128
    nop

    .line 5131
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v8

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v8

    .line 5130
    :goto_3
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 5128
    invoke-virtual {v2, v11, v8}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 5133
    array-length v8, v3

    if-le v8, v6, :cond_7

    aget-object v8, v3, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget v8, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v8, v6, :cond_7

    .line 5135
    const v8, 0x1020343

    invoke-virtual {v2, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5136
    aget-object v6, v3, v6

    .line 5137
    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 5136
    invoke-virtual {v2, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5138
    invoke-direct {v0, v2, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 5140
    array-length v6, v3

    const/4 v8, 0x2

    if-le v6, v8, :cond_7

    aget-object v6, v3, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v6, v8, :cond_7

    .line 5142
    const v6, 0x1020344

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5144
    aget-object v7, v3, v8

    .line 5145
    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 5144
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5146
    invoke-direct {v0, v2, v6}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 5151
    .end local v9    # "showSpinner":Z
    :cond_7
    return-object v2
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I
    .param p2, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 5078
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private bindActivePermissions(Landroid/widget/RemoteViews;Z)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z

    .line 4911
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNeutralColor()I

    move-result v0

    .line 4912
    .local v0, "color":I
    :goto_0
    const v1, 0x10201eb

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4913
    const v1, 0x102030a

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4914
    const v1, 0x1020361

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4915
    return-void
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4918
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v0

    .line 4919
    .local v0, "color":I
    :goto_0
    const v1, 0x102023e

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4921
    const v1, 0x102033d

    const-string/jumbo v2, "setOriginalNotificationColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4923
    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;Z)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z

    .line 5022
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x10201af

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5023
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 5024
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    goto :goto_1

    .line 5026
    :cond_0
    nop

    .line 5027
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v0

    .line 5026
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 5029
    :goto_1
    return-void
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4926
    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    const v1, 0x102045d

    if-eqz v0, :cond_1

    .line 4927
    const v0, 0x1020461

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4928
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4929
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showChronometer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4930
    const v0, 0x10201fa

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4931
    const-string/jumbo v1, "setBase"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    .line 4932
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 4931
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 4933
    const-string/jumbo v1, "setStarted"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4934
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.chronometerCountDown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 4935
    .local v1, "countsDown":Z
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 4936
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4937
    .end local v1    # "countsDown":Z
    goto :goto_1

    .line 4938
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4939
    const-string/jumbo v0, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 4940
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    goto :goto_1

    .line 4945
    :cond_1
    const-string/jumbo v0, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->access$1800(Landroid/app/Notification;)J

    move-result-wide v2

    :goto_0
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 4947
    :goto_1
    return-void
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4950
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4951
    .local v0, "headerText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-boolean v1, v1, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 4952
    invoke-virtual {v1}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4953
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v1, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 4955
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4956
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.infoText"

    .line 4957
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4958
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4960
    :cond_1
    if-eqz v0, :cond_2

    .line 4962
    nop

    .line 4963
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4962
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x102028a

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4964
    invoke-direct {p0, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4965
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4966
    const v2, 0x102028b

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4967
    invoke-direct {p0, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4969
    :cond_2
    return-void
.end method

.method private bindHeaderTextSecondary(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "secondaryText"    # Ljava/lang/CharSequence;

    .line 4972
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4973
    nop

    .line 4974
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4973
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x102028c

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4975
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4976
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4977
    const v1, 0x102028d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4978
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4980
    :cond_0
    return-void
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;Z)Z
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "hideLargeIcon"    # Z

    .line 4840
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 4841
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4843
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4844
    .local v0, "showLargeIcon":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 4845
    const v2, 0x10203b7

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4846
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 4847
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 4849
    :cond_2
    return v0
.end method

.method private bindLargeIconAndReply(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 4790
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->hideLargeIcon:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;Z)Z

    move-result v0

    .line 4791
    .local v0, "largeIconShown":Z
    iget-boolean v3, p2, Landroid/app/Notification$StandardTemplateParams;->hideReplyIcon:Z

    if-nez v3, :cond_3

    iget-boolean v3, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    nop

    :cond_3
    :goto_2
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->bindReplyIcon(Landroid/widget/RemoteViews;Z)Z

    move-result v1

    .line 4792
    .local v1, "replyIconShown":Z
    const v3, 0x10203b8

    .line 4793
    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    nop

    .line 4792
    :cond_5
    :goto_3
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4794
    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->calculateMarginEnd(ZZ)I

    move-result v2

    .line 4795
    .local v2, "marginEnd":I
    const v3, 0x10202e3

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    .line 4796
    const v3, 0x102043e

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    .line 4797
    const v3, 0x102000d

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    .line 4798
    if-eqz p3, :cond_6

    .line 4799
    invoke-virtual {p3, v2}, Landroid/app/Notification$TemplateBindResult;->setIconMarginEnd(I)V

    .line 4801
    :cond_6
    return-void
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;ZLjava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z
    .param p3, "secondaryHeaderText"    # Ljava/lang/CharSequence;

    .line 4896
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Z)V

    .line 4897
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Z)V

    .line 4898
    if-nez p2, :cond_0

    .line 4900
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;)V

    .line 4901
    invoke-direct {p0, p1, p3}, Landroid/app/Notification$Builder;->bindHeaderTextSecondary(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 4902
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V

    .line 4903
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;)V

    .line 4905
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindActivePermissions(Landroid/widget/RemoteViews;Z)V

    .line 4906
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;)V

    .line 4907
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Z)Z

    .line 4908
    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4499
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4501
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 4502
    const v1, 0x1020392

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4503
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4504
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4505
    nop

    .line 4506
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4505
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4509
    :cond_0
    return-void
.end method

.method private bindReplyIcon(Landroid/widget/RemoteViews;Z)Z
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "hideReplyIcon"    # Z

    .line 4857
    xor-int/lit8 v0, p2, 0x1

    .line 4858
    .local v0, "actionVisible":Z
    const/4 v1, 0x0

    .line 4859
    .local v1, "action":Landroid/app/Notification$Action;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4860
    invoke-direct {p0}, Landroid/app/Notification$Builder;->findReplyAction()Landroid/app/Notification$Action;

    move-result-object v1

    .line 4861
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    .line 4863
    :cond_1
    const v3, 0x10203ad

    if-eqz v0, :cond_2

    .line 4864
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4865
    nop

    .line 4867
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNeutralColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4865
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4869
    iget-object v4, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4870
    invoke-static {v1}, Landroid/app/Notification$Action;->access$1700(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    goto :goto_1

    .line 4872
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 4874
    :goto_1
    nop

    .line 4875
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 4874
    :goto_2
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4876
    return v0
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;Z)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z

    .line 5032
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1900(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    .line 5033
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1902(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 5037
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v0, "com.oppo.market"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5038
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5039
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const-string v1, "android"

    const v2, 0x10804a4

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1902(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 5043
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1900(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 5044
    const-string/jumbo v0, "setImageLevel"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5045
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1900(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V

    .line 5046
    return-void
.end method

.method private calculateMarginEnd(ZZ)I
    .locals 5
    .param p1, "largeIconShown"    # Z
    .param p2, "replyIconShown"    # Z

    .line 4804
    const/4 v0, 0x0

    .line 4805
    .local v0, "marginEnd":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4807
    .local v1, "contentMargin":I
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4809
    .local v2, "iconSize":I
    if-eqz p2, :cond_0

    .line 4811
    add-int/2addr v0, v2

    .line 4813
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4817
    .local v3, "replyInset":I
    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v0, v4

    .line 4819
    .end local v3    # "replyInset":I
    :cond_0
    if-eqz p1, :cond_1

    .line 4821
    add-int/2addr v0, v2

    .line 4823
    if-eqz p2, :cond_1

    .line 4825
    add-int/2addr v0, v1

    .line 4828
    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    .line 4830
    :cond_2
    add-int/2addr v0, v1

    .line 4832
    :cond_3
    return v0
.end method

.method private createSummaryText()Ljava/lang/CharSequence;
    .locals 6

    .line 5415
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5416
    .local v0, "titleText":Ljava/lang/CharSequence;
    sget-boolean v1, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    if-eqz v1, :cond_0

    .line 5417
    return-object v0

    .line 5419
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5420
    .local v1, "summary":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_1

    .line 5421
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title.big"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5423
    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 5424
    .local v2, "bidi":Landroid/text/BidiFormatter;
    if-eqz v0, :cond_2

    .line 5425
    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5427
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5428
    .local v3, "contentText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 5429
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v5, 0x1040420

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5432
    :cond_3
    if-eqz v3, :cond_4

    .line 5433
    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5435
    :cond_4
    return-object v1
.end method

.method private ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;
    .locals 27
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "background"    # I
    .param p3, "outResultColor"    # [Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 5513
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_a

    .line 5514
    move-object v3, v1

    check-cast v3, Landroid/text/Spanned;

    .line 5515
    .local v3, "ss":Landroid/text/Spanned;
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 5516
    .local v4, "spans":[Ljava/lang/Object;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5517
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    array-length v7, v4

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_9

    aget-object v9, v4, v8

    .line 5518
    .local v9, "span":Ljava/lang/Object;
    move-object v10, v9

    .line 5519
    .local v10, "resultSpan":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 5520
    .local v11, "spanStart":I
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 5521
    .local v12, "spanEnd":I
    sub-int v13, v12, v11

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v6

    .line 5522
    .local v13, "fullLength":Z
    :goto_1
    instance-of v14, v10, Landroid/text/style/CharacterStyle;

    if-eqz v14, :cond_1

    .line 5523
    move-object v14, v9

    check-cast v14, Landroid/text/style/CharacterStyle;

    invoke-virtual {v14}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v10

    .line 5525
    :cond_1
    instance-of v14, v10, Landroid/text/style/TextAppearanceSpan;

    if-eqz v14, :cond_5

    .line 5526
    move-object v14, v10

    check-cast v14, Landroid/text/style/TextAppearanceSpan;

    .line 5527
    .local v14, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 5528
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_4

    .line 5529
    move-object v15, v4

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v4

    .line 5530
    .local v4, "colors":[I
    .local v15, "spans":[Ljava/lang/Object;
    move/from16 v16, v7

    array-length v7, v4

    new-array v7, v7, [I

    .line 5531
    .local v7, "newColors":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v18, v17

    .end local v17    # "i":I
    .local v18, "i":I
    array-length v1, v7

    move/from16 v19, v8

    move/from16 v8, v18

    if-ge v8, v1, :cond_2

    .line 5532
    .end local v18    # "i":I
    .local v8, "i":I
    aget v1, v4, v8

    move-object/from16 v20, v4

    iget-boolean v4, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .end local v4    # "colors":[I
    .local v20, "colors":[I
    invoke-static {v1, v2, v4}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v1

    aput v1, v7, v8

    .line 5531
    add-int/lit8 v17, v8, 0x1

    .end local v8    # "i":I
    .restart local v17    # "i":I
    move/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v1, p1

    goto :goto_2

    .line 5535
    .end local v17    # "i":I
    .end local v20    # "colors":[I
    .restart local v4    # "colors":[I
    :cond_2
    move-object/from16 v20, v4

    .end local v4    # "colors":[I
    .restart local v20    # "colors":[I
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v4

    invoke-virtual {v4}, [[I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-direct {v1, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 5537
    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v13, :cond_3

    .line 5538
    const/4 v4, 0x0

    aput-object v1, p3, v4

    .line 5540
    const/4 v1, 0x0

    .line 5542
    :cond_3
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    .line 5543
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v22

    .line 5544
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v23

    .line 5545
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v24

    .line 5547
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v26

    move-object/from16 v21, v4

    move-object/from16 v25, v1

    invoke-direct/range {v21 .. v26}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v10, v4

    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    .end local v7    # "newColors":[I
    .end local v14    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v20    # "colors":[I
    goto :goto_3

    .line 5549
    .end local v15    # "spans":[Ljava/lang/Object;
    .local v4, "spans":[Ljava/lang/Object;
    :cond_4
    move-object v15, v4

    move/from16 v16, v7

    move/from16 v19, v8

    .line 5563
    .end local v4    # "spans":[Ljava/lang/Object;
    .restart local v15    # "spans":[Ljava/lang/Object;
    :goto_3
    const/4 v7, 0x0

    goto :goto_5

    .line 5549
    .end local v15    # "spans":[Ljava/lang/Object;
    .restart local v4    # "spans":[Ljava/lang/Object;
    :cond_5
    move-object v15, v4

    move/from16 v16, v7

    move/from16 v19, v8

    .end local v4    # "spans":[Ljava/lang/Object;
    .restart local v15    # "spans":[Ljava/lang/Object;
    instance-of v1, v10, Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_7

    .line 5550
    move-object v1, v10

    check-cast v1, Landroid/text/style/ForegroundColorSpan;

    .line 5551
    .local v1, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v4

    .line 5552
    .local v4, "foregroundColor":I
    iget-boolean v6, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v4, v2, v6}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v4

    .line 5554
    if-eqz v13, :cond_6

    .line 5555
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, p3, v7

    .line 5556
    const/4 v6, 0x0

    .line 5560
    .end local v10    # "resultSpan":Ljava/lang/Object;
    .local v6, "resultSpan":Ljava/lang/Object;
    move-object v10, v6

    goto :goto_4

    .line 5558
    .end local v6    # "resultSpan":Ljava/lang/Object;
    .restart local v10    # "resultSpan":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x0

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v1, v6

    .line 5560
    .end local v4    # "foregroundColor":I
    .end local v10    # "resultSpan":Ljava/lang/Object;
    .local v1, "resultSpan":Ljava/lang/Object;
    move-object v10, v1

    .end local v1    # "resultSpan":Ljava/lang/Object;
    .restart local v10    # "resultSpan":Ljava/lang/Object;
    :goto_4
    goto :goto_5

    .line 5561
    :cond_7
    const/4 v7, 0x0

    move-object v10, v9

    .line 5563
    :goto_5
    if-eqz v10, :cond_8

    .line 5564
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v5, v10, v11, v12, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5517
    .end local v9    # "span":Ljava/lang/Object;
    .end local v10    # "resultSpan":Ljava/lang/Object;
    .end local v11    # "spanStart":I
    .end local v12    # "spanEnd":I
    .end local v13    # "fullLength":Z
    :cond_8
    add-int/lit8 v8, v19, 0x1

    move v6, v7

    move-object v4, v15

    move/from16 v7, v16

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 5567
    .end local v15    # "spans":[Ljava/lang/Object;
    .local v4, "spans":[Ljava/lang/Object;
    :cond_9
    move-object v15, v4

    .end local v4    # "spans":[Ljava/lang/Object;
    .restart local v15    # "spans":[Ljava/lang/Object;
    return-object v5

    .line 5569
    .end local v3    # "ss":Landroid/text/Spanned;
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v15    # "spans":[Ljava/lang/Object;
    :cond_a
    move-object/from16 v1, p1

    return-object v1
.end method

.method private ensureColors()V
    .locals 17

    .line 4656
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v1

    .line 4657
    .local v1, "backgroundColor":I
    iget v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    if-eq v2, v1, :cond_b

    .line 4660
    :cond_0
    iput v1, v0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 4661
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v2

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    if-eqz v2, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 4673
    :cond_1
    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v6

    .line 4674
    .local v6, "backLum":D
    iget v2, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v8

    .line 4675
    .local v8, "textLum":D
    iget v2, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v10

    .line 4679
    .local v10, "contrast":D
    cmpl-double v2, v6, v8

    if-lez v2, :cond_2

    const/high16 v2, -0x1000000

    .line 4680
    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    cmpg-double v2, v6, v8

    if-gtz v2, :cond_4

    const/4 v2, -0x1

    .line 4682
    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 4683
    .local v2, "backgroundLight":Z
    :goto_0
    cmpg-double v12, v10, v4

    const/16 v13, 0xa

    const/16 v14, -0x14

    if-gez v12, :cond_6

    .line 4684
    if-eqz v2, :cond_5

    .line 4685
    iget v12, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4690
    iget v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v3, v14}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto/16 :goto_5

    .line 4693
    :cond_5
    iget v12, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 4694
    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4699
    iget v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v3, v13}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto :goto_5

    .line 4703
    :cond_6
    iget v12, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    iput v12, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4704
    iget v12, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4705
    if-eqz v2, :cond_7

    const/16 v15, 0x14

    goto :goto_1

    .line 4706
    :cond_7
    const/16 v15, -0xa

    .line 4704
    :goto_1
    invoke-static {v12, v15}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v12

    iput v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4707
    iget v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v12, v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v15

    cmpg-double v12, v15, v4

    if-gez v12, :cond_b

    .line 4710
    if-eqz v2, :cond_8

    .line 4711
    iget v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    goto :goto_2

    .line 4717
    :cond_8
    iget v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4718
    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4724
    :goto_2
    iget v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4725
    if-eqz v2, :cond_9

    .line 4726
    nop

    .line 4724
    move v13, v14

    goto :goto_3

    .line 4727
    :cond_9
    nop

    .line 4724
    :goto_3
    invoke-static {v3, v13}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .end local v2    # "backgroundLight":Z
    .end local v6    # "backLum":D
    .end local v8    # "textLum":D
    .end local v10    # "contrast":D
    goto :goto_5

    .line 4662
    :cond_a
    :goto_4
    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolvePrimaryColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4664
    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveSecondaryColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4666
    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4667
    iget v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    invoke-static {v2, v1, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4669
    iget v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v2, v1, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4732
    :cond_b
    :goto_5
    return-void
.end method

.method private findReplyAction()Landroid/app/Notification$Action;
    .locals 5

    .line 4880
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4881
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    iget-object v1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4882
    iget-object v0, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    .line 4884
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4885
    .local v1, "numActions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4886
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 4887
    .local v3, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4888
    return-object v3

    .line 4885
    .end local v3    # "action":Landroid/app/Notification$Action;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4891
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;
    .locals 12
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "emphazisedMode"    # Z
    .param p3, "ambient"    # Z

    .line 5440
    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5441
    .local v0, "tombstone":Z
    :goto_0
    new-instance v3, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 5442
    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result v5

    goto :goto_1

    .line 5443
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v5

    goto :goto_1

    .line 5444
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v5

    :goto_1
    invoke-direct {v3, v4, v5}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 5445
    .local v3, "button":Landroid/widget/RemoteViews;
    const v4, 0x1020175

    if-nez v0, :cond_3

    .line 5446
    iget-object v5, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 5448
    :cond_3
    iget-object v5, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 5449
    invoke-static {p1}, Landroid/app/Notification$Action;->access$1700(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 5450
    invoke-static {p1}, Landroid/app/Notification$Action;->access$1700(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 5452
    :cond_4
    if-eqz p2, :cond_a

    .line 5454
    iget-object v5, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 5455
    .local v5, "title":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 5456
    .local v6, "outResultColor":[Landroid/content/res/ColorStateList;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveBackgroundColor()I

    move-result v7

    .line 5457
    .local v7, "background":I
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5458
    invoke-static {v5}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_2

    .line 5460
    :cond_5
    new-array v6, v1, [Landroid/content/res/ColorStateList;

    .line 5461
    invoke-direct {p0, v5, v7, v6}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5463
    :goto_2
    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5464
    invoke-direct {p0, v3, v4}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 5466
    if-eqz v6, :cond_6

    aget-object v8, v6, v2

    if-eqz v8, :cond_6

    move v8, v1

    goto :goto_3

    :cond_6
    move v8, v2

    .line 5467
    .local v8, "hasColorOverride":Z
    :goto_3
    if-eqz v8, :cond_7

    .line 5470
    aget-object v9, v6, v2

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    .line 5471
    iget-object v9, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/android/internal/util/NotificationColorUtil;->resolvePrimaryColor(Landroid/content/Context;I)I

    move-result v9

    .line 5473
    .local v9, "textColor":I
    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 5474
    nop

    .line 5475
    .local v9, "rippleColor":I
    goto :goto_4

    .line 5475
    .end local v9    # "rippleColor":I
    :cond_7
    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->color:I

    if-eqz v9, :cond_8

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v9

    if-nez v9, :cond_8

    iget-boolean v9, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v9, :cond_8

    .line 5476
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v9

    .line 5477
    .restart local v9    # "rippleColor":I
    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_4

    .line 5479
    .end local v9    # "rippleColor":I
    :cond_8
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v9

    .line 5482
    .restart local v9    # "rippleColor":I
    :goto_4
    const v10, 0xffffff

    and-int/2addr v10, v9

    const/high16 v11, 0x33000000

    or-int v9, v10, v11

    .line 5483
    const-string/jumbo v10, "setRippleColor"

    .line 5484
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 5483
    invoke-virtual {v3, v4, v10, v11}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 5485
    const-string/jumbo v10, "setButtonBackground"

    .line 5486
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 5485
    invoke-virtual {v3, v4, v10, v11}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 5487
    const-string/jumbo v10, "setHasStroke"

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    invoke-virtual {v3, v4, v10, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5488
    .end local v5    # "title":Ljava/lang/CharSequence;
    .end local v6    # "outResultColor":[Landroid/content/res/ColorStateList;
    .end local v7    # "background":I
    .end local v8    # "hasColorOverride":Z
    .end local v9    # "rippleColor":I
    goto :goto_7

    .line 5489
    :cond_a
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 5490
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5489
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5491
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p3, :cond_b

    .line 5492
    invoke-direct {p0, v3, v4}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    goto :goto_7

    .line 5493
    :cond_b
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v1, :cond_d

    .line 5494
    nop

    .line 5495
    if-eqz p3, :cond_c

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v1

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    .line 5494
    :goto_6
    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 5498
    :cond_d
    :goto_7
    return-object v3
.end method

.method private getActionLayoutResource()I
    .locals 1

    .line 5913
    const v0, 0x109008b

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    .line 5921
    const v0, 0x109008e

    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .locals 2

    .line 4314
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 4315
    .local v0, "saveExtras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4316
    return-object v0
.end method

.method private getBackgroundColor()I
    .locals 2

    .line 5925
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5926
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    :goto_0
    return v0

    .line 5928
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    .line 5889
    const v0, 0x1090094

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    .line 5893
    const v0, 0x1090095

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    .line 5897
    const v0, 0x1090097

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    .line 5901
    const v0, 0x1090098

    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/NotificationColorUtil;
    .locals 1

    .line 3492
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v0, :cond_0

    .line 3493
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 3495
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    return-object v0
.end method

.method private getEmphasizedActionLayoutResource()I
    .locals 1

    .line 5917
    const v0, 0x109008c

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    .line 5905
    const v0, 0x1090099

    return v0
.end method

.method private getMessagingLayoutResource()I
    .locals 1

    .line 5909
    const v0, 0x109009b

    return v0
.end method

.method private getNeutralColor()I
    .locals 1

    .line 5936
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5937
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v0

    return v0

    .line 5939
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveNeutralColor()I

    move-result v0

    return v0
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 5

    .line 4485
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4486
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 4487
    const/4 v1, 0x0

    return-object v1

    .line 4489
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4491
    .local v1, "size":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4492
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4493
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4494
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4495
    return-object v2
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 4469
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4471
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4480
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4481
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    .line 4480
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 4476
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "hasProgress"    # Z
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "ex"    # Landroid/os/Bundle;

    .line 4761
    const-string v0, "android.progressMax"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4762
    .local v0, "max":I
    const-string v2, "android.progress"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4763
    .local v2, "progress":I
    const-string v3, "android.progressIndeterminate"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 4764
    .local v3, "ind":Z
    const v4, 0x102000d

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    .line 4765
    :cond_0
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4766
    invoke-virtual {p2, v4, v0, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 4768
    iget-object v5, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v6, 0x10600f7

    .line 4769
    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 4768
    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 4772
    invoke-static {v1}, Landroid/content/res/ThemeController;->getOneplusAccentColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4773
    .local v1, "colorStateListOneplusAccent":Landroid/content/res/ColorStateList;
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 4774
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 4776
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->color:I

    if-eqz v5, :cond_1

    .line 4777
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 4778
    .local v5, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 4779
    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 4781
    .end local v5    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v4, 0x1

    return v4

    .line 4783
    .end local v1    # "colorStateListOneplusAccent":Landroid/content/res/ColorStateList;
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4784
    return v1
.end method

.method private hasForegroundColor()Z
    .locals 2

    .line 4627
    iget v0, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 5155
    iget-object v0, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    goto :goto_2

    .line 5160
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    .line 5161
    .local v0, "remoteInputs":[Landroid/app/RemoteInput;
    if-nez v0, :cond_1

    .line 5162
    return v1

    .line 5165
    :cond_1
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 5166
    .local v4, "r":Landroid/app/RemoteInput;
    invoke-virtual {v4}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 5167
    .local v5, "choices":[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    array-length v6, v5

    if-eqz v6, :cond_2

    goto :goto_1

    .line 5165
    .end local v4    # "r":Landroid/app/RemoteInput;
    .end local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5168
    .restart local v4    # "r":Landroid/app/RemoteInput;
    .restart local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 5171
    .end local v4    # "r":Landroid/app/RemoteInput;
    .end local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_4
    return v1

    .line 5157
    .end local v0    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_5
    :goto_2
    return v1
.end method

.method private hideLine1Text(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/RemoteViews;

    .line 5266
    if-eqz p1, :cond_0

    .line 5267
    const v0, 0x102045a

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5269
    :cond_0
    return-void
.end method

.method private isColorized()Z
    .locals 1

    .line 5956
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method private isLegacy()Z
    .locals 3

    .line 5577
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    if-nez v0, :cond_1

    .line 5578
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    .line 5580
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    .line 5582
    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    return v0
.end method

.method public static makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p0, "result"    # Landroid/widget/RemoteViews;

    .line 5277
    if-eqz p0, :cond_0

    .line 5278
    const v0, 0x102033d

    const-string/jumbo v1, "setExpanded"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5280
    :cond_0
    return-void
.end method

.method private makePublicView(Z)Landroid/widget/RemoteViews;
    .locals 14
    .param p1, "ambient"    # Z

    .line 5339
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_1

    .line 5340
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5341
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    :goto_0
    return-object v1

    .line 5343
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5344
    .local v0, "savedBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 5345
    .local v1, "style":Landroid/app/Notification$Style;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 5346
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v3}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 5347
    .local v3, "largeIcon":Landroid/graphics/drawable/Icon;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4, v2}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 5348
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 5349
    .local v4, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 5350
    iget-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 5351
    .local v2, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 5352
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 5353
    .local v5, "publicExtras":Landroid/os/Bundle;
    const-string v6, "android.showWhen"

    const-string v7, "android.showWhen"

    .line 5354
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 5353
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5355
    const-string v6, "android.showChronometer"

    const-string v7, "android.showChronometer"

    .line 5356
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 5355
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5357
    const-string v6, "android.chronometerCountDown"

    const-string v7, "android.chronometerCountDown"

    .line 5358
    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 5357
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5359
    const-string v6, "android.substName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5360
    .local v6, "appName":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 5361
    const-string v7, "android.substName"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5363
    :cond_2
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5365
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_3

    .line 5366
    const-string v9, "android.title"

    iget-object v10, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5369
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x50a0000

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v10, v11, v8, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 5366
    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5371
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v7

    .line 5371
    .local v7, "view":Landroid/widget/RemoteViews;
    goto :goto_1

    .line 5373
    .end local v7    # "view":Landroid/widget/RemoteViews;
    :cond_3
    invoke-virtual {p0, v7}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v7

    .line 5374
    .restart local v7    # "view":Landroid/widget/RemoteViews;
    const v9, 0x102033d

    const-string/jumbo v10, "setExpandOnlyOnButton"

    invoke-virtual {v7, v9, v10, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5376
    :goto_1
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5377
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v8, v3}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 5378
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v4, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 5379
    iput-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 5380
    iput-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 5381
    return-object v7
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;ZLandroid/content/Context;)Landroid/app/Notification;
    .locals 8
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "isLowRam"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 5836
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5840
    .local v0, "templateClass":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 5841
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5842
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5843
    return-object p0

    .line 5847
    :cond_0
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v1, v1, Landroid/app/Notification$BuilderRemoteViews;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.rebuild.contentViewActionCount"

    .line 5848
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5849
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v5

    if-ne v1, v5, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 5850
    .local v1, "stripContentView":Z
    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.rebuild.bigViewActionCount"

    .line 5851
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5852
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v5, v6, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    .line 5853
    .local v5, "stripBigContentView":Z
    :goto_1
    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v6, v6, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.rebuild.hudViewActionCount"

    .line 5854
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5855
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v4, v6, :cond_3

    move v2, v3

    nop

    .line 5858
    .local v2, "stripHeadsUpContentView":Z
    :cond_3
    if-nez p1, :cond_4

    if-nez v1, :cond_4

    if-nez v5, :cond_4

    if-nez v2, :cond_4

    .line 5860
    return-object p0

    .line 5863
    :cond_4
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v3

    .line 5864
    .local v3, "clone":Landroid/app/Notification;
    const/4 v4, 0x0

    if-eqz v1, :cond_5

    .line 5865
    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5866
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.rebuild.contentViewActionCount"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5868
    :cond_5
    if-eqz v5, :cond_6

    .line 5869
    iput-object v4, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5870
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.rebuild.bigViewActionCount"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5872
    :cond_6
    if-eqz v2, :cond_7

    .line 5873
    iput-object v4, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5874
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5876
    :cond_7
    if-eqz p1, :cond_8

    .line 5877
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070009

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 5879
    .local v4, "allowedServices":[Ljava/lang/String;
    array-length v6, v4

    if-nez v6, :cond_8

    .line 5880
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.tv.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5881
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.wearable.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5882
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.car.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5885
    .end local v4    # "allowedServices":[Ljava/lang/String;
    :cond_8
    return-object v3
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .line 5628
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5629
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5631
    const v0, 0x1020006

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5634
    :cond_0
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 5586
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "ambient"    # Z

    .line 5590
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->textColorsNeedInversion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5591
    .local v0, "isAlreadyLightText":Z
    :goto_1
    move v1, p2

    .line 5592
    .local v1, "wantLightText":Z
    if-eq v0, v1, :cond_2

    .line 5593
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 5595
    :cond_2
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V
    .locals 6
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "ambient"    # Z

    .line 5604
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 5606
    .local v0, "colorable":Z
    :goto_1
    if-eqz p3, :cond_2

    .line 5607
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v3

    .line 5607
    .local v3, "color":I
    :goto_2
    goto :goto_3

    .line 5608
    .end local v3    # "color":I
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5609
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v3

    goto :goto_2

    .line 5611
    :cond_3
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v3

    .line 5613
    .restart local v3    # "color":I
    :goto_3
    if-eqz v0, :cond_4

    .line 5614
    const v4, 0x1020006

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v4, v2, v3, v5}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5618
    :cond_4
    const v2, 0x102033d

    const-string/jumbo v4, "setOriginalIconColor"

    .line 5619
    if-eqz v0, :cond_5

    .line 5618
    move v1, v3

    goto :goto_4

    .line 5619
    :cond_5
    nop

    .line 5618
    :goto_4
    invoke-virtual {p2, v2, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5620
    return-void
.end method

.method private processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 4615
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4616
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 4618
    :cond_0
    return-object p1
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .line 5732
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 5735
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 5737
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5742
    .local v1, "builderContext":Landroid/content/Context;
    :goto_0
    goto :goto_1

    .line 5739
    .end local v1    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 5740
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApplicationInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    nop

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, p0

    goto :goto_0

    .line 5744
    :cond_0
    move-object v1, p0

    .line 5747
    .local v1, "builderContext":Landroid/content/Context;
    :goto_1
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-object v2
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4547
    const-string/jumbo v0, "setExpanded"

    const/4 v1, 0x0

    const v2, 0x102033d

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4548
    const/4 v0, 0x0

    const v2, 0x10201af

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4549
    const/16 v2, 0x8

    const v3, 0x10201fa

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4550
    const v3, 0x102028a

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4551
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4552
    const v3, 0x102028c

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4553
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4554
    const v3, 0x102028b

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4555
    const v3, 0x102028d

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4556
    const v3, 0x1020461

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4557
    const v3, 0x102045d

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4558
    const v3, 0x1020392

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 4559
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4560
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Z)Z

    .line 4561
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4531
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 4532
    const/16 v0, 0x8

    const v1, 0x10203b7

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4533
    const v1, 0x1020016

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4534
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4535
    const v1, 0x102043e

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4536
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4537
    const v1, 0x102045a

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4538
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4539
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "big"    # Landroid/widget/RemoteViews;

    .line 5059
    const v0, 0x102018c

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5060
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 5062
    const v0, 0x102033f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5063
    const/4 v0, 0x0

    const v2, 0x1020341

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5064
    const v2, 0x1020342

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5065
    const v2, 0x1020340

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5067
    const v2, 0x1020343

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5068
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5069
    const v2, 0x1020344

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5070
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5072
    const v0, 0x102033b

    const v1, 0x105012e

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 5074
    return-void
.end method

.method private resolveBackgroundColor()I
    .locals 3

    .line 5947
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v0

    .line 5948
    .local v0, "backgroundColor":I
    if-nez v0, :cond_0

    .line 5949
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v2, 0x10600f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 5952
    :cond_0
    return v0
.end method

.method private sanitizeColor()V
    .locals 3

    .line 5637
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    .line 5638
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 5640
    :cond_0
    return-void
.end method

.method private setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .line 4622
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4623
    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4624
    return-void
.end method

.method private setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .line 4651
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4652
    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4653
    return-void
.end method

.method private shouldTintActionButtons()Z
    .locals 1

    .line 5960
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    return v0
.end method

.method private showsTimeOrChronometer()Z
    .locals 1

    .line 5053
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

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

.method private textColorsNeedInversion()Z
    .locals 3

    .line 5964
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-class v0, Landroid/app/Notification$MediaStyle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5967
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 5968
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x17

    if-le v0, v2, :cond_1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 5965
    .end local v0    # "targetSdkVersion":I
    :cond_2
    :goto_0
    return v1
.end method

.method private updateBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4735
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    const v1, 0x1020426

    if-eqz v0, :cond_0

    .line 4736
    const-string/jumbo v0, "setBackgroundColor"

    .line 4737
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v2

    .line 4736
    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 4740
    :cond_0
    const-string/jumbo v0, "setBackgroundResource"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4743
    :goto_0
    return-void
.end method

.method private useExistingRemoteView()Z
    .locals 1

    .line 5207
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    if-nez v0, :cond_0

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


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4340
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4341
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 4360
    if-eqz p1, :cond_0

    .line 4361
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4363
    :cond_0
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 4274
    if-eqz p1, :cond_0

    .line 4275
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4277
    :cond_0
    return-object p0
.end method

.method public addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "person"    # Landroid/app/Person;

    .line 4216
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4217
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 4191
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 4192
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .line 5764
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5765
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5768
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/Notification;->access$1802(Landroid/app/Notification;J)J

    .line 5771
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 5773
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 5775
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 5776
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 5777
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 5778
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 5779
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 5781
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 5783
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    .line 5784
    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5785
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 5786
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5787
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.contentViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5788
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 5787
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5790
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    .line 5791
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5792
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 5793
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.bigViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5794
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 5793
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5797
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_4

    .line 5798
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5799
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 5800
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.hudViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5801
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 5800
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5806
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 5807
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 5810
    :cond_5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 5812
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .line 5821
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 5822
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 3

    .line 5694
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5695
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 5696
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5698
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5699
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people.list"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5701
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 5703
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.contains.customView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5708
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2002(Landroid/app/Notification;I)I

    .line 5709
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2102(Landroid/app/Notification;Z)Z

    .line 5710
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2202(Landroid/app/Notification;Z)Z

    .line 5711
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v1, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    invoke-static {v0, v1, v2}, Landroid/app/Notification;->access$2302(Landroid/app/Notification;J)J

    .line 5712
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2402(Landroid/app/Notification;I)I

    .line 5713
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2502(Landroid/app/Notification;I)I

    .line 5714
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mBackgroundColorOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2602(Landroid/app/Notification;I)I

    .line 5715
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2702(Landroid/app/Notification;I)I

    .line 5716
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2802(Landroid/app/Notification;Landroid/content/Intent;)Landroid/content/Intent;

    .line 5718
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2902(Landroid/app/Notification;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 5722
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 3

    .line 5215
    const/4 v0, 0x0

    .line 5216
    .local v0, "result":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5217
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 5218
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    .line 5219
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5220
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hideLine1Text(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 5221
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 5222
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5225
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 5226
    return-object v0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 5181
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createContentView(Z)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "increasedHeight"    # Z

    .line 5195
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5196
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v0

    .line 5197
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 5198
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5199
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    .line 5200
    return-object v0

    .line 5203
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 5317
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "increasedHeight"    # Z

    .line 5293
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5294
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object v0

    .line 5295
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5296
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5297
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    .line 5298
    return-object v0

    .line 5300
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 5301
    return-object v1

    .line 5306
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v2, 0x1

    .line 5307
    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 5308
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .line 4439
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 4440
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 4310
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "publicMode"    # Z

    .line 6008
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 6009
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->getHeadsUpStatusBarText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 6010
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6011
    return-object v0

    .line 6014
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5755
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4636
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4637
    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4646
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4647
    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    return v0
.end method

.method public getStyle()Landroid/app/Notification$Style;
    .locals 1

    .line 4405
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .locals 7

    .line 4986
    const/4 v0, 0x0

    .line 4987
    .local v0, "name":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4988
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.substName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4993
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4994
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.substName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4995
    .local v3, "subName":Ljava/lang/String;
    const-string v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 4997
    move-object v0, v3

    goto :goto_0

    .line 4999
    :cond_0
    const-string v4, "Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "warning: pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " attempting to substitute app name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' without holding perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5006
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5008
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5010
    const/4 v2, 0x0

    return-object v2

    .line 5014
    :cond_3
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_4

    if-eqz v0, :cond_4

    .line 5015
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50c0031

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5019
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public makeAmbientNotification()Landroid/widget/RemoteViews;
    .locals 3

    .line 5258
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 5260
    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->ambient(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 5258
    const v1, 0x1090093

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5262
    .local v0, "ambient":Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "useRegularSubtext"    # Z

    .line 5393
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    .line 5394
    .local v0, "color":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v2, 0x0

    iput v2, v1, Landroid/app/Notification;->color:I

    .line 5395
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.subText"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5396
    .local v1, "summary":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5397
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5398
    .local v3, "newSummary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5399
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.subText"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5403
    .end local v3    # "newSummary":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 5404
    .local v2, "header":Landroid/widget/RemoteViews;
    const v3, 0x102033d

    const-string/jumbo v4, "setAcceptAllTouches"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5405
    if-eqz v1, :cond_2

    .line 5406
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.subText"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5408
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.subText"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5410
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v0, v3, Landroid/app/Notification;->color:I

    .line 5411
    return-object v2
.end method

.method public makeNotificationHeader(Z)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "ambient"    # Z

    .line 5237
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 5238
    .local v0, "colorized":Ljava/lang/Boolean;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.colorized"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5239
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 5240
    if-eqz p1, :cond_0

    const v3, 0x1090091

    goto :goto_0

    .line 5241
    :cond_0
    const v3, 0x1090092

    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 5242
    .local v1, "header":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 5243
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;ZLjava/lang/CharSequence;)V

    .line 5244
    if-eqz v0, :cond_1

    .line 5245
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.colorized"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 5247
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.colorized"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5249
    :goto_1
    return-object v1
.end method

.method public makePublicAmbientNotification()Landroid/widget/RemoteViews;
    .locals 1

    .line 5335
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makePublicContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 5326
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method resolveAmbientColor()I
    .locals 2

    .line 5680
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5681
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v0

    .line 5683
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveAmbientColor(Landroid/content/Context;I)I

    move-result v0

    .line 5685
    .local v0, "contrasted":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    .line 5686
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v0
.end method

.method resolveContrastColor()I
    .locals 4

    .line 5643
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5644
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v0

    .line 5648
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x10600f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 5650
    .local v0, "background":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-nez v1, :cond_1

    .line 5651
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 5652
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .local v1, "color":I
    goto :goto_0

    .line 5654
    .end local v1    # "color":I
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    iget-boolean v3, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v1

    .line 5657
    .restart local v1    # "color":I
    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_2

    .line 5659
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    move-result v1

    .line 5661
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 5662
    iput v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v1
.end method

.method resolveNeutralColor()I
    .locals 3

    .line 5666
    iget v0, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5667
    iget v0, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    return v0

    .line 5669
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x10600f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 5671
    .local v0, "background":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    .line 5672
    iget v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    .line 5674
    iget v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    .line 5676
    :cond_1
    iget v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    return v1
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "actions"    # [Landroid/app/Notification$Action;

    .line 4374
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 4376
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 4377
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4375
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4380
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .line 4107
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4108
    return-object p0
.end method

.method public setBackgroundColorOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "color"    # I

    .line 6081
    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColorOnStatusBar:I

    .line 6082
    return-object p0
.end method

.method public setBadgeIconType(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .line 3523
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$702(Landroid/app/Notification;I)I

    .line 3524
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 4159
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 4160
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3545
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3546
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .line 3553
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3554
    return-object p0
.end method

.method public setChronometerBase(J)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "base"    # J

    .line 6039
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    .line 6040
    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "countDown"    # Z

    .line 3627
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3628
    return-object p0
.end method

.method public setChronometerState(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "state"    # I

    .line 6047
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6055
    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    goto :goto_0

    .line 6052
    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    .line 6053
    goto :goto_0

    .line 6049
    :pswitch_1
    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    .line 6050
    nop

    .line 6058
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "argb"    # I

    .line 4463
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 4464
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    .line 4465
    return-object p0
.end method

.method public setColorPalette(II)V
    .locals 1
    .param p1, "backgroundColor"    # I
    .param p2, "foregroundColor"    # I

    .line 5981
    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    .line 5982
    iput p2, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 5983
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 5984
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 5985
    return-void
.end method

.method public setColorized(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "colorize"    # Z

    .line 4086
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4087
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3830
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3807
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3808
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 3878
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3879
    return-object p0
.end method

.method setContentMinHeight(Landroid/widget/RemoteViews;Z)V
    .locals 3
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;
    .param p2, "hasMinHeight"    # Z

    .line 4751
    const/4 v0, 0x0

    .line 4752
    .local v0, "minHeight":I
    if-eqz p2, :cond_0

    .line 4754
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4757
    :cond_0
    const v1, 0x102033e

    const-string/jumbo v2, "setMinimumHeight"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4758
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3695
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3696
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 3687
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3688
    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 3851
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3852
    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 3840
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3841
    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 3862
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3863
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "defaults"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4137
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 4138
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 3888
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 3889
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 4293
    if-eqz p1, :cond_0

    .line 4294
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 4296
    :cond_0
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 4447
    if-eqz p2, :cond_0

    .line 4448
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 4450
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 4452
    :goto_0
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .line 3913
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 3914
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3915
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 4232
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1202(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 4233
    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupAlertBehavior"    # I

    .line 3538
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$802(Landroid/app/Notification;I)I

    .line 3539
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    .line 4245
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4246
    return-object p0
.end method

.method public setHideSmartReplies(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "hideSmartReplies"    # Z

    .line 3782
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.hideSmartReplies"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3783
    return-object p0
.end method

.method public setIconOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # I

    .line 6065
    iput p1, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    .line 6066
    return-object p0
.end method

.method public setIntentOnStatusBar(Landroid/content/Intent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 6097
    iput-object p1, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    .line 6098
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 3947
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 3958
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3959
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3960
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4040
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 4041
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 4042
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 4043
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 4044
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 4046
    :cond_1
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    .line 4118
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4119
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "number"    # I

    .line 3791
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 3792
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .line 4066
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4067
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .line 4097
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4098
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pri"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4149
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    .line 4150
    return-object p0
.end method

.method public setPriorityOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "priority"    # I

    .line 6089
    iput p1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    .line 6090
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .line 3817
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3818
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3819
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3820
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .line 4425
    if-eqz p1, :cond_0

    .line 4426
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 4427
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    goto :goto_0

    .line 4429
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 4431
    :goto_0
    return-object p0
.end method

.method public setRebuildStyledRemoteViews(Z)V
    .locals 0
    .param p1, "rebuild"    # Z

    .line 5996
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    .line 5997
    return-void
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 4
    .param p1, "text"    # [Ljava/lang/CharSequence;

    .line 3755
    if-nez p1, :cond_0

    .line 3756
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputHistory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3758
    :cond_0
    const/4 v0, 0x5

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3759
    .local v0, "N":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 3760
    .local v1, "safe":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3761
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3760
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3763
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.remoteInputHistory"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 3765
    .end local v0    # "N":I
    .end local v1    # "safe":[Ljava/lang/CharSequence;
    :goto_1
    return-object p0
.end method

.method public setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3736
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1002(Landroid/app/Notification;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3737
    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 3510
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$602(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3511
    return-object p0
.end method

.method public setShowOnStatusBar(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "showOnStatusBar"    # Z

    .line 6023
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    .line 6024
    return-object p0
.end method

.method public setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "showSpinner"    # Z

    .line 3773
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputSpinner"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3774
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "show"    # Z

    .line 3594
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3595
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .line 3646
    if-eqz p1, :cond_0

    .line 3647
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    .line 3648
    :cond_0
    const/4 v0, 0x0

    .line 3646
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .line 3663
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 3664
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 3676
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 3677
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3678
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3680
    :cond_0
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sortKey"    # Ljava/lang/String;

    .line 4262
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1302(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 4263
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3973
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3974
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 3975
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3987
    const-string v0, "Notification"

    const-string/jumbo v1, "setSound()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 3988
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3989
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 3990
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4002
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4003
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 4004
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "style"    # Landroid/app/Notification$Style;

    .line 4389
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_1

    .line 4390
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 4391
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    .line 4392
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4393
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4395
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4398
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3718
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3719
    return-object p0
.end method

.method public setSwipeUpHeadsUpIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 6106
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

    .line 6107
    return-object p0
.end method

.method public setTextOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "textId"    # I

    .line 6073
    iput p1, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    .line 6074
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .line 3924
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3925
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3934
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3936
    return-object p0
.end method

.method public setTimeout(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "durationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3560
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$902(Landroid/app/Notification;J)J

    .line 3561
    return-object p0
.end method

.method public setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "durationMs"    # J

    .line 3569
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$902(Landroid/app/Notification;J)J

    .line 3570
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "b"    # Z

    .line 3614
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3615
    return-object p0
.end method

.method public setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "useChronometer"    # Z

    .line 6031
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    .line 6032
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pattern"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4022
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 4023
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "visibility"    # I

    .line 4414
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    .line 4415
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    .line 3583
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 3584
    return-object p0
.end method

.method public usesStandardHeader()Z
    .locals 5

    .line 4515
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4516
    return v1

    .line 4518
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 4519
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 4520
    return v1

    .line 4523
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4524
    invoke-static {}, Landroid/app/Notification;->access$1500()Landroid/util/ArraySet;

    move-result-object v0

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 4525
    .local v0, "contentViewUsesHeader":Z
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_5

    .line 4526
    invoke-static {}, Landroid/app/Notification;->access$1500()Landroid/util/ArraySet;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v1

    .line 4527
    .local v3, "bigContentViewUsesHeader":Z
    :goto_3
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1
.end method
