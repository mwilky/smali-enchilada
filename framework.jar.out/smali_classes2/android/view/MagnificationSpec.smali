.class public Landroid/view/MagnificationSpec;
.super Ljava/lang/Object;
.source "MagnificationSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/MagnificationSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public offsetX:F

.field public offsetY:F

.field public scale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    new-instance v0, Landroid/view/MagnificationSpec$1;

    invoke-direct {v0}, Landroid/view/MagnificationSpec$1;-><init>()V

    sput-object v0, Landroid/view/MagnificationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    return-void
.end method

.method static synthetic access$000(Landroid/view/MagnificationSpec;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/MagnificationSpec;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    return-void
.end method

.method public static obtain()Landroid/view/MagnificationSpec;
    .locals 2

    sget-object v0, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/MagnificationSpec;

    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    :goto_0
    return-object v1
.end method

.method public static obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;
    .locals 2

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    iput v1, v0, Landroid/view/MagnificationSpec;->scale:F

    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

    check-cast v2, Landroid/view/MagnificationSpec;

    iget v3, p0, Landroid/view/MagnificationSpec;->scale:F

    iget v4, v2, Landroid/view/MagnificationSpec;->scale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v4, v2, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    iget v4, v2, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 6

    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/16 v3, 0x1f

    mul-int v4, v3, v0

    iget v5, p0, Landroid/view/MagnificationSpec;->offsetX:F

    cmpl-float v5, v5, v1

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    add-int/2addr v4, v5

    mul-int/2addr v3, v4

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    nop

    :cond_2
    add-int/2addr v3, v2

    return v3
.end method

.method public initialize(FFF)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iput p1, p0, Landroid/view/MagnificationSpec;->scale:F

    iput p2, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iput p3, p0, Landroid/view/MagnificationSpec;->offsetY:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scale must be greater than or equal to one!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNop()Z
    .locals 2

    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public recycle()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->clear()V

    sget-object v0, Landroid/view/MagnificationSpec;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setTo(Landroid/view/MagnificationSpec;)V
    .locals 1

    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    iput v0, p0, Landroid/view/MagnificationSpec;->scale:F

    iget v0, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v0, p1, Landroid/view/MagnificationSpec;->offsetY:F

    iput v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<scale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",offsetX:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",offsetY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    invoke-virtual {p0}, Landroid/view/MagnificationSpec;->recycle()V

    return-void
.end method
