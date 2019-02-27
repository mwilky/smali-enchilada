.class public final Landroid/view/DisplayCutout;
.super Ljava/lang/Object;
.source "DisplayCutout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayCutout$ParcelableWrapper;
    }
.end annotation


# static fields
.field private static final BOTTOM_MARKER:Ljava/lang/String; = "@bottom"

.field private static final CACHE_LOCK:Ljava/lang/Object;

.field private static final DP_MARKER:Ljava/lang/String; = "@dp"

.field private static final EMPTY_REGION:Landroid/graphics/Region;

.field public static final EMULATION_OVERLAY_CATEGORY:Ljava/lang/String; = "com.android.internal.display_cutout_emulation"

.field public static final NO_CUTOUT:Landroid/view/DisplayCutout;

.field private static final NULL_PAIR:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static final RIGHT_MARKER:Ljava/lang/String; = "@right"

.field private static final TAG:Ljava/lang/String; = "DisplayCutout"

.field private static final ZERO_RECT:Landroid/graphics/Rect;

.field private static sCachedCutout:Landroid/util/Pair;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private static sCachedDensity:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation
.end field

.field private static sCachedDisplayHeight:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation
.end field

.field private static sCachedDisplayWidth:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation
.end field

.field private static sCachedSpec:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "CACHE_LOCK"
    .end annotation
.end field


# instance fields
.field private final mBounds:Landroid/graphics/Region;

.field private final mSafeInsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    .line 70
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->EMPTY_REGION:Landroid/graphics/Region;

    .line 77
    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v2, Landroid/view/DisplayCutout;->EMPTY_REGION:Landroid/graphics/Region;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    sput-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    .line 81
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    .line 93
    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    sput-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V
    .locals 1
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .param p2, "bounds"    # Landroid/graphics/Region;
    .param p3, "copyArguments"    # Z

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    if-nez p1, :cond_0

    sget-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    goto :goto_0

    .line 121
    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    .line 122
    if-nez p2, :cond_2

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    goto :goto_1

    .line 123
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Region;ZLandroid/view/DisplayCutout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/graphics/Rect;
    .param p2, "x1"    # Landroid/graphics/Region;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Landroid/view/DisplayCutout$1;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 3
    .param p1, "safeInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 108
    .local p2, "boundingRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    .line 109
    :goto_0
    invoke-static {p2}, Landroid/view/DisplayCutout;->boundingRectsToRegion(Ljava/util/List;)Landroid/graphics/Region;

    move-result-object v1

    const/4 v2, 0x1

    .line 108
    invoke-direct {p0, v0, v1, v2}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/view/DisplayCutout;

    .line 52
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/DisplayCutout;)Landroid/graphics/Region;
    .locals 1
    .param p0, "x0"    # Landroid/view/DisplayCutout;

    .line 52
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    return-object v0
.end method

.method private static atLeastZero(I)I
    .locals 1
    .param p0, "value"    # I

    .line 318
    if-gez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    return v0
.end method

.method private static boundingRectsToRegion(Ljava/util/List;)Landroid/graphics/Region;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Region;"
        }
    .end annotation

    .line 472
    .local p0, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    .line 473
    .local v0, "result":Landroid/graphics/Region;
    if-eqz p0, :cond_0

    .line 474
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 475
    .local v2, "r":Landroid/graphics/Rect;
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 476
    .end local v2    # "r":Landroid/graphics/Rect;
    goto :goto_0

    .line 478
    :cond_0
    return-object v0
.end method

.method public static fromBoundingRect(IIII)Landroid/view/DisplayCutout;
    .locals 3
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I

    .line 328
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 329
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 330
    int-to-float v1, p0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 331
    int-to-float v1, p0

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 332
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 333
    int-to-float v1, p2

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 334
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 335
    invoke-static {v0}, Landroid/view/DisplayCutout;->fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object v1

    return-object v1
.end method

