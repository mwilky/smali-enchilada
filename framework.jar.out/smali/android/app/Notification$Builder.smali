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
.field public static mExtendedTheming:Z

.field public static mOPNotificationTextColor:I

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

.field public mContext:Landroid/content/Context;

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

    const-string/jumbo v0, "notifications.only_title"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    iput v1, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    iput v0, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    iput v1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/Notification$Builder;->mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

    const/4 v2, 0x1

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    iput v2, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    new-instance v3, Landroid/app/Notification$StandardTemplateParams;

    invoke-direct {v3, v0}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification$1;)V

    iput-object v3, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    iput v2, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    iput v2, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    iput v2, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    iput v2, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    iput v2, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11200c2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    const v3, 0x1120068

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

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

    :cond_1
    if-nez p2, :cond_3

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.showWhen"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->priority:I

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->visibility:I

    goto/16 :goto_1

    :cond_3
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v3, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people.list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people.list"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :cond_6
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :cond_7
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.template"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    nop

    invoke-static {v3}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_8

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

    :cond_8
    :try_start_0
    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    if-eqz v1, :cond_9

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Notification"

    const-string v5, "Could not create Style"

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    
    invoke-static {v0}, Landroid/app/Notification$Builder;->isExtendedTheming(Landroid/content/Context;)V
    
    invoke-static {v0}, Landroid/app/Notification$Builder;->getAccentColor(Landroid/content/Context;)V
    
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p2}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/app/Notification$Builder;)Landroid/os/Bundle;
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Landroid/app/Notification$Builder;ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3602(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3702(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3900(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Landroid/app/Notification$Builder;)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Landroid/app/Notification$Builder;)Z
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->shouldTintActionButtons()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/app/Notification$Builder;IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5000(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Landroid/app/Notification$Builder;)I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/app/Notification$Builder;ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 6

    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;)V

    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2, v3}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;ZLjava/lang/CharSequence;)V

    invoke-direct {p0, v0, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIconAndReply(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    move-result v2

    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const v3, 0x1020016

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v5, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-boolean v5, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v5, :cond_0

    invoke-direct {p0, v0, v3}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    :cond_0
    if-eqz v2, :cond_1

    const/4 v5, -0x2

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setViewLayoutWidth(II)V

    :cond_2
    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_3

    const v3, 0x102045a

    goto :goto_1

    :cond_3
    const v3, 0x102043e

    :goto_1
    iget-object v5, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-boolean v5, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v5, :cond_4

    invoke-direct {p0, v0, v3}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    :cond_4
    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

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

    return-object v0
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1

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

    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

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

    :goto_0
    const-string/jumbo v8, "setEmphasizedMode"

    const v9, 0x102018c

    invoke-virtual {v2, v9, v8, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const/16 v8, 0x8

    const v10, 0x102018d

    if-lez v4, :cond_3

    invoke-virtual {v2, v10, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {v2, v9, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v10, 0x102033b

    invoke-virtual {v2, v10, v7}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    const/4 v10, 0x3

    if-le v4, v10, :cond_1

    const/4 v4, 0x3

    :cond_1
    move v10, v3

    move v3, v7

    :goto_1
    if-ge v3, v4, :cond_4

    iget-object v11, v0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/Notification$Action;

    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v12

    or-int/2addr v10, v12

    iget-boolean v13, v1, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-direct {v0, v11, v5, v13}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;

    move-result-object v13

    if-eqz v12, :cond_2

    if-nez v5, :cond_2

    const v14, 0x1020175

    const-string/jumbo v15, "setBackgroundResource"

    invoke-virtual {v13, v14, v15, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_2
    invoke-virtual {v2, v9, v13}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v10, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move v10, v3

    :cond_4
    iget-object v3, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v9, "android.remoteInputHistory"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v3

    iget-boolean v9, v1, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v9, :cond_7

    if-eqz v10, :cond_7

    if-eqz v3, :cond_7

    array-length v9, v3

    if-lez v9, :cond_7

    aget-object v9, v3, v7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    iget v9, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-lez v9, :cond_7

    iget-object v9, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v9, v9, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.remoteInputSpinner"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const v11, 0x102033f

    invoke-virtual {v2, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v11, 0x1020342

    invoke-virtual {v2, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    aget-object v11, v3, v7

    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    const v12, 0x1020341

    invoke-virtual {v2, v12, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {v0, v2, v12}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    nop

    if-eqz v9, :cond_5

    move v8, v7

    goto :goto_2

    :cond_5
    nop

    :goto_2
    const v11, 0x1020340

    invoke-virtual {v2, v11, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    nop

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v8

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v8

    :goto_3
    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v2, v11, v8}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    array-length v8, v3

    if-le v8, v6, :cond_7

    aget-object v8, v3, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    iget v8, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v8, v6, :cond_7

    const v8, 0x1020343

    invoke-virtual {v2, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    aget-object v6, v3, v6

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {v0, v2, v8}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    array-length v6, v3

    const/4 v8, 0x2

    if-le v6, v8, :cond_7

    aget-object v6, v3, v8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget v6, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v6, v8, :cond_7

    const v6, 0x1020344

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    aget-object v7, v3, v8

    invoke-direct {v0, v7}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {v0, v2, v6}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    :cond_7
    return-object v2
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1

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

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNeutralColor()I

    move-result v0

    :goto_0
    const v1, 0x10201eb

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    const v1, 0x102030a

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    const v1, 0x1020361

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;)V
    .locals 4

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v0

    :goto_0
    const v1, 0x102023e

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    const v1, 0x102033d

    const-string/jumbo v2, "setOriginalNotificationColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x10201af

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    goto :goto_1

    :cond_0
    nop

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :goto_1
    return-void
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V
    .locals 8

    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    const v1, 0x102045d

    if-eqz v0, :cond_1

    const v0, 0x1020461

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showChronometer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x10201fa

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string/jumbo v1, "setBase"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string/jumbo v1, "setStarted"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.chronometerCountDown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const-string/jumbo v0, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    goto :goto_1

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

    :goto_1
    return-void
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;)V
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-boolean v1, v1, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v1, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    nop

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x102028a

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x102028b

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    :cond_2
    return-void
.end method

.method private bindHeaderTextSecondary(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    nop

    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x102028c

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x102028d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    :cond_0
    return-void
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;Z)Z
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

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

    :goto_0
    if-eqz v0, :cond_2

    const v2, 0x10203b7

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    :cond_2
    return v0
.end method

.method private bindLargeIconAndReply(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 4

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

    const v3, 0x10203b8

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    nop

    :cond_5
    :goto_3
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->calculateMarginEnd(ZZ)I

    move-result v2

    const v3, 0x10202e3

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    const v3, 0x102043e

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    const v3, 0x102000d

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    if-eqz p3, :cond_6

    invoke-virtual {p3, v2}, Landroid/app/Notification$TemplateBindResult;->setIconMarginEnd(I)V

    :cond_6
    return-void
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;ZLjava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Z)V

    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Z)V

    if-nez p2, :cond_0

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1, p3}, Landroid/app/Notification$Builder;->bindHeaderTextSecondary(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindActivePermissions(Landroid/widget/RemoteViews;Z)V

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Z)Z

    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;)V
    .locals 5

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1020392

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v3

    if-eqz v3, :cond_0

    nop

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private bindReplyIcon(Landroid/widget/RemoteViews;Z)Z
    .locals 6

    xor-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->findReplyAction()Landroid/app/Notification$Action;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    :cond_1
    const v3, 0x10203ad

    if-eqz v0, :cond_2

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    nop

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNeutralColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    iget-object v4, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-static {v1}, Landroid/app/Notification$Action;->access$1700(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    :goto_1
    nop

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    :goto_2
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return v0
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1900(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1902(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

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

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const-string v1, "android"

    const v2, 0x10804a4

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1902(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1900(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    const-string/jumbo v0, "setImageLevel"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1900(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V

    return-void
.end method

.method private calculateMarginEnd(ZZ)I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-eqz p2, :cond_0

    add-int/2addr v0, v2

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v0, v4

    :cond_0
    if-eqz p1, :cond_1

    add-int/2addr v0, v2

    if-eqz p2, :cond_1

    add-int/2addr v0, v1

    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method private createSummaryText()Ljava/lang/CharSequence;
    .locals 6

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    sget-boolean v1, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-nez v0, :cond_1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title.big"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v5, 0x1040420

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_4
    return-object v1
.end method

.method private ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_a

    move-object v3, v1

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    array-length v7, v4

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_9

    aget-object v9, v4, v8

    move-object v10, v9

    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    sub-int v13, v12, v11

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v6

    :goto_1
    instance-of v14, v10, Landroid/text/style/CharacterStyle;

    if-eqz v14, :cond_1

    move-object v14, v9

    check-cast v14, Landroid/text/style/CharacterStyle;

    invoke-virtual {v14}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v10

    :cond_1
    instance-of v14, v10, Landroid/text/style/TextAppearanceSpan;

    if-eqz v14, :cond_5

    move-object v14, v10

    check-cast v14, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object v15, v4

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v4

    move/from16 v16, v7

    array-length v7, v4

    new-array v7, v7, [I

    const/16 v17, 0x0

    :goto_2
    move/from16 v18, v17

    array-length v1, v7

    move/from16 v19, v8

    move/from16 v8, v18

    if-ge v8, v1, :cond_2

    aget v1, v4, v8

    move-object/from16 v20, v4

    iget-boolean v4, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v1, v2, v4}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v1

    aput v1, v7, v8

    add-int/lit8 v17, v8, 0x1

    move/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v1, p1

    goto :goto_2

    :cond_2
    move-object/from16 v20, v4

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v4

    invoke-virtual {v4}, [[I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-direct {v1, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    if-eqz v13, :cond_3

    const/4 v4, 0x0

    aput-object v1, p3, v4

    const/4 v1, 0x0

    :cond_3
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v23

    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v24

    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v26

    move-object/from16 v21, v4

    move-object/from16 v25, v1

    invoke-direct/range {v21 .. v26}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v10, v4

    goto :goto_3

    :cond_4
    move-object v15, v4

    move/from16 v16, v7

    move/from16 v19, v8

    :goto_3
    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object v15, v4

    move/from16 v16, v7

    move/from16 v19, v8

    instance-of v1, v10, Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_7

    move-object v1, v10

    check-cast v1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v4

    iget-boolean v6, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v4, v2, v6}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v4

    if-eqz v13, :cond_6

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, p3, v7

    const/4 v6, 0x0

    move-object v10, v6

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v1, v6

    move-object v10, v1

    :goto_4
    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    move-object v10, v9

    :goto_5
    if-eqz v10, :cond_8

    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v5, v10, v11, v12, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    add-int/lit8 v8, v19, 0x1

    move v6, v7

    move-object v4, v15

    move/from16 v7, v16

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_9
    move-object v15, v4

    return-object v5

    :cond_a
    move-object/from16 v1, p1

    return-object v1
.end method

.method public ensureColors()V
    .locals 17

    move-object/from16 v0, p0
    
    invoke-direct {v0}, Landroid/app/Notification$Builder;->isColorized()Z
    
    move-result v1
    
    if-nez v1, :cond_stock
    
    sget-boolean v1, Landroid/app/Notification$Builder;->mExtendedTheming:Z
    
    if-eqz v1, :cond_stock
    
    sget v1, Landroid/app/Notification$Builder;->mOPNotificationTextColor:I
    
    iput v1, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I
    
    iput v1, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    :cond_stock
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v1

    iget v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    if-eq v2, v1, :cond_b

    :cond_0
    iput v1, v0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v2

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    if-eqz v2, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v6

    iget v2, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v8

    iget v2, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v10

    cmpl-double v2, v6, v8

    if-lez v2, :cond_2

    const/high16 v2, -0x1000000

    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    cmpg-double v2, v6, v8

    if-gtz v2, :cond_4

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    cmpg-double v12, v10, v4

    const/16 v13, 0xa

    const/16 v14, -0x14

    if-gez v12, :cond_6

    if-eqz v2, :cond_5

    iget v12, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    iget v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v3, v14}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto/16 :goto_5

    :cond_5
    iget v12, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    iget v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v3, v13}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto :goto_5

    :cond_6
    iget v12, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    iput v12, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    iget v12, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    if-eqz v2, :cond_7

    const/16 v15, 0x14

    goto :goto_1

    :cond_7
    const/16 v15, -0xa

    :goto_1
    invoke-static {v12, v15}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v12

    iput v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    iget v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v12, v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v15

    cmpg-double v12, v15, v4

    if-gez v12, :cond_b

    if-eqz v2, :cond_8

    iget v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    goto :goto_2

    :cond_8
    iget v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    :goto_2
    iget v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    if-eqz v2, :cond_9

    nop

    move v13, v14

    goto :goto_3

    :cond_9
    nop

    :goto_3
    invoke-static {v3, v13}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto :goto_5

    :cond_a
    :goto_4
    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolvePrimaryColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    iget-object v2, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveSecondaryColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    invoke-static {v2, v1, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    iget v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v2, v1, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    :cond_b
    :goto_5
    return-void
.end method

.method private findReplyAction()Landroid/app/Notification$Action;
    .locals 5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;
    .locals 12

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v3, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result v5

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v5

    :goto_1
    invoke-direct {v3, v4, v5}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    const v4, 0x1020175

    if-nez v0, :cond_3

    iget-object v5, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_3
    iget-object v5, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    invoke-static {p1}, Landroid/app/Notification$Action;->access$1700(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {p1}, Landroid/app/Notification$Action;->access$1700(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    :cond_4
    if-eqz p2, :cond_a

    iget-object v5, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveBackgroundColor()I

    move-result v7

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v5}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_2

    :cond_5
    new-array v6, v1, [Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5, v7, v6}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;

    move-result-object v5

    :goto_2
    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0, v3, v4}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    if-eqz v6, :cond_6

    aget-object v8, v6, v2

    if-eqz v8, :cond_6

    move v8, v1

    goto :goto_3

    :cond_6
    move v8, v2

    :goto_3
    if-eqz v8, :cond_7

    aget-object v9, v6, v2

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    iget-object v9, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/android/internal/util/NotificationColorUtil;->resolvePrimaryColor(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    nop

    goto :goto_4

    :cond_7
    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->color:I

    if-eqz v9, :cond_8

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v9

    if-nez v9, :cond_8

    iget-boolean v9, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v9

    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v9

    :goto_4
    const v10, 0xffffff

    and-int/2addr v10, v9

    const/high16 v11, 0x33000000

    or-int v9, v10, v11

    const-string/jumbo v10, "setRippleColor"

    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v3, v4, v10, v11}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    const-string/jumbo v10, "setButtonBackground"

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v3, v4, v10, v11}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    const-string/jumbo v10, "setHasStroke"

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    invoke-virtual {v3, v4, v10, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto :goto_7

    :cond_a
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p3, :cond_b

    invoke-direct {p0, v3, v4}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    goto :goto_7

    :cond_b
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v1, :cond_d

    nop

    if-eqz p3, :cond_c

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v1

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    :goto_6
    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :cond_d
    :goto_7
    return-object v3
.end method

.method private getActionLayoutResource()I
    .locals 1

    const v0, 0x109008b

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    const v0, 0x109008e

    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private getBackgroundColor()I
    .locals 2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_1

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

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    const v0, 0x1090094

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    const v0, 0x1090095

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    const v0, 0x1090097

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    const v0, 0x1090098

    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/NotificationColorUtil;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    return-object v0
.end method

.method private getEmphasizedActionLayoutResource()I
    .locals 1

    const v0, 0x109008c

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    const v0, 0x1090099

    return v0
.end method

.method private getMessagingLayoutResource()I
    .locals 1

    const v0, 0x109009b

    return v0
.end method

.method private getNeutralColor()I
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveNeutralColor()I

    move-result v0

    return v0
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 5

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .locals 7

    const-string v0, "android.progressMax"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.progress"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.progressIndeterminate"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x102000d

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    :cond_0
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p2, v4, v0, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v5, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v6, 0x10600f7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    invoke-static {v1}, Landroid/content/res/ThemeController;->getOneplusAccentColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->color:I

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    :cond_1
    const/4 v4, 0x1

    return v4

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return v1
.end method

.method private hasForegroundColor()Z
    .locals 2

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

    iget-object v0, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    invoke-virtual {v4}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    array-length v6, v5

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_4
    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method private hideLine1Text(Landroid/widget/RemoteViews;)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x102045a

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_0
    return-void
.end method

.method private isColorized()Z
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method private isLegacy()Z
    .locals 3

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    if-nez v0, :cond_1

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

    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    return v0
.end method

.method public static makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .locals 3

    if-eqz p0, :cond_0

    const v0, 0x102033d

    const-string/jumbo v1, "setExpanded"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private makePublicView(Z)Landroid/widget/RemoteViews;
    .locals 14

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v3}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4, v2}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "android.showWhen"

    const-string v7, "android.showWhen"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "android.showChronometer"

    const-string v7, "android.showChronometer"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "android.chronometerCountDown"

    const-string v7, "android.chronometerCountDown"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v6, "android.substName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v7, "android.substName"

    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v7, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_3

    const-string v9, "android.title"

    iget-object v10, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x50a0000

    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v7

    invoke-virtual {v10, v11, v8, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v7

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v7}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v7

    const v9, 0x102033d

    const-string/jumbo v10, "setExpandOnlyOnButton"

    invoke-virtual {v7, v9, v10, v8}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    :goto_1
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v8, v3}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v4, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object v7
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;ZLandroid/content/Context;)Landroid/app/Notification;
    .locals 8

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v1, v1, Landroid/app/Notification$BuilderRemoteViews;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.rebuild.contentViewActionCount"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v5

    if-ne v1, v5, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.rebuild.bigViewActionCount"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v5, v6, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v2

    :goto_1
    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v6, v6, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v6, :cond_3

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.rebuild.hudViewActionCount"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v4, v6, :cond_3

    move v2, v3

    nop

    :cond_3
    if-nez p1, :cond_4

    if-nez v1, :cond_4

    if-nez v5, :cond_4

    if-nez v2, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.rebuild.contentViewActionCount"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_5
    if-eqz v5, :cond_6

    iput-object v4, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.rebuild.bigViewActionCount"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    iput-object v4, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070009

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-nez v6, :cond_8

    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.tv.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.wearable.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.car.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_8
    return-object v3
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x1020006

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 3

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

    :goto_1
    move v1, p2

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :cond_2
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V
    .locals 6

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

    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v3

    :goto_2
    goto :goto_3

    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v3

    :goto_3
    if-eqz v0, :cond_4

    const v4, 0x1020006

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v4, v2, v3, v5}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    const v2, 0x102033d

    const-string/jumbo v4, "setOriginalIconColor"

    if-eqz v0, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    nop

    :goto_4
    invoke-virtual {p2, v2, v4, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method private processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    
    sget-boolean v0, Landroid/app/Notification$Builder;->mExtendedTheming:Z
    
    if-nez v0, :cond_clear

    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_clear
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 5

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

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

    nop

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_1
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v1, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-object v2
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 4

    const-string/jumbo v0, "setExpanded"

    const/4 v1, 0x0

    const v2, 0x102033d

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    const/4 v0, 0x0

    const v2, 0x10201af

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v2, 0x8

    const v3, 0x10201fa

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x102028a

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x102028c

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v3, 0x102028b

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x102028d

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x1020461

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x102045d

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v3, 0x1020392

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Z)Z

    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    const/16 v0, 0x8

    const v1, 0x10203b7

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x1020016

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x102043e

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x102045a

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3

    const v0, 0x102018c

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const v0, 0x102033f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v0, 0x0

    const v2, 0x1020341

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x1020342

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x1020340

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v2, 0x1020343

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x1020344

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v0, 0x102033b

    const v1, 0x105012e

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    return-void
.end method

.method private resolveBackgroundColor()I
    .locals 3

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v2, 0x10600f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private sanitizeColor()V
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    :cond_0
    return-void
.end method

.method private setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method private setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    return-void
.end method

.method private shouldTintActionButtons()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    return v0
.end method

.method private showsTimeOrChronometer()Z
    .locals 1

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

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method private updateBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    const v1, 0x1020426

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setBackgroundColor"

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v2

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "setBackgroundResource"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private useExistingRemoteView()Z
    .locals 1

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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/Notification;->access$1802(Landroid/app/Notification;J)J

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.contentViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.bigViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.hudViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people.list"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

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

    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.contains.customView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2002(Landroid/app/Notification;I)I

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2102(Landroid/app/Notification;Z)Z

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2202(Landroid/app/Notification;Z)Z

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v1, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    invoke-static {v0, v1, v2}, Landroid/app/Notification;->access$2302(Landroid/app/Notification;J)J

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2402(Landroid/app/Notification;I)I

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2502(Landroid/app/Notification;I)I

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mBackgroundColorOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2602(Landroid/app/Notification;I)I

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2702(Landroid/app/Notification;I)I

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2802(Landroid/app/Notification;Landroid/content/Intent;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Landroid/app/Notification;->access$2902(Landroid/app/Notification;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hideLine1Text(Landroid/widget/RemoteViews;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    return-object v0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createContentView(Z)Landroid/widget/RemoteViews;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

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

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-object v1

    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$StandardTemplateParams;->setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v2

    invoke-direct {p0, v2, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0

    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->getHeadsUpStatusBarText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    return v0
.end method

.method public getStyle()Landroid/app/Notification$Style;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.substName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.substName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    goto :goto_0

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

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    return-object v2

    :cond_3
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_4

    if-eqz v0, :cond_4

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

    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public makeAmbientNotification()Landroid/widget/RemoteViews;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

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

    const v1, 0x1090093

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .locals 6

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v2, 0x0

    iput v2, v1, Landroid/app/Notification;->color:I

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.subText"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.subText"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v2

    const v3, 0x102033d

    const-string/jumbo v4, "setAcceptAllTouches"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-eqz v1, :cond_2

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.subText"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.subText"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v0, v3, Landroid/app/Notification;->color:I

    return-object v2
.end method

.method public makeNotificationHeader(Z)Landroid/widget/RemoteViews;
    .locals 5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.colorized"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz p1, :cond_0

    const v3, 0x1090091

    goto :goto_0

    :cond_0
    const v3, 0x1090092

    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;ZLjava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.colorized"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.colorized"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    return-object v1
.end method

.method public makePublicAmbientNotification()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makePublicContentView()Landroid/widget/RemoteViews;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method resolveAmbientColor()I
    .locals 2

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveAmbientColor(Landroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v0
.end method

.method resolveContrastColor()I
    .locals 4

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x10600f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveDefaultColor(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    iget-boolean v3, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v1

    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_2

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    move-result v1

    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iput v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v1
.end method

.method resolveNeutralColor()I
    .locals 3

    iget v0, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    return v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x10600f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    iget v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    iget v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    :cond_1
    iget v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    return v1
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setBackgroundColorOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColorOnStatusBar:I

    return-object p0
.end method

.method public setBadgeIconType(I)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$702(Landroid/app/Notification;I)I

    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setChronometerBase(J)Landroid/app/Notification$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/Notification$Builder;->mChronometerBase:J

    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setChronometerState(I)Landroid/app/Notification$Builder;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    goto :goto_0

    :pswitch_1
    iput v0, p0, Landroid/app/Notification$Builder;->mChronometerState:I

    nop

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

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    return-object p0
.end method

.method public setColorPalette(II)V
    .locals 1

    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    iput p2, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    return-void
.end method

.method public setColorized(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method setContentMinHeight(Landroid/widget/RemoteViews;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    const v1, 0x102033e

    const-string/jumbo v2, "setMinimumHeight"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    :cond_0
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    :goto_0
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1202(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$802(Landroid/app/Notification;I)I

    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setHideSmartReplies(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.hideSmartReplies"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setIconOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mStatusBarIcon:I

    return-object p0
.end method

.method public setIntentOnStatusBar(Landroid/content/Intent;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mActionIntentOnStatusBar:Landroid/content/Intent;

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1

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

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_1
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    return-object p0
.end method

.method public setPriorityOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mPriorityOnStatusBar:I

    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    :goto_0
    return-object p0
.end method

.method public setRebuildStyledRemoteViews(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    return-void
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 4

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputHistory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.remoteInputHistory"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    :goto_1
    return-object p0
.end method

.method public setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1002(Landroid/app/Notification;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$602(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setShowOnStatusBar(Z)Landroid/app/Notification$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowOnStatusBar:Z

    return-object p0
.end method

.method public setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputSpinner"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    :cond_0
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1302(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Notification"

    const-string/jumbo v1, "setSound()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public setSwipeUpHeadsUpIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mSwipeUpHeadsUpIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setTextOnStatusBar(I)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mTextOnStatusBar:I

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setTimeout(J)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$902(Landroid/app/Notification;J)J

    return-object p0
.end method

.method public setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$902(Landroid/app/Notification;J)J

    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public setUsesChronometerOnStatusBar(Z)Landroid/app/Notification$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowChronometerOnStatusBar:Z

    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public usesStandardHeader()Z
    .locals 5

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

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

    :goto_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_5

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

    :goto_3
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1
.end method

.method public static getAccentColor(Landroid/content/Context;)V
    .registers 11
    .param p0, "Context"    # Landroid/content/Context;

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 21
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "oem_black_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "HexColorBlack":Ljava/lang/String;
    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "HexColorWhite":Ljava/lang/String;
    const-string v3, "oem_black_mode"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 24
    .local v3, "theme":I
    const-string v5, "oem_special_theme"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 25
    .local v5, "specialTheme":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_27

    .line 26
    const v4, -0x43fd3

    sput v4, Landroid/app/Notification$Builder;->mOPNotificationTextColor:I

    goto :goto_6a

    .line 27
    :cond_27
    const/16 v7, 0x10

    const/16 v8, 0xb

    if-ne v3, v6, :cond_48

    .line 28
    const-string v9, "oem_black_mode_accent_color_index"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_3c

    .line 29
    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Landroid/app/Notification$Builder;->mOPNotificationTextColor:I

    goto :goto_6a

    .line 31
    :cond_3c
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v4, v6

    sput v4, Landroid/app/Notification$Builder;->mOPNotificationTextColor:I

    goto :goto_6a

    .line 34
    :cond_48
    if-nez v3, :cond_65

    .line 35
    const-string v9, "oem_white_mode_accent_color_index"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_59

    .line 36
    invoke-static/range {v2 .. v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    sput v4, Landroid/app/Notification$Builder;->mOPNotificationTextColor:I

    goto :goto_6a

    .line 38
    :cond_59
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v4, v6

    sput v4, Landroid/app/Notification$Builder;->mOPNotificationTextColor:I

    goto :goto_6a

    .line 41
    :cond_65
    if-ne v3, v4, :cond_6a

    .line 42
    const/4 v4, -0x1

    sput v4, Landroid/app/Notification$Builder;->mOPNotificationTextColor:I

    .line 44
    :cond_6a
    :goto_6a
    return-void
.end method

.method public static isExtendedTheming(Landroid/content/Context;)V
    .registers 5
    .param p0, "Context"    # Landroid/content/Context;

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 685
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_extended_theming"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    
    sput-boolean v1, Landroid/app/Notification$Builder;->mExtendedTheming:Z
    
    sput-boolean v1, Lcom/android/internal/util/NotificationColorUtil;->mExtendedTheming:Z
    
    return-void
.end method
