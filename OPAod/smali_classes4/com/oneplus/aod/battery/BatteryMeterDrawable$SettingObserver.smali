.class final Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryMeterDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/battery/BatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->access$000(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterDrawable$SettingObserver;->this$0:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-static {v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->access$100(Lcom/oneplus/aod/battery/BatteryMeterDrawable;)V

    return-void
.end method
