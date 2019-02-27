.class public final Landroid/telephony/euicc/EuiccNotification;
.super Ljava/lang/Object;
.source "EuiccNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccNotification$Event;
    }
.end annotation


# static fields
.field public static final ALL_EVENTS:I = 0xf

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_DELETE:I = 0x8

.field public static final EVENT_DISABLE:I = 0x4

.field public static final EVENT_ENABLE:I = 0x2

.field public static final EVENT_INSTALL:I = 0x1


# instance fields
.field private final mData:[B

.field private final mEvent:I

.field private final mSeq:I

.field private final mTargetAddr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/euicc/EuiccNotification$1;

    invoke-direct {v0}, Landroid/telephony/euicc/EuiccNotification$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/EuiccNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    iput-object p2, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    iput-object p4, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/euicc/EuiccNotification$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/euicc/EuiccNotification;-><init>(Landroid/os/Parcel;)V

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

    check-cast v2, Landroid/telephony/euicc/EuiccNotification;

    iget v3, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    iget v4, v2, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    iget v4, v2, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    iget-object v4, v2, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    return-object v0
.end method

.method public getEvent()I
    .locals 1

    iget v0, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    return v0
.end method

.method public getSeq()I
    .locals 1

    iget v0, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    return v0
.end method

.method public getTargetAddr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int v2, v1, v0

    iget v3, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EuiccNotification (seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byte["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
