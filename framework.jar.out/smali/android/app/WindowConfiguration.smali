.class public Landroid/app/WindowConfiguration;
.super Ljava/lang/Object;
.source "WindowConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WindowConfiguration$WindowConfig;,
        Landroid/app/WindowConfiguration$ActivityType;,
        Landroid/app/WindowConfiguration$WindowingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/app/WindowConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final ACTIVITY_TYPE_HOME:I = 0x2

.field public static final ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WindowConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final PINNED_WINDOWING_MODE_ELEVATION_IN_DIP:I = 0x5

.field public static final WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final WINDOWING_MODE_FULLSCREEN_OR_SPLIT_SCREEN_SECONDARY:I = 0x4

.field public static final WINDOWING_MODE_PINNED:I = 0x2

.field public static final WINDOWING_MODE_SPLIT_SCREEN_PRIMARY:I = 0x3

.field public static final WINDOWING_MODE_SPLIT_SCREEN_SECONDARY:I = 0x4

.field public static final WINDOWING_MODE_UNDEFINED:I = 0x0

.field public static final WINDOW_CONFIG_ACTIVITY_TYPE:I = 0x8

.field public static final WINDOW_CONFIG_APP_BOUNDS:I = 0x2

.field public static final WINDOW_CONFIG_BOUNDS:I = 0x1

.field public static final WINDOW_CONFIG_WINDOWING_MODE:I = 0x4


# instance fields
.field private mActivityType:I
    .annotation build Landroid/app/WindowConfiguration$ActivityType;
    .end annotation
.end field

.field private mAppBounds:Landroid/graphics/Rect;

.field private mBounds:Landroid/graphics/Rect;

.field private mWindowingMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/WindowConfiguration$1;

    invoke-direct {v0}, Landroid/app/WindowConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->unset()V

    return-void
.end method

.method public constructor <init>(Landroid/app/WindowConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/WindowConfiguration$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/WindowConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static activityTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "assistant"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "recents"

    return-object v0

    :pswitch_2
    const-string v0, "home"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "standard"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "undefined"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isFloating(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return-void
.end method

.method public static supportSplitScreenWindowingMode(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static windowingModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "freeform"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "split-screen-secondary"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "split-screen-primary"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "pinned"

    return-object v0

    :pswitch_4
    const-string v0, "fullscreen"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canReceiveKeys()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public canResizeTask()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public compareTo(Landroid/app/WindowConfiguration;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_7

    return v0

    :cond_7
    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_8

    return v1

    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_9

    return v0

    :cond_9
    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    sub-int/2addr v1, v2

    if-eqz v1, :cond_a

    return v1

    :cond_a
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    sub-int/2addr v0, v2

    if-eqz v0, :cond_b

    return v0

    :cond_b
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/app/WindowConfiguration;Z)J
    .locals 4
    .annotation build Landroid/app/WindowConfiguration$WindowConfig;
    .end annotation

    const-wide/16 v0, 0x0

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    :cond_0
    if-nez p2, :cond_1

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_3
    if-nez p2, :cond_4

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v3, :cond_5

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_5
    if-nez p2, :cond_6

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v2, :cond_7

    :cond_6
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v3, :cond_7

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    :cond_7
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/app/WindowConfiguration;

    if-nez v2, :cond_2

    return v0

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, v2}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0
.end method

.method public getActivityType()I
    .locals 1
    .annotation build Landroid/app/WindowConfiguration$ActivityType;
    .end annotation

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return v0
.end method

.method public getAppBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowingMode()I
    .locals 1
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return v0
.end method

.method public hasMovementAnimations()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWindowDecorCaption()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWindowShadow()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    const/16 v2, 0x1f

    if-eqz v1, :cond_0

    mul-int v1, v2, v0

    iget-object v3, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    :cond_0
    mul-int v1, v2, v0

    iget-object v3, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    mul-int v0, v2, v1

    iget v3, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    add-int/2addr v0, v3

    mul-int/2addr v2, v0

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    add-int/2addr v2, v1

    return v2
.end method

.method public isAlwaysOnTop()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keepVisibleDeadAppWindowOnScreen()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public persistTaskBounds()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setActivityType(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$ActivityType;
        .end annotation
    .end param

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "WindowConfiguration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change activity type once set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from mActivityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to activityType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput p1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return-void
.end method

.method public setAppBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setAppBounds(Landroid/graphics/Rect;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setTo(Landroid/app/WindowConfiguration;)V
    .locals 1

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    return-void
.end method

.method public setToDefaults()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    return-void
.end method

.method public setWindowingMode(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    iput p1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return-void
.end method

.method public supportSplitScreenWindowingMode()Z
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result v0

    return v0
.end method

.method public tasksAreFloating()Z
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ mBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unset()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    return-void
.end method

.method public updateFrom(Landroid/app/WindowConfiguration;)I
    .locals 3
    .annotation build Landroid/app/WindowConfiguration$WindowConfig;
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_1
    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v1, v2, :cond_2

    or-int/lit8 v0, v0, 0x4

    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_2
    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v1, v2, :cond_3

    or-int/lit8 v0, v0, 0x8

    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    :cond_3
    return v0
.end method

.method public useWindowFrameForBackdrop()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public windowsAreScaleable()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    const-wide v2, 0x10500000002L

    iget v4, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v2, 0x10500000003L

    iget v4, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
