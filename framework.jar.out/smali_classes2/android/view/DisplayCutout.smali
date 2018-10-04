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

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->EMPTY_REGION:Landroid/graphics/Region;

    new-instance v0, Landroid/view/DisplayCutout;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    sget-object v2, Landroid/view/DisplayCutout;->EMPTY_REGION:Landroid/graphics/Region;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    sput-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    sput-object v0, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    if-nez p2, :cond_2

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p2}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Region;ZLandroid/view/DisplayCutout$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    :goto_0
    invoke-static {p2}, Landroid/view/DisplayCutout;->boundingRectsToRegion(Ljava/util/List;)Landroid/graphics/Region;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/DisplayCutout;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/DisplayCutout;)Landroid/graphics/Region;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    return-object v0
.end method

.method private static atLeastZero(I)I
    .locals 1

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

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static fromBoundingRect(IIII)Landroid/view/DisplayCutout;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    int-to-float v1, p0

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v1, p0

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v1, p2

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-static {v0}, Landroid/view/DisplayCutout;->fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object v1

    return-object v1
.end method

.method public static fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;
    .locals 7

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Region;->set(IIII)Z

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    invoke-virtual {v3, p0, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    invoke-virtual {v2}, Landroid/graphics/Region;->recycle()V

    new-instance v4, Landroid/view/DisplayCutout;

    sget-object v5, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-direct {v4, v5, v3, v1}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-object v4
.end method

.method public static fromResources(Landroid/content/res/Resources;II)Landroid/view/DisplayCutout;
    .locals 3

    const v0, 0x1040165

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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Landroid/view/DisplayCutout;->pathAndDisplayCutoutFromSpec(Ljava/lang/String;IIF)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    return-object v0
.end method

.method private static pathAndDisplayCutoutFromSpec(Ljava/lang/String;IIF)Landroid/util/Pair;
    .locals 8
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

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object v0

    :cond_0
    sget-object v0, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

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

    sget-object v1, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    monitor-exit v0

    return-object v1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v0, "@right"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    int-to-float v0, p1

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

    :cond_2
    int-to-float v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    :goto_0
    const-string v2, "@dp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "@dp"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const/4 v3, 0x0

    const-string v4, "@bottom"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "@bottom"

    const/4 v5, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aget-object v1, v4, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :try_start_1
    invoke-static {p0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    nop

    nop

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    if-eqz v2, :cond_5

    invoke-virtual {v4, p3, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v1, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    if-eqz v3, :cond_6

    :try_start_2
    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    nop

    nop

    int-to-float v7, p2

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v6, v4}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-virtual {v1, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "DisplayCutout"

    const-string v7, "Could not inflate bottom cutout: "

    invoke-static {v6, v7, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v6, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object v6

    :cond_6
    :goto_1
    new-instance v5, Landroid/util/Pair;

    invoke-static {v1}, Landroid/view/DisplayCutout;->fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, Landroid/view/DisplayCutout;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    sput-object p0, Landroid/view/DisplayCutout;->sCachedSpec:Ljava/lang/String;

    sput p1, Landroid/view/DisplayCutout;->sCachedDisplayWidth:I

    sput p2, Landroid/view/DisplayCutout;->sCachedDisplayHeight:I

    sput p3, Landroid/view/DisplayCutout;->sCachedDensity:F

    sput-object v5, Landroid/view/DisplayCutout;->sCachedCutout:Landroid/util/Pair;

    monitor-exit v6

    return-object v5

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    :catch_1
    move-exception v1

    const-string v4, "DisplayCutout"

    const-string v5, "Could not inflate cutout: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Landroid/view/DisplayCutout;->NULL_PAIR:Landroid/util/Pair;

    return-object v4

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

    const v0, 0x1040165

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

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/DisplayCutout;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/view/DisplayCutout;

    iget-object v3, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    iget-object v4, v1, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v3, v4}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v7

    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v5

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    const v5, 0x7fffffff

    sget-object v6, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v7, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

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

    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Region;->recycle()V

    return-object v0
.end method

.method public getBounds()Landroid/graphics/Region;
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-static {v0}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v0

    return-object v0
.end method

.method public getSafeInsetBottom()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getSafeInsetLeft()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getSafeInsetRight()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getSafeInsetTop()I
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getSafeInsets()Landroid/graphics/Rect;
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public inset(IIII)Landroid/view/DisplayCutout;
    .locals 4

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-static {v1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v1

    if-gtz p2, :cond_1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-lez v2, :cond_2

    :cond_1
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->top:I

    :cond_2
    if-gtz p4, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_4

    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, p4

    invoke-static {v2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :cond_4
    if-gtz p1, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-lez v2, :cond_6

    :cond_5
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    :cond_6
    if-gtz p3, :cond_7

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_8

    :cond_7
    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p3

    invoke-static {v2}, Landroid/view/DisplayCutout;->atLeastZero(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    :cond_8
    neg-int v2, p1

    neg-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    new-instance v2, Landroid/view/DisplayCutout;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/view/DisplayCutout;-><init>(Landroid/graphics/Rect;Landroid/graphics/Region;Z)V

    return-object v2

    :cond_9
    :goto_0
    return-object p0
.end method

.method public isBoundsEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-object v0, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    sget-object v1, Landroid/view/DisplayCutout;->ZERO_RECT:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public replaceSafeInsets(Landroid/graphics/Rect;)Landroid/view/DisplayCutout;
    .locals 4

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

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayCutout{insets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " boundingRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/DisplayCutout;->mSafeInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000001L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Landroid/view/DisplayCutout;->mBounds:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
