.class public final Landroid/media/AudioFocusInfo;
.super Ljava/lang/Object;
.source "AudioFocusInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mClientId:Ljava/lang/String;

.field private final mClientUid:I

.field private mFlags:I

.field private mGainRequest:I

.field private mGenCount:J

.field private mLossReceived:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSdkTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/AudioFocusInfo$1;

    invoke-direct {v0}, Landroid/media/AudioFocusInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/AudioFocusInfo;->mGenCount:J

    if-nez p1, :cond_0

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    iput p2, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    if-nez p3, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    iput-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    if-nez p4, :cond_2

    const-string v0, ""

    goto :goto_2

    :cond_2
    move-object v0, p4

    :goto_2
    iput-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    iput p5, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    iput p6, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    iput p7, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    iput p8, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    return-void
.end method


# virtual methods
.method public clearLossReceived()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

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

    check-cast v2, Landroid/media/AudioFocusInfo;

    iget-object v3, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    iget-object v4, v2, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iget v3, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    iget v4, v2, Landroid/media/AudioFocusInfo;->mClientUid:I

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget v3, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    iget v4, v2, Landroid/media/AudioFocusInfo;->mGainRequest:I

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    iget v3, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    iget v4, v2, Landroid/media/AudioFocusInfo;->mLossReceived:I

    if-eq v3, v4, :cond_8

    return v1

    :cond_8
    iget v3, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    iget v4, v2, Landroid/media/AudioFocusInfo;->mFlags:I

    if-eq v3, v4, :cond_9

    return v1

    :cond_9
    iget v3, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    iget v4, v2, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    if-eq v3, v4, :cond_a

    return v1

    :cond_a
    return v0
.end method

.method public getAttributes()Landroid/media/AudioAttributes;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUid()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    return v0
.end method

.method public getFlags()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    return v0
.end method

.method public getGainRequest()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    return v0
.end method

.method public getGen()J
    .locals 2

    iget-wide v0, p0, Landroid/media/AudioFocusInfo;->mGenCount:J

    return-wide v0
.end method

.method public getLossReceived()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkTarget()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setGen(J)V
    .locals 0

    iput-wide p1, p0, Landroid/media/AudioFocusInfo;->mGenCount:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mClientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioFocusInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mGainRequest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mLossReceived:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFocusInfo;->mSdkTarget:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/media/AudioFocusInfo;->mGenCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
