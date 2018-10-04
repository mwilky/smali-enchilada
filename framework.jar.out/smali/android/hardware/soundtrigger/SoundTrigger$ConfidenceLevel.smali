.class public Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfidenceLevel"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final confidenceLevel:I

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    return-void
.end method

.method static synthetic access$500(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .locals 1

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    move-result-object v0

    return-object v0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    invoke-direct {v2, v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    return-object v2
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
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    add-int/2addr v3, v4

    mul-int/2addr v2, v3

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    add-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfidenceLevel [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", confidenceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
