.class public Landroid/graphics/PorterDuffColorFilter;
.super Landroid/graphics/ColorFilter;
.source "PorterDuffColorFilter.java"


# instance fields
.field private mColor:I

.field private mMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iput-object p2, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method private static native native_CreatePorterDuffFilter(II)J
.end method


# virtual methods
.method createNativeInstance()J
    .locals 2

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget-object v1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v1, v1, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->native_CreatePorterDuffFilter(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;

    iget v3, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    iget v4, v2, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v3, v3, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    iget-object v4, v2, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    iget v4, v4, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    return v0
.end method

.method public getMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v1, v0

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    add-int/2addr v1, v0

    return v1
.end method

.method public setColor(I)V
    .locals 1

    iget v0, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/graphics/PorterDuffColorFilter;->mColor:I

    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->discardNativeInstance()V

    :cond_0
    return-void
.end method

.method public setMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/graphics/PorterDuffColorFilter;->mMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/graphics/PorterDuffColorFilter;->discardNativeInstance()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "mode must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
