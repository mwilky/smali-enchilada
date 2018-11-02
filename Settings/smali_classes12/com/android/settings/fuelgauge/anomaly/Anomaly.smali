.class public Lcom/android/settings/fuelgauge/anomaly/Anomaly;
.super Ljava/lang/Object;
.source "Anomaly.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;,
        Lcom/android/settings/fuelgauge/anomaly/Anomaly$AnomalyActionType;,
        Lcom/android/settings/fuelgauge/anomaly/Anomaly$AnomalyType;
    }
.end annotation


# static fields
.field public static final ANOMALY_TYPE_LIST:[I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final backgroundRestrictionEnabled:Z

.field public final bluetoothScanningTimeMs:J

.field public final displayName:Ljava/lang/CharSequence;

.field public final packageName:Ljava/lang/String;

.field public final targetSdkVersion:I

.field public final type:I

.field public final uid:I

.field public final wakelockTimeMs:J

.field public final wakeupAlarmCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->ANOMALY_TYPE_LIST:[I

    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakelockTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->backgroundRestrictionEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakeupAlarmCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->bluetoothScanningTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/fuelgauge/anomaly/Anomaly$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->access$000(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->access$100(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->access$200(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->access$300(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->access$400(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakelockTimeMs:J

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->access$500(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->access$600(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->backgroundRestrictionEnabled:Z

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->access$700(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->bluetoothScanningTimeMs:J

    invoke-static {p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;->access$800(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakeupAlarmCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;Lcom/android/settings/fuelgauge/anomaly/Anomaly$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly;-><init>(Lcom/android/settings/fuelgauge/anomaly/Anomaly$Builder;)V

    return-void
.end method

.method private toAnomalyTypeText(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "unoptimizedBluetoothScan"

    return-object v0

    :pswitch_1
    const-string v0, "wakeupAlarm"

    return-object v0

    :pswitch_2
    const-string v0, "wakelock"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v3, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    iget v4, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    iget v4, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakelockTimeMs:J

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakelockTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    iget v4, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->backgroundRestrictionEnabled:Z

    iget-boolean v4, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->backgroundRestrictionEnabled:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakeupAlarmCount:I

    iget v4, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakeupAlarmCount:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->bluetoothScanningTimeMs:J

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->bluetoothScanningTimeMs:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakelockTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->backgroundRestrictionEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakeupAlarmCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->bluetoothScanningTimeMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->toAnomalyTypeText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " wakelockTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakelockTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " wakeupAlarmCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakeupAlarmCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bluetoothTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->bluetoothScanningTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakelockTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->backgroundRestrictionEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->wakeupAlarmCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->bluetoothScanningTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
