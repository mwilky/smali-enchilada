.class public final Landroid/telephony/CellIdentityWcdma;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityWcdma.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mPsc:I

.field private final mUarfcn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/telephony/CellIdentityWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    sget-object v1, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const v4, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 9

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v1, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    const/4 v2, 0x4

    move-object v0, p0

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iput p2, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iput p3, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iput p4, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    sget-object v0, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityWcdma;)V
    .locals 9

    iget v1, p1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iget v2, p1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iget v3, p1, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iget v4, p1, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    iget-object v5, p1, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    iget-object v6, p1, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    iget-object v7, p1, Landroid/telephony/CellIdentityWcdma;->mAlphaLong:Ljava/lang/String;

    iget-object v8, p1, Landroid/telephony/CellIdentityWcdma;->mAlphaShort:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityWcdma;
    .locals 1

    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method copy()Landroid/telephony/CellIdentityWcdma;
    .locals 1

    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/telephony/CellIdentityWcdma;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/CellIdentityWcdma;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityWcdma;

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iget v4, v1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iget v4, v1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iget v4, v1, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    iget v4, v1, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getChannelNumber()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    return v0
.end method

.method public getCid()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public getMccString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMnc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7fffffff

    :goto_0
    return v0
.end method

.method public getMncString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMobileNetworkOperator()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getPsc()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return v0
.end method

.method public getUarfcn()I
    .locals 1

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityWcdma;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":{ mLac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPsc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mUarfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityWcdma;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mUarfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
