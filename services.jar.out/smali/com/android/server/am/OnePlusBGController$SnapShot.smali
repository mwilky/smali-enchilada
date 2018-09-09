.class public final Lcom/android/server/am/OnePlusBGController$SnapShot;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SnapShot"
.end annotation


# instance fields
.field private mBatteryDrop:I

.field private mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

.field private mmA:F

.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusBGController;
    .param p2, "snapshot"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 1939
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1940
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 1941
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusBGController;
    .param p2, "snapshot"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;
    .param p3, "batteryDrop"    # I
    .param p4, "mA"    # F

    .line 1943
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1944
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 1945
    iput p3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mBatteryDrop:I

    .line 1946
    iput p4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mmA:F

    .line 1947
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1950
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1952
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1954
    .local v0, "startTime":J
    sget-object v2, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1954
    .end local v0    # "startTime":J
    goto/16 :goto_2

    .line 2017
    .restart local v0    # "startTime":J
    :pswitch_0
    const-string v2, "======CALCULATE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2018
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3500(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2019
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3600(Lcom/android/server/am/OnePlusBGController;)V

    goto :goto_0

    .line 2021
    :cond_0
    const-string v2, "No round-flush, so skip calculating..."

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2024
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$3502(Lcom/android/server/am/OnePlusBGController;Z)Z

    .line 2028
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[End] Calculate & Judge in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .end local v0    # "startTime":J
    goto/16 :goto_2

    .line 1961
    .restart local v0    # "startTime":J
    :pswitch_1
    const-string v2, "======ONESHOT======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1964
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3100(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1965
    const-string v2, "Exceed the reset period, just budget reset..."

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1966
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$800(Lcom/android/server/am/OnePlusBGController;)V

    .line 1967
    return-void

    .line 1974
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->flushExternel()V

    .line 1979
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    .line 1982
    .local v2, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$3200(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 1984
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$3200(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 1987
    if-eqz v2, :cond_3

    .line 1988
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$3200(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    .line 1989
    .local v4, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v5, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    .line 1990
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSippersOfOneShot size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, v6, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1993
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v5, v5, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, v6, Lcom/android/server/am/OnePlusBGController;->cptor:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1996
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, v6, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusBGController;->access$3300(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V

    .line 1998
    sget-boolean v5, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v6, "ONESHOT"

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v7, v7, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    invoke-static {v5, v6, v7, v3}, Lcom/android/server/am/OnePlusBGController;->access$3400(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Ljava/util/List;Z)V

    .line 2001
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/server/am/OnePlusBGController;->access$3502(Lcom/android/server/am/OnePlusBGController;Z)Z

    .line 2003
    .end local v4    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    goto :goto_1

    .line 2004
    :cond_3
    const-string/jumbo v3, "stats == null"

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2010
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@[START] SnapShot in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2014
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    sget-object v4, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusBGController;->snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    .line 2015
    .end local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    goto :goto_2

    .line 1956
    :pswitch_2
    const-string v2, "======INIT_OBSERVE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1957
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3000(Lcom/android/server/am/OnePlusBGController;)V

    .line 1958
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[START] Init-Observing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 1959
    nop

    .line 2031
    .end local v0    # "startTime":J
    :goto_2
    goto :goto_3

    .line 2032
    :cond_4
    const-string/jumbo v0, "mBatteryStatsService == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2034
    :goto_3
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
