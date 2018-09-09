.class Lcom/android/server/OnePlusStandbyAnalyzer$1;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 608
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;)I
    .locals 2
    .param p1, "o1"    # Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    .param p2, "o2"    # Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    .line 611
    iget v0, p2, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    iget v1, p1, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 608
    check-cast p1, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    check-cast p2, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$1;->compare(Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;)I

    move-result p1

    return p1
.end method
