.class public final Landroid/net/wifi/aware/PublishConfig;
.super Ljava/lang/Object;
.source "PublishConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/PublishConfig$Builder;,
        Landroid/net/wifi/aware/PublishConfig$PublishTypes;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/PublishConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLISH_TYPE_SOLICITED:I = 0x1

.field public static final PUBLISH_TYPE_UNSOLICITED:I


# instance fields
.field public final mEnableRanging:Z

.field public final mEnableTerminateNotification:Z

.field public final mMatchFilter:[B

.field public final mPublishType:I

.field public final mServiceName:[B

.field public final mServiceSpecificInfo:[B

.field public final mTtlSec:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/aware/PublishConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/PublishConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[B[BIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    iput-object p2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    iput-object p3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    iput p4, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    iput p5, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    iput-boolean p6, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    iput-boolean p7, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    return-void
.end method


# virtual methods
.method public assertValid(Landroid/net/wifi/aware/Characteristics;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validateServiceName([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/net/wifi/aware/TlvBufferUtils;->isValid([BII)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-ltz v0, :cond_9

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-gt v0, v1, :cond_9

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    if-ltz v0, :cond_8

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceNameLength()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    array-length v1, v1

    if-gt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Service name longer than supported by device characteristics"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxServiceSpecificInfoLength()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    array-length v2, v2

    if-gt v2, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Service specific info longer than supported by device characteristics"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getMaxMatchFilterLength()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    array-length v3, v3

    if-gt v3, v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Match filter longer than supported by device characteristics"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :goto_2
    if-nez p2, :cond_7

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ranging is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_3
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ttlSec - must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid publishType - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid txFilter configuration - LV fields do not match up to length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    instance-of v1, p1, Landroid/net/wifi/aware/PublishConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/PublishConfig;

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    iget-object v4, v1, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    iget-object v4, v1, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    iget-object v4, v1, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    iget v4, v1, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    iget v4, v1, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    iget-boolean v4, v1, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PublishConfig [mServiceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    if-nez v1, :cond_0

    const-string v1, "<null>"

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceName.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    array-length v1, v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSpecificInfo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_2

    const-string v1, "<null>"

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceSpecificInfo.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    array-length v1, v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-direct {v1, v2, v3, v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;-><init>(II[B)V

    invoke-virtual {v1}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMatchFilter.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    array-length v2, v1

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPublishType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTtlSec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableTerminateNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableRanging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceName:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mServiceSpecificInfo:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/net/wifi/aware/PublishConfig;->mMatchFilter:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mPublishType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/wifi/aware/PublishConfig;->mTtlSec:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableTerminateNotification:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/net/wifi/aware/PublishConfig;->mEnableRanging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
