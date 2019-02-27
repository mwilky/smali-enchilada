.class public final Landroid/app/usage/UsageEvents$Event;
.super Ljava/lang/Object;
.source "UsageEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/UsageEvents$Event$EventFlags;
    }
.end annotation


# static fields
.field public static final CHOOSER_ACTION:I = 0x9

.field public static final CONFIGURATION_CHANGE:I = 0x5

.field public static final CONTINUE_PREVIOUS_DAY:I = 0x4

.field public static final END_OF_DAY:I = 0x3

.field public static final FLAG_IS_PACKAGE_INSTANT_APP:I = 0x1

.field public static final KEYGUARD_HIDDEN:I = 0x12

.field public static final KEYGUARD_SHOWN:I = 0x11

.field public static final MOVE_TO_BACKGROUND:I = 0x2

.field public static final MOVE_TO_FOREGROUND:I = 0x1

.field public static final NONE:I = 0x0

.field public static final NOTIFICATION_INTERRUPTION:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final NOTIFICATION_SEEN:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SCREEN_INTERACTIVE:I = 0xf

.field public static final SCREEN_NON_INTERACTIVE:I = 0x10

.field public static final SHORTCUT_INVOCATION:I = 0x8

.field public static final SLICE_PINNED:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final SLICE_PINNED_PRIV:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final STANDBY_BUCKET_CHANGED:I = 0xb

.field public static final SYSTEM_INTERACTION:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final USER_INTERACTION:I = 0x7


# instance fields
.field public mAction:Ljava/lang/String;

.field public mBucketAndReason:I

.field public mClass:Ljava/lang/String;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mContentAnnotations:[Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mEventType:I

.field public mFlags:I

.field public mNotificationChannelId:Ljava/lang/String;

.field public mPackage:Ljava/lang/String;

.field public mShortcutId:Ljava/lang/String;

.field public mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/app/usage/UsageEvents$Event;)V
    .locals 2
    .param p1, "orig"    # Landroid/app/usage/UsageEvents$Event;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 257
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 258
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 259
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 260
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 261
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    .line 263
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    .line 264
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 265
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 266
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    .line 267
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    .line 268
    return-void
.end method


# virtual methods
.method public getAppStandbyBucket()I
    .locals 2

    .line 342
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 312
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 304
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    return v0
.end method

.method public getNotificationChannelId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 364
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;
    .locals 2

    .line 369
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 370
    return-object p0

    .line 372
    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    .line 373
    .local v0, "ret":Landroid/app/usage/UsageEvents$Event;
    const-string v1, "android.instant_app"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 374
    const-string v1, "android.instant_class"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 378
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getStandbyBucket()I
    .locals 2

    .line 332
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getStandbyReason()I
    .locals 2

    .line 354
    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mBucketAndReason:I

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 291
    iget-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-wide v0
.end method
