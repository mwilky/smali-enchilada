.class public final Landroid/telephony/UiccAccessRule;
.super Ljava/lang/Object;
.source "UiccAccessRule.java"

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
            "Landroid/telephony/UiccAccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODING_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UiccAccessRule"


# instance fields
.field private final mAccessType:J

.field private final mCertificateHash:[B

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/UiccAccessRule$1;

    invoke-direct {v0}, Landroid/telephony/UiccAccessRule$1;-><init>()V

    sput-object v0, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    iput-object p2, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    iput-wide p3, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    return-void
.end method

.method public static decodeRules([B)[Landroid/telephony/UiccAccessRule;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    new-array v4, v3, [Landroid/telephony/UiccAccessRule;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    new-array v7, v6, [B

    invoke-virtual {v2, v7}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_1
    move-object v8, v0

    :goto_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    new-instance v11, Landroid/telephony/UiccAccessRule;

    invoke-direct {v11, v7, v8, v9, v10}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    aput-object v11, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    :goto_3
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "ByteArrayInputStream should never lead to an IOException"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static encodeRules([Landroid/telephony/UiccAccessRule;)[B
    .locals 9

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v3, p0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, p0, v5

    iget-object v7, v6, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    array-length v7, v7

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v7, v6, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v7, v6, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v7, v6, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    :goto_1
    iget-wide v7, v6, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {v1, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ByteArrayOutputStream should never lead to an IOException"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B
    .locals 4

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "UiccAccessRule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NoSuchAlgorithmException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private matches([BLjava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

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

    check-cast v2, Landroid/telephony/UiccAccessRule;

    iget-object v3, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    iget-object v4, v2, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    iget-wide v5, v2, Landroid/telephony/UiccAccessRule;->mAccessType:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 6

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Landroid/telephony/UiccAccessRule;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use GET_SIGNATURES when looking up package info"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 3

    const-string v0, "SHA-1"

    invoke-static {p1, v0}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "SHA-256"

    invoke-static {p1, v1}, Landroid/telephony/UiccAccessRule;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {p0, v0, p2}, Landroid/telephony/UiccAccessRule;->matches([BLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v1, p2}, Landroid/telephony/UiccAccessRule;->matches([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method public getCertificateHexString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v2, v3

    mul-int v0, v1, v2

    iget-object v3, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/2addr v1, v0

    iget-wide v2, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " access: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mCertificateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/telephony/UiccAccessRule;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/telephony/UiccAccessRule;->mAccessType:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
