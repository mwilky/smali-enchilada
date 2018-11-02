.class public Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;
.super Landroid/support/v7/preference/Preference;
.source "AnomalyPreference.java"


# instance fields
.field private mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAnomaly()Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    return-object v0
.end method
