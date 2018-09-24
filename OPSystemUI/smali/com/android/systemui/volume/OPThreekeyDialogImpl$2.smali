.class Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;
.super Ljava/lang/Object;
.source "OPThreekeyDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OPThreekeyDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$2;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$600(Lcom/android/systemui/volume/OPThreekeyDialogImpl;Z)V

    return-void
.end method

.method public onConnectedDeviceChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 0

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScreenOff()V
    .locals 0

    return-void
.end method

.method public onShowRequested(I)V
    .locals 0

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0

    return-void
.end method

.method public onShowSilentHint()V
    .locals 0

    return-void
.end method

.method public onShowVibrateHint()V
    .locals 0

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    return-void
.end method
