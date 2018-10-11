.class Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;
.super Ljava/lang/Object;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/battery/BatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;->this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$1;->this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->invalidateSelf()V

    return-void
.end method
