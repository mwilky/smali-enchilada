.class Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvStatusInfo"
.end annotation


# instance fields
.field public mCn0s:[F

.field public mSvAzimuths:[F

.field public mSvCarrierFreqs:[F

.field public mSvCount:I

.field public mSvElevations:[F

.field public mSvidWithFlags:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;-><init>()V

    return-void
.end method
