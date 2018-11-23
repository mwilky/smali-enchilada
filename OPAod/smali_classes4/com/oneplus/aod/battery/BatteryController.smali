.class public interface abstract Lcom/oneplus/aod/battery/BatteryController;
.super Ljava/lang/Object;
.source "BatteryController.java"

# interfaces
.implements Lcom/oneplus/aod/battery/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;
    }
.end annotation


# static fields
.field public static final FAST_CHARGE_STATE_NONE:I = 0x0

.field public static final FAST_CHARGE_STATE_NORMAL:I = 0x1

.field public static final FAST_CHARGE_STATE_WARP:I = 0x2


# virtual methods
.method public abstract addStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract isPowerSave()Z
.end method

.method public abstract removeStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V
.end method

.method public abstract setPowerSaveMode(Z)V
.end method
