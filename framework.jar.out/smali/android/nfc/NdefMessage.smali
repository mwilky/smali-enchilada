.class public final Landroid/nfc/NdefMessage;
.super Ljava/lang/Object;
.source "NdefMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/NdefMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRecords:[Landroid/nfc/NdefRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/nfc/NdefMessage$1;

    invoke-direct {v0}, Landroid/nfc/NdefMessage$1;-><init>()V

    sput-object v0, Landroid/nfc/NdefMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "record cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    iput-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    aput-object p1, v0, v1

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v3, p2

    invoke-static {p2, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "record cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/nfc/NdefRecord;->parse(Ljava/nio/ByteBuffer;Z)[Landroid/nfc/NdefRecord;

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gtz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/nfc/FormatException;

    const-string/jumbo v2, "trailing data"

    invoke-direct {v1, v2}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "data is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([Landroid/nfc/NdefRecord;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "records cannot contain null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must have at least one record"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/nfc/NdefMessage;

    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    iget-object v2, v0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getByteArrayLength()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getByteLength()I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getRecords()[Landroid/nfc/NdefRecord;
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .locals 7

    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getByteArrayLength()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v4, v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    iget-object v6, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v6, v6

    sub-int/2addr v6, v4

    if-ne v3, v6, :cond_1

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    iget-object v6, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    aget-object v6, v6, v3

    invoke-virtual {v6, v1, v5, v4}, Landroid/nfc/NdefRecord;->writeToByteBuffer(Ljava/nio/ByteBuffer;ZZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NdefMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/nfc/NdefMessage;->mRecords:[Landroid/nfc/NdefRecord;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return-void
.end method
