.class public final Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
.super Ljava/lang/Object;
.source "Anomaly.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/anomaly/Anomaly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBgRestrictionEnabled:Z

.field private mBluetoothScanningTimeMs:J

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/String;

.field private mTargetSdkVersion:I

.field private mType:I

.field private mUid:I

.field private mWakeLockTimeMs:J

.field private mWakeupAlarmCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mUid:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mDisplayName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mWakeLockTimeMs:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mTargetSdkVersion:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mBgRestrictionEnabled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mBluetoothScanningTimeMs:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mWakeupAlarmCount:I

    return v0
.end method


# virtual methods
.method public build()Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly;-><init>(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;Lcom/android/settings/fuelgauge/anomaly/Anomaly$1;)V

    return-object v0
.end method

.method public setBackgroundRestrictionEnabled(Z)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mBgRestrictionEnabled:Z

    return-object p0
.end method

.method public setBluetoothScanningTimeMs(J)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mBluetoothScanningTimeMs:J

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetSdkVersion(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mTargetSdkVersion:I

    return-object p0
.end method

.method public setType(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mType:I

    return-object p0
.end method

.method public setUid(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mUid:I

    return-object p0
.end method

.method public setWakeLockTimeMs(J)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mWakeLockTimeMs:J

    return-object p0
.end method

.method public setWakeupAlarmCount(I)Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->mWakeupAlarmCount:I

    return-object p0
.end method
