.class Landroid/telecom/ConferenceParticipant$1;
.super Ljava/lang/Object;
.source "ConferenceParticipant.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConferenceParticipant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telecom/ConferenceParticipant;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ConferenceParticipant;
    .locals 6

    const-class v0, Landroid/telecom/ParcelableCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-instance v5, Landroid/telecom/ConferenceParticipant;

    invoke-direct {v5, v1, v2, v3, v4}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V

    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/ConferenceParticipant$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ConferenceParticipant;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/telecom/ConferenceParticipant;
    .locals 1

    new-array v0, p1, [Landroid/telecom/ConferenceParticipant;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/ConferenceParticipant$1;->newArray(I)[Landroid/telecom/ConferenceParticipant;

    move-result-object p1

    return-object p1
.end method
