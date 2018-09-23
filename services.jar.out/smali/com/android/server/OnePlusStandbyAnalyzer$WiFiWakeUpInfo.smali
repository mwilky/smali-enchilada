.class public Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WiFiWakeUpInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mEnd:I

.field public mStart:I

.field public mType:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mStart:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mEnd:I

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mStart:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mEnd:I

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mStart:I

    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mEnd:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# WiFiWakeUpInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
