.class public Landroid/hardware/radio/RadioManager$AmBandConfig;
.super Landroid/hardware/radio/RadioManager$BandConfig;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AmBandConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$AmBandConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioManager$AmBandConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStereo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioManager$AmBandConfig$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$AmBandConfig$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioManager$AmBandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(IIIII)V

    iput-boolean p6, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$AmBandDescriptor;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/hardware/radio/RadioManager$BandDescriptor;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager$BandConfig;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioManager$AmBandConfig;-><init>(Landroid/os/Parcel;)V

    return-void
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
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioManager$BandConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    instance-of v1, p1, Landroid/hardware/radio/RadioManager$AmBandConfig;

    if-nez v1, :cond_2

    return v2

    :cond_2
    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$AmBandConfig;

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    invoke-virtual {v1}, Landroid/hardware/radio/RadioManager$AmBandConfig;->getStereo()Z

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getStereo()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->hashCode()I

    move-result v1

    const/16 v2, 0x1f

    mul-int/2addr v2, v1

    iget-boolean v3, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    add-int/2addr v2, v3

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AmBandConfig ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Landroid/hardware/radio/RadioManager$BandConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStereo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/hardware/radio/RadioManager$AmBandConfig;->mStereo:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
