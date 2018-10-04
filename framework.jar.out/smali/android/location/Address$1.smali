.class Landroid/location/Address$1;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Address;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;
    .locals 11

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v3, Landroid/location/Address;

    invoke-direct {v3, v2}, Landroid/location/Address;-><init>(Ljava/util/Locale;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3, v6}, Landroid/location/Address;->access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3}, Landroid/location/Address;->access$000(Landroid/location/Address;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-static {v3}, Landroid/location/Address;->access$100(Landroid/location/Address;)I

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v3, v9}, Landroid/location/Address;->access$102(Landroid/location/Address;I)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/location/Address;->access$002(Landroid/location/Address;Ljava/util/HashMap;)Ljava/util/HashMap;

    const/4 v6, -0x1

    invoke-static {v3, v6}, Landroid/location/Address;->access$102(Landroid/location/Address;I)I

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$302(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$402(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$502(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$602(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$902(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$1002(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$1102(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/location/Address;->access$1202(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_3

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v7

    :goto_2
    invoke-static {v3, v6}, Landroid/location/Address;->access$1302(Landroid/location/Address;Z)Z

    invoke-static {v3}, Landroid/location/Address;->access$1300(Landroid/location/Address;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    invoke-static {v3, v8, v9}, Landroid/location/Address;->access$1402(Landroid/location/Address;D)D

    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_5

    goto :goto_3

    :cond_5
    move v5, v7

    :goto_3
    invoke-static {v3, v5}, Landroid/location/Address;->access$1502(Landroid/location/Address;Z)Z

    invoke-static {v3}, Landroid/location/Address;->access$1500(Landroid/location/Address;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-static {v3, v5, v6}, Landroid/location/Address;->access$1602(Landroid/location/Address;D)D

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->access$1702(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->access$1802(Landroid/location/Address;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/location/Address;->access$1902(Landroid/location/Address;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/location/Address$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/location/Address;
    .locals 1

    new-array v0, p1, [Landroid/location/Address;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/location/Address$1;->newArray(I)[Landroid/location/Address;

    move-result-object p1

    return-object p1
.end method
