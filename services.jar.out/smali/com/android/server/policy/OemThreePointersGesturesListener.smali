.class public Lcom/android/server/policy/OemThreePointersGesturesListener;
.super Ljava/lang/Object;
.source "OemThreePointersGesturesListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;,
        Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_POINT_NUM:I = 0xc8

.field private static final MSG_OEM_TAKE_SCREEN_SHOT:I = 0x3

.field private static final SCREEN_SHOT_PRECISE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "OemGestures"

.field private static final THREE_FINGER_TAP_INTERVAL:I = 0x1f4


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentUserId:I

.field private mFirstShotY:I

.field private mHandler:Landroid/os/Handler;

.field private mIsInTapInterval:Z

.field private mIsShotScreenEnable:Z

.field private mLast1ShotY:Landroid/graphics/Point;

.field private mLast2ShotY:Landroid/graphics/Point;

.field private mMaxNumPointers:I

.field private mPointers0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointers1:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPointers2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field mScreenLength_1_3:I

.field private mScreenWidth:I

.field mScreenWidth_1_3:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    .line 62
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    .line 66
    iput v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenHeight:I

    .line 67
    iput v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth:I

    .line 70
    iput v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    .line 76
    iput-boolean v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsInTapInterval:Z

    .line 205
    iput v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    .line 206
    iput v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    .line 80
    iput-object p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 83
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 84
    .local v1, "wm":Landroid/view/WindowManager;
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mActivityManager:Landroid/app/ActivityManager;

    .line 85
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 86
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    .line 87
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    .line 89
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenHeight:I

    .line 90
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth:I

    .line 91
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/policy/OemThreePointersGesturesListener$1;

    invoke-direct {v3, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$1;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/OemThreePointersGesturesListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/OemThreePointersGesturesListener;

    .line 44
    iget v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/policy/OemThreePointersGesturesListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/OemThreePointersGesturesListener;
    .param p1, "x1"    # I

    .line 44
    iput p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    return p1
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 103
    .local p1, "arg":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 106
    return-object p1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAngle(Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .line 239
    .local p1, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 243
    .local v0, "length":I
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    .line 244
    .local v2, "deltX":I
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    .line 245
    .local v3, "deltY":I
    if-nez v2, :cond_2

    .line 246
    if-ltz v3, :cond_1

    .line 247
    const/16 v1, 0x5a

    return v1

    .line 249
    :cond_1
    const/16 v1, -0x5a

    return v1

    .line 252
    :cond_2
    int-to-double v4, v3

    int-to-double v6, v2

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    .line 253
    .local v4, "angle":D
    if-gez v2, :cond_3

    .line 254
    const-wide v6, 0x4066800000000000L    # 180.0

    add-double/2addr v4, v6

    .line 256
    :cond_3
    double-to-int v1, v4

    return v1

    .line 240
    .end local v0    # "length":I
    .end local v2    # "deltX":I
    .end local v3    # "deltY":I
    .end local v4    # "angle":D
    :cond_4
    :goto_0
    return v1
.end method

.method private getDeltaAngle(II)I
    .locals 2
    .param p1, "angle0"    # I
    .param p2, "angle1"    # I

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "deltaAngle":I
    if-le p1, p2, :cond_0

    .line 262
    sub-int v0, p1, p2

    goto :goto_0

    .line 263
    :cond_0
    if-ge p1, p2, :cond_1

    .line 264
    sub-int v0, p2, p1

    .line 266
    :cond_1
    :goto_0
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    .line 267
    rsub-int v0, v0, 0x168

    .line 269
    :cond_2
    return v0
.end method

.method private getMaxDeltaAngle()I
    .locals 8

    .line 273
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v0

    .line 274
    .local v0, "angle0":I
    iget-object v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v1

    .line 275
    .local v1, "angle1":I
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getAngle(Ljava/util/ArrayList;)I

    move-result v2

    .line 277
    .local v2, "angle2":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v3

    .line 278
    .local v3, "deltAngle0":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v4

    .line 279
    .local v4, "deltAngle1":I
    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getDeltaAngle(II)I

    move-result v5

    .line 281
    .local v5, "deltAngle2":I
    if-le v3, v4, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v4

    .line 282
    .local v6, "maxDeltaAngle":I
    :goto_0
    if-le v6, v5, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    move v6, v7

    .line 284
    return v6
.end method

.method private getScreenHeight_1_3()I
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 198
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 199
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    return v1

    .line 201
    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    return v1
.end method

.method private getScreenWidth_1_3()I
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 189
    .local v0, "orient":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 190
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenLength_1_3:I

    return v1

    .line 192
    :cond_0
    iget v1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mScreenWidth_1_3:I

    return v1
.end method

.method private recordPointers(Landroid/view/MotionEvent;II)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointIndex"    # I
    .param p3, "maxNumPointers"    # I

    .line 209
    const/4 v0, 0x3

    if-ne p3, v0, :cond_5

    .line 210
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 211
    .local v0, "pointTemp":Landroid/graphics/Point;
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 212
    .local v1, "pointId":I
    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-nez v1, :cond_1

    .line 213
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 215
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 221
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 222
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 223
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_2

    .line 224
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    :cond_3
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 228
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 229
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    .line 230
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v3, :cond_4

    .line 231
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 233
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v0    # "pointTemp":Landroid/graphics/Point;
    .end local v1    # "pointId":I
    :cond_5
    :goto_0
    return-void
.end method

.method private shouldShot()Z
    .locals 5

    .line 289
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 291
    .local v0, "last2":I
    add-int/lit8 v3, v0, -0x5

    .line 292
    .local v3, "last1":I
    if-lez v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v3, v4

    .line 293
    if-lez v0, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    move v0, v4

    .line 294
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iput-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mLast1ShotY:Landroid/graphics/Point;

    .line 295
    iget-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    iput-object v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mLast2ShotY:Landroid/graphics/Point;

    .line 298
    .end local v0    # "last2":I
    .end local v3    # "last1":I
    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getMaxDeltaAngle()I

    move-result v0

    .line 299
    .local v0, "deltAngle":I
    const/16 v3, 0x1e

    if-lt v0, v3, :cond_3

    .line 300
    return v2

    .line 303
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    .line 304
    invoke-direct {p0, v3}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShotByPoints(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    .line 303
    :cond_4
    move v1, v2

    :goto_2
    return v1
.end method

.method private shouldShotByPoints(Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .line 308
    .local p1, "pointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 313
    :cond_0
    new-instance v0, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 314
    .local v0, "yComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 315
    invoke-static {p1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 316
    .local v2, "maxPCY":Landroid/graphics/Point;
    invoke-static {p1, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 317
    .local v3, "minPCY":Landroid/graphics/Point;
    sget-boolean v4, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 318
    const-string v4, "OemGestures"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " maxPCY.y"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " minPCY.y"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pointers"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    new-instance v4, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;

    invoke-direct {v4, p0}, Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;-><init>(Lcom/android/server/policy/OemThreePointersGesturesListener;)V

    .line 323
    .local v4, "xComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;
    invoke-static {p1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 324
    invoke-static {p1, v4}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Point;

    .line 325
    .local v5, "maxPCX":Landroid/graphics/Point;
    invoke-static {p1, v4}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    .line 326
    .local v6, "minPCX":Landroid/graphics/Point;
    sget-boolean v7, Lcom/android/server/policy/OemThreePointersGesturesListener;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 327
    const-string v7, "OemGestures"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " maxPCX.x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " minPCX.x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "pointers"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 327
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    const/4 v7, 0x0

    .line 332
    .local v7, "bResult":Z
    iget v8, v2, Landroid/graphics/Point;->y:I

    iget v9, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getScreenHeight_1_3()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    if-le v8, v9, :cond_3

    iget v8, v5, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v8, v9

    .line 333
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->getScreenWidth_1_3()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    if-ge v8, v9, :cond_3

    const/4 v1, 0x1

    nop

    .line 334
    .end local v7    # "bResult":Z
    .local v1, "bResult":Z
    :cond_3
    return v1

    .line 309
    .end local v0    # "yComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$YComparator;
    .end local v1    # "bResult":Z
    .end local v2    # "maxPCY":Landroid/graphics/Point;
    .end local v3    # "minPCY":Landroid/graphics/Point;
    .end local v4    # "xComparator":Lcom/android/server/policy/OemThreePointersGesturesListener$XComparator;
    .end local v5    # "maxPCX":Landroid/graphics/Point;
    .end local v6    # "minPCX":Landroid/graphics/Point;
    :cond_4
    :goto_0
    return v1
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 113
    iget v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurrentUserId:I

    if-eqz v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    if-nez v0, :cond_1

    .line 117
    return-void

    .line 120
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 122
    .local v0, "action":I
    const v1, 0xff00

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    and-int/lit16 v5, v0, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_7

    .line 124
    :cond_2
    and-int v5, v0, v1

    shr-int/lit8 v5, v5, 0x8

    .line 126
    .local v5, "index":I
    if-nez v0, :cond_3

    .line 127
    iput-boolean v4, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurDown:Z

    .line 128
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 129
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    .line 132
    iget-object v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 133
    iget-object v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 134
    iget-object v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 137
    :cond_3
    iget v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 140
    iget v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ne v6, v2, :cond_6

    .line 141
    iget v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 142
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mFirstShotY:I

    .line 145
    :cond_4
    nop

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1f4

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    move v6, v4

    goto :goto_0

    :cond_5
    move v6, v3

    :goto_0
    iput-boolean v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsInTapInterval:Z

    .line 150
    :cond_6
    iget v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    iget v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ge v6, v7, :cond_7

    .line 151
    iget v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    iput v6, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    .line 154
    .end local v5    # "index":I
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 156
    .local v5, "NI":I
    move v6, v3

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_8

    .line 157
    iget v7, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mMaxNumPointers:I

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/policy/OemThreePointersGesturesListener;->recordPointers(Landroid/view/MotionEvent;II)V

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 160
    .end local v6    # "i":I
    :cond_8
    if-eq v0, v4, :cond_9

    if-eq v0, v2, :cond_9

    and-int/lit16 v6, v0, 0xff

    const/4 v7, 0x6

    if-ne v6, v7, :cond_d

    .line 163
    :cond_9
    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x8

    .line 166
    .local v1, "index":I
    if-eq v0, v4, :cond_c

    if-ne v0, v2, :cond_a

    goto :goto_2

    .line 172
    :cond_a
    iget v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    if-ne v3, v2, :cond_b

    iget-boolean v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsInTapInterval:Z

    if-eqz v3, :cond_b

    .line 174
    invoke-direct {p0}, Lcom/android/server/policy/OemThreePointersGesturesListener;->shouldShot()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 175
    iget-object v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_b
    iget v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 180
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers1:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 182
    iget-object v2, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mPointers2:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .end local v1    # "index":I
    goto :goto_3

    .line 168
    .restart local v1    # "index":I
    :cond_c
    :goto_2
    iput-boolean v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurDown:Z

    .line 169
    iput v3, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mCurNumPointers:I

    .line 185
    .end local v1    # "index":I
    :cond_d
    :goto_3
    return-void
.end method

.method public setScreenShotEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 351
    iput-boolean p1, p0, Lcom/android/server/policy/OemThreePointersGesturesListener;->mIsShotScreenEnable:Z

    .line 352
    return-void
.end method
