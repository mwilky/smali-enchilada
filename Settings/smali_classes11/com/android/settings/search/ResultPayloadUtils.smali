.class public Lcom/android/settings/search/ResultPayloadUtils;
.super Ljava/lang/Object;
.source "ResultPayloadUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PayloadUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall(Lcom/android/settings/search/ResultPayload;)[B
    .locals 2
    .param p0, "payload"    # Lcom/android/settings/search/ResultPayload;

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 32
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/search/ResultPayload;->writeToParcel(Landroid/os/Parcel;I)V

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 34
    .local v1, "bytes":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 35
    return-object v1
.end method

.method private static unmarshall([B)Landroid/os/Parcel;
    .locals 3
    .param p0, "bytes"    # [B

    .line 47
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 48
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v1, p0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 49
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-object v0
.end method

.method public static unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 2
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 40
    .local p1, "creator":Landroid/os/Parcelable$Creator;, "Landroid/os/Parcelable$Creator<TT;>;"
    invoke-static {p0}, Lcom/android/settings/search/ResultPayloadUtils;->unmarshall([B)Landroid/os/Parcel;

    move-result-object v0

    .line 41
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    .local v1, "result":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 43
    return-object v1
.end method
