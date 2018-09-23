.class public final Landroid/support/v17/leanback/graphics/ColorFilterCache;
.super Ljava/lang/Object;
.source "ColorFilterCache.java"


# static fields
.field private static final sColorToFiltersMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/support/v17/leanback/graphics/ColorFilterCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mFilters:[Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/graphics/ColorFilterCache;->sColorToFiltersMap:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [Landroid/graphics/PorterDuffColorFilter;

    iput-object v0, p0, Landroid/support/v17/leanback/graphics/ColorFilterCache;->mFilters:[Landroid/graphics/PorterDuffColorFilter;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-static {v0, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/graphics/ColorFilterCache;->mFilters:[Landroid/graphics/PorterDuffColorFilter;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getColorFilterCache(I)Landroid/support/v17/leanback/graphics/ColorFilterCache;
    .locals 5

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    sget-object v3, Landroid/support/v17/leanback/graphics/ColorFilterCache;->sColorToFiltersMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/graphics/ColorFilterCache;

    if-nez v3, :cond_0

    new-instance v4, Landroid/support/v17/leanback/graphics/ColorFilterCache;

    invoke-direct {v4, v0, v1, v2}, Landroid/support/v17/leanback/graphics/ColorFilterCache;-><init>(III)V

    move-object v3, v4

    sget-object v4, Landroid/support/v17/leanback/graphics/ColorFilterCache;->sColorToFiltersMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v3
.end method


# virtual methods
.method public getFilterForLevel(F)Landroid/graphics/ColorFilter;
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v17/leanback/graphics/ColorFilterCache;->mFilters:[Landroid/graphics/PorterDuffColorFilter;

    aget-object v1, v1, v0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
