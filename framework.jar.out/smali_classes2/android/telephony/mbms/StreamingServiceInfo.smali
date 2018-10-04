.class public final Landroid/telephony/mbms/StreamingServiceInfo;
.super Landroid/telephony/mbms/ServiceInfo;
.source "StreamingServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/mbms/StreamingServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/mbms/StreamingServiceInfo$1;

    invoke-direct {v0}, Landroid/telephony/mbms/StreamingServiceInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/mbms/StreamingServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/mbms/ServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/mbms/StreamingServiceInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/mbms/StreamingServiceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Landroid/telephony/mbms/ServiceInfo;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/telephony/mbms/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
