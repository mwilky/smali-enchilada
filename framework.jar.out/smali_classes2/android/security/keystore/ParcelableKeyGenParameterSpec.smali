.class public final Landroid/security/keystore/ParcelableKeyGenParameterSpec;
.super Ljava/lang/Object;
.source "ParcelableKeyGenParameterSpec.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ALGORITHM_PARAMETER_SPEC_EC:I = 0x3

.field private static final ALGORITHM_PARAMETER_SPEC_NONE:I = 0x1

.field private static final ALGORITHM_PARAMETER_SPEC_RSA:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/keystore/ParcelableKeyGenParameterSpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec$1;

    invoke-direct {v0}, Landroid/security/keystore/ParcelableKeyGenParameterSpec$1;-><init>()V

    sput-object v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-direct {v2, v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUid(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v8, Ljava/security/spec/RSAKeyGenParameterSpec;

    invoke-direct {v8, v6, v7}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    move-object v5, v8

    goto :goto_0

    :cond_2
    const/4 v7, 0x3

    if-ne v4, v7, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {v7, v6}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    nop

    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_3
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    invoke-virtual {v2, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v2, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateSerialNumber(Ljava/math/BigInteger;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    new-instance v6, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-static {p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityStart(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-static {p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-static {p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForConsumptionEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUniqueIdIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationValidWhileOnBody(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setInvalidatedByBiometricEnrollment(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserPresenceRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v7

    iput-object v7, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-void

    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const-string v8, "Unknown algorithm parameter spec: %d"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/security/keystore/ParcelableKeyGenParameterSpec$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/security/keystore/KeyGenParameterSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-void
.end method

.method private static readDateOrNull(Landroid/os/Parcel;)Ljava/util/Date;
    .locals 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpec()Landroid/security/keystore/KeyGenParameterSpec;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    instance-of v2, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    :cond_1
    instance-of v2, v0, Ljava/security/spec/ECGenParameterSpec;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/security/spec/ECGenParameterSpec;

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    nop

    :goto_0
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->writeOptionalDate(Landroid/os/Parcel;Ljava/util/Date;)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getAttestationChallenge()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUniqueIdIncluded()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v1, p0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isUserPresenceRequired()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, "Unknown algorithm parameter spec: %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
