.class public abstract Landroid/telephony/CellIdentity;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellIdentity$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentity;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_CHANNEL_NUMBER:I = -0x1

.field public static final TYPE_CDMA:I = 0x2

.field public static final TYPE_GSM:I = 0x1

.field public static final TYPE_LTE:I = 0x3

.field public static final TYPE_TDSCDMA:I = 0x5

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WCDMA:I = 0x4


# instance fields
.field protected final mAlphaLong:Ljava/lang/String;

.field protected final mAlphaShort:Ljava/lang/String;

.field protected final mMccStr:Ljava/lang/String;

.field protected final mMncStr:Ljava/lang/String;

.field protected final mTag:Ljava/lang/String;

.field protected final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellIdentity$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentity$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILandroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    iput p2, p0, Landroid/telephony/CellIdentity;->mType:I

    const v0, 0x7fffffff

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    const-string v2, "^[0-9]{3}$"

    invoke-virtual {p3, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid MCC format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_0
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    goto :goto_2

    :cond_3
    :goto_1
    iput-object p3, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    :goto_2
    if-eqz p4, :cond_7

    const-string v2, "^[0-9]{2,3}$"

    invoke-virtual {p4, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid MNC format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/CellIdentity;->log(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    :goto_3
    iput-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    goto :goto_5

    :cond_7
    :goto_4
    iput-object p4, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    :goto_5
    iput-object p5, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/CellIdentity;

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    iget-object v3, v0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getChannelNumber()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getOperatorAlphaLong()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorAlphaShort()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentity;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentity;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMccStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mMncStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/CellIdentity;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
