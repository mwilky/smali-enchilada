.class public final Landroid/telephony/data/DataProfile;
.super Ljava/lang/Object;
.source "DataProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_3GPP:I = 0x1

.field public static final TYPE_3GPP2:I = 0x2

.field public static final TYPE_COMMON:I


# instance fields
.field private final mApn:Ljava/lang/String;

.field private final mAuthType:I

.field private final mBearerBitmap:I

.field private final mEnabled:Z

.field private final mMaxConns:I

.field private final mMaxConnsTime:I

.field private final mModemCognitive:Z

.field private final mMtu:I

.field private final mMvnoMatchData:Ljava/lang/String;

.field private final mMvnoType:Ljava/lang/String;

.field private final mPassword:Ljava/lang/String;

.field private final mProfileId:I

.field private final mProtocol:Ljava/lang/String;

.field private final mRoamingProtocol:Ljava/lang/String;

.field private final mSupportedApnTypesBitmap:I

.field private final mType:I

.field private final mUserName:Ljava/lang/String;

.field private final mWaitTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/data/DataProfile$1;

    invoke-direct {v0}, Landroid/telephony/data/DataProfile$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIIZILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move/from16 v1, p1

    iput v1, v0, Landroid/telephony/data/DataProfile;->mProfileId:I

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    const/4 v4, -0x1

    move/from16 v5, p4

    if-ne v5, v4, :cond_1

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    :goto_0
    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput v4, v0, Landroid/telephony/data/DataProfile;->mAuthType:I

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    move/from16 v7, p7

    iput v7, v0, Landroid/telephony/data/DataProfile;->mType:I

    move/from16 v8, p8

    iput v8, v0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    move/from16 v9, p9

    iput v9, v0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    move/from16 v10, p10

    iput v10, v0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    move/from16 v11, p11

    iput-boolean v11, v0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    move/from16 v12, p12

    iput v12, v0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    move/from16 v14, p14

    iput v14, v0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    move/from16 v15, p15

    iput v15, v0, Landroid/telephony/data/DataProfile;->mMtu:I

    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/data/DataProfile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eq p1, p0, :cond_2

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public getApn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    return v0
.end method

.method public getBearerBitmap()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    return v0
.end method

.method public getMaxConns()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    return v0
.end method

.method public getMaxConnsTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    return v0
.end method

.method public getMtu()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    return v0
.end method

.method public getMvnoMatchData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    return-object v0
.end method

.method public getMvnoType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileId()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRoamingProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedApnTypesBitmap()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getWaitTime()I
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    return v0
.end method

.method public isModemCognitive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-eqz v1, :cond_0

    const-string v1, "***/***/***"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/data/DataProfile;->mProfileId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mAuthType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConnsTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMaxConns:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mWaitTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mSupportedApnTypesBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mRoamingProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mBearerBitmap:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/data/DataProfile;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/data/DataProfile;->mMvnoMatchData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/telephony/data/DataProfile;->mModemCognitive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