.method public static fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;
    .locals 7
    .param p0, "path"    # Landroid/graphics/Path;

    .line 344
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 345
    .local v0, "clipRect":Landroid/graphics/RectF;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 346
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    .line 347
    .local v2, "clipRegion":Landroid/graphics/Region;
    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    .line 350
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 351
    .local v3, "bounds":Landroid/graphics/Region;
    invoke-virtual {v3, p0, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 352
    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    .line 353
    new-instance v4, Landroid/view/DisplayCutout;

    sget-object v5, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-direct {v4, v5, v3, v1}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-object v4
.end method

.method public static fromResources(Landroid/content/res/Resources;II)Landroid/view/DisplayCutout;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .line 362
    const v0, 0x1040166

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    invoke-static {v0, p1, p2, v1}, Landroid/view/DisplayCutout;->fromSpec(Ljava/lang/String;IIF)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0
.end method

.method public static fromSpec(Ljava/lang/String;IIF)Landroid/view/DisplayCutout;
    .locals 1
    .param p0, "spec"    # Ljava/lang/String;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "density"    # F
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 384
    invoke-static {p0, p1, p2, p3}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;IIF)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    return-object v0
.end method

.method private static pathAndDisplayCutoutFromSpec(Ljava/lang/String;IIF)Landroid/util/Pair;
    .locals 8
    .param p0, "spec"    # Ljava/lang/String;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "density"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIF)",
            "Landroid/util/Pair<",
            "Landroid/graphics/Path;",
            "Landroid/view/DisplayCutout;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object v0

    .line 404
    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_0
    sget-object v1, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    if-ne v1, p1, :cond_1

    sget v1, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    if-ne v1, p2, :cond_1

    sget v1, Landroid/view/DisplayCutout;->sCachedDensity:F

    cmpl-float v1, v1, p3

    if-nez v1, :cond_1

    .line 408
    sget-object v1, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    monitor-exit v0

    return-object v1

    .line 410
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 413
    const-string v0, "@right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 414
    int-to-float v0, p1

    .line 415
    .local v0, "offsetX":F
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "@right"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 417
    .end local v0    # "offsetX":F
    :cond_2
    int-to-float v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 419
    .restart local v0    # "offsetX":F
    :goto_0
    const-string v2, "@dp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 420
    .local v2, "inDp":Z
    if-eqz v2, :cond_3

    .line 421
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "@dp"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 424
    :cond_3
    const/4 v3, 0x0

    .line 425
    .local v3, "bottomSpec":Ljava/lang/String;
    const-string v4, "@bottom"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 426
    const-string v4, "@bottom"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "splits":[Ljava/lang/String;
    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 428
    const/4 v1, 0x1

    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 433
    .end local v4    # "splits":[Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    .local v1, "p":Landroid/graphics/Path;
    nop

    .line 436
    nop

    .line 439
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 440
    .local v4, "m":Landroid/graphics/Matrix;
    if-eqz v2, :cond_5

    .line 441
    invoke-virtual {v4, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 443
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 444
    invoke-virtual {v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 446
    if-eqz v3, :cond_6

    .line 449
    :try_start_2
    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 453
    .local v6, "bottomPath":Landroid/graphics/Path;
    nop

    .line 452
    nop

    .line 455
    int-to-float v7, p2

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 456
    invoke-virtual {v6, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 457
    invoke-virtual {v1, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .end local v6    # "bottomPath":Landroid/graphics/Path;
    goto :goto_1

    .line 450
    :catch_0
    move-exception v5

    .line 451
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "DisplayCutout"

    const-string v7, "Could not inflate bottom cutout: "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    sget-object v6, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object v6

    .line 460
    .end local v5    # "e":Ljava/lang/Throwable;
    :cond_6
    :goto_1
    new-instance v5, Landroid/util/Pair;

    invoke-static {v1}, Landroid/view/DisplayCutout;->fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 461
    .local v5, "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Path;Landroid/view/DisplayCutout;>;"
    sget-object v6, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 462
    :try_start_3
    sput-object p0, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    .line 463
    sput p1, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    .line 464
    sput p2, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    .line 465
    sput p3, Landroid/view/DisplayCutout;->sCachedDensity:F

    .line 466
    sput-object v5, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    .line 467
    monitor-exit v6

    .line 468
    return-object v5

    .line 467
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 434
    .end local v1    # "p":Landroid/graphics/Path;
    .end local v4    # "m":Landroid/graphics/Matrix;
    .end local v5    # "result":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Path;Landroid/view/DisplayCutout;>;"
    :catch_1
    move-exception v1

    .line 435
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "DisplayCutout"

    const-string v5, "Could not inflate cutout: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    sget-object v4, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object v4

    .line 410
    .end local v0    # "offsetX":F
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "inDp":Z
    .end local v3    # "bottomSpec":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public static pathFromResources(Landroid/content/res/Resources;II)Landroid/graphics/Path;
    .locals 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .line 372
    const v0, 0x1040166

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    invoke-static {v0, p1, p2, v1}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;IIF)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Path;

    return-object v0
.end method

.method public static pathFromResourcesTest(Ljava/lang/String;II)Landroid/graphics/Path;
    .locals 2
    .param p0, "test"    # Ljava/lang/String;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .line 394
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    invoke-static {p0, p1, p2, v0}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;IIF)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Path;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 243
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 244
    return v0

    .line 246
    :cond_0
    instance-of v1, p1, Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 247
    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout;

    .line 248
    .local v1, "c":Landroid/view/DisplayCutout;
    iget-object v3, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    .line 249
    invoke-virtual {v3, v4}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 248
    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 251
    .end local v1    # "c":Landroid/view/DisplayCutout;
    :cond_2
    return v2
.end method

.method public getBoundingRects()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    .line 212
    .local v7, "bounds":Landroid/graphics/Region;
    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 213
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 214
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 219
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    const v5, 0x7fffffff

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 220
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_1
    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 225
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 227
    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 228
    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    .line 231
    return-object v0
.end method

.method public getBounds()Landroid/graphics/Region;
    .locals 1

    .line 196
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-static {v0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public getSafeInsetBottom()I
    .locals 1

    .line 152
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getSafeInsetLeft()I
    .locals 1

    .line 157
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getSafeInsetRight()I
    .locals 1

    .line 162
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getSafeInsetTop()I
    .locals 1

    .line 147
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSafeInsets()Landroid/graphics/Rect;
    .locals 2

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 236
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    .line 237
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 238
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public inset(IIII)Landroid/view/DisplayCutout;
    .locals 4
    .param p1, "insetLeft"    # I
    .param p2, "insetTop"    # I
    .param p3, "insetRight"    # I
    .param p4, "insetBottom"    # I

    .line 278
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 284
    .local v0, "safeInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-static {v1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v1

    .line 288
    .local v1, "bounds":Landroid/graphics/Region;
    if-gtz p2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_2

    .line 289
    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 291
    :cond_2
    if-gtz p4, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_4

    .line 292
    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    invoke-static {v2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 294
    :cond_4
    if-gtz p1, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_6

    .line 295
    :cond_5
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 297
    :cond_6
    if-gtz p3, :cond_7

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_8

    .line 298
    :cond_7
    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    invoke-static {v2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 301
    :cond_8
    neg-int v2, p1

    neg-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    .line 302
    new-instance v2, Landroid/view/DisplayCutout;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-object v2

    .line 280
    .end local v0    # "safeInsets":Landroid/graphics/Rect;
    .end local v1    # "bounds":Landroid/graphics/Region;
    :cond_9
    :goto_0
    return-object p0
.end method

.method public isBoundsEmpty()Z
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 133
    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .locals 4
    .param p1, "safeInsets"    # Landroid/graphics/Rect;

    .line 314
    new-instance v0, Landroid/view/DisplayCutout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutout{insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " boundingRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    .line 257
    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 265
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 266
    .local v0, "token":J
    iget-object v2, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 267
    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 268
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 269
    return-void
.end method
