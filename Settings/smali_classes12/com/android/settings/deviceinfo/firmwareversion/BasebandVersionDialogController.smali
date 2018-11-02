.class public Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;
.super Ljava/lang/Object;
.source "BasebandVersionDialogController.java"


# static fields
.field static final BASEBAND_PROPERTY:Ljava/lang/String; = "gsm.version.baseband"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final BASEBAND_VERSION_LABEL_ID:I = 0x7f0a0092
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final BASEBAND_VERSION_VALUE_ID:I = 0x7f0a0093
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f0a0093

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const v3, 0x7f0a0092

    invoke-virtual {v1, v3}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->removeSettingFromScreen(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->mDialog:Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    const-string v3, "gsm.version.baseband"

    const v4, 0x7f120549

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method
