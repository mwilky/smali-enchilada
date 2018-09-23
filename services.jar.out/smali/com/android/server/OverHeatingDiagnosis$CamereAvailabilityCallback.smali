.class final Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CamereAvailabilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$3300(Lcom/android/server/OverHeatingDiagnosis;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->update(Z)V

    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraUnavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$3300(Lcom/android/server/OverHeatingDiagnosis;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->update(Z)V

    :cond_0
    return-void
.end method
