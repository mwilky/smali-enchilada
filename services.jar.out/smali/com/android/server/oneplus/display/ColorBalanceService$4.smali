.class Lcom/android/server/oneplus/display/ColorBalanceService$4;
.super Ljava/lang/Object;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2100(Lcom/android/server/oneplus/display/ColorBalanceService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2200(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    float-to-int v0, v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2604(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    const-string v0, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLowLightCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2704(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x10

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v3

    const/16 v4, 0x5dc

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2704(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$4;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2202(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    :cond_3
    return-void
.end method
