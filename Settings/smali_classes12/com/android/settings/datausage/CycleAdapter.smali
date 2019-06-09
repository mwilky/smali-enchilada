.class public Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;,
        Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V
    .locals 2

    if-eqz p4, :cond_0

    const v0, 0x7f0d0092

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0076

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CycleAdapter;->setDropDownViewResource(I)V

    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iput-object p3, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v0, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    iget-object v0, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iget-object v1, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {v2, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v2}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    const-wide/high16 v6, -0x8000000000000000L

    if-eqz v1, :cond_0

    iget-object v8, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    iget-object v8, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v6

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v8, v4, v12

    if-nez v8, :cond_1

    move-wide v4, v10

    :cond_1
    move-wide v12, v4

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v6, v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x1

    add-long v6, v10, v4

    :cond_2
    move-wide v14, v6

    const/4 v4, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    if-eqz p1, :cond_7

    nop

    invoke-static/range {p1 .. p1}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v5

    move/from16 v20, v4

    :goto_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/util/Pair;

    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v27

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v29

    if-eqz v1, :cond_4

    iget-object v4, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v21, v4

    move-wide/from16 v22, v27

    move-wide/from16 v24, v29

    move-object/from16 v26, v3

    invoke-virtual/range {v21 .. v26}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    iget-wide v4, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v31, v7

    iget-wide v6, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v6

    cmp-long v4, v4, v16

    if-lez v4, :cond_3

    move/from16 v4, v19

    goto :goto_1

    :cond_3
    move/from16 v4, v18

    :goto_1
    move-object/from16 v21, v3

    goto :goto_2

    :cond_4
    move-object/from16 v31, v7

    move-object/from16 v21, v3

    move/from16 v4, v19

    :goto_2
    move/from16 v22, v4

    if-eqz v22, :cond_5

    new-instance v7, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v7

    move-object v4, v9

    move-wide/from16 v5, v27

    move-object/from16 v24, v8

    move-wide/from16 v32, v10

    move-object/from16 v23, v31

    move-object v10, v7

    move-wide/from16 v7, v29

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0, v10}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    const/16 v20, 0x1

    goto :goto_3

    :cond_5
    move-wide/from16 v32, v10

    move-object/from16 v23, v31

    :goto_3
    move-object/from16 v3, v21

    move-object/from16 v5, v23

    move-wide/from16 v10, v32

    goto :goto_0

    :cond_6
    move-wide/from16 v32, v10

    goto :goto_4

    :cond_7
    move-wide/from16 v32, v10

    move/from16 v20, v4

    :goto_4
    if-nez v20, :cond_c

    move-object v5, v3

    move-wide v3, v14

    :goto_5
    move-wide v10, v3

    cmp-long v3, v10, v12

    if-lez v3, :cond_b

    const-wide v3, 0x90321000L

    sub-long v27, v10, v3

    if-eqz v1, :cond_9

    iget-object v3, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v21, v3

    move-wide/from16 v22, v27

    move-wide/from16 v24, v10

    move-object/from16 v26, v5

    invoke-virtual/range {v21 .. v26}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v5

    iget-wide v3, v5, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v5, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v3, v6

    cmp-long v3, v3, v16

    if-lez v3, :cond_8

    move/from16 v3, v19

    goto :goto_6

    :cond_8
    move/from16 v3, v18

    :goto_6
    move-object/from16 v21, v5

    goto :goto_7

    :cond_9
    move-object/from16 v21, v5

    move/from16 v3, v19

    :goto_7
    move/from16 v22, v3

    if-eqz v22, :cond_a

    new-instance v7, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v7

    move-object v4, v9

    move-wide/from16 v5, v27

    move-object v1, v7

    move-wide v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    :cond_a
    move-wide/from16 v3, v27

    nop

    move-object/from16 v5, v21

    move-object/from16 v1, p2

    goto :goto_5

    :cond_b
    move-object v3, v5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_d

    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v1

    iget-object v4, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v4, v1}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-object v5, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v25, 0x0

    move-object/from16 v21, v5

    move/from16 v24, v1

    invoke-interface/range {v21 .. v26}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v18

    :cond_d
    return v19
.end method
