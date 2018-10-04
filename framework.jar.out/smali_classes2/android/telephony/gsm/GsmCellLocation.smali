.class public Landroid/telephony/gsm/GsmCellLocation;
.super Landroid/telephony/CellLocation;
.source "GsmCellLocation.java"


# instance fields
.field private mCid:I

.field private mLac:I

.field private mPsc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    const-string v0, "lac"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    const-string v0, "cid"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    const-string/jumbo v0, "psc"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v2, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/gsm/GsmCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "lac"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "cid"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "psc"

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public getCid()I
    .locals 1

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    return v0
.end method

.method public getPsc()I
    .locals 1

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLacAndCid(II)V
    .locals 0

    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    iput p2, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    return-void
.end method

.method public setPsc(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    return-void
.end method

.method public setStateInvalid()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    iput v0, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/gsm/GsmCellLocation;->mPsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
