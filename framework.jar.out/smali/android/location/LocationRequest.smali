.class public final Landroid/location/LocationRequest;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66

.field public static final ACCURACY_CITY:I = 0x68

.field public static final ACCURACY_FINE:I = 0x64

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final FASTEST_INTERVAL_FACTOR:D = 6.0

.field public static final POWER_HIGH:I = 0xcb

.field public static final POWER_LOW:I = 0xc9

.field public static final POWER_NONE:I = 0xc8


# instance fields
.field private mExpireAt:J

.field private mExplicitFastestInterval:Z

.field private mFastestInterval:J

.field private mHideFromAppOps:Z

.field private mInterval:J

.field private mLowPowerMode:Z

.field private mNumUpdates:I

.field private mProvider:Ljava/lang/String;

.field private mQuality:I

.field private mSmallestDisplacement:F

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/LocationRequest$1;

    invoke-direct {v0}, Landroid/location/LocationRequest$1;-><init>()V

    sput-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const v1, 0x7fffffff

    iput v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    const-string v1, "fused"

    iput-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationRequest;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const v1, 0x7fffffff

    iput v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    const-string v1, "fused"

    iput-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    iget v0, p1, Landroid/location/LocationRequest;->mQuality:I

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    iget-wide v0, p1, Landroid/location/LocationRequest;->mInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    iget-wide v0, p1, Landroid/location/LocationRequest;->mFastestInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    iget-boolean v0, p1, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iget-wide v0, p1, Landroid/location/LocationRequest;->mExpireAt:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    iget v0, p1, Landroid/location/LocationRequest;->mNumUpdates:I

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    iget v0, p1, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    iget-object v0, p1, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iget-object v0, p1, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-boolean v0, p1, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    iget-boolean v0, p1, Landroid/location/LocationRequest;->mLowPowerMode:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    return-void
.end method

.method private static checkDisplacement(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkInterval(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkQuality(I)V
    .locals 3

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    const/16 v0, 0x68

    if-eq p0, v0, :cond_0

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :pswitch_0
    nop

    return-void

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static create()Landroid/location/LocationRequest;
    .locals 1

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method public static createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v0, 0xc9

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x66

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x64

    goto :goto_0

    :cond_2
    const/16 v0, 0xcb

    nop

    :goto_0
    nop

    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v1, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v1

    if-eqz p4, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    :cond_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "gps"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    goto :goto_0

    :cond_3
    const/16 v0, 0xc9

    :goto_1
    new-instance v1, Landroid/location/LocationRequest;

    invoke-direct {v1}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v1, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v1

    if-eqz p4, :cond_4

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    :cond_4
    return-object v1
.end method

.method public static qualityToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_3

    const/16 v0, 0x66

    if-eq p0, v0, :cond_2

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0xcb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "???"

    return-object v0

    :pswitch_0
    const-string v0, "POWER_LOW"

    return-object v0

    :pswitch_1
    const-string v0, "POWER_NONE"

    return-object v0

    :cond_0
    const-string v0, "POWER_HIGH"

    return-object v0

    :cond_1
    const-string v0, "ACCURACY_CITY"

    return-object v0

    :cond_2
    const-string v0, "ACCURACY_BLOCK"

    return-object v0

    :cond_3
    const-string v0, "ACCURACY_FINE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decrementNumUpdates()V
    .locals 2

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    :cond_0
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getExpireAt()J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    return-wide v0
.end method

.method public getFastestInterval()J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-wide v0
.end method

.method public getHideFromAppOps()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    return-wide v0
.end method

.method public getNumUpdates()I
    .locals 1

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public isLowPowerMode()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    return v0
.end method

.method public setExpireAt(J)Landroid/location/LocationRequest;
    .locals 4

    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    :cond_0
    return-object p0
.end method

.method public setExpireIn(J)Landroid/location/LocationRequest;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    sub-long v4, v2, v0

    cmp-long v4, p1, v4

    if-lez v4, :cond_0

    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    goto :goto_0

    :cond_0
    add-long v2, p1, v0

    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    :goto_0
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iput-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    :cond_1
    return-object p0
.end method

.method public setFastestInterval(J)Landroid/location/LocationRequest;
    .locals 1

    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-object p0
.end method

.method public setHideFromAppOps(Z)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return-void
.end method

.method public setInterval(J)Landroid/location/LocationRequest;
    .locals 4

    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    iput-wide p1, p0, Landroid/location/LocationRequest;->mInterval:J

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    :cond_0
    return-object p0
.end method

.method public setLowPowerMode(Z)Landroid/location/LocationRequest;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    return-object p0
.end method

.method public setNumUpdates(I)Landroid/location/LocationRequest;
    .locals 3

    if-lez p1, :cond_0

    iput p1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Landroid/location/LocationRequest;->checkProvider(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest;
    .locals 0

    invoke-static {p1}, Landroid/location/LocationRequest;->checkQuality(I)V

    iput p1, p0, Landroid/location/LocationRequest;->mQuality:I

    return-object p0
.end method

.method public setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-static {p1}, Landroid/location/LocationRequest;->checkDisplacement(F)V

    iput p1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-static {v1}, Landroid/location/LocationRequest;->qualityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/location/LocationRequest;->mQuality:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    const-string v1, " requested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_1
    const-string v1, " fastest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-wide v1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-string v3, " expireIn="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_2
    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_3

    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, " lowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mLowPowerMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
