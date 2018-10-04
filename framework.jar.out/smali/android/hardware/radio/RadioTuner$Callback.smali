.class public abstract Landroid/hardware/radio/RadioTuner$Callback;
.super Ljava/lang/Object;
.source "RadioTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioTuner;
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
.method public onAntennaState(Z)V
    .locals 0

    return-void
.end method

.method public onBackgroundScanAvailabilityChange(Z)V
    .locals 0

    return-void
.end method

.method public onBackgroundScanComplete()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onControlChanged(Z)V
    .locals 0

    return-void
.end method

.method public onEmergencyAnnouncement(Z)V
    .locals 0

    return-void
.end method

.method public onError(I)V
    .locals 0

    return-void
.end method

.method public onMetadataChanged(Landroid/hardware/radio/RadioMetadata;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onParametersUpdated(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 0

    return-void
.end method

.method public onProgramListChanged()V
    .locals 0

    return-void
.end method

.method public onTrafficAnnouncement(Z)V
    .locals 0

    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V
    .locals 0

    return-void
.end method
