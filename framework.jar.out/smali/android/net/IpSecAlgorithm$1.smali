.class Landroid/net/IpSecAlgorithm$1;
.super Ljava/lang/Object;
.source "IpSecAlgorithm.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/IpSecAlgorithm;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecAlgorithm;
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 199
    .local v1, "key":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, "truncLenBits":I
    new-instance v3, Landroid/net/IpSecAlgorithm;

    invoke-direct {v3, v0, v1, v2}, Landroid/net/IpSecAlgorithm;-><init>(Ljava/lang/String;[BI)V

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Landroid/net/IpSecAlgorithm$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/IpSecAlgorithm;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/IpSecAlgorithm;
    .locals 1
    .param p1, "size"    # I

    .line 205
    new-array v0, p1, [Landroid/net/IpSecAlgorithm;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0, p1}, Landroid/net/IpSecAlgorithm$1;->newArray(I)[Landroid/net/IpSecAlgorithm;

    move-result-object p1

    return-object p1
.end method
