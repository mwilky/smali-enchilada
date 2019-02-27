.class public Landroid/hardware/radio/RadioManager$BandDescriptor;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BandDescriptor"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$BandDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLowerLimit:I

.field private final mRegion:I

.field private final mSpacing:I

.field private final mType:I

.field private final mUpperLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioManager$BandDescriptor$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$BandDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    iput p2, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    iput p3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    iput p4, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    iput p5, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$100(Landroid/os/Parcel;)I
    .locals 1

    invoke-static {p0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->lookupTypeFromParcel(Landroid/os/Parcel;)I

    move-result v0

    return v0
.end method

.method private static lookupTypeFromParcel(Landroid/os/Parcel;)I
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return v1
.end method


# virtual methods
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
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandDescriptor;

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v4

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v4

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getLowerLimit()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    return v0
.end method

.method public getRegion()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    return v0
.end method

.method public getSpacing()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    return v0
.end method

.method public getUpperLimit()I
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget v4, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget v4, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    add-int/2addr v1, v4

    mul-int v3, v2, v1

    iget v4, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    add-int/2addr v3, v4

    mul-int v1, v2, v3

    iget v4, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    add-int/2addr v1, v4

    mul-int/2addr v2, v1

    iget v3, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    add-int/2addr v2, v3

    return v2
.end method

.method public isAmBand()Z
    .locals 2

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    const/4 v1, 0x3

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

.method public isFmBand()Z
    .locals 3

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BandDescriptor [mRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLowerLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUpperLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mRegion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mLowerLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mUpperLimit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/radio/RadioManager$BandDescriptor;->mSpacing:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
