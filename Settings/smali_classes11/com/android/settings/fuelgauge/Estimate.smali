.class public Lcom/android/settings/fuelgauge/Estimate;
.super Ljava/lang/Object;
.source "Estimate.java"


# static fields
.field public static final AVERAGE_TIME_TO_DISCHARGE_UNKNOWN:I = -0x1


# instance fields
.field public final averageDischargeTime:J

.field public final estimateMillis:J

.field public final isBasedOnUsage:Z


# direct methods
.method public constructor <init>(JZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/Estimate;->estimateMillis:J

    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/Estimate;->isBasedOnUsage:Z

    iput-wide p4, p0, Lcom/android/settings/fuelgauge/Estimate;->averageDischargeTime:J

    return-void
.end method
