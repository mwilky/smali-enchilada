.class public Landroid/location/GeocoderParams;
.super Ljava/lang/Object;
.source "GeocoderParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GeocoderParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/GeocoderParams$1;

    invoke-direct {v0}, Landroid/location/GeocoderParams$1;-><init>()V

    sput-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/location/GeocoderParams$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/location/GeocoderParams;-><init>()V

    return-void
.end method

.method static synthetic access$102(Landroid/location/GeocoderParams;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$202(Landroid/location/GeocoderParams;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/location/GeocoderParams;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/location/GeocoderParams;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
