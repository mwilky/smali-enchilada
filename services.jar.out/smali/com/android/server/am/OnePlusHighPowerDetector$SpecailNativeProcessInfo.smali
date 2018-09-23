.class Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpecailNativeProcessInfo"
.end annotation


# instance fields
.field private mBatteryDrop:I

.field private mCount:I

.field private mProcess:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mProcess:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mCount:I

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mBatteryDrop:I

    iput-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mProcess:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mCount:I

    iput p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mBatteryDrop:I

    return-void
.end method


# virtual methods
.method public getBatteryDrop()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mBatteryDrop:I

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecailNativeProcessInfo{mProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBatteryDrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$SpecailNativeProcessInfo;->mBatteryDrop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
