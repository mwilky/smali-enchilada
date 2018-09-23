.class public Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AnomalyDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;
    }
.end annotation


# static fields
.field private static final ARG_ANOMALY:Ljava/lang/String; = "anomaly"

.field private static final ARG_METRICS_KEY:Ljava/lang/String; = "metrics_key"


# instance fields
.field mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;
    .locals 3

    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "anomaly"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "metrics_key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3dc

    return v0
.end method

.method initAnomalyUtils()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "metrics_key"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-interface {v0, v3}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;->onAnomalyHandled(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->initAnomalyUtils()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v2

    const-string v3, "anomaly"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iput-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    const/16 v5, 0x3dc

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->logAnomaly(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->getActionType()I

    move-result v4

    const/4 v5, 0x0

    const v6, 0x7f12058e

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_0

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v6, v6, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f120559

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x7f120557

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v10, v10, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v10, v8, v7

    invoke-virtual {p0, v9, v8}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f120558

    invoke-virtual {v4, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f12055c

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x7f12055a

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v10, v10, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v10, v8, v7

    invoke-virtual {p0, v9, v8}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f12055b

    invoke-virtual {v4, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f120560

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v9, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v9, v9, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    if-nez v9, :cond_1

    const v9, 0x7f12055d

    goto :goto_0

    :cond_1
    const v9, 0x7f12055e

    :goto_0
    new-array v8, v8, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v10, v10, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v10, v8, v7

    invoke-virtual {p0, v9, v8}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v7, 0x7f12055f

    invoke-virtual {v4, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
