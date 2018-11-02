.class public Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;
.super Ljava/lang/Object;
.source "AnomalyInfo.java"


# static fields
.field private static final KEY_ANOMALY_TYPE:Ljava/lang/String; = "anomaly_type"

.field private static final KEY_AUTO_RESTRICTION:Ljava/lang/String; = "auto_restriction"

.field private static final TAG:Ljava/lang/String; = "AnomalyInfo"


# instance fields
.field public final anomalyType:Ljava/lang/Integer;

.field public final autoRestriction:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AnomalyInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anomalyInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    const-string v1, "anomaly_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->anomalyType:Ljava/lang/Integer;

    const-string v1, "auto_restriction"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/AnomalyInfo;->autoRestriction:Z

    return-void
.end method
