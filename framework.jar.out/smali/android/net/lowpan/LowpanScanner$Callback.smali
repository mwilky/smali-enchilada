.class public abstract Landroid/net/lowpan/LowpanScanner$Callback;
.super Ljava/lang/Object;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnergyScanResult(Landroid/net/lowpan/LowpanEnergyScanResult;)V
    .locals 0

    return-void
.end method

.method public onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V
    .locals 0

    return-void
.end method

.method public onScanFinished()V
    .locals 0

    return-void
.end method
